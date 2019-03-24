package com.miui.gallery.discovery;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.model.DiscoveryMessage;
import com.miui.gallery.model.DiscoveryMessage.BaseMessageDetail;
import com.miui.gallery.provider.GalleryContract.RecentAlbum;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Arrays;

public class RecentDiscoveryMessageOperator extends BaseMessageOperator<RecentSaveParams> {
    private static Gson sGson;

    public static class RecentMessageDetail extends BaseMessageDetail {
        private String[] thumbUrls;
        private int unviewMediaCount;

        public int getUnviewMediaCount() {
            return this.unviewMediaCount;
        }

        public void setUnviewMediaCount(int unviewMediaCount) {
            this.unviewMediaCount = unviewMediaCount;
        }

        public String[] getThumbUrls() {
            return this.thumbUrls;
        }

        public void setThumbUrls(String[] thumbUrls) {
            this.thumbUrls = thumbUrls;
        }

        public static RecentMessageDetail fromJson(String extraDataJson) {
            if (TextUtils.isEmpty(extraDataJson)) {
                return null;
            }
            try {
                return (RecentMessageDetail) RecentDiscoveryMessageOperator.sGson.fromJson(extraDataJson, RecentMessageDetail.class);
            } catch (Exception e) {
                Log.d("RecentDiscoveryMessageOperator", "Unable to parse extraData json to object: %s", (Object) extraDataJson);
                e.printStackTrace();
                return null;
            }
        }

        public String toJson() {
            return RecentDiscoveryMessageOperator.sGson.toJson((Object) this);
        }
    }

    public static class RecentSaveParams {
        private int mMediaCount;
        private ArrayList<String> mThumbUrls;

        public RecentSaveParams(int mediaCount, ArrayList<String> thumbUrls) {
            this.mMediaCount = mediaCount;
            this.mThumbUrls = thumbUrls;
        }

        public int getMediaCount() {
            return this.mMediaCount;
        }

        public ArrayList<String> getThumbUrls() {
            return this.mThumbUrls;
        }
    }

    public RecentDiscoveryMessageOperator() {
        sGson = new Gson();
    }

    public void doWrapMessage(DiscoveryMessage discoveryMessage, String extraDataJson) {
        RecentMessageDetail recentMessageDetail = RecentMessageDetail.fromJson(extraDataJson);
        if (recentMessageDetail != null) {
            int fileCount = recentMessageDetail.getUnviewMediaCount();
            discoveryMessage.setMessage(GalleryApp.sGetAndroidContext().getResources().getQuantityString(R.plurals.quickly_discovery_message_format, fileCount, new Object[]{Integer.valueOf(fileCount)}));
        }
        discoveryMessage.setMessageDetail(recentMessageDetail);
    }

    protected boolean doMarkMessageAsRead(Context context, DiscoveryMessage message) {
        message.setConsumed(true);
        if (message.getMessageDetail() instanceof RecentMessageDetail) {
            ((RecentMessageDetail) message.getMessageDetail()).setThumbUrls(null);
            ((RecentMessageDetail) message.getMessageDetail()).setUnviewMediaCount(0);
        } else {
            Log.e("RecentDiscoveryMessageOperator", "messageDetail should be instance of RecentMessageDetail");
        }
        return doUpdateMessage(context, message);
    }

    protected boolean doSaveMessage(Context context, RecentSaveParams saveParams) {
        ArrayList<String> thumbUrls;
        RecentMessageDetail recentMessageDetail;
        String[] thumbUrlArray;
        int i;
        boolean run;
        int mediaCount = saveParams.getMediaCount();
        if (saveParams.getThumbUrls() != null) {
            thumbUrls = saveParams.getThumbUrls();
        } else {
            thumbUrls = new ArrayList();
        }
        ContentValues values = new ContentValues();
        long current = System.currentTimeMillis();
        Cursor msgCursor = queryMessageByType(context);
        if (msgCursor != null) {
            try {
                if (msgCursor.moveToFirst()) {
                    long msgId = msgCursor.getLong(msgCursor.getColumnIndex("_id"));
                    String[] oldThumbUrls = null;
                    recentMessageDetail = RecentMessageDetail.fromJson(msgCursor.getString(msgCursor.getColumnIndex("extraData")));
                    if (recentMessageDetail != null) {
                        mediaCount += recentMessageDetail.getUnviewMediaCount();
                        oldThumbUrls = recentMessageDetail.getThumbUrls();
                    } else {
                        recentMessageDetail = new RecentMessageDetail();
                    }
                    recentMessageDetail.setUnviewMediaCount(mediaCount);
                    if (oldThumbUrls != null) {
                        thumbUrls.addAll(Arrays.asList(oldThumbUrls));
                    }
                    int minCount = Math.min(thumbUrls.size(), mediaCount);
                    if (minCount >= 3) {
                        thumbUrlArray = new String[3];
                    } else {
                        thumbUrlArray = new String[minCount];
                    }
                    for (i = 0; i < thumbUrlArray.length; i++) {
                        thumbUrlArray[i] = (String) thumbUrls.get(i);
                    }
                    recentMessageDetail.setThumbUrls(thumbUrlArray);
                    values.put("_id", Long.valueOf(msgId));
                    values.put("extraData", recentMessageDetail.toJson());
                    values.put("isConsumed", Integer.valueOf(0));
                    values.put("updateTime", Long.valueOf(current));
                    values.put("actionUri", RecentAlbum.VIEW_PAGE_URI.toString());
                    run = new UpdateTask(context, null, values).run();
                    return run;
                }
            } catch (Exception e) {
                Log.e("RecentDiscoveryMessageOperator", "Something wrong happened when save message: %s.", e.getMessage());
                e.printStackTrace();
                run = false;
            } finally {
                BaseMiscUtil.closeSilently(msgCursor);
            }
        }
        recentMessageDetail = new RecentMessageDetail();
        recentMessageDetail.setUnviewMediaCount(mediaCount);
        if (thumbUrls.size() >= 3) {
            thumbUrlArray = new String[3];
        } else {
            thumbUrlArray = new String[thumbUrls.size()];
        }
        for (i = 0; i < thumbUrlArray.length; i++) {
            thumbUrlArray[i] = (String) thumbUrls.get(i);
        }
        recentMessageDetail.setThumbUrls(thumbUrlArray);
        values.put("extraData", recentMessageDetail.toJson());
        values.put("type", Integer.valueOf(getMessageType()));
        values.put("receiveTime", Long.valueOf(current));
        values.put("updateTime", Long.valueOf(current));
        values.put("isConsumed", Integer.valueOf(0));
        values.put("actionUri", RecentAlbum.VIEW_PAGE_URI.toString());
        run = new InsertTask(context, values).run();
        BaseMiscUtil.closeSilently(msgCursor);
        return run;
    }

    public int getMessageType() {
        return 1;
    }
}
