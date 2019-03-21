package com.miui.gallery.data;

import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.provider.GalleryDBHelper;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DBShareAlbum implements DBItem {
    private String albumId;
    private String albumStatus;
    private String babyInfoJson;
    private int canModified;
    private String creatorId;
    private long dateModified;
    private long datetaken;
    private String description;
    private String editedColumns;
    private String fileName;
    private long groupId;
    private String id;
    private boolean isPublic;
    private int localFlag;
    private String peopleId;
    private String publicUrl;
    private String serverId;
    private String serverStatus;
    private long serverTag;
    private int serverType;
    private String shareUrl;
    private String shareUrlLong;
    private String sharerInfo;
    private int sortBy;

    public DBShareAlbum(Cursor c) {
        boolean z = true;
        this.id = GalleryDBHelper.getCursorString(c, 0);
        this.groupId = c.getLong(1);
        this.dateModified = c.getLong(2);
        this.description = GalleryDBHelper.getCursorString(c, 3);
        this.fileName = GalleryDBHelper.getCursorString(c, 4);
        this.datetaken = c.getLong(5);
        this.serverId = GalleryDBHelper.getCursorString(c, 6);
        this.serverType = c.getInt(7);
        this.serverStatus = GalleryDBHelper.getCursorString(c, 8);
        this.serverTag = c.getLong(9);
        this.localFlag = c.getInt(10);
        this.sortBy = c.getInt(11);
        this.canModified = c.getInt(12);
        this.albumId = GalleryDBHelper.getCursorString(c, 13);
        this.creatorId = GalleryDBHelper.getCursorString(c, 14);
        this.shareUrl = GalleryDBHelper.getCursorString(c, 15);
        if (c.getInt(22) != 1) {
            z = false;
        }
        this.isPublic = z;
        this.publicUrl = GalleryDBHelper.getCursorString(c, 23);
        this.peopleId = GalleryDBHelper.getCursorString(c, 26);
        this.babyInfoJson = GalleryDBHelper.getCursorString(c, 25);
        this.editedColumns = GalleryDBHelper.getCursorString(c, 28);
        this.sharerInfo = GalleryDBHelper.getCursorString(c, 27);
        this.albumStatus = GalleryDBHelper.getCursorString(c, 16);
        this.shareUrlLong = GalleryDBHelper.getCursorString(c, 20);
    }

    public static ContentValues getContentValue(JSONObject entryJson, DBShareAlbum old) throws JSONException {
        ContentValues values = new ContentValues();
        values.put("albumId", entryJson.getString("sharedId"));
        if (entryJson.has("status")) {
            values.put("albumStatus", entryJson.getString("status"));
        }
        values.put("albumTag", entryJson.getString(nexExportFormat.TAG_FORMAT_TAG));
        values.put("creatorId", entryJson.getString("creatorId"));
        JSONObject contentJson = entryJson.getJSONObject("content");
        values.put("serverId", Long.valueOf(CloudUtils.getLongAttributeFromJson(contentJson, "id")));
        values.put("serverStatus", contentJson.getString("status"));
        values.put("serverTag", contentJson.getString(nexExportFormat.TAG_FORMAT_TAG));
        values.put("serverType", contentJson.getString(nexExportFormat.TAG_FORMAT_TYPE));
        values.put("fileName", contentJson.getString("fileName"));
        if (contentJson.has("dateModified")) {
            values.put("dateModified", contentJson.getString("dateModified"));
        }
        if (contentJson.has("isPublic")) {
            if (contentJson.getBoolean("isPublic")) {
                values.put("isPublic", Integer.valueOf(1));
                if (contentJson.has("publicUrl")) {
                    values.put("publicUrl", contentJson.getString("publicUrl"));
                }
            } else {
                values.put("isPublic", Integer.valueOf(0));
                values.putNull("publicUrl");
            }
        }
        if (contentJson.has("renderInfos")) {
            JSONArray array = contentJson.getJSONArray("renderInfos");
            if (array != null) {
                int i = 0;
                while (i < array.length()) {
                    JSONObject obj = array.getJSONObject(i);
                    if (obj.has(nexExportFormat.TAG_FORMAT_TYPE) && obj.getString(nexExportFormat.TAG_FORMAT_TYPE).equalsIgnoreCase(BabyAlbumUtils.BABY_BABY)) {
                        String babyInfoJson = obj.toString();
                        String peopleId = null;
                        if (old != null) {
                            BabyInfo babyInfo = BabyInfo.fromJSON(babyInfoJson);
                            BabyInfo oldBabyInfo = BabyInfo.fromJSON(old.babyInfoJson);
                            if (!(babyInfo == null || oldBabyInfo == null)) {
                                peopleId = old.peopleId;
                                babyInfo.mPeopleId = old.peopleId;
                                babyInfo.mAutoupdate = oldBabyInfo.mAutoupdate;
                                babyInfoJson = babyInfo.toJSON();
                            }
                        }
                        values.put("babyInfoJson", babyInfoJson);
                        values.put("peopleId", peopleId);
                    } else {
                        i++;
                    }
                }
            }
        }
        if (contentJson.has("dateTaken")) {
            if (values.containsKey("babyInfoJson")) {
                values.put("dateTaken", Long.valueOf(-996));
            } else {
                values.put("dateTaken", contentJson.getString("dateTaken"));
            }
        }
        return values;
    }

    public String getId() {
        return this.id;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getServerTag() {
        return this.serverTag;
    }

    public int getLocalFlag() {
        return this.localFlag;
    }

    public String getAlbumId() {
        return this.albumId;
    }

    public String getAlbumStatus() {
        return this.albumStatus;
    }

    public String getCreatorId() {
        return this.creatorId;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public String getShareUrlLong() {
        return this.shareUrlLong;
    }

    public boolean getIsPublic() {
        return this.isPublic;
    }

    public String getPublicUri() {
        return this.publicUrl;
    }

    public String getSharerInfo() {
        return this.sharerInfo;
    }

    public String getPeopleId() {
        return this.peopleId;
    }

    public String getBabyInfoJson() {
        return this.babyInfoJson;
    }

    public String getEditedColumns() {
        return this.editedColumns;
    }

    public static boolean isNormalStatus(String serverStatus, String albumStatus) {
        return "normal".equals(albumStatus) && "custom".equals(serverStatus);
    }
}
