package com.miui.gallery.util;

import android.text.TextUtils;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ExifUtil */
class UserComment {
    private ExifInterfaceWrapper mExif;
    private boolean mIsOriginalUserCommentUsable = false;
    private JSONObject mJsonUserComment;

    UserComment(ExifInterfaceWrapper exif) throws Exception {
        this.mExif = exif;
        String userComment = exif.getUserComment();
        try {
            if (TextUtils.isEmpty(userComment)) {
                this.mJsonUserComment = new JSONObject();
                return;
            }
            this.mJsonUserComment = new JSONObject(userComment);
            this.mIsOriginalUserCommentUsable = true;
        } catch (JSONException e) {
            this.mJsonUserComment = new JSONObject();
            Log.w("UserComment", "userComment %s is not a json object", userComment);
            e.printStackTrace();
            HashMap<String, String> params = new HashMap();
            params.put("usercomment", userComment);
            params.put("exception", e.toString());
            BaseSamplingStatHelper.recordErrorEvent("exif_parser", "exif_invalid_usercomment", params);
        }
    }

    boolean isOriginalUserCommentUsable() {
        return this.mIsOriginalUserCommentUsable;
    }

    String getSha1() {
        return this.mJsonUserComment.optString("sha1");
    }

    String getFileExt() {
        return this.mJsonUserComment.optString("ext");
    }

    void setData(UserCommentData data) throws Exception {
        if (data != null) {
            this.mJsonUserComment.put("sha1", data.getSha1());
            this.mJsonUserComment.put("ext", data.getExt());
            this.mExif.setUserComment(toString());
        }
    }

    public String toString() {
        if (TextUtils.isEmpty(getSha1()) && TextUtils.isEmpty(getFileExt())) {
            return "";
        }
        return this.mJsonUserComment.toString();
    }
}
