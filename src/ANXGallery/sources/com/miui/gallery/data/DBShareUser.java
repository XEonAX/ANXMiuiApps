package com.miui.gallery.data;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.provider.GalleryDBHelper;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import org.json.JSONException;
import org.json.JSONObject;

public class DBShareUser {
    private String albumId;
    private long createTime;
    private String id;
    private String localAlbumId;
    private int localFlag;
    private String mRelation;
    private String mRelationText;
    private int requestType;
    private String requestValue;
    private String serverStatus;
    private long serverTag;
    private String shareText;
    private String shareUrl;
    private String userId;
    private String userName;

    public DBShareUser(Cursor c) {
        this.id = GalleryDBHelper.getCursorString(c, 0);
        this.userId = GalleryDBHelper.getCursorString(c, 1);
        this.userName = GalleryDBHelper.getCursorString(c, 2);
        if (TextUtils.isEmpty(this.userName)) {
            this.userName = this.userId;
        }
        this.createTime = c.getLong(3);
        this.requestType = c.getInt(4);
        this.requestValue = GalleryDBHelper.getCursorString(c, 5);
        this.serverStatus = c.getString(6);
        this.serverTag = (long) c.getInt(7);
        this.albumId = GalleryDBHelper.getCursorString(c, 8);
        this.localFlag = c.getInt(9);
        this.shareUrl = GalleryDBHelper.getCursorString(c, 10);
        this.shareText = GalleryDBHelper.getCursorString(c, 11);
        this.localAlbumId = GalleryDBHelper.getCursorString(c, 12);
        this.mRelation = GalleryDBHelper.getCursorString(c, 13);
        this.mRelationText = GalleryDBHelper.getCursorString(c, 14);
    }

    public static ContentValues getContentValues(JSONObject schemaJson) throws JSONException {
        ContentValues values = new ContentValues();
        values.put("userId", schemaJson.getString("userId"));
        values.put("serverStatus", schemaJson.getString("status"));
        values.put("serverTag", Long.valueOf(CloudUtils.getLongAttributeFromJson(schemaJson, nexExportFormat.TAG_FORMAT_TAG)));
        values.put("createTime", schemaJson.getString("createTime"));
        values.put("requestType", schemaJson.getString("requestType"));
        values.put("requestValue", schemaJson.getString("requestValue"));
        if (schemaJson.has("relation")) {
            values.put("relation", schemaJson.getString("relation"));
        }
        if (schemaJson.has("relationText")) {
            values.put("relationText", schemaJson.getString("relationText"));
        }
        return values;
    }

    public String getId() {
        return this.id;
    }

    public long getServerTag() {
        return this.serverTag;
    }
}
