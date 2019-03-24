package com.miui.gallery.cloud;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import cn.kuaipan.kss.utils.Encode;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy.FileSizeLimitStrategy;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBImage.ExifDataConst;
import com.miui.gallery.data.DBOwnerSubUbiImage;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.data.DBShareImage;
import com.miui.gallery.data.DBShareSubUbiImage;
import com.miui.gallery.data.DBShareUser;
import com.miui.gallery.data.DecodeUtils;
import com.miui.gallery.data.DecodeUtils.GalleryOptions;
import com.miui.gallery.data.LocalUbifocus;
import com.miui.gallery.data.LocalUbifocus.SubFile;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.model.SecretInfo;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.provider.GalleryContract.ShareUser;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.GalleryDBHelper.TableColumn;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.BaseDocumentProviderUtils.WriteHandler;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileMimeUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryAes;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.NotificationHelper;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.UbiFocusUtils;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.Utils;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.os.Rom;
import com.miui.settings.Settings;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import miui.app.constants.ThemeManagerConstants;
import miui.os.ExtraFileUtils;
import miui.provider.ExtraContacts.ConferenceCalls.MembersColumns;
import miui.yellowpage.YellowPageContract.ImageLookup;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.keyczar.Keyczar;

public class CloudUtils {
    @Deprecated
    public static final String HTTPHOST_GALLERY_V1 = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/v1/gallery");
    @Deprecated
    public static final String HTTPHOST_GALLERY_V1_1 = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/v1.1/gallery");
    @Deprecated
    public static final String HTTPHOST_GALLERY_V2 = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/gallery/v2");
    @Deprecated
    public static final String HTTPHOST_GALLERY_V2_1 = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/gallery/v2.1");
    @Deprecated
    public static final String HTTPHOST_GALLERY_V2_2 = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/gallery/v2.2");
    public static final String HTTPHOST_GALLERY_V3 = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/gallery/v3");
    private static final String SELECTION_CAN_SYNC = String.format(Locale.US, "(((%s = %d OR %s = %d OR %s = %d) AND %s = '%s') OR (%s) OR (%s AND (%s IN (%d, %d) OR (%s IN (SELECT %s FROM %s WHERE %s)))))", new Object[]{"localFlag", Integer.valueOf(0), "localFlag", Integer.valueOf(2), "localFlag", Integer.valueOf(10), "serverStatus", "custom", SELECTION_GROUP_AUTO_UPLOAD, itemIsNotGroup, "localGroupId", Long.valueOf(CloudTableUtils.getCloudIdForGroupWithoutRecord(1000)), Long.valueOf(CloudTableUtils.getCloudIdForGroupWithoutRecord(1001)), "localGroupId", "_id", "cloud", SELECTION_GROUP_AUTO_UPLOAD});
    private static final String SELECTION_EDITED = String.format(Locale.US, "(%s NOT NULL AND %s!='') AND (%s IS NULL OR %s!=%d) AND (%s IS NULL OR %s='' OR %s='%s')", new Object[]{"editedColumns", "editedColumns", "localFlag", "localFlag", Integer.valueOf(2), "serverStatus", "serverStatus", "serverStatus", "custom"});
    private static final String SELECTION_GROUP_AUTO_UPLOAD = String.format(Locale.US, "(%s AND (%s & %d != 0))", new Object[]{itemIsGroup, "attributes", Long.valueOf(1)});
    public static final String SELECTION_NOT_SYNCED_OR_EDITED = ("localFlag != 0 OR " + SELECTION_EDITED);
    public static final String SELECTION_OWNER_NEED_SYNC = ("(" + SELECTION_NOT_SYNCED_OR_EDITED + ") " + " AND " + SELECTION_CAN_SYNC);
    public static final String itemIsGroup = String.format(Locale.US, "(%s = %d)", new Object[]{"serverType", Integer.valueOf(0)});
    public static final String itemIsNotGroup = String.format(Locale.US, "(%s = %d OR %s = %d)", new Object[]{"serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2)});
    private static final String photoLocalFlag_Create_ForceCreate_Move_Copy_Rename = String.format(Locale.US, "(%s = %d OR %s = %d OR %s = %d OR %s = %d OR %s = %d OR %s = %d )", new Object[]{"localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(5), "localFlag", Integer.valueOf(6), "localFlag", Integer.valueOf(9), "localFlag", Integer.valueOf(10)});
    public static final String photoLocalFlag_Synced = String.format(Locale.US, "(%s = %d AND %s = \"%s\")", new Object[]{"localFlag", Integer.valueOf(0), "serverStatus", "custom"});
    private static FileSizeLimitStrategy sFileSizeLimitStrategy;
    private static final Object sLock = new Object();

    interface ThumbnailFactory {
        Bitmap create();

        String getDirectory();

        String getFileName();
    }

    public static class CheckInternalAccountTask extends AsyncTask<Void, Integer, Void> {
        private Runnable mRunOnPostExecute;

        public CheckInternalAccountTask(Runnable runOnPostExecute) {
            this.mRunOnPostExecute = runOnPostExecute;
        }

        protected void onPreExecute() {
        }

        protected Void doInBackground(Void... params) {
            run();
            return null;
        }

        public void run() {
            if (Preference.sIsInternationalAccount() == 2) {
                Preference.sSetIsInternationalAccount(com.xiaomi.micloudsdk.request.utils.CloudUtils.isInternationalAccount(true));
            }
        }

        protected void onPostExecute(Void result) {
            if (this.mRunOnPostExecute != null) {
                this.mRunOnPostExecute.run();
            }
        }
    }

    public interface Insertable {
        long insert(Uri uri, String str, String str2, ContentValues contentValues);
    }

    public static class SecretAlbumUtils {
        public static String getSha1ThumbnailSA(String sha1, String md5Key) {
            return sha1 + "." + md5Key + ".sa";
        }

        public static String getEncodedFileName(String fileName, String md5key) {
            int index = fileName.lastIndexOf(".");
            if (index == -1 || index == 0) {
                return fileName + "." + md5key;
            }
            return fileName.substring(0, index) + "." + md5key;
        }

        public static String getMD5Key(byte[] key) {
            String result = null;
            try {
                MessageDigest sha1 = MessageDigest.getInstance("MD5");
                sha1.update(key, 0, key.length);
                return Encode.byteArrayToHexString(sha1.digest());
            } catch (Throwable e) {
                Log.w("CloudUtils", e);
                return result;
            }
        }

        public static boolean isEmpty(byte[] key) {
            return key == null || key.length <= 0;
        }

        private static String decodeFile(String oldPath, String decodedFileName, byte[] key) {
            if (TextUtils.isEmpty(oldPath)) {
                return null;
            }
            int index = oldPath.lastIndexOf("/");
            if (index != -1) {
                return decodeFile(oldPath, oldPath.substring(0, index + 1) + decodedFileName, key, true);
            }
            return null;
        }

        public static String decodeFile(String srcPath, String tarPath, byte[] key, boolean deleteOrigin) {
            if (TextUtils.isEmpty(srcPath) || TextUtils.isEmpty(tarPath)) {
                return null;
            }
            if (!new File(srcPath).isFile()) {
                return null;
            }
            if (!GalleryAes.decryptFile(srcPath, tarPath, key)) {
                if (deleteOrigin) {
                    MediaFileUtils.deleteFileType(FileType.NORMAL, tarPath);
                }
                return null;
            } else if (!deleteOrigin) {
                return tarPath;
            } else {
                MediaFileUtils.deleteFileType(FileType.NORMAL, src);
                return tarPath;
            }
        }

        public static String decodeFile(String srcPath, String tarPath, long secretId, boolean deleteOrigin) {
            if (TextUtils.isEmpty(srcPath) || TextUtils.isEmpty(tarPath)) {
                return null;
            }
            SecretInfo secretInfo = new SecretInfo();
            secretInfo.mSecretId = secretId;
            secretInfo.mSecretPath = srcPath;
            secretInfo = com.miui.gallery.provider.CloudUtils.getSecretInfo(GalleryApp.sGetAndroidContext(), secretInfo.mSecretId, secretInfo);
            if (TextUtils.isEmpty(secretInfo.mSecretPath)) {
                return null;
            }
            if (secretInfo.mSecretKey != null) {
                return decodeFile(secretInfo.mSecretPath, tarPath, secretInfo.mSecretKey, deleteOrigin);
            }
            if (deleteOrigin) {
                FileUtils.renameFile(new File(secretInfo.mSecretPath), new File(tarPath));
                return tarPath;
            }
            FileUtils.copyFile(new File(secretInfo.mSecretPath), new File(tarPath));
            return tarPath;
        }

        private static String encodeFile(String oldPath, String encodedFileName, byte[] key) {
            if (TextUtils.isEmpty(oldPath)) {
                return null;
            }
            int index = oldPath.lastIndexOf("/");
            if (index == -1) {
                return null;
            }
            String encodedFilePath = oldPath.substring(0, index + 1) + encodedFileName;
            if (!new File(oldPath).isFile()) {
                return null;
            }
            if (GalleryAes.encryptFile(oldPath, encodedFilePath, key)) {
                MediaFileUtils.deleteFileType(FileType.NORMAL, src);
                return encodedFilePath;
            }
            MediaFileUtils.deleteFileType(FileType.NORMAL, encodedFilePath);
            return null;
        }

        public static void decodeFiles(DBImage dbImage, ContentValues values) {
            if (dbImage.getSecretKeyNoGenerate() != null) {
                String microThumbnailPath = dbImage.getMicroThumbnailFile();
                if (FileUtils.isFileExist(microThumbnailPath)) {
                    values.put("microthumbfile", decodeFile(microThumbnailPath, CloudUtils.getThumbnailNameBySha1(dbImage.getSha1()), dbImage.getSecretKey()));
                }
                String localPath = dbImage.getLocalFile();
                boolean decodeLocalFileSucceed = false;
                if (FileUtils.isFileExist(localPath)) {
                    String decodeLocalPath = decodeFile(localPath, dbImage.getFileName(), dbImage.getSecretKey());
                    values.put("localFile", decodeLocalPath);
                    if (FileUtils.isFileExist(decodeLocalPath) && !decodeLocalPath.equals(localPath)) {
                        decodeLocalFileSucceed = true;
                    }
                }
                String thumbPath = dbImage.getThumbnailFile();
                if (FileUtils.isFileExist(thumbPath)) {
                    String fileName = CloudUtils.getThumbnailNameByTitle(dbImage.getTitle());
                    if (decodeLocalFileSucceed || FileUtils.isFileExist(fileName)) {
                        MediaFileUtils.deleteFileType(FileType.THUMBNAIL, thumbPath);
                        values.putNull("thumbnailFile");
                        return;
                    }
                    values.put("thumbnailFile", decodeFile(thumbPath, fileName, dbImage.getSecretKey()));
                }
            }
        }

        public static void encodeFiles(DBImage dbImage, ContentValues values) {
            if (dbImage.getSecretKeyNoGenerate() == null) {
                byte[] key = GalleryAes.generateRandomKey();
                values.put("secretKey", key);
                String microThumbnailPath = dbImage.getMicroThumbnailFile();
                if (FileUtils.isFileExist(microThumbnailPath)) {
                    values.put("microthumbfile", encodeFile(microThumbnailPath, dbImage.getSha1ThumbnailSA(), key));
                }
                String localPath = dbImage.getLocalFile();
                if (FileUtils.isFileExist(localPath)) {
                    values.put("localFile", encodeFile(localPath, dbImage.getEncodedFileName(), key));
                }
                String thumbPath = dbImage.getThumbnailFile();
                if (FileUtils.isFileExist(thumbPath)) {
                    values.put("thumbnailFile", encodeFile(thumbPath, dbImage.getSha1ThumbnailSA(), key));
                }
            }
        }
    }

    private static FileSizeLimitStrategy getFileSizeLimitStrategy() {
        FileSizeLimitStrategy fileSizeLimitStrategy;
        synchronized (sLock) {
            if (sFileSizeLimitStrategy == null) {
                sFileSizeLimitStrategy = CloudControlStrategyHelper.getFileSizeLimitStrategy();
                Log.d("CloudUtils", sFileSizeLimitStrategy);
            }
            fileSizeLimitStrategy = sFileSizeLimitStrategy;
        }
        return fileSizeLimitStrategy;
    }

    public static ContentValues getContentValuesForAll(JSONObject schemaJson) throws JSONException {
        return getContentValuesForAll(schemaJson, true);
    }

    public static ContentValues getContentValuesForAll(JSONObject schemaJson, boolean needShareId) throws JSONException {
        if (schemaJson == null) {
            return null;
        }
        if (schemaJson.has("content")) {
            schemaJson = schemaJson.getJSONObject("content");
        }
        ContentValues values = getContentValuesForDefault(schemaJson);
        values.put("fileName", schemaJson.getString("fileName"));
        if (schemaJson.has("groupId")) {
            values.put("groupId", Long.valueOf(getLongAttributeFromJson(schemaJson, "groupId")));
        }
        if (ApplicationHelper.isAutoUploadFeatureOpen()) {
            if (schemaJson.has("appKey")) {
                values.put("appKey", schemaJson.getString("appKey"));
            }
        }
        parseBabyInfo(schemaJson, values);
        if (schemaJson.has("size")) {
            values.put("size", Long.valueOf(getLongAttributeFromJson(schemaJson, "size")));
        }
        if (schemaJson.has("dateModified")) {
            values.put("dateModified", Long.valueOf(getLongAttributeFromJson(schemaJson, "dateModified")));
        }
        if (schemaJson.has("mimeType")) {
            values.put("mimeType", schemaJson.getString("mimeType"));
        }
        if (schemaJson.has("title")) {
            values.put("title", schemaJson.getString("title"));
        }
        if (schemaJson.has("description")) {
            String description = schemaJson.getString("description");
            values.put("description", description);
            parseDescription(values, description);
        }
        if (schemaJson.has("dateTaken")) {
            if (values.containsKey("babyInfoJson")) {
                values.put("dateTaken", Long.valueOf(-996));
            } else {
                values.put("dateTaken", Long.valueOf(getLongAttributeFromJson(schemaJson, "dateTaken")));
            }
        }
        if (schemaJson.has("duration")) {
            values.put("duration", Integer.valueOf(schemaJson.getInt("duration")));
        }
        if (schemaJson.has("size")) {
            values.put("size", Long.valueOf(getLongAttributeFromJson(schemaJson, "size")));
        }
        if (needShareId) {
            if (schemaJson.has("shareId")) {
                values.put("shareId", schemaJson.getString("shareId"));
            }
        }
        if (schemaJson.has("albumId")) {
            values.put("albumId", schemaJson.getString("albumId"));
        }
        if (schemaJson.has("creatorInfo")) {
            JSONObject creatorInfo = schemaJson.getJSONObject("creatorInfo");
            if (creatorInfo.has("creatorId")) {
                values.put("creatorId", creatorInfo.getString("creatorId"));
            }
        }
        if (schemaJson.has("isPublic")) {
            if (schemaJson.getBoolean("isPublic")) {
                values.put("isPublic", Integer.valueOf(1));
                if (schemaJson.has("publicUrl")) {
                    values.put("publicUrl", schemaJson.getString("publicUrl"));
                }
            } else {
                values.put("isPublic", Integer.valueOf(0));
                values.putNull("publicUrl");
            }
        }
        if (schemaJson.has("ubiDefaultIndex")) {
            values.put("ubiSubIndex", Integer.valueOf(schemaJson.getInt("ubiDefaultIndex")));
        }
        if (schemaJson.has("ubiSubImageCount")) {
            values.put("ubiSubImageCount", Integer.valueOf(schemaJson.getInt("ubiSubImageCount")));
        }
        if (schemaJson.has("currentFocusIndex")) {
            values.put("ubiFocusIndex", Integer.valueOf(schemaJson.getInt("currentFocusIndex")));
        }
        if (schemaJson.has("exifInfo")) {
            JSONObject exifJson = schemaJson.getJSONObject("exifInfo");
            Iterator it = DBImage.sExifDataConst.iterator();
            while (it.hasNext()) {
                ExifDataConst exifDataConst = (ExifDataConst) it.next();
                switch (exifDataConst.exifValueType) {
                    case 0:
                        if (!exifJson.has(exifDataConst.cloudTagName)) {
                            break;
                        }
                        values.put(((TableColumn) GalleryDBHelper.getInstance().getCloudColumns().get(exifDataConst.columnIndex)).mName, Long.valueOf(getLongAttributeFromJson(exifJson, exifDataConst.cloudTagName)));
                        break;
                    case 1:
                        if (!exifJson.has(exifDataConst.cloudTagName)) {
                            break;
                        }
                        values.put(((TableColumn) GalleryDBHelper.getInstance().getCloudColumns().get(exifDataConst.columnIndex)).mName, exifJson.getString(exifDataConst.cloudTagName));
                        break;
                    default:
                        Log.e("CloudUtils", "exifDataConst.exifValueType is wrong: " + exifDataConst.exifValueType);
                        break;
                }
            }
        }
        if (schemaJson.has("geoInfo")) {
            JSONObject geoJson = schemaJson.getJSONObject("geoInfo");
            String addressList = geoJson.optString("addressList");
            String address = geoJson.optString("address");
            boolean accurate = geoJson.optBoolean("isAccurate", true);
            String extraGps = geoJson.optString("gps");
            String str;
            if (addressList != null && addressList.length() > 0) {
                JSONArray jSONArray = new JSONArray(addressList);
                if (accurate) {
                    str = null;
                } else {
                    str = extraGps;
                }
                values.put("location", LocationManager.formatAddress(jSONArray, str));
                values.put("address", addressList);
            } else if (address != null) {
                if (accurate) {
                    str = null;
                } else {
                    str = extraGps;
                }
                values.put("location", LocationManager.formatAddress(address, str));
            }
            if (!(accurate || TextUtils.isEmpty(extraGps))) {
                values.put("extraGPS", extraGps);
            }
        }
        if (values.get("serverType") == null || values.getAsInteger("serverType").intValue() != 0 || values.get("serverId") == null || !isUmodifyAlbum(String.valueOf(values.getAsLong("serverId")))) {
            return values;
        }
        replaceFieldsForSystemAlbum(values);
        return values;
    }

    private static void parseBabyInfo(JSONObject schemaJson, ContentValues values) throws JSONException {
        if (ApplicationHelper.isBabyAlbumFeatureOpen() && schemaJson.has("renderInfos")) {
            JSONArray array = schemaJson.getJSONArray("renderInfos");
            for (int i = 0; i < array.length(); i++) {
                JSONObject obj = array.getJSONObject(i);
                if (obj.has("type") && obj.getString("type").equalsIgnoreCase(BabyAlbumUtils.BABY_BABY)) {
                    values.put("babyInfoJson", obj.toString());
                    if (obj.has("peopleId")) {
                        values.put("peopleId", obj.getString("peopleId"));
                        return;
                    }
                    return;
                }
            }
        }
    }

    public static void parseDescription(ContentValues values, String description) {
        if (!TextUtils.isEmpty(description)) {
            try {
                String localFile = new JSONObject(description).optString("localFile");
                if (!TextUtils.isEmpty(localFile)) {
                    values.put("localFile", localFile);
                }
            } catch (Throwable e) {
                Log.w("CloudUtils", e);
            }
        }
    }

    public static String getLocalFileFromDescription(String description) {
        if (!TextUtils.isEmpty(description)) {
            try {
                return new JSONObject(description).optString("localFile");
            } catch (Throwable e) {
                Log.w("CloudUtils", e);
            }
        }
        return null;
    }

    public static Boolean getAutoUploadAttributeFromDescription(String description) {
        if (TextUtils.isEmpty(description)) {
            return null;
        }
        try {
            JSONObject json = new JSONObject(description);
            if (json.has("autoUpload")) {
                return Boolean.valueOf(json.getBoolean("autoUpload"));
            }
            return null;
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            return null;
        }
    }

    public static Boolean getManualSetUploadFromDescription(String description) {
        if (TextUtils.isEmpty(description)) {
            return null;
        }
        try {
            JSONObject json = new JSONObject(description);
            if (json.has("manualSetUpload")) {
                return Boolean.valueOf(json.getBoolean("manualSetUpload"));
            }
            return null;
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            return null;
        }
    }

    public static Boolean getShowInOtherAlbumsAttributeFromDescription(String description) {
        if (TextUtils.isEmpty(description)) {
            return null;
        }
        try {
            JSONObject json = new JSONObject(description);
            if (json.has("showInOtherAlbums")) {
                return Boolean.valueOf(json.getBoolean("showInOtherAlbums"));
            }
            return null;
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            return null;
        }
    }

    public static Boolean getShowInOtherAlbumsManualAttributeFromDescription(String description) {
        if (TextUtils.isEmpty(description)) {
            return null;
        }
        try {
            JSONObject json = new JSONObject(description);
            if (json.has("manualShowInOtherAlbums")) {
                return Boolean.valueOf(json.getBoolean("manualShowInOtherAlbums"));
            }
            return null;
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            return null;
        }
    }

    public static Boolean getIsFavoriteFromDescription(String description) {
        if (TextUtils.isEmpty(description)) {
            return null;
        }
        try {
            JSONObject json = new JSONObject(description);
            if (json.has("isFavorite")) {
                return Boolean.valueOf(json.getBoolean("isFavorite"));
            }
            return null;
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            return null;
        }
    }

    public static Long getSpecialTypeFlagsFromDescription(String description) {
        if (!TextUtils.isEmpty(description)) {
            try {
                JSONObject json = new JSONObject(description);
                if (json.has("specialTypeFlags")) {
                    return Long.valueOf(json.getLong("specialTypeFlags"));
                }
            } catch (Throwable e) {
                Log.w("CloudUtils", e);
            }
        }
        return null;
    }

    public static void reviseSpecialTypeFlags(ContentValues values, DBImage oldDbImage) {
        Long specialTypeFlags = getSpecialTypeFlagsFromDescription(values.getAsString("description"));
        if (!(oldDbImage == null || specialTypeFlags == null)) {
            specialTypeFlags = Long.valueOf(specialTypeFlags.longValue() | oldDbImage.getSpecialTypeFlags());
        }
        if (specialTypeFlags != null) {
            values.put("specialTypeFlags", specialTypeFlags);
        }
    }

    public static void reviseAttributes(ContentValues values, DBImage oldDbImage) {
        long attributes = 0;
        String description = values.getAsString("description");
        Boolean autoUpload = getAutoUploadAttributeFromDescription(description);
        Boolean showInOtherAlbums = getShowInOtherAlbumsAttributeFromDescription(description);
        String localFile = values.getAsString("localFile");
        if (oldDbImage != null) {
            attributes = 0 | oldDbImage.getAttributes();
        } else if (ExtraTextUtils.startsWithIgnoreCase(localFile, "MIUI/Gallery/cloud") && autoUpload == null) {
            attributes = 0 | 1;
        }
        if (!TextUtils.isEmpty(values.getAsString("babyInfoJson"))) {
            if (autoUpload == null || !autoUpload.booleanValue() || (1 & attributes) == 0) {
                Log.w("CloudUtils", "correct attribute autoUpload to true for baby album");
            }
            attributes |= 1;
        } else if (autoUpload != null) {
            if (autoUpload.booleanValue()) {
                attributes |= 1;
            } else {
                attributes &= -2;
            }
            Boolean manualSetUpload = getManualSetUploadFromDescription(description);
            if (manualSetUpload != null) {
                if (manualSetUpload.booleanValue()) {
                    attributes |= 2;
                } else {
                    attributes &= -3;
                }
            }
        }
        if (showInOtherAlbums != null) {
            if (showInOtherAlbums.booleanValue()) {
                attributes |= 64;
            } else {
                attributes &= -65;
            }
            Boolean showInOtherAlbumsManual = getShowInOtherAlbumsManualAttributeFromDescription(description);
            if (showInOtherAlbumsManual != null) {
                if (showInOtherAlbumsManual.booleanValue()) {
                    attributes |= 128;
                } else {
                    attributes &= -129;
                }
            }
        } else if (autoUpload != null) {
            if (autoUpload.booleanValue()) {
                attributes &= -65;
            } else {
                attributes |= 64;
            }
        }
        values.put("attributes", Long.valueOf(attributes));
        Object obj = (1 & attributes) == 0 ? 1 : null;
        Object obj2 = (autoUpload == null || !autoUpload.booleanValue()) ? 1 : null;
        if (obj == obj2) {
            obj = (64 & attributes) == 0 ? 1 : null;
            obj2 = (showInOtherAlbums == null || !showInOtherAlbums.booleanValue()) ? 1 : null;
            if (obj == obj2) {
                return;
            }
        }
        String editedColumns = "";
        if (!(oldDbImage == null || TextUtils.isEmpty(oldDbImage.getEditedColumns()))) {
            editedColumns = oldDbImage.getEditedColumns();
        }
        values.put("editedColumns", GalleryCloudUtils.mergeEditedColumns(GalleryCloudUtils.mergeEditedColumns(editedColumns, values.getAsString("editedColumns")), GalleryCloudUtils.transformToEditedColumnsElement(6)));
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0012 A:{SYNTHETIC, Splitter: B:7:0x0012} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String collectMediaDescription(DBImage dbImage) {
        JSONException e;
        try {
            JSONObject json;
            JSONObject json2;
            String description = dbImage.getDescription();
            if (!TextUtils.isEmpty(description)) {
                try {
                    json = new JSONObject(description);
                } catch (JSONException e2) {
                    Log.w("CloudUtils", "failed to parse: " + description);
                    e2.printStackTrace();
                }
                if (json != null) {
                    try {
                        json2 = new JSONObject();
                    } catch (JSONException e3) {
                        e2 = e3;
                        json2 = json;
                        e2.printStackTrace();
                        return null;
                    }
                }
                json2 = json;
                json2.put("isFavorite", dbImage.isFavorite());
                json2.put("specialTypeFlags", dbImage.getSpecialTypeFlags());
                return json2.toString();
            }
            json = null;
            if (json != null) {
            }
            json2.put("isFavorite", dbImage.isFavorite());
            json2.put("specialTypeFlags", dbImage.getSpecialTypeFlags());
            return json2.toString();
        } catch (JSONException e4) {
            e2 = e4;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0012 A:{SYNTHETIC, Splitter: B:7:0x0012} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x002d A:{Catch:{ JSONException -> 0x0098 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x003b A:{Catch:{ JSONException -> 0x0098 }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0094  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0049 A:{Catch:{ JSONException -> 0x0098 }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0096  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0057 A:{Catch:{ JSONException -> 0x0098 }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String collectAlbumDescription(DBImage dbImage) {
        JSONException e;
        try {
            JSONObject json;
            JSONObject json2;
            boolean autoUpload;
            boolean manualUpload;
            boolean showInOtherAlbums;
            boolean manualShowInOtherAlbums;
            String description = dbImage.getDescription();
            if (!TextUtils.isEmpty(description)) {
                try {
                    json = new JSONObject(description);
                } catch (JSONException e2) {
                    Log.w("CloudUtils", "failed to parse: " + description);
                    e2.printStackTrace();
                }
                if (json != null) {
                    try {
                        json2 = new JSONObject();
                    } catch (JSONException e3) {
                        e2 = e3;
                        json2 = json;
                        e2.printStackTrace();
                        return null;
                    }
                }
                json2 = json;
                json2.put("localFile", dbImage.getLocalFile());
                autoUpload = (dbImage.getAttributes() & 1) == 0;
                manualUpload = (dbImage.getAttributes() & 2) == 0;
                showInOtherAlbums = (dbImage.getAttributes() & 64) == 0;
                manualShowInOtherAlbums = (dbImage.getAttributes() & 128) == 0;
                json2.put("autoUpload", autoUpload);
                json2.put("manualSetUpload", manualUpload);
                json2.put("showInOtherAlbums", showInOtherAlbums);
                json2.put("manualShowInOtherAlbums", manualShowInOtherAlbums);
                return json2.toString();
            }
            json = null;
            if (json != null) {
            }
            json2.put("localFile", dbImage.getLocalFile());
            if ((dbImage.getAttributes() & 1) == 0) {
            }
            if ((dbImage.getAttributes() & 2) == 0) {
            }
            if ((dbImage.getAttributes() & 64) == 0) {
            }
            if ((dbImage.getAttributes() & 128) == 0) {
            }
            json2.put("autoUpload", autoUpload);
            json2.put("manualSetUpload", manualUpload);
            json2.put("showInOtherAlbums", showInOtherAlbums);
            json2.put("manualShowInOtherAlbums", manualShowInOtherAlbums);
            return json2.toString();
        } catch (JSONException e4) {
            e2 = e4;
        }
    }

    public static ContentValues getContentValuesForAllAndThumbNull(JSONObject schemaJson) throws JSONException {
        if (schemaJson == null) {
            return null;
        }
        if (schemaJson.has("content")) {
            schemaJson = schemaJson.getJSONObject("content");
        }
        ContentValues values = getContentValuesForAll(schemaJson);
        values.putNull("thumbnailFile");
        values.putNull("microthumbfile");
        return values;
    }

    private static ContentValues getContentValuesForDefault(JSONObject schemaJson) throws JSONException {
        ContentValues values = new ContentValues();
        if (schemaJson.has("id")) {
            values.put("serverId", Long.valueOf(getLongAttributeFromJson(schemaJson, "id")));
        }
        if (schemaJson.has("status")) {
            values.put("serverStatus", schemaJson.getString("status"));
        }
        if (schemaJson.has("tag")) {
            values.put("serverTag", Long.valueOf(getLongAttributeFromJson(schemaJson, "tag")));
        }
        if (schemaJson.has("type")) {
            String serverType = schemaJson.getString("type");
            int type = 0;
            if (serverType.equals(ImageLookup.DIRECTORY_IMAGE)) {
                type = 1;
            } else if (serverType.equals("video")) {
                type = 2;
            } else if (serverType.equals("group")) {
                type = 0;
            } else {
                Log.e("CloudUtils", "error server type:" + serverType);
            }
            values.put("serverType", Integer.valueOf(type));
        }
        if (schemaJson.has("sha1")) {
            values.put("sha1", schemaJson.getString("sha1"));
        }
        if (schemaJson.has("labels")) {
            JSONArray array = schemaJson.getJSONArray("labels");
            if (array.length() > 0) {
                for (int i = 0; i < array.length(); i++) {
                    JSONObject obj = array.getJSONObject(i);
                    if (obj.has(MembersColumns.LABEL) && "pet".equalsIgnoreCase(obj.getString(MembersColumns.LABEL))) {
                        values.put("lables", Integer.valueOf(1));
                        break;
                    }
                }
            }
        }
        return values;
    }

    public static ContentValues getContentValuesForUploadDeletePurged(JSONObject schemaJson) throws JSONException {
        ContentValues values = new ContentValues();
        if (schemaJson != null) {
            if (schemaJson.has("content")) {
                schemaJson = schemaJson.getJSONObject("content");
            }
            values = getContentValuesForDefault(schemaJson);
        }
        values.put("localFlag", Integer.valueOf(0));
        return values;
    }

    public static ContentValues getContentValuesForOwnerAlbum(JSONObject schemaJson) throws JSONException {
        ContentValues values = new ContentValues();
        if (schemaJson != null) {
            if (schemaJson.has("albumId")) {
                values.put("serverId", Long.valueOf(getLongAttributeFromJson(schemaJson, "albumId")));
            }
            if (schemaJson.has("description")) {
                String description = schemaJson.getString("description");
                values.put("description", description);
                parseDescription(values, description);
            }
            if (schemaJson.has("name")) {
                values.put("fileName", schemaJson.getString("name"));
            }
            if (ApplicationHelper.isAutoUploadFeatureOpen() && schemaJson.has("appKey")) {
                values.put("appKey", schemaJson.getString("appKey"));
            }
            parseBabyInfo(schemaJson, values);
            if (schemaJson.has("lastUpdateTime")) {
                values.put("dateModified", Long.valueOf(getLongAttributeFromJson(schemaJson, "lastUpdateTime")));
            }
            if (schemaJson.has("createTime")) {
                values.put("dateTaken", Long.valueOf(getLongAttributeFromJson(schemaJson, "createTime")));
            }
            values.put("serverType", Integer.valueOf(0));
            values.put("serverStatus", "custom");
            if (values.get("serverId") != null && isUmodifyAlbum(String.valueOf(values.getAsLong("serverId")))) {
                replaceFieldsForSystemAlbum(values);
            }
        }
        return values;
    }

    public static String moveImageToFolder(String sourceFilePath, String destFolderPath, boolean hideFolder) {
        return moveImage(sourceFilePath, BaseFileUtils.concat(destFolderPath, ExtraFileUtils.getFileName(sourceFilePath)), hideFolder);
    }

    public static String moveImage(String sourceFilePath, String destFilePath, boolean hideFolder) {
        if (TextUtils.isEmpty(sourceFilePath) || TextUtils.isEmpty(destFilePath)) {
            return sourceFilePath;
        }
        File srcFile = new File(sourceFilePath);
        File destFile = new File(destFilePath);
        long lastModifiedTime = srcFile.lastModified();
        if (!FileUtils.createFolder(destFile.getParentFile(), hideFolder)) {
            return sourceFilePath;
        }
        if (FileUtils.move(srcFile, destFile)) {
            if (lastModifiedTime != 0) {
                destFile.setLastModified(lastModifiedTime);
            }
            return destFilePath;
        }
        String resultPath = copyImage(sourceFilePath, destFilePath, hideFolder);
        if (Utils.isNullOrEmpty(resultPath) || resultPath.equals(sourceFilePath) || !FileUtils.isFileExist(resultPath)) {
            return sourceFilePath;
        }
        MediaFileUtils.deleteFileType(FileType.NORMAL, sourceFilePath);
        return resultPath;
    }

    public static String copyImage(String sourceFilePath, String destFilePath, boolean hideFolder) {
        if (!FileUtils.createFolder(FileUtils.getParentFolderPath(destFilePath), hideFolder)) {
            return sourceFilePath;
        }
        final long startTime = System.currentTimeMillis();
        try {
            final InputStream inputStream = new FileInputStream(sourceFilePath);
            InputStream is = inputStream;
            final String str = destFilePath;
            Boolean result = (Boolean) BaseDocumentProviderUtils.safeWriteFile(destFilePath, new WriteHandler<Boolean>() {
                public Boolean handle(FileOutputStream os) {
                    if (!GalleryUtils.copyFile(inputStream, os)) {
                        return Boolean.valueOf(false);
                    }
                    Utils.setPermissions(str, 438, -1, -1);
                    Log.d("CloudUtils", "copy image finish, time:" + (System.currentTimeMillis() - startTime));
                    return Boolean.valueOf(true);
                }
            });
            String str2 = (result == null || !result.booleanValue()) ? sourceFilePath : destFilePath;
            BaseMiscUtil.closeSilently(is);
            if (null == null) {
                Log.d("moveimage", "change mtime ret:" + new File(destFilePath).setLastModified(new File(sourceFilePath).lastModified()));
            } else {
                MediaFileUtils.deleteFileType(FileType.NORMAL, destFilePath);
            }
            return str2;
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            BaseMiscUtil.closeSilently(null);
            if (true) {
                MediaFileUtils.deleteFileType(FileType.NORMAL, destFilePath);
                return sourceFilePath;
            }
            Log.d("moveimage", "change mtime ret:" + new File(destFilePath).setLastModified(new File(sourceFilePath).lastModified()));
            return sourceFilePath;
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            if (null == null) {
                Log.d("moveimage", "change mtime ret:" + new File(destFilePath).setLastModified(new File(sourceFilePath).lastModified()));
            } else {
                MediaFileUtils.deleteFileType(FileType.NORMAL, destFilePath);
            }
        }
    }

    public static void deleteDirty(DBImage dbImage) {
        GalleryUtils.safeDelete(dbImage.getBaseUri(), "_id = '" + dbImage.getId() + "'", null);
        UbiFocusUtils.safeDeleteSubUbi(dbImage);
    }

    public static File saveBitmapToFile(final Bitmap toSaveBitmap, String directory, String fileName) {
        final String fileExtension = ExtraFileUtils.getExtension(fileName);
        File candidate = new File(directory + "/" + fileName);
        try {
            if (!FileUtils.createFolder(directory, RequestCloudItem.shouldHideDownloadFolder(directory))) {
                return null;
            }
            if (!candidate.exists() && !BaseDocumentProviderUtils.needUseDocumentProvider(candidate.getAbsolutePath()) && !candidate.createNewFile()) {
                return null;
            }
            BaseDocumentProviderUtils.safeWriteFile(candidate.getAbsolutePath(), new WriteHandler<Boolean>() {
                public Boolean handle(FileOutputStream out) {
                    GalleryUtils.saveBitmapToOutputStream(toSaveBitmap, GalleryUtils.convertExtensionToCompressFormat(fileExtension), out);
                    return Boolean.valueOf(true);
                }
            });
            return candidate;
        } catch (Object e) {
            Log.e("CloudUtils", "fail to save image: " + candidate.getAbsolutePath(), e);
            MediaFileUtils.deleteFileType(FileType.NORMAL, candidate);
            return null;
        }
    }

    public static String getThumbnailNameBySha1(String sha1) {
        return sha1 + ".jpg";
    }

    public static String getThumbnailNameByTitle(String title) {
        return title + ".jpg";
    }

    private static File buildThumbnail(String filePath, ThumbnailFactory factory, ThumbnailMetaWriter writer) {
        String fileName = factory.getFileName();
        File file = new File(factory.getDirectory(), fileName);
        if (file.exists()) {
            return file;
        }
        Bitmap bm = factory.create();
        if (bm != null) {
            try {
                File savedFile = saveBitmapToFile(bm, factory.getDirectory(), fileName);
                if (savedFile != null) {
                    if (writer.write(savedFile.getAbsolutePath()) || StorageUtils.getPriorMicroThumbnailDirectory().equals(factory.getDirectory())) {
                        if (!bm.isRecycled()) {
                            bm.recycle();
                        }
                        return savedFile;
                    }
                    MediaFileUtils.deleteFileType(FileType.THUMBNAIL, savedFile);
                }
                if (!bm.isRecycled()) {
                    bm.recycle();
                }
            } catch (Throwable th) {
                if (!bm.isRecycled()) {
                    bm.recycle();
                }
            }
        }
        return null;
    }

    public static String readFileNameFromExif(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        try {
            UserCommentData data = ExifUtil.getUserCommentData(filePath);
            if (data != null) {
                return data.getFileName(FileUtils.getFileTitle(FileUtils.getFileName(filePath)));
            }
            return null;
        } catch (Object e) {
            Log.e("CloudUtils", "Failed to read exif!!", e);
            return null;
        }
    }

    public static String buildBigThumbnailForImage(final String sourceFile, String sha1, final String thumbnailDir, final String thumbnailFileName, ThumbnailMetaWriter writer) {
        if (TextUtils.isEmpty(sourceFile)) {
            Log.w("CloudUtils", "failed to convert, sourceFile=%s", sourceFile);
            return null;
        } else if (TextUtils.isEmpty(thumbnailDir) || TextUtils.isEmpty(thumbnailFileName)) {
            Log.w("CloudUtils", "failed to convert, sourceFile=%s, thumbnailDir=%s, thumbnailFileName=%s", sourceFile, thumbnailDir, thumbnailFileName);
            return null;
        } else {
            File thumbnailFile = buildThumbnail(sourceFile, new ThumbnailFactory() {
                public String getDirectory() {
                    return thumbnailDir;
                }

                public Bitmap create() {
                    GalleryOptions options = new GalleryOptions();
                    options.inPreferredConfig = Config.ARGB_8888;
                    return DecodeUtils.requestDecodeThumbNail(sourceFile, options);
                }

                public String getFileName() {
                    return thumbnailFileName;
                }
            }, writer);
            if (thumbnailFile != null) {
                return thumbnailFile.getAbsolutePath();
            }
            return null;
        }
    }

    public static JSONObject postToXiaomi(String url, List<NameValuePair> parameters, JSONObject data, Account account, GalleryExtendedAuthToken extToken, int retryTimes, boolean needReRequest) throws IllegalBlockSizeException, BadPaddingException, JSONException, IOException, GalleryMiCloudServerException {
        if (CTA.canConnectNetwork()) {
            String resultString;
            if (parameters == null) {
                parameters = new ArrayList();
            }
            addRetryParameters(parameters, retryTimes, needReRequest, extToken);
            if (data != null) {
                parameters.add(new BasicNameValuePair("data", data.toString()));
            }
            Log.d("CloudUtils", "POST URL:" + url);
            if (extToken != null) {
                resultString = ApplicationHelper.getMiCloudProvider().securePost(url, getParamsMap(parameters));
            } else {
                resultString = NetworkUtils.httpPostRequestForString(url, new UrlEncodedFormEntity(parameters, Keyczar.DEFAULT_ENCODING), null);
            }
            return new JSONObject(resultString);
        }
        Log.d("CloudUtils", "CTA not confirmed when post request");
        return null;
    }

    public static JSONObject getFromXiaomi(String url, List<NameValuePair> parameters, Account account, GalleryExtendedAuthToken extToken, int retryTimes, boolean needReRequest) throws IllegalBlockSizeException, BadPaddingException, JSONException, IOException, URISyntaxException, GalleryMiCloudServerException {
        if (CTA.canConnectNetwork()) {
            if (parameters == null) {
                parameters = new ArrayList();
            }
            addRetryParameters(parameters, retryTimes, needReRequest, extToken);
            Log.d("CloudUtils", "GET URL:" + url);
            return new JSONObject(ApplicationHelper.getMiCloudProvider().secureGet(url, getParamsMap(parameters)));
        }
        Log.d("CloudUtils", "CTA not confirmed when get from server");
        return null;
    }

    private static Map<String, String> getParamsMap(List<NameValuePair> parameters) {
        HashMap<String, String> paramsMap = Maps.newHashMap();
        for (NameValuePair param : parameters) {
            paramsMap.put(param.getName(), param.getValue());
        }
        return paramsMap;
    }

    private static void addRetryParameters(List<NameValuePair> parameters, int retryTimes, boolean needReRequest, GalleryExtendedAuthToken extToken) {
        if (retryTimes > 0) {
            parameters.add(new BasicNameValuePair("retry", Integer.toString(retryTimes)));
        }
        if (needReRequest) {
            parameters.add(new BasicNameValuePair("needReRequest", String.valueOf(needReRequest)));
        }
    }

    public static int getServerType(File f) {
        if (f == null) {
            return -1;
        }
        String mimeType = FileMimeUtil.getSupportUploadMimeType(f.getAbsolutePath());
        if (BaseFileMimeUtil.isImageFromMimeType(mimeType)) {
            return 1;
        }
        if (BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
            return 2;
        }
        String suffix = ExtraFileUtils.getExtension(f);
        if (suffix.equalsIgnoreCase("y") || suffix.equalsIgnoreCase("sa")) {
            return 1;
        }
        return -1;
    }

    public static DBShareAlbum getDBShareAlbumByLocalId(String localId) {
        return getDBShareAlbum("_id", localId);
    }

    public static DBShareAlbum getDBShareAlbumBySharedId(String sharedId) {
        return getDBShareAlbum("albumId", sharedId);
    }

    private static DBShareAlbum getDBShareAlbum(String columnName, String columnValue) {
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(getLimitUri(GalleryCloudUtils.SHARE_ALBUM_URI, 1), getProjectionAll(), String.format(Locale.US, "%s=?", new Object[]{columnName}), new String[]{columnValue}, null);
            if (cursor == null) {
                Log.d("CloudUtils", "there isn't have any share album in local DB for " + columnName + " = " + columnValue);
            } else if (cursor.moveToNext()) {
                DBShareAlbum dBShareAlbum = new DBShareAlbum(cursor);
                return dBShareAlbum;
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static DBShareUser getDBShareUserInLocal(Uri uri, String userId, String albumId) {
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(getLimitUri(uri, 1), getProjectionAll(), "userId = ? AND albumId = ? ", new String[]{userId, albumId}, null);
            if (cursor == null) {
                Log.d("CloudUtils", "there isn't have any user for userId = " + userId + ", albumId = " + albumId);
            } else if (cursor.moveToNext()) {
                DBShareUser dBShareUser = new DBShareUser(cursor);
                return dBShareUser;
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static DBShareUser getInvitedDBShareUserInLocal(Uri uri, String userId, String albumId, String relation, String relationText) {
        boolean needRelationText = false;
        Cursor cursor = null;
        try {
            if (TextUtils.equals(relation, "friend") || TextUtils.equals(relation, "family")) {
                needRelationText = true;
            }
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(getLimitUri(uri, 1), getProjectionAll(), String.format(Locale.US, "%s = '%s' AND (%s IS NULL OR %s = '%s') AND %s = '%s' AND %s = '%s'" + (needRelationText ? " AND %s = '%s'" : ""), new Object[]{"serverStatus", "invited", "userId", "userId", userId, "albumId", albumId, "relation", relation, "relationText", relationText}), null, null);
            if (cursor == null) {
                Log.d("CloudUtils", "there isn't have any user for userId = " + userId + ", albumId = " + albumId);
            } else if (cursor.moveToNext()) {
                DBShareUser dBShareUser = new DBShareUser(cursor);
                return dBShareUser;
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static DBImage getItemByServerID(Context context, String serverId) {
        return getItem(GalleryCloudUtils.CLOUD_URI, context, "serverId", serverId);
    }

    public static DBImage getItem(Uri uri, Context context, String columnName, String columnValue) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getLimitUri(uri, 1), getProjectionAll(), columnName + " = '" + columnValue + "'", null, null);
            if (cursor == null) {
                Log.d("CloudUtils", "there isn't have any item in local DB for " + columnName + " = " + columnValue);
            } else if (cursor.moveToNext()) {
                DBImage createDBImageByUri = createDBImageByUri(uri, cursor);
                return createDBImageByUri;
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static DBImage createDBImageByUri(Uri uri, Cursor cursor) {
        if (uri.equals(GalleryCloudUtils.CLOUD_URI)) {
            return new DBCloud(cursor);
        }
        if (uri.equals(GalleryCloudUtils.SHARE_IMAGE_URI)) {
            return new DBShareImage(cursor);
        }
        if (uri.equals(GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI)) {
            return new DBOwnerSubUbiImage(cursor);
        }
        if (uri.equals(GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI)) {
            return new DBShareSubUbiImage(cursor);
        }
        return null;
    }

    public static DBCloud getGroupByFileName(Context context, String fileName) {
        return getGroupItemByColumnnameAndValue(context, "fileName", fileName, true);
    }

    public static DBCloud getGroupByAppKey(Context context, String appKey) {
        return getItemByAppKey(context, appKey);
    }

    public static DBCloud getItemByAppKey(Context context, String appKey) {
        return getGroupItemByColumnnameAndValue(context, "appKey", appKey, false);
    }

    public static DBCloud getGroupItemByColumnnameAndValue(Context context, String columnName, String value, boolean ignoreCase) {
        String columnSelection;
        Cursor cursor = null;
        if (ignoreCase) {
            try {
                columnSelection = columnName + " like ? ";
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        } else {
            columnSelection = columnName + " = ? ";
        }
        cursor = context.getContentResolver().query(getCloudLimit1Uri(), getProjectionAll(), columnSelection + "  AND ( " + photoLocalFlag_Synced + " OR " + photoLocalFlag_Create_ForceCreate_Move_Copy_Rename + " ) AND " + itemIsGroup, new String[]{value}, null);
        if (cursor == null || !cursor.moveToNext()) {
            if (cursor != null) {
                cursor.close();
            }
            return null;
        }
        DBCloud dBCloud = new DBCloud(cursor);
        if (cursor == null) {
            return dBCloud;
        }
        cursor.close();
        return dBCloud;
    }

    public static DBShareAlbum getGroupItemByColumnnameAndValueFromShare(Context context, String columnName, String value) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getCloudShareAlbumLimit1Uri(), getProjectionAll(), columnName + " = ? ", new String[]{value}, null);
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            DBShareAlbum dBShareAlbum = new DBShareAlbum(cursor);
            return dBShareAlbum;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static List<DBImage> getCandidateItemsInAGroup(Context context, String fileName, String sha1, String localGroupId, boolean isShareAlbum) {
        Cursor cursor = null;
        List<DBImage> candidateItems = Lists.newArrayList();
        try {
            String[] selectionArgs;
            String groupIdSelectionSeg;
            Uri cloudShareLimit1Uri;
            if (CloudTableUtils.isGroupWithoutRecordByCloudId(Long.valueOf(localGroupId).longValue())) {
                long groupId = CloudTableUtils.getServerIdForGroupWithoutRecord(Long.valueOf(localGroupId).longValue());
                selectionArgs = new String[]{fileName, sha1, localGroupId, String.valueOf(groupId)};
                groupIdSelectionSeg = String.format(Locale.US, "(%s = ? OR %s = ?)", new Object[]{"localGroupId", "groupId"});
            } else {
                selectionArgs = new String[]{fileName, sha1, localGroupId};
                groupIdSelectionSeg = String.format(Locale.US, "%s = ?", new Object[]{"localGroupId"});
            }
            ContentResolver contentResolver = context.getContentResolver();
            if (isShareAlbum) {
                cloudShareLimit1Uri = getCloudShareLimit1Uri();
            } else {
                cloudShareLimit1Uri = getCloudLimit1Uri();
            }
            cursor = contentResolver.query(cloudShareLimit1Uri, getProjectionAll(), String.format(Locale.US, "(%s = ? OR %s = ?) AND %s AND %s AND %s", new Object[]{"fileName", "sha1", photoLocalFlag_Create_ForceCreate_Move_Copy_Rename, itemIsNotGroup, groupIdSelectionSeg}), selectionArgs, null);
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    DBImage dBShareImage;
                    if (isShareAlbum) {
                        dBShareImage = new DBShareImage(cursor);
                    } else {
                        dBShareImage = new DBCloud(cursor);
                    }
                    candidateItems.add(item);
                }
            } else {
                Log.d("CloudUtils", "there isn't have any item in group: %s for fileName: %s, sha1: %s", localGroupId, fileName, sha1);
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (SQLiteCantOpenDatabaseException e) {
            e.printStackTrace();
            return candidateItems;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return candidateItems;
    }

    private static Cursor getRecordFromCloudOwnerAlbum(String filePath) {
        return getRecordFromCloudAlbum(filePath, getCloudLimit1Uri(), "thumbnailFile", "microthumbfile", "localFile", photoLocalFlag_Synced);
    }

    private static Cursor getRecordFromCloudSharerAlbum(String filePath) {
        return getRecordFromCloudAlbum(filePath, getLimitUri(GalleryCloudUtils.SHARE_IMAGE_URI, 1), "thumbnailFile", "microthumbfile", "localFile", photoLocalFlag_Synced);
    }

    private static Cursor getRecordFromCloudAlbum(String filePath, Uri uri, String thumbnailFileColumn, String microThumbnailFileColumn, String localFileColumn, String localFlagSyncd) {
        Cursor cursor = null;
        try {
            return GalleryApp.sGetAndroidContext().getContentResolver().query(uri, getProjectionAll(), "(" + thumbnailFileColumn + " = ? " + " COLLATE NOCASE " + " OR " + microThumbnailFileColumn + " = ? " + " COLLATE NOCASE " + " OR " + localFileColumn + " = ? " + " COLLATE NOCASE " + ") AND ( " + photoLocalFlag_Create_ForceCreate_Move_Copy_Rename + " OR " + localFlagSyncd + " ) AND " + itemIsNotGroup, new String[]{filePath, filePath, filePath}, null);
        } catch (Throwable e) {
            Log.w("CloudUtils", e);
            return cursor;
        }
    }

    private static boolean tryToMoveToNext(Cursor cursor) {
        return cursor == null ? false : cursor.moveToNext();
    }

    public static boolean isFileInCloudDB(String filePath) {
        Cursor cursor1 = null;
        Cursor cursor2 = null;
        try {
            cursor1 = getRecordFromCloudOwnerAlbum(filePath);
            if (tryToMoveToNext(cursor1)) {
                return true;
            }
            cursor2 = getRecordFromCloudSharerAlbum(filePath);
            if (tryToMoveToNext(cursor2)) {
                if (cursor1 != null) {
                    cursor1.close();
                }
                if (cursor2 == null) {
                    return true;
                }
                cursor2.close();
                return true;
            }
            if (cursor1 != null) {
                cursor1.close();
            }
            if (cursor2 != null) {
                cursor2.close();
            }
            return false;
        } finally {
            if (cursor1 != null) {
                cursor1.close();
            }
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    public static Uri getCloudLimitUri(int limit) {
        return UriUtil.appendLimit(GalleryCloudUtils.CLOUD_URI, limit);
    }

    private static Uri getCloudShareLimit1Uri() {
        return getLimitUri(GalleryCloudUtils.SHARE_IMAGE_URI, 1);
    }

    private static Uri getCloudShareAlbumLimit1Uri() {
        return getLimitUri(GalleryCloudUtils.SHARE_ALBUM_URI, 1);
    }

    public static Uri getCloudLimit1Uri() {
        return getCloudLimitUri(1);
    }

    public static Uri getLimitUri(Uri uri, int limit) {
        return UriUtil.appendLimit(uri, limit);
    }

    public static Uri getLimitUri(Uri uri, int limit, int offset) {
        return UriUtil.appendLimit(uri, limit, offset);
    }

    public static Uri getCloudDistinctUri(Uri uri) {
        return UriUtil.appendDistinct(uri, true);
    }

    public static String getServerIdByLocalId(Context context, String localId, RequestCloudItem requestItem) {
        long serverId = CloudTableUtils.getServerIdForGroupWithoutRecord(Long.valueOf(localId).longValue());
        if (serverId > 0) {
            return String.valueOf(serverId);
        }
        return getStringColumnValue(context, GalleryCloudUtils.CLOUD_URI, "serverId", "_id", localId);
    }

    public static String getShareAlbumIdByLocalId(Context context, RequestCloudItem requestItem) {
        return getStringColumnValue(context, GalleryCloudUtils.SHARE_ALBUM_URI, "albumId", "_id", requestItem.dbCloud.getLocalGroupId());
    }

    public static String getShareIdByLocalId(Context context, String localId) {
        return getStringColumnValue(context, GalleryCloudUtils.SHARE_IMAGE_URI, "shareId", "_id", localId);
    }

    public static String getCreatorIdByAlbumId(String albumId) {
        return getStringColumnValue(getLimitUri(GalleryCloudUtils.SHARE_ALBUM_URI, 1), "creatorId", "albumId", albumId);
    }

    public static String getStringColumnValue(Uri uri, String projectionColumnName, String selectionColumnName, String selectionValue) {
        return getStringColumnValue(GalleryApp.sGetAndroidContext(), uri, projectionColumnName, selectionColumnName, selectionValue);
    }

    public static String getStringColumnValue(Context context, Uri uri, String projectionColumnName, String selectionColumnName, String selectionVaue) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getLimitUri(uri, 1), new String[]{projectionColumnName}, selectionColumnName + " = '" + selectionVaue + "'", null, null);
            if (cursor == null) {
                Log.d("CloudUtils", String.format("No item in DB for:  %s = %s", new Object[]{selectionColumnName, selectionVaue}));
            } else if (cursor.moveToNext()) {
                String cursorString = GalleryDBHelper.getCursorString(cursor, 0);
                return cursorString;
            }
            if (cursor != null) {
                cursor.close();
            }
            return "";
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static boolean hasCreateCopyMoveImageByGroupId(Context context, String localId) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getCloudLimit1Uri(), new String[]{"_id"}, "localGroupId = ? AND (localFlag = ? OR localFlag = ? OR localFlag = ? OR localFlag = ? OR localFlag = ? ) ", new String[]{localId, String.valueOf(6), String.valueOf(9), String.valueOf(8), String.valueOf(7), String.valueOf(5)}, null);
            if (cursor == null) {
                Log.d("CloudUtils", "there isn't have any item in local DB for localId = " + localId);
            } else if (cursor.moveToNext()) {
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

    public static Account getAccountFromDB(Context context) {
        Cursor cursor = null;
        Account account = null;
        try {
            cursor = context.getContentResolver().query(GalleryCloudUtils.CLOUD_SETTING_URI, new String[]{"accountName", "accountType"}, null, null, null);
            if (cursor != null && cursor.moveToNext()) {
                String name = cursor.getString(0);
                String password = cursor.getString(1);
                if (!(TextUtils.isEmpty(name) || TextUtils.isEmpty(password))) {
                    account = new Account(name, password);
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return account;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static int updateToLocalDB(Uri uri, ContentValues values, DBImage cloud) throws JSONException {
        return updateToLocalDB(uri, values, cloud.getId());
    }

    public static int updateToLocalDB(Uri uri, ContentValues values, String id) {
        return GalleryUtils.safeUpdate(uri, values, "_id = '" + id + "'", null);
    }

    public static void updateToLocalDBByServerId(Uri uri, ContentValues values, String serverId) throws JSONException {
        GalleryUtils.safeUpdate(uri, values, "serverId = '" + serverId + "'", null);
    }

    public static void updateToLocalDBForSync(Uri uri, ContentValues values, DBImage cloud) throws JSONException {
        updateToLocalDBForSync(uri, values, cloud.getId());
    }

    public static void updateToLocalDBForSync(Uri uri, ContentValues values, String id) throws JSONException {
        updateToLocalDBForSync(uri, values, id, false);
    }

    public static void updateToLocalDBForSync(Uri uri, ContentValues values, String id, boolean keepLocalFlag) throws JSONException {
        if (values != null) {
            if (!TextUtils.isEmpty(values.getAsString("serverId"))) {
                ContentValues updates = new ContentValues();
                updates.putNull("serverId");
                GalleryUtils.safeUpdate(uri, updates, "serverId = ?", new String[]{serverId});
            }
            updateToLocalDB(uri, values, id);
        } else {
            values = new ContentValues();
        }
        if (!keepLocalFlag) {
            values.put("localFlag", Integer.valueOf(0));
        }
        GalleryUtils.safeUpdate(uri, values, "_id = ? AND localFlag != ? ", new String[]{id, String.valueOf(2)});
    }

    public static void updateToPeopleFaceDBForSync(Uri uri, ContentValues values, String serverId) throws JSONException {
        updateToLocalDBByServerId(uri, values, serverId);
        values.put("localFlag", Integer.valueOf(0));
        GalleryUtils.safeUpdate(uri, values, "serverId = ? AND localFlag != ? ", new String[]{serverId, String.valueOf(2)});
    }

    public static void updateToPeopleFaceDBForDeleteItem(Uri uri, ContentValues values, String serverId) throws JSONException {
        values.put("localFlag", Integer.valueOf(0));
        updateToLocalDBByServerId(uri, values, serverId);
    }

    public static int canUpload(File file, boolean considerOversize) {
        if (!file.exists() || file.isDirectory()) {
            return 6;
        }
        int type = getServerType(file);
        if (type == -1 || type == 0) {
            return 5;
        }
        long minFileSize = Preference.sGetFilterMinSize();
        long fileLength = file.length();
        if (fileLength <= minFileSize) {
            return 10;
        }
        if (considerOversize && type == 1 && fileLength > getFileSizeLimitStrategy().getImageMaxSize()) {
            return 4;
        }
        if (considerOversize && type == 2 && fileLength > getFileSizeLimitStrategy().getVideoMaxSize()) {
            return 4;
        }
        return 0;
    }

    public static int canUpload(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return 6;
        }
        return canUpload(new File(filePath), true);
    }

    public static int canUpload(String filePath, boolean considerOversize) {
        if (TextUtils.isEmpty(filePath)) {
            return 6;
        }
        return canUpload(new File(filePath), considerOversize);
    }

    public static long getMinFileSizeLimit(String mimeType) {
        return Preference.sGetFilterMinSize();
    }

    public static long getMaxImageSizeLimit() {
        return getFileSizeLimitStrategy().getImageMaxSize();
    }

    public static long getMaxVideoSizeLimit() {
        return getFileSizeLimitStrategy().getVideoMaxSize();
    }

    public static GalleryExtendedAuthToken getExtToken(Context context, Account account) {
        if (CTA.canConnectNetwork()) {
            if (account == null) {
                account = AccountHelper.getXiaomiAccount(context);
            }
            if (account == null) {
                Log.e("CloudUtils", "get extToken failed : account is null");
                return null;
            }
            try {
                return GalleryExtendedAuthToken.parse(((Bundle) AccountManager.get(context).getAuthToken(account, "micgallery", null, true, null, null).getResult()).getString("authtoken"));
            } catch (Object e) {
                Log.e("CloudUtils", "get extToken error", e);
                return null;
            }
        }
        Log.e("CloudUtils", "get extToken failed : cta not allowed");
        return null;
    }

    public static void deleteShareAlbumInLocal(final String albumId, String localId) {
        Log.d("CloudUtils", "deleted " + GalleryUtils.safeDelete(GalleryCloudUtils.SHARE_ALBUM_URI, "albumId = ? ", new String[]{albumId}) + " share albums which shareAlbumId = " + albumId);
        GalleryUtils.safeQuery(ShareImage.SHARE_URI, new String[]{"localFile", "thumbnailFile", "microthumbfile"}, "(groupId = ? OR localGroupId = ?) AND serverStatus = ?", new String[]{albumId, localId, "custom"}, null, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null) {
                    int totalFileCount = 0;
                    while (cursor.moveToNext()) {
                        String localFilePath = cursor.getString(0);
                        String thumbnailFilePath = cursor.getString(1);
                        String microThumbFilePath = cursor.getString(2);
                        totalFileCount = (totalFileCount + MediaFileUtils.deleteFileType(FileType.ORIGINAL, localFilePath)) + MediaFileUtils.deleteFileType(FileType.THUMBNAIL, thumbnailFilePath, microThumbFilePath);
                    }
                    Log.d("CloudUtils", "Deleted " + totalFileCount + " share image files of share album " + albumId);
                }
                return null;
            }
        });
        Log.d("CloudUtils", "deleted " + GalleryUtils.safeDelete(ShareImage.SHARE_URI, "albumId = ? OR localGroupId = ? ", new String[]{albumId, localId}) + " share images which shareAlbumId = " + albumId);
        Log.d("CloudUtils", "deleted " + GalleryUtils.safeDelete(ShareUser.SHARE_USER_URI, "albumId = ? ", new String[]{albumId}) + " share users which shareAlbumId = " + albumId);
    }

    public static String sqlNotEmptyStr(String columnName) {
        return String.format("%s!='' AND %s is not NULL", new Object[]{columnName, columnName});
    }

    public static long getItemId(Uri uri, String column, String value) {
        Cursor c = GalleryApp.sGetAndroidContext().getContentResolver().query(getLimitUri(uri, 1), new String[]{"_id"}, column + "=?", new String[]{value}, null);
        if (c != null) {
            try {
                if (c.moveToFirst()) {
                    long j = c.getLong(0);
                    return j;
                }
                c.close();
            } finally {
                c.close();
            }
        }
        return 0;
    }

    public static boolean isFileNeedUpload(String filePath) {
        return isFileNeedUpload(GalleryCloudUtils.CLOUD_URI, filePath) || isFileNeedUpload(GalleryCloudUtils.SHARE_IMAGE_URI, filePath) || isFileNeedUpload(GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, filePath) || isFileNeedUpload(GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI, filePath);
    }

    private static boolean isFileNeedUpload(Uri uri, String filePath) {
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(getLimitUri(uri, 1), new String[]{"_id"}, "localFile = ?  COLLATE NOCASE  AND ( localFlag = ? OR localFlag = ? ) ", new String[]{filePath, String.valueOf(8), String.valueOf(7)}, null);
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

    public static void sendShareAlbumNotification(Context context, String contentText, int id, Uri soundUri) {
        sendNotification(context, contentText, id, soundUri, R.string.share_album, R.string.share_album, R.drawable.album_share_invitation_stat, "com.miui.gallery.action.VIEW_ALBUM", -1, null, true);
    }

    public static void sendBabyAlbumNewPhotoNotification(Context context, String contentText, int id, Uri soundUri, long albumLocalUniformId, String albumName, boolean isOtherShared) {
        sendNotification(context, contentText, id, soundUri, R.string.baby_album, R.string.baby_album, R.drawable.album_share_invitation_stat, "com.miui.gallery.action.VIEW_ALBUM_NEW_PHOTO", albumLocalUniformId, albumName, isOtherShared);
    }

    private static void sendNotification(Context context, String contentText, int id, Uri soundUri, int tickerId, int contentTitleId, int smallIcon, String action, long albumLocalUniformId, String albumName, boolean isOtherShared) {
        Builder builder = new Builder(context);
        builder.setTicker(context.getString(tickerId));
        builder.setContentTitle(context.getString(contentTitleId));
        builder.setContentText(contentText);
        builder.setSmallIcon(smallIcon);
        if (soundUri != null) {
            builder.setSound(soundUri);
            NotificationHelper.setDefaultChannel(context, builder);
        } else {
            NotificationHelper.setLowChannel(context, builder);
        }
        Intent intent = new Intent(action);
        if (albumLocalUniformId != -1) {
            intent.putExtra("album_id", albumLocalUniformId);
            intent.putExtra("album_name", albumName);
            intent.putExtra("other_share_album", isOtherShared);
            intent.addFlags(67108864);
            intent.addFlags(2);
        }
        builder.setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728));
        Notification n = builder.build();
        n.flags = 16;
        ((NotificationManager) context.getSystemService(ThemeManagerConstants.COMPONENT_CODE_NOTIFICATION)).notify(id, n);
    }

    public static boolean checkAccount(Activity activity, boolean isBlock, Runnable runOnPostExecute) {
        boolean ret = false;
        Context context = GalleryApp.sGetAndroidContext();
        Account accountFromSystem = AccountHelper.getXiaomiAccount(context);
        Account accountFromDB = getAccountFromDB(context);
        if (accountFromDB == null || (accountFromSystem != null && accountFromDB.name.equals(accountFromSystem.name))) {
            ret = true;
        } else {
            Log.w("CloudUtils", "account from DB not equals account from system, delete DB account");
            if (isBlock) {
                ret = DeleteAccount.executeDeleteAccount(2);
            } else {
                DeleteAccount.deleteAccountInTask(activity, accountFromDB, 2, null);
            }
        }
        if (accountFromSystem != null && CTA.canConnectNetwork()) {
            if (isBlock) {
                new CheckInternalAccountTask(runOnPostExecute).run();
            } else {
                new CheckInternalAccountTask(runOnPostExecute).execute(new Void[0]);
            }
        }
        return ret;
    }

    public static boolean supportShare() {
        int isInternational = Preference.sIsInternationalAccount();
        if (isInternational == 1) {
            return false;
        }
        if (isInternational == 0) {
            return true;
        }
        if (!Rom.IS_INTERNATIONAL || Settings.checkRegion("HK") || Settings.checkRegion("TW")) {
            return true;
        }
        return false;
    }

    public static boolean isValidAlbumId(String albumId) {
        return (TextUtils.isEmpty(albumId) || albumId.trim().equals("0")) ? false : true;
    }

    public static int getDownloadFileStatusFromDB(DBImage dbImage) {
        return ((Integer) GalleryUtils.safeQuery(dbImage.getBaseUri(), new String[]{"downloadFileStatus"}, "_id=?", new String[]{dbImage.getId()}, null, new QueryHandler<Integer>() {
            public Integer handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return Integer.valueOf(-1);
                }
                return Integer.valueOf(UpDownloadManager.mapStatusToRequestItem(cursor.getInt(0)));
            }
        })).intValue();
    }

    public static String getLocalGroupIdForSharerAlbum(String albumId) {
        return (String) GalleryUtils.safeQuery(getCloudShareAlbumLimit1Uri(), new String[]{"_id"}, String.format(Locale.US, "%s=? AND %s='%s'", new Object[]{"albumId", "serverStatus", "custom"}), new String[]{albumId}, null, new QueryHandler<String>() {
            public String handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return null;
                }
                return String.valueOf(cursor.getInt(0));
            }
        });
    }

    public static String getGroupIdByPhotoLocalId(String photoLocalId) {
        return getStringColumnValue(GalleryApp.sGetAndroidContext(), GalleryCloudUtils.CLOUD_URI, "groupId", "_id", photoLocalId);
    }

    public static int updateLocalGroupIdInGroup(Uri uri, String albumId, String localGroupId, String albumIdColumnName) {
        if (TextUtils.isEmpty(localGroupId) || TextUtils.isEmpty(albumId)) {
            return 0;
        }
        ContentValues values = new ContentValues();
        values.put("localGroupId", localGroupId);
        return GalleryUtils.safeUpdate(uri, values, String.format(Locale.US, "%s=?", new Object[]{albumIdColumnName}), new String[]{albumId});
    }

    public static boolean isActive(Context context) {
        NetworkInfo info = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return info != null && info.isConnected();
    }

    public static long getLongAttributeFromJson(JSONObject schemaJson, String tag) throws JSONException {
        return Long.parseLong(schemaJson.getString(tag));
    }

    public static boolean deleteItemInHiddenAlbum(long localId) {
        long serverId = CloudTableUtils.getCloudIdForGroupWithoutRecord(1001);
        if (GalleryUtils.safeDelete(GalleryCloudUtils.CLOUD_URI, String.format(Locale.US, "%s=? AND %s", new Object[]{"_id", CloudTableUtils.sGetWhereClauseAll(String.valueOf(serverId), String.valueOf(1001), 0)}), null) == 1) {
            return true;
        }
        return false;
    }

    public static void addRecordsForCameraAndScreenshots(Insertable insertable) {
        insertable.insert(GalleryCloudUtils.CLOUD_URI, "cloud", null, getCameraRecordValues());
        insertable.insert(GalleryCloudUtils.CLOUD_URI, "cloud", null, getScreenshotsRecordValues());
    }

    private static void replaceFieldsForSystemAlbum(ContentValues values) {
        long serverId = values.getAsLong("serverId").longValue();
        if (serverId == 1) {
            values.put("fileName", getCameraFileName());
            values.put("localFile", getCameraLocalFile());
            values.put("dateTaken", Long.valueOf(-999));
            values.put("mixedDateTime", Long.valueOf(-999));
        } else if (serverId == 2) {
            values.put("fileName", getScreenshotsFileName());
            values.put("localFile", getScreenshotsLocalFile());
            values.put("dateTaken", Long.valueOf(-995));
            values.put("mixedDateTime", Long.valueOf(-995));
        }
    }

    public static void renameItemIfNeeded(DBImage oldItem, ContentValues newValues, boolean needNotifySystemProvider) {
        if (newValues.containsKey("fileName")) {
            String newFileName = newValues.getAsString("fileName");
            String oldFileName = oldItem.getFileName();
            if (!TextUtils.equals(newFileName, oldFileName)) {
                renameAnItemInLocal(oldItem, newFileName, oldFileName, needNotifySystemProvider);
            }
        }
    }

    public static void renameAnItemInLocal(DBImage dbImage, boolean needNotifySystemProvider) {
        String oldFileName = dbImage.getFileName();
        renameAnItemInLocal(dbImage, DownloadPathHelper.addPostfixToFileName(oldFileName, String.valueOf(System.currentTimeMillis())), oldFileName, needNotifySystemProvider);
    }

    public static void renameAnItemInLocal(DBImage dbImage, String newFileName, String oldFileName, boolean needNotifySystemProvider) {
        if (CloudTableUtils.isSecretAlbum(String.valueOf(dbImage.getGroupId()), dbImage.getLocalGroupId())) {
            Log.i("CloudUtils", "item in secret album needn't be renamed.");
            return;
        }
        String newFileNameOfLocalStorage;
        if (dbImage.isShareItem()) {
            newFileNameOfLocalStorage = DownloadPathHelper.getDownloadFileNameNotSecret(dbImage, newFileName);
        } else {
            newFileNameOfLocalStorage = newFileName;
        }
        String folderRelativePath = DownloadPathHelper.getDownloadFolderRelativePath(dbImage);
        String destFolder = StorageUtils.getSafePathInPriorStorage(folderRelativePath);
        String newLocalFile = null;
        String newThumbnailFile = null;
        String oldLocalFile = dbImage.getLocalFile();
        if (FileUtils.isFileExist(oldLocalFile)) {
            newLocalFile = moveImage(oldLocalFile, new File(destFolder, newFileNameOfLocalStorage).getAbsolutePath(), false);
            if (needNotifySystemProvider && !oldLocalFile.equals(newLocalFile)) {
                MediaFileUtils.deleteFileType(FileType.NORMAL, oldLocalFile);
                MediaFileUtils.triggerMediaScan(true, new File(newLocalFile));
            }
        }
        String thumbnailFile = dbImage.getThumbnailFile();
        if (FileUtils.isFileExist(thumbnailFile)) {
            newThumbnailFile = moveImage(thumbnailFile, new File(destFolder, newFileNameOfLocalStorage).getAbsolutePath(), false);
            if (needNotifySystemProvider && !thumbnailFile.equals(newThumbnailFile)) {
                MediaFileUtils.deleteFileType(FileType.NORMAL, thumbnailFile);
                MediaFileUtils.triggerMediaScan(true, new File(newThumbnailFile));
            }
        } else if (!TextUtils.isEmpty(thumbnailFile)) {
            newThumbnailFile = newLocalFile;
        }
        ContentValues valuesWithNewName = new ContentValues();
        valuesWithNewName.put("fileName", newFileName);
        valuesWithNewName.put("title", FileUtils.getFileNameWithoutExtension(newFileName));
        valuesWithNewName.put("localFile", newLocalFile);
        valuesWithNewName.put("thumbnailFile", newThumbnailFile);
        GalleryUtils.safeUpdate(dbImage.getBaseUri(), valuesWithNewName, String.format(Locale.US, "%s=?", new Object[]{"_id"}), new String[]{String.valueOf(dbImage.getId())});
        Log.i("CloudUtils", "item renamed, folderRelativePath: %s, oldFileName: %s, newFileName: %s", folderRelativePath, oldFileName, newFileName);
    }

    public static String renameForPhotoConflict(String path) {
        String ret = path;
        if (TextUtils.isEmpty(path)) {
            return ret;
        }
        long fix = System.currentTimeMillis();
        String seperator = "_";
        StringBuilder builder = new StringBuilder();
        String oldName = FileUtils.getFileName(path);
        int index;
        if (LocalUbifocus.isUbifocusImage(path)) {
            index = LocalUbifocus.getUbifocusPatternIndex(oldName);
            ret = builder.append(FileUtils.getParentFolderPath(path)).append(File.separator).append(oldName.substring(0, index)).append(seperator).append(fix).append(oldName.substring(index)).toString();
            List<SubFile> subUbiFiles = LocalUbifocus.getUbifocusSubFiles(path);
            if (subUbiFiles == null) {
                return ret;
            }
            int size = subUbiFiles.size();
            for (int i = 0; i < size; i++) {
                builder.setLength(0);
                path = ((SubFile) subUbiFiles.get(i)).getFilePath();
                File file = new File(path);
                String name = file.getName();
                index = LocalUbifocus.getUbifocusPatternIndex(name);
                if (index >= 0) {
                    builder.append(FileUtils.getParentFolderPath(path)).append(File.separator).append(name.substring(0, index)).append(seperator).append(fix).append(name.substring(index));
                    FileUtils.move(file, new File(builder.toString()));
                }
            }
            return ret;
        }
        index = oldName.indexOf("_BURST");
        if (index >= 0) {
            return builder.append(FileUtils.getParentFolderPath(path)).append(File.separator).append(oldName.substring(0, index)).append(seperator).append(fix).append(oldName.substring(index)).toString();
        }
        if (oldName.endsWith("_STEREO.jpg")) {
            index = oldName.indexOf("_STEREO.jpg");
            return builder.append(FileUtils.getParentFolderPath(path)).append(File.separator).append(oldName.substring(0, index)).append(seperator).append(fix).append(oldName.substring(index)).toString();
        }
        index = oldName.indexOf(".");
        if (index >= 0) {
            ret = builder.append(FileUtils.getParentFolderPath(path)).append(File.separator).append(oldName.substring(0, index)).append(seperator).append(fix).append(oldName.substring(index)).toString();
            FileUtils.move(new File(path), new File(ret));
            builder.setLength(0);
            File dngFile = FileUtils.getImageRelativeDngFile(path);
            if (dngFile == null) {
                return ret;
            }
            builder.append(dngFile.getAbsolutePath().substring(0, index)).append(seperator).append(fix).append(".dng");
            FileUtils.move(dngFile, new File(builder.toString()));
            return ret;
        }
        ret = builder.append(path).append(seperator).append(fix).toString();
        FileUtils.move(new File(path), new File(ret));
        return ret;
    }

    public static String getOwnerAlbumLocalFile(String albumName, String appKey) {
        Map<String, String> appKeyToPathMap = Maps.newHashMap();
        appKeyToPathMap.put("com.sina.weibo", "sina/weibo/weibo");
        appKeyToPathMap.put("com.tencent.mobileqq", "tencent/qq_images");
        appKeyToPathMap.put("com.tencent.mm", "tencent/micromsg/weixin");
        appKeyToPathMap.put("com.xiaomi.channel", "miliao/saved");
        appKeyToPathMap.put("com.xiaomi.shop", "mishop/save");
        appKeyToPathMap.put("com.UCMobile", "ucdownloads");
        appKeyToPathMap.put("com.mt.mtxx.mtxx", "mtxx");
        appKeyToPathMap.put("cn.wps.moffice_eng", "kingsoftoffice/file/summary/preview");
        appKeyToPathMap.put("com.baidu.tieba", "tieba");
        appKeyToPathMap.put("com.qzone", "tencent/qzonepic");
        appKeyToPathMap.put("com.manboker.headportrait", "dcim/momentcam");
        String localFile = null;
        if (!TextUtils.isEmpty(appKey)) {
            localFile = (String) appKeyToPathMap.get(appKey);
        }
        if (TextUtils.isEmpty(localFile)) {
            return DownloadPathHelper.getFolderRelativePathInCloud(albumName);
        }
        return localFile;
    }

    public static String getCameraLocalFile() {
        return "DCIM/Camera";
    }

    public static String getScreenshotsLocalFile() {
        return "DCIM/Screenshots";
    }

    public static String getCameraFileName() {
        return GalleryApp.sGetAndroidContext().getString(R.string.cloud_camera_display_name);
    }

    public static String getScreenshotsFileName() {
        return GalleryApp.sGetAndroidContext().getString(R.string.cloud_screenshots_display_name);
    }

    public static ContentValues getCameraRecordValues() {
        ContentValues cameraRecordValues = new ContentValues();
        cameraRecordValues.put("dateModified", Long.valueOf(-999));
        cameraRecordValues.put("dateTaken", Long.valueOf(-999));
        cameraRecordValues.put("mixedDateTime", Long.valueOf(-999));
        cameraRecordValues.put("fileName", getCameraFileName());
        cameraRecordValues.put("serverId", Long.valueOf(1));
        cameraRecordValues.put("serverType", Integer.valueOf(0));
        cameraRecordValues.put("serverStatus", "custom");
        cameraRecordValues.put("localFlag", Integer.valueOf(0));
        cameraRecordValues.put("localFile", getCameraLocalFile());
        cameraRecordValues.put("attributes", Long.valueOf(5));
        return cameraRecordValues;
    }

    public static ContentValues getScreenshotsRecordValues() {
        ContentValues screenshotsRecordValues = new ContentValues();
        screenshotsRecordValues.put("dateModified", Long.valueOf(-995));
        screenshotsRecordValues.put("dateTaken", Long.valueOf(-995));
        screenshotsRecordValues.put("mixedDateTime", Long.valueOf(-995));
        screenshotsRecordValues.put("fileName", getScreenshotsFileName());
        screenshotsRecordValues.put("serverId", Long.valueOf(2));
        screenshotsRecordValues.put("serverType", Integer.valueOf(0));
        screenshotsRecordValues.put("serverStatus", "custom");
        screenshotsRecordValues.put("localFlag", Integer.valueOf(0));
        screenshotsRecordValues.put("localFile", getScreenshotsLocalFile());
        screenshotsRecordValues.put("attributes", Long.valueOf(1));
        return screenshotsRecordValues;
    }

    public static boolean isUmodifyAlbum(String serverId) {
        return CloudTableUtils.isCameraGroup(serverId) || CloudTableUtils.isScreenshotGroup(serverId);
    }

    public static String[] getProjectionAll() {
        return new String[]{" * "};
    }
}
