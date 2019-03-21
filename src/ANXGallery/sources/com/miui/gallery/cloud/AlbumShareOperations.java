package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.HostManager.AlbumShareOperation;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.AsyncResult;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.ConcatConverter;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AlbumShareOperations {
    private static UserInfo sSelf = null;

    public static void resetAccountInfo() {
        synchronized (AlbumShareOperations.class) {
            sSelf = null;
        }
    }

    public static String myName() {
        UserInfo info = self();
        if (info != null) {
            return info.getDisplayName();
        }
        return GalleryCloudUtils.getAccountName();
    }

    private static synchronized UserInfo self() {
        UserInfo userInfo;
        synchronized (AlbumShareOperations.class) {
            if (sSelf == null) {
                Account account = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
                if (account != null) {
                    List<String> userIds = Lists.newArrayList();
                    userIds.add(account.name);
                    AsyncResult<List<UserInfo>> result = requestUserInfo(userIds);
                    if (result != null && result.mError == 0) {
                        List<UserInfo> infoList = result.mData;
                        if (!(infoList == null || infoList.isEmpty())) {
                            UserInfo self = (UserInfo) infoList.get(0);
                            sSelf = self;
                            if (self != null) {
                                ContentValues values = new ContentValues();
                                values.put("user_id", self.getUserId());
                                values.put("alias_nick", self.getAliasNick());
                                values.put("miliao_nick", self.getMiliaoNick());
                                values.put("miliao_icon_url", self.getMiliaoIconUrl());
                                synchronized (GalleryCloudUtils.USER_INFO_URI) {
                                    if (GalleryUtils.safeUpdate(GalleryCloudUtils.USER_INFO_URI, values, "user_id=?", new String[]{sSelf.getUserId()}) == 0) {
                                        GalleryUtils.safeInsert(GalleryCloudUtils.USER_INFO_URI, values);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            userInfo = sSelf;
        }
        return userInfo;
    }

    public static AsyncResult<String> requestUrlForBarcode(final String serverId) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                String cache = AlbumShareOperations.readCache(serverId, "barcodeData", "barcodeDataDeadline", 43200000);
                if (!TextUtils.isEmpty(cache)) {
                    return AsyncResult.create(0, cache);
                }
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String userName = AlbumShareOperations.myName();
                if (TextUtils.isEmpty(userName)) {
                    return AsyncResult.create(-5);
                }
                String url = AlbumShareOperation.getBarcodeShareUrl(serverId);
                ArrayList<NameValuePair> params = Lists.newArrayList();
                AlbumShareOperations.addNameValuePair(params, "userName", userName, token);
                JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    return AsyncResult.create(err);
                }
                String str = json.getJSONObject("data").getString("url");
                if (!TextUtils.isEmpty(str)) {
                    AlbumShareOperations.persisitCache(serverId, "barcodeData", "barcodeDataDeadline", str, 43200000);
                }
                SyncLog.d("AlbumShareOperations", "request barcode url success.");
                return AsyncResult.create(0, str);
            }
        });
    }

    private static void addNameValuePair(List<NameValuePair> params, String key, String value, GalleryExtendedAuthToken token) throws IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException {
        params.add(new BasicNameValuePair(key, value));
    }

    private static String readCache(String serverId, String dataColumn, String deadlineColumn, int timeOut) {
        Context context = GalleryApp.sGetAndroidContext();
        long current = System.currentTimeMillis();
        Cursor c = context.getContentResolver().query(CloudUtils.getLimitUri(GalleryCloudUtils.CLOUD_CACHE_URI, 1), new String[]{dataColumn}, String.format(Locale.US, "(%s=?) AND (%s<%d) AND (%s>%d) AND (%s)", new Object[]{"serverId", deadlineColumn, Long.valueOf(((long) timeOut) + current), deadlineColumn, Long.valueOf(current), CloudUtils.sqlNotEmptyStr(dataColumn)}), new String[]{serverId}, null);
        if (c == null) {
            return null;
        }
        try {
            if (c.moveToFirst()) {
                String string = c.getString(0);
                return string;
            }
            c.close();
            return null;
        } finally {
            c.close();
        }
    }

    private static void persisitCache(String serverId, String dataColumn, String deadlineColumn, String data, int timeOut) {
        if (!TextUtils.isEmpty(data)) {
            ContentResolver resolver = GalleryApp.sGetAndroidContext().getContentResolver();
            ContentValues values = new ContentValues();
            values.put(dataColumn, data);
            values.put(deadlineColumn, Long.valueOf(System.currentTimeMillis() + ((long) timeOut)));
            if (resolver.update(GalleryCloudUtils.CLOUD_CACHE_URI, values, "serverId=?", new String[]{serverId}) == 0) {
                values.put("serverId", serverId);
                resolver.insert(GalleryCloudUtils.CLOUD_CACHE_URI, values);
            }
        }
    }

    public static AsyncResult<Void> syncAllUserInfoFromNetwork() {
        return execute(new Callable<AsyncResult<Void>>() {
            public AsyncResult<Void> call() throws Exception {
                ContentResolver resolver = GalleryApp.sGetAndroidContext().getContentResolver();
                Set<String> userIdSet = Sets.newHashSet();
                AlbumShareOperations.collectAllUserId(resolver, GalleryCloudUtils.CLOUD_USER_URI, "userId", userIdSet);
                AlbumShareOperations.collectAllUserId(resolver, GalleryCloudUtils.SHARE_USER_URI, "userId", userIdSet);
                String selfId = GalleryCloudUtils.getAccountName();
                if (!TextUtils.isEmpty(selfId)) {
                    userIdSet.add(selfId);
                }
                synchronized (GalleryCloudUtils.USER_INFO_URI) {
                    GalleryUtils.safeDelete(GalleryCloudUtils.USER_INFO_URI, String.format("%s NOT IN (%s)", new Object[]{"user_id", GalleryUtils.concatAll(userIdSet, ",")}), null);
                }
                long current = System.currentTimeMillis();
                Cursor userCursor = resolver.query(GalleryCloudUtils.USER_INFO_URI, new String[]{"user_id"}, String.format("(%s<?)AND(%s>?)", new Object[]{"date_modified", "date_modified"}), new String[]{String.valueOf(current), String.valueOf(current - 86400000)}, null);
                if (userCursor != null) {
                    while (userCursor.moveToNext()) {
                        try {
                            userIdSet.remove(String.valueOf(userCursor.getString(0)));
                        } finally {
                            userCursor.close();
                        }
                    }
                }
                if (!userIdSet.isEmpty()) {
                    List<String> userIds = Lists.newArrayList();
                    userIds.addAll(userIdSet);
                    AsyncResult<List<UserInfo>> result = AlbumShareOperations.requestUserInfo(userIds);
                    if (result != null && result.mError == 0) {
                        List<UserInfo> userInfoList = result.mData;
                        if (!(userInfoList == null || userInfoList.isEmpty())) {
                            List<UserInfo> list = userInfoList;
                            String successIds = GalleryUtils.concatAll(list, ",", new ConcatConverter<UserInfo>() {
                                public String convertToString(UserInfo src) {
                                    return src.getUserId();
                                }
                            });
                            synchronized (GalleryCloudUtils.USER_INFO_URI) {
                                int deleteCount = GalleryUtils.safeDelete(GalleryCloudUtils.USER_INFO_URI, String.format("%s IN (%s)", new Object[]{"user_id", successIds}), null);
                                AlbumShareOperations.insertUserInfoToDB(resolver, GalleryCloudUtils.USER_INFO_URI, userInfoList);
                                SyncLog.d("AlbumShareOperations", String.format("syncAllUserNameFromNetwork: delete=%d, insert=%d", new Object[]{Integer.valueOf(deleteCount), Integer.valueOf(userInfoList.size())}));
                            }
                        }
                    }
                }
                return AsyncResult.create(0);
            }
        });
    }

    private static void insertUserInfoToDB(ContentResolver resolver, Uri uri, List<UserInfo> userInfoList) {
        ArrayList<ContentProviderOperation> operations = Lists.newArrayList();
        Iterator it = userInfoList.iterator();
        while (it.hasNext()) {
            UserInfo info = (UserInfo) it.next();
            operations.add(ContentProviderOperation.newInsert(GalleryCloudUtils.USER_INFO_URI).withValue("user_id", info.getUserId()).withValue("alias_nick", info.getAliasNick()).withValue("miliao_nick", info.getMiliaoNick()).withValue("miliao_icon_url", info.getMiliaoIconUrl()).build());
            if (operations.size() > 100) {
                try {
                    resolver.applyBatch("com.miui.gallery.cloud.provider", operations);
                } catch (RemoteException e) {
                    e.printStackTrace();
                } catch (OperationApplicationException e2) {
                    e2.printStackTrace();
                } finally {
                    operations.clear();
                }
            }
        }
        if (!operations.isEmpty()) {
            try {
                resolver.applyBatch("com.miui.gallery.cloud.provider", operations);
            } catch (RemoteException e3) {
                e3.printStackTrace();
            } catch (OperationApplicationException e22) {
                e22.printStackTrace();
            }
        }
    }

    private static void collectAllUserId(ContentResolver resolver, Uri uri, String column, Collection<String> userId) {
        Cursor cursor = resolver.query(CloudUtils.getCloudDistinctUri(uri), new String[]{column}, null, null, null);
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    userId.add(String.valueOf(cursor.getLong(0)));
                } finally {
                    cursor.close();
                }
            }
        }
    }

    private static List<UserInfo> doRequestUserInfo(List<String> userIds) throws BadPaddingException, IllegalBlockSizeException, IOException, GalleryMiCloudServerException, JSONException {
        List<UserInfo> users = Lists.newArrayList();
        if (CTA.canConnectNetwork()) {
            Context context = GalleryApp.sGetAndroidContext();
            Account account = AccountHelper.getXiaomiAccount(context);
            if (account != null) {
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token != null) {
                    String url = AlbumShareOperation.getRequestUserInfoUrl();
                    ArrayList<NameValuePair> params = new ArrayList();
                    params.add(new BasicNameValuePair("users", GalleryUtils.concatAll(userIds, ",")));
                    JSONObject json = CloudUtils.postToXiaomi(url, params, null, account, token, 0, false);
                    if (CheckResult.parseErrorCode(json) == 0) {
                        JSONArray array = json.getJSONObject("data").getJSONArray("list");
                        for (int i = 0; i < array.length(); i++) {
                            JSONObject user = array.getJSONObject(i);
                            String id = user.getString("userId");
                            if (!TextUtils.isEmpty(id)) {
                                UserInfo info = new UserInfo(id);
                                info.setAliasNick(user.optString("aliasNick"));
                                info.setMiliaoNick(user.optString("nickname"));
                                info.setMiliaoIconUrl(user.optString("icon"));
                                users.add(info);
                            }
                        }
                    }
                }
            }
        }
        return users;
    }

    public static AsyncResult<List<UserInfo>> requestUserInfo(final List<String> userIds) {
        return execute(new Callable<AsyncResult<List<UserInfo>>>() {
            public AsyncResult<List<UserInfo>> call() throws Exception {
                List<UserInfo> out = Lists.newArrayList();
                for (int i = 0; i < userIds.size(); i += 20) {
                    List<UserInfo> result = AlbumShareOperations.doRequestUserInfo(userIds.subList(i, Math.min(userIds.size(), i + 20)));
                    if (result != null) {
                        out.addAll(result);
                    }
                }
                return AsyncResult.create(0, out);
            }
        });
    }

    public static AsyncResult<String> requestPublicUrl(final String albumId, final boolean isShareAlbum) {
        return execute(new Callable<AsyncResult<String>>() {
            public AsyncResult<String> call() throws Exception {
                if (!CTA.canConnectNetwork()) {
                    return AsyncResult.create(-11);
                }
                Context context = GalleryApp.sGetAndroidContext();
                Account account = AccountHelper.getXiaomiAccount(context);
                if (account == null) {
                    return AsyncResult.create(-4);
                }
                GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
                if (token == null) {
                    return AsyncResult.create(-3);
                }
                String url;
                if (isShareAlbum) {
                    url = AlbumShareOperation.getSharerRequestPublicUrl();
                } else {
                    url = AlbumShareOperation.getOwnerRequestPublicUrl(albumId);
                }
                ArrayList<NameValuePair> params = new ArrayList();
                if (isShareAlbum) {
                    params.add(new BasicNameValuePair("sharedAlbumId", albumId));
                }
                JSONObject json = CloudUtils.getFromXiaomi(url, params, account, token, 0, false);
                int err = CheckResult.parseErrorCode(json);
                if (err != 0) {
                    return AsyncResult.create(err);
                }
                boolean z;
                String publicUrl = json.getJSONObject("data").optString("url");
                String str = albumId;
                if (TextUtils.isEmpty(publicUrl)) {
                    z = false;
                } else {
                    z = true;
                }
                AlbumShareOperations.savePublicInfo(str, z, publicUrl, isShareAlbum);
                return AsyncResult.create(0, publicUrl);
            }
        });
    }

    private static void savePublicInfo(String albumId, boolean isPublic, String publicUrl, boolean isShareAlbum) {
        ContentValues values = new ContentValues();
        values.put("isPublic", Boolean.valueOf(isPublic));
        values.put("publicUrl", publicUrl);
        GalleryUtils.safeUpdate(isShareAlbum ? GalleryCloudUtils.SHARE_ALBUM_URI : GalleryCloudUtils.CLOUD_URI, values, (isShareAlbum ? "albumId" : "serverId") + " = ? ", new String[]{albumId});
    }

    private static <V> AsyncResult<V> execute(Callable<AsyncResult<V>> callable) {
        int i = 1;
        long start = SystemClock.uptimeMillis();
        String methodName = new Throwable().getStackTrace()[1].getMethodName();
        SyncLog.d("AlbumShareOperations", "start callable: " + methodName);
        AsyncResult<V> result = null;
        if (!ApplicationHelper.supportShare()) {
            return AsyncResult.create(-1);
        }
        try {
            result = (AsyncResult) callable.call();
        } catch (Throwable t) {
            int err = GalleryErrorCode.fromThrowable(t);
            if (err == -105 && ((GalleryMiCloudServerException) t).getStatusCode() == 401) {
                requestSyncToHandleUnauthorized();
            }
            SyncLog.e("AlbumShareOperations", "Error code=" + err, t);
            result = AsyncResult.create(err);
        } finally {
            i = SystemClock.uptimeMillis() - start;
            SyncLog.d("AlbumShareOperations", "end callable: " + methodName + ", cost time=" + i);
        }
        Object[] objArr = new Object[i];
        objArr[0] = Integer.valueOf(result.mError);
        SyncLog.d("AlbumShareOperations", String.format("result error=%d", objArr));
        return result;
    }

    private static void requestSyncToHandleUnauthorized() {
        SyncUtil.requestSync(GalleryApp.sGetAndroidContext());
    }
}
