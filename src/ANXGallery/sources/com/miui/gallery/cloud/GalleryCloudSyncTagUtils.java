package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.card.SyncTagUtil;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

public class GalleryCloudSyncTagUtils {
    private static HashMap<String, String> sColumnNameToPushNameMap = new HashMap();
    public static HashMap<Integer, SyncTagConstant> sSyncTagConstantsMap = new HashMap();
    private static final Object sSyncTagLock = new Object();

    public static class SyncTagConstant {
        public final String columnName;
        public final int initValue;
        public final String jsonTagInput;
        public final String jsonTagOutput;
        public final String pushName;
        public final boolean shouldCheckInit;
        public final boolean shouldInsertCloudSetting;
        public final String syncInfoColumnName;
        public final Uri uri;

        public SyncTagConstant(String columnName, String jsonTagInput, String jsonTagOutput, String pushName, int defaultValue, boolean shouldInsert, boolean shouldCheckInit, Uri uri, String syncInfoColumnName) {
            this.columnName = columnName;
            this.jsonTagInput = jsonTagInput;
            this.jsonTagOutput = jsonTagOutput;
            this.pushName = pushName;
            this.initValue = defaultValue;
            this.shouldInsertCloudSetting = shouldInsert;
            this.shouldCheckInit = shouldCheckInit;
            this.syncInfoColumnName = syncInfoColumnName;
            this.uri = uri;
        }

        public boolean hasSyncInfo() {
            return this.syncInfoColumnName != null;
        }
    }

    public static class SyncTagItem {
        public long currentValue;
        public long serverValue;
        public boolean shouldSync = true;
        public final int syncTagType;

        public SyncTagItem(int syncTagType) {
            this.syncTagType = syncTagType;
        }
    }

    static {
        sColumnNameToPushNameMap.put("syncTag", "micloud.gallery.sync");
        sColumnNameToPushNameMap.put("shareSyncTagAlbumList", "micloud.gallery.albumlist.sync");
        sColumnNameToPushNameMap.put("shareSyncTagAlbumInfo", "micloud.gallery.albuminfo.sync");
        sColumnNameToPushNameMap.put("ownerSyncTagUserList", "micloud.gallery.sharerlist.sync");
        sColumnNameToPushNameMap.put("shareSyncTagImageList", "micloud.gallery.imagelist.sync");
        sColumnNameToPushNameMap.put("faceWatermark", "gallery-facerecognition");
        sSyncTagConstantsMap.put(Integer.valueOf(1), new SyncTagConstant("syncTag", "syncTag", "syncTag", "micloud.gallery.sync", 0, true, false, GalleryCloudUtils.CLOUD_SETTING_URI, "syncInfo"));
        sSyncTagConstantsMap.put(Integer.valueOf(2), new SyncTagConstant("ownerSyncTagUserList", "mySharerListsTag", "sharerlist", "micloud.gallery.sharerlist.sync", 0, true, false, GalleryCloudUtils.CLOUD_SETTING_URI, "shareSyncInfo"));
        sSyncTagConstantsMap.put(Integer.valueOf(3), new SyncTagConstant("shareSyncTagAlbumList", "albumListTag", "albumlist", "micloud.gallery.albumlist.sync", 0, true, true, GalleryCloudUtils.CLOUD_SETTING_URI, "shareSyncInfo"));
        sSyncTagConstantsMap.put(Integer.valueOf(4), new SyncTagConstant("shareSyncTagAlbumInfo", "albumInfoTag", "albuminfo", "micloud.gallery.albuminfo.sync", 0, true, true, GalleryCloudUtils.CLOUD_SETTING_URI, "shareSyncInfo"));
        sSyncTagConstantsMap.put(Integer.valueOf(5), new SyncTagConstant("shareSyncTagImageList", "imageListTag", "imagelist", "micloud.gallery.imagelist.sync", 0, true, true, GalleryCloudUtils.CLOUD_SETTING_URI, "shareSyncInfo"));
        sSyncTagConstantsMap.put(Integer.valueOf(8), new SyncTagConstant("albumImageTag", "syncTag", "syncTag", null, 0, false, false, GalleryCloudUtils.SHARE_ALBUM_URI, "syncInfo"));
        sSyncTagConstantsMap.put(Integer.valueOf(9), new SyncTagConstant("albumUserTag", "updateTag", "syncTag", null, 0, false, false, GalleryCloudUtils.SHARE_ALBUM_URI, null));
        sSyncTagConstantsMap.put(Integer.valueOf(10), new SyncTagConstant("albumUserTag", "updateTag", "syncTag", null, 0, false, false, GalleryCloudUtils.CLOUD_URI, null));
        sSyncTagConstantsMap.put(Integer.valueOf(11), new SyncTagConstant("faceWatermark", null, null, "gallery-facerecognition", 0, false, false, GalleryCloudUtils.CLOUD_SETTING_URI, null));
    }

