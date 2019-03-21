package com.miui.gallery.cloud;

import com.miui.gallery.cloud.GalleryErrorCode.GalleryErrorCodeItem;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class CheckResult {

    public enum GallerySyncResult {
        Ok,
        Cancel,
        TimeOut,
        RetryError,
        NotRetryError,
        NeedReRequest,
        AlbumNotExist,
        AlbumNotEmpty,
        NotContinueError,
        NotRetryCurrent,
        ResetSyncTag,
        ResetFaceSyncTag
    }

    public static int parseErrorCode(JSONObject json) throws JSONException {
        int err;
        if (json == null) {
            err = -6;
        } else {
            err = json.getInt("code");
        }
        if (err != 0) {
            Map<String, String> params = new HashMap();
            params.put("function", "parseErrorCode");
            params.put("code", String.valueOf(err));
            params.put("message", json == null ? "null" : json.toString());
            BaseSamplingStatHelper.recordErrorEvent("Sync", "check_result", params);
        }
        return err;
    }

    public static GallerySyncResult checkXMResultCode(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) throws JSONException {
        Map<String, String> params;
        if (json == null) {
            params = new HashMap();
            params.put("function", "checkXMResultCode");
            params.put("message", "result is null");
            BaseSamplingStatHelper.recordErrorEvent("Sync", "check_result", params);
            return GallerySyncResult.NotRetryError;
        } else if (json.has("code")) {
            return checkErrorCode(json.getInt("code"), json, requestItem, spaceFullListener);
        } else {
            params = new HashMap();
            params.put("function", "checkXMResultCode");
            params.put("message", "result has no code");
            BaseSamplingStatHelper.recordErrorEvent("Sync", "check_result", params);
            return GallerySyncResult.RetryError;
        }
    }

    private static GallerySyncResult checkErrorCode(int code, JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) throws JSONException {
        GalleryErrorCodeItem errorItem = (GalleryErrorCodeItem) GalleryErrorCode.sGalleryServerErrors.get(Integer.valueOf(code));
        if (errorItem == null) {
            Map<String, String> params = new HashMap();
            params.put("function", "checkErrorCode");
            params.put("unknow error", json == null ? "null" : json.toString());
            BaseSamplingStatHelper.recordErrorEvent("Sync", "check_result", params);
            return GallerySyncResult.NotRetryError;
        }
        if (errorItem.errorHandler != null) {
            errorItem.errorHandler.onError(json, requestItem, spaceFullListener);
        }
        return errorItem.result;
    }

    public static GallerySyncResult checkXMResultCodeForFaceRequest(JSONObject json, RequestItemBase requestItem) throws JSONException {
        if (json == null) {
            return GallerySyncResult.NotRetryError;
        }
        if (!json.has("code")) {
            return GallerySyncResult.RetryError;
        }
        int code = json.getInt("code");
        if (code == 52000) {
            return GallerySyncResult.ResetFaceSyncTag;
        }
        return checkErrorCode(code, json, requestItem, null);
    }

    public static GallerySyncResult checkKSSThumbnailResult(int code) {
        switch (code) {
            case 404:
            case 516:
            case 519:
            case 520:
                return GallerySyncResult.NotRetryError;
            default:
                return GallerySyncResult.RetryError;
        }
    }

    public static boolean isNotRetryCode(int code) {
        return code / 100 == 4;
    }
}
