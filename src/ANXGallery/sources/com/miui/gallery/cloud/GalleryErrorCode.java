package com.miui.gallery.cloud;

import android.content.ContentValues;
import android.database.Cursor;
import com.google.common.collect.Maps;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.SyncUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONException;
import org.json.JSONObject;

public class GalleryErrorCode {
    private static final GalleryErrorHandler sAlbumNotEmptyHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) {
            SyncLog.e("GalleryErrorCode", "special error, album not empty %s", json == null ? "" : json.toString());
            if (requestItem != null && (requestItem instanceof RequestCloudItem)) {
                DBImage dbCloud = ((RequestCloudItem) requestItem).dbCloud;
                if (!dbCloud.isItemType() && dbCloud.getLocalFlag() == 2 && !GalleryErrorCode.hasDeleteItemsInAGroup(dbCloud.getId())) {
                    GalleryErrorCode.cancelDeleteGroupOperation(dbCloud.getId());
                }
            }
        }
    };
    private static final GalleryErrorHandler sAlbumNotExistsHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) {
            SyncLog.e("GalleryErrorCode", "special error, album not exist: %s", json == null ? "" : json.toString());
            if (requestItem != null && (requestItem instanceof RequestCloudItem)) {
                DBImage dbCloud = ((RequestCloudItem) requestItem).dbCloud;
                if ((!dbCloud.isItemType() && dbCloud.getLocalFlag() == 2) || dbCloud.isShareItem() || !dbCloud.isItemType()) {
                    return;
                }
                if ((dbCloud.getLocalFlag() == 6 || dbCloud.getLocalFlag() == 9 || dbCloud.getLocalFlag() == 8 || dbCloud.getLocalFlag() == 5) && !GalleryErrorCode.hasUnCreatedGroupInLocalDB(dbCloud.getLocalGroupId())) {
                    SyncLog.d("GalleryErrorCode", "this album is need to recreate later %d", dbCloud.getLocalGroupId());
                    CreateGroupItem.recreateGroup(dbCloud.getLocalGroupId());
                }
            }
        }
    };
    private static Map<Class<?>, Integer> sExceptionMap = Maps.newHashMap();
    private static final GalleryErrorHandler sGalleryNotFoundHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) {
            SyncLog.e("GalleryErrorCode", "server can't found this item: %s", json == null ? "" : json.toString());
            if (requestItem != null && (requestItem instanceof RequestCloudItem)) {
                CloudUtils.deleteDirty(((RequestCloudItem) requestItem).dbCloud);
            }
        }
    };
    public static final HashMap<Integer, GalleryErrorCodeItem> sGalleryServerErrors = new HashMap();
    private static final GalleryErrorHandler sNoErrorHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) {
            if (spaceFullListener != null) {
                spaceFullListener.handleSpaceNotFull((RequestCloudItem) requestItem);
            }
        }
    };
    private static final GalleryErrorHandler sNotRetryErrorHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) throws JSONException {
            SyncLog.e("GalleryErrorCode", "not retry error: %s", json == null ? "" : json.toString());
        }
    };
    private static final GalleryErrorHandler sRetryErrorHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) throws JSONException {
            if (requestItem != null && json.has("data")) {
                JSONObject dataJson = json.getJSONObject("data");
                if (dataJson.has("retryAfter")) {
                    requestItem.retryAfter = CloudUtils.getLongAttributeFromJson(dataJson, "retryAfter");
                }
            }
            SyncLog.e("GalleryErrorCode", "retry error: %s", json == null ? "" : json.toString());
        }
    };
    private static final GalleryErrorHandler sSpaceFullHandler = new GalleryErrorHandler() {
        public void onError(JSONObject json, RequestItemBase requestItem, SpaceFullListener spaceFullListener) {
            SyncLog.e("GalleryErrorCode", "not retry error, gallery space full %s", json == null ? "" : json.toString());
            if (spaceFullListener != null) {
                spaceFullListener.handleSpaceFullError((RequestCloudItem) requestItem);
            }
        }
    };

    public interface GalleryErrorHandler {
        void onError(JSONObject jSONObject, RequestItemBase requestItemBase, SpaceFullListener spaceFullListener) throws JSONException;
    }

    public static class ExceptionWithErrorCode extends Error {
        private static final long serialVersionUID = 1;
        public final int mErrorCode;
    }

    public static class GalleryErrorCodeItem {
        int code;
        GalleryErrorHandler errorHandler;
        GallerySyncResult result;

        public GalleryErrorCodeItem(int code, GallerySyncResult result, GalleryErrorHandler errorHandler) {
            this.code = code;
            this.result = result;
            this.errorHandler = errorHandler;
        }
    }

    public static class MiCloudServerExceptionHandler {
        private static Exception sMicloudServerException = null;

        private static Exception getMiCloudServerException() {
            return sMicloudServerException;
        }

        private static boolean hasMiCloudServerException() {
            return sMicloudServerException != null;
        }

        private static void cleanMiCloudServerException() {
            sMicloudServerException = null;
        }

        public static synchronized boolean handleMiCloudException(Exception e) {
            synchronized (MiCloudServerExceptionHandler.class) {
                SyncLog.d("MiCloudServerExceptionHandler", "handleMiCloudException: " + e);
                sMicloudServerException = e;
                SyncUtil.requestSync(GalleryApp.sGetAndroidContext());
            }
            return true;
        }

        public static synchronized void checkMiCloudServerException() throws GalleryMiCloudServerException {
            synchronized (MiCloudServerExceptionHandler.class) {
                if (hasMiCloudServerException()) {
                    Exception micloudServerException = getMiCloudServerException();
                    cleanMiCloudServerException();
                    throw new GalleryMiCloudServerException(micloudServerException);
                }
            }
        }
    }

    static {
        sGalleryServerErrors.put(Integer.valueOf(0), new GalleryErrorCodeItem(0, GallerySyncResult.Ok, sNoErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(10001), new GalleryErrorCodeItem(10001, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(10032), new GalleryErrorCodeItem(10032, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(20607), new GalleryErrorCodeItem(20607, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(23000), new GalleryErrorCodeItem(23000, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50005), new GalleryErrorCodeItem(50005, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50002), new GalleryErrorCodeItem(50002, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50003), new GalleryErrorCodeItem(50003, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50007), new GalleryErrorCodeItem(50007, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50010), new GalleryErrorCodeItem(50010, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50017), new GalleryErrorCodeItem(50017, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50022), new GalleryErrorCodeItem(50022, GallerySyncResult.RetryError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50006), new GalleryErrorCodeItem(50006, GallerySyncResult.NotContinueError, sSpaceFullHandler));
        sGalleryServerErrors.put(Integer.valueOf(50016), new GalleryErrorCodeItem(50016, GallerySyncResult.NotContinueError, sRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50019), new GalleryErrorCodeItem(50019, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(10008), new GalleryErrorCodeItem(10008, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(10017), new GalleryErrorCodeItem(10017, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(20014), new GalleryErrorCodeItem(20014, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50001), new GalleryErrorCodeItem(50001, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50004), new GalleryErrorCodeItem(50004, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50008), new GalleryErrorCodeItem(50008, GallerySyncResult.NotRetryError, sGalleryNotFoundHandler));
        sGalleryServerErrors.put(Integer.valueOf(50009), new GalleryErrorCodeItem(50009, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50011), new GalleryErrorCodeItem(50011, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50013), new GalleryErrorCodeItem(50013, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50015), new GalleryErrorCodeItem(50015, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50018), new GalleryErrorCodeItem(50018, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50019), new GalleryErrorCodeItem(50019, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50020), new GalleryErrorCodeItem(50020, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50021), new GalleryErrorCodeItem(50021, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50023), new GalleryErrorCodeItem(50023, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50024), new GalleryErrorCodeItem(50024, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50025), new GalleryErrorCodeItem(50025, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50026), new GalleryErrorCodeItem(50026, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50027), new GalleryErrorCodeItem(50027, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50028), new GalleryErrorCodeItem(50028, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50029), new GalleryErrorCodeItem(50029, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50030), new GalleryErrorCodeItem(50030, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(80004), new GalleryErrorCodeItem(80004, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(50012), new GalleryErrorCodeItem(50012, GallerySyncResult.AlbumNotExist, sAlbumNotExistsHandler));
        sGalleryServerErrors.put(Integer.valueOf(50014), new GalleryErrorCodeItem(50014, GallerySyncResult.AlbumNotEmpty, sAlbumNotEmptyHandler));
        sGalleryServerErrors.put(Integer.valueOf(40003), new GalleryErrorCodeItem(40003, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(10016), new GalleryErrorCodeItem(10016, GallerySyncResult.NotRetryError, sNotRetryErrorHandler));
        sGalleryServerErrors.put(Integer.valueOf(52000), new GalleryErrorCodeItem(52000, GallerySyncResult.ResetSyncTag, null));
        sExceptionMap.put(IllegalBlockSizeException.class, Integer.valueOf(-101));
        sExceptionMap.put(BadPaddingException.class, Integer.valueOf(-102));
        sExceptionMap.put(JSONException.class, Integer.valueOf(-103));
        sExceptionMap.put(IOException.class, Integer.valueOf(-104));
        sExceptionMap.put(GalleryMiCloudServerException.class, Integer.valueOf(-105));
        sExceptionMap.put(MalformedURLException.class, Integer.valueOf(-106));
        sExceptionMap.put(UnsupportedEncodingException.class, Integer.valueOf(-107));
        sExceptionMap.put(ClientProtocolException.class, Integer.valueOf(-108));
        sExceptionMap.put(URISyntaxException.class, Integer.valueOf(-109));
        sExceptionMap.put(UnsupportedOperationException.class, Integer.valueOf(-110));
        sExceptionMap.put(SocketTimeoutException.class, Integer.valueOf(-111));
        sExceptionMap.put(UnknownHostException.class, Integer.valueOf(-112));
    }

    public static int fromThrowable(Throwable t) {
        if (t instanceof ExceptionWithErrorCode) {
            return ((ExceptionWithErrorCode) t).mErrorCode;
        }
        for (Class<?> c = t.getClass(); c != Object.class; c = c.getSuperclass()) {
            Integer err = (Integer) sExceptionMap.get(t.getClass());
            if (err != null) {
                return err.intValue();
            }
        }
        return -2;
    }

    public static boolean isClientError(int err) {
        return err < 0;
    }

    private static boolean hasUnCreatedGroupInLocalDB(String localGroupId) {
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(CloudUtils.getCloudLimit1Uri(), new String[]{"_id"}, "localFlag = ?  AND _id = ? ", new String[]{String.valueOf(8), localGroupId}, null);
            if (cursor != null && cursor.moveToNext()) {
                return true;
            }
            if (cursor != null) {
                cursor.close();
            }
            return false;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private static boolean hasDeleteItemsInAGroup(String localGroupId) {
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(CloudUtils.getCloudLimit1Uri(), new String[]{"_id"}, "localFlag = ?  AND localGroupId = ? ", new String[]{String.valueOf(2), localGroupId}, null);
            if (cursor != null && cursor.moveToNext()) {
                return true;
            }
            if (cursor != null) {
                cursor.close();
            }
            return false;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private static void cancelDeleteGroupOperation(String id) {
        ContentValues values = new ContentValues();
        values.put("localFlag", Integer.valueOf(0));
        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_URI, values, "_id = ? ", new String[]{id});
    }
}