    public static ArrayList<SyncTagItem> getSyncTag(Context context, Account account, ArrayList<SyncTagItem> syncTagList) {
        synchronized (sSyncTagLock) {
            Cursor cursor = null;
            try {
                cursor = getSyncTagCursorByAccount(context, account, syncTagList);
                if (cursor == null || !cursor.moveToNext()) {
                    Iterator it = syncTagList.iterator();
                    while (it.hasNext()) {
                        SyncTagItem syncTag = (SyncTagItem) it.next();
                        syncTag.currentValue = (long) ((SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncTag.syncTagType))).initValue;
                    }
                } else {
                    for (int i = 0; i < syncTagList.size(); i++) {
                        SyncTagItem syncTagItem = (SyncTagItem) syncTagList.get(i);
                        syncTagItem.currentValue = Math.max(cursor.getLong(i), (long) ((SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(((SyncTagItem) syncTagList.get(i)).syncTagType))).initValue);
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return syncTagList;
    }

    public static String getFaceSyncToken(Account account) {
        return (String) GalleryUtils.safeQuery(CloudUtils.getLimitUri(GalleryCloudUtils.CLOUD_SETTING_URI, 1), new String[]{"faceSyncToken"}, getAccountSelections(account), null, null, new QueryHandler<String>() {
            public String handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return "";
                }
                return cursor.getString(0);
            }
        });
    }

    public static void setFaceSyncToken(Account account, String syncToken) {
        ContentValues values = new ContentValues();
        values.put("faceSyncToken", syncToken);
        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_SETTING_URI, values, getAccountSelections(account), null);
    }

