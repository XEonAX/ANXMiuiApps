package com.miui.gallery.cloud.peopleface;

import android.database.Cursor;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.UpdateHelper;

public class PeopleFace implements DBItem {
    public String _id;
    public double faceHScale;
    public double faceWScale;
    public double faceXScale;
    public double faceYScale;
    public String groupId;
    public double leftEyeXScale;
    public double leftEyeYScale;
    public int localFlag;
    public String localGroupId;
    public String peopleContactJson;
    public String peopleName;
    public int relationType;
    public double rightEyeXScale;
    public double rightEyeYScale;
    public String serverId;
    public String serverStatus;
    public long serverTag;
    public String type;
    public int visibilityType;

    public PeopleFace(Cursor c) {
        reloadData(c, 0);
    }

    public boolean reloadData(Cursor c, int startIndex) {
        UpdateHelper uh = new UpdateHelper();
        this._id = (String) uh.update(this._id, GalleryDBHelper.getCursorString(c, startIndex + 0));
        this.serverId = (String) uh.update(this.serverId, GalleryDBHelper.getCursorString(c, startIndex + 1));
        this.type = (String) uh.update(this.type, GalleryDBHelper.getCursorString(c, startIndex + 2));
        this.groupId = (String) uh.update(this.groupId, GalleryDBHelper.getCursorString(c, startIndex + 3));
        this.localGroupId = (String) uh.update(this.localGroupId, GalleryDBHelper.getCursorString(c, startIndex + 4));
        this.localFlag = uh.update(this.localFlag, c.getInt(startIndex + 5));
        this.faceXScale = uh.update(this.faceXScale, c.getDouble(startIndex + 6));
        this.faceYScale = uh.update(this.faceYScale, c.getDouble(startIndex + 7));
        this.faceWScale = uh.update(this.faceWScale, c.getDouble(startIndex + 8));
        this.faceHScale = uh.update(this.faceHScale, c.getDouble(startIndex + 9));
        this.leftEyeXScale = uh.update(this.leftEyeXScale, c.getDouble(startIndex + 10));
        this.leftEyeYScale = uh.update(this.leftEyeYScale, c.getDouble(startIndex + 11));
        this.rightEyeXScale = uh.update(this.rightEyeXScale, c.getDouble(startIndex + 12));
        this.rightEyeYScale = uh.update(this.rightEyeYScale, c.getDouble(startIndex + 13));
        this.serverStatus = (String) uh.update(this.serverStatus, GalleryDBHelper.getCursorString(c, startIndex + 14));
        this.peopleName = (String) uh.update(this.peopleName, GalleryDBHelper.getCursorString(c, startIndex + 15));
        this.peopleContactJson = (String) uh.update(this.peopleContactJson, GalleryDBHelper.getCursorString(c, startIndex + 18));
        this.serverTag = uh.update(this.serverTag, c.getLong(startIndex + 20));
        this.relationType = uh.update(this.relationType, c.getInt(startIndex + 19));
        this.visibilityType = uh.update(this.visibilityType, c.getInt(startIndex + 16));
        Log.i("peopleface", "reloadData for the face with server id:" + this.serverId);
        return uh.isUpdated();
    }

    public PeopleFace(String faceId, String type, String groupId, long serverTag) {
        this.serverId = faceId;
        this.type = type;
        this.groupId = groupId;
        this.serverTag = serverTag;
    }

    public String getId() {
        return this._id;
    }

    public boolean equalMainInfoWith(PeopleFace face) {
        return equalString(this._id, face._id) && equalString(this.serverId, face.serverId) && equalString(this.localGroupId, face.localGroupId) && equalString(this.peopleName, face.peopleName);
    }

    private boolean equalString(String a, String b) {
        if (a == null && b == null) {
            return true;
        }
        if (a == null && b != null) {
            return false;
        }
        if (a == null || b != null) {
            return a.equalsIgnoreCase(b);
        }
        return false;
    }
}