    public static void setFaceSyncWatermark(Account account, long watermark) {
        ContentValues values = new ContentValues();
        values.put("faceWatermark", Long.valueOf(watermark));
        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_SETTING_URI, values, getAccountSelections(account), null);
    }

    public static long getCardSyncTag(Account account) {
        return SyncTagUtil.getCardSyncTag(account);
    }

    public static void setCardSyncTag(Account account, long cardSyncTag) {
        SyncTagUtil.setCardSyncTag(account, cardSyncTag);
    }

    public static String getCardSyncInfo(Account account) {
        return SyncTagUtil.getCardSyncInfo(account);
    }

    public static void setCardSyncInfo(Account account, String syncInfo) {
        SyncTagUtil.setCardSyncInfo(account, syncInfo);
    }

    public static void insertAccountToDB(Context context, Account account) {
        if (!TextUtils.isEmpty(account.name) && !TextUtils.isEmpty(account.type)) {
            synchronized (sSyncTagLock) {
                ContentValues values = new ContentValues();
                for (SyncTagConstant syncTagConstant : sSyncTagConstantsMap.values()) {
                    if (syncTagConstant.shouldInsertCloudSetting) {
                        values.put(syncTagConstant.columnName, Integer.valueOf(syncTagConstant.initValue));
                    }
                }
                internalUpdateAccount(context, account, values, null);
            }
            SyncTagUtil.ensureAccount(account);
        }
    }

    private static void internalUpdateAccount(Context context, Account account, ContentValues values, ArrayList<SyncTagItem> syncTagList) {
        Cursor cursor = null;
        try {
            cursor = getSyncTagCursorByAccount(context, account, syncTagList);
            if (cursor == null || !cursor.moveToNext()) {
                values.put("accountName", account.name);
                values.put("accountType", account.type);
                GalleryUtils.safeInsert(GalleryCloudUtils.CLOUD_SETTING_URI, values);
            } else {
                if (syncTagList != null) {
                    if (!syncTagList.isEmpty()) {
                        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_SETTING_URI, values, null, null);
                    }
                }
                if (cursor != null) {
                    cursor.close();
                    return;
                }
                return;
            }
            postUpdateSyncTag(context, values);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static void postUpdateSyncTag(Context context, ContentValues values) {
        for (Entry<String, Object> entry : values.valueSet()) {
            String pushName = (String) sColumnNameToPushNameMap.get(entry.getKey());
            if (!TextUtils.isEmpty(pushName)) {
                SyncLog.d("GalleryCloudSyncTagUtils", "pushName:" + pushName + ", pushData:" + entry.getValue());
            }
        }
    }

    public static String[] getSyncTagSelection(ArrayList<SyncTagItem> syncTagList) {
        if (syncTagList == null || syncTagList.isEmpty()) {
            return new String[]{" * "};
        }
        String[] result = new String[syncTagList.size()];
        for (int i = 0; i < syncTagList.size(); i++) {
            result[i] = ((SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(((SyncTagItem) syncTagList.get(i)).syncTagType))).columnName;
        }
        return result;
    }

    public static String getAccountSelections(Account account) {
        return "accountName = '" + account.name + "' and " + "accountType" + " = '" + account.type + "'";
    }

    private static Cursor getSyncTagCursorByAccount(Context context, Account account, ArrayList<SyncTagItem> syncTagList) {
        if (account != null) {
            return context.getContentResolver().query(GalleryCloudUtils.CLOUD_SETTING_URI, getSyncTagSelection(syncTagList), getAccountSelections(account), null, null);
        }
        SyncLog.e("GalleryCloudSyncTagUtils", "account is null");
        return null;
    }

    public static int getInitSyncTagValue(int syncType) {
        SyncTagConstant syncTagCostant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagCostant != null) {
            return syncTagCostant.initValue;
        }
        return 0;
    }

    public static boolean shouldSyncTagValue(int syncType) {
        SyncTagConstant syncTagCostant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagCostant != null) {
            return syncTagCostant.shouldCheckInit;
        }
        return false;
    }

    public static String getJsonTagInput(int syncType) {
        SyncTagConstant syncTagCostant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagCostant != null) {
            return syncTagCostant.jsonTagInput;
        }
        return null;
    }

    public static String getJsonTagOutput(int syncType) {
        SyncTagConstant syncTagCostant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagCostant != null) {
            return syncTagCostant.jsonTagOutput;
        }
        return null;
    }

    public static String getColumnName(int syncType) {
        SyncTagConstant syncTagCostant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagCostant != null) {
            return syncTagCostant.columnName;
        }
        return null;
    }

    public static Uri getUri(int syncType) {
        SyncTagConstant syncTagConstant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagConstant != null) {
            return syncTagConstant.uri;
        }
        return null;
    }

    public static String getSyncInfoColumnName(int syncType) {
        SyncTagConstant syncTagConstant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagConstant != null) {
            return syncTagConstant.syncInfoColumnName;
        }
        return null;
    }

    public static boolean hasSyncInfo(int syncType) {
        SyncTagConstant syncTagCostant = (SyncTagConstant) sSyncTagConstantsMap.get(Integer.valueOf(syncType));
        if (syncTagCostant != null) {
            return syncTagCostant.hasSyncInfo();
        }
        return false;
    }
}
