package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.VideoAttrsReader;
import com.miui.gallery.util.VideoAttrsReader.VideoAttrsUnretrivableException;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import miui.os.ExtraFileUtils;

public class GalleryCloudUtils {
    public static final Uri BASE_URI = Uri.parse("content://com.miui.gallery.cloud.provider");
    public static final Uri CLOUD_CACHE_URI = BASE_URI.buildUpon().appendPath("cloudCache").build();
    public static final Uri CLOUD_SETTING_URI = BASE_URI.buildUpon().appendPath("cloudSetting").build();
    public static final Uri CLOUD_URI = BASE_URI.buildUpon().appendPath("cloud").build();
    public static final Uri CLOUD_USER_URI = BASE_URI.buildUpon().appendPath("cloudUser").build();
    public static final Uri NEW_FLAG_CACHE = BASE_URI.buildUpon().appendPath("newFlagCache").build();
    public static final Uri OWNER_SUB_UBIFOCUS_URI = BASE_URI.buildUpon().appendPath("ownerSubUbifocus").build();
    public static final Uri SHARE_ALBUM_URI = BASE_URI.buildUpon().appendPath("shareAlbum").build();
    public static final Uri SHARE_IMAGE_URI = BASE_URI.buildUpon().appendPath("shareImage").build();
    public static final Uri SHARE_SUB_UBIFOCUS_URI = BASE_URI.buildUpon().appendPath("shareSubUbifocus").build();
    public static final Uri SHARE_USER_URI = BASE_URI.buildUpon().appendPath("shareUser").build();
    public static final Uri USER_INFO_URI = BASE_URI.buildUpon().appendPath("userInfo").build();
    private static Account sAccount;

    public static String getAccountName() {
        Account account = getAccount();
        return (account == null || account.name == null) ? "" : account.name;
    }

    public static synchronized void resetAccountCache() {
        synchronized (GalleryCloudUtils.class) {
            sAccount = null;
        }
    }

    private static synchronized Account getAccount() {
        Account account;
        synchronized (GalleryCloudUtils.class) {
            if (sAccount == null) {
                sAccount = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
            }
            account = sAccount;
        }
        return account;
    }

    public static boolean isGalleryCloudSyncable(Context context) {
        Account account = getAccount();
        if (account != null && ContentResolver.getMasterSyncAutomatically() && ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider")) {
            return true;
        }
        return false;
    }

    private static void putExifIntToContentValues(ExifInterface exifInterface, String exifkey, ContentValues values, String contentKey) {
        String value = exifInterface.getAttribute(exifkey);
        if (value != null) {
            try {
                values.put(contentKey, Integer.valueOf(value));
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
            }
        }
    }

    public static String getFocusIndexColumnElement(boolean isShare) {
        return transformToEditedColumnsElement(isShare ? 53 : 59);
    }

    public static String transformToEditedColumnsElement(int columnIndex) {
        return "," + columnIndex + ",";
    }

    public static String mergeEditedColumns(String lhs, String rhs) {
        if (TextUtils.isEmpty(lhs)) {
            return rhs;
        }
        if (TextUtils.isEmpty(rhs)) {
            return lhs;
        }
        for (String element : lhs.split(",+")) {
            if (!TextUtils.isEmpty(element)) {
                String transformedElement = "," + element + ",";
                rhs = rhs.replace(transformedElement, "") + transformedElement;
            }
        }
        return rhs;
    }

    public static boolean putValuesForVideo(String path, ContentValues values) throws IOException {
        try {
            VideoAttrsReader reader = VideoAttrsReader.read(path);
            values.put("title", reader.getTitle());
            values.put("duration", Long.valueOf(reader.getDuration() / 1000));
            values.put("dateTaken", Long.valueOf(reader.getDateTaken()));
            values.put("exifImageWidth", Integer.valueOf(reader.getVideoWidth()));
            values.put("exifImageLength", Integer.valueOf(reader.getVideoHeight()));
            ensureDateTakenAndLocation(path, false, values);
            return true;
        } catch (VideoAttrsUnretrivableException e) {
            Map<String, String> params = new HashMap();
            params.put("fileName", FileUtils.getFileName(path));
            BaseSamplingStatHelper.recordErrorEvent("Sync", "read_video_attrs_failed", params);
            return false;
        }
    }

    public static void putValuesForImage(String path, ContentValues values) throws IOException {
        ExifInterface exifInterface = new ExifInterface(path);
        values.put("title", ExtraFileUtils.getFileTitle(ExtraFileUtils.getFileName(path)));
        int width = exifInterface.getAttributeInt("ImageWidth", 0);
        int height = exifInterface.getAttributeInt("ImageLength", 0);
        if (width <= 0 || height <= 0) {
            Options bitmapOptions = ApplicationHelper.getBitmapProvider().getBitmapSize(path);
            width = bitmapOptions.outWidth;
            height = bitmapOptions.outHeight;
        }
        values.put("exifImageWidth", Integer.valueOf(width));
        values.put("exifImageLength", Integer.valueOf(height));
        values.put("exifOrientation", Integer.valueOf(exifInterface.getAttributeInt("Orientation", 0)));
        values.put("exifGPSLatitude", exifInterface.getAttribute("GPSLatitude"));
        values.put("exifGPSLongitude", exifInterface.getAttribute("GPSLongitude"));
        values.put("exifMake", exifInterface.getAttribute("Make"));
        values.put("exifModel", exifInterface.getAttribute("Model"));
        putExifIntToContentValues(exifInterface, "Flash", values, "exifFlash");
        values.put("exifGPSLatitudeRef", exifInterface.getAttribute("GPSLatitudeRef"));
        values.put("exifGPSLongitudeRef", exifInterface.getAttribute("GPSLongitudeRef"));
        values.put("exifExposureTime", exifInterface.getAttribute("ExposureTime"));
        values.put("exifFNumber", exifInterface.getAttribute("FNumber"));
        values.put("exifISOSpeedRatings", exifInterface.getAttribute("ISOSpeedRatings"));
        values.put("exifGPSAltitude", exifInterface.getAttribute("GPSAltitude"));
        putExifIntToContentValues(exifInterface, "GPSAltitudeRef", values, "exifGPSAltitudeRef");
        values.put("exifGPSTimeStamp", exifInterface.getAttribute("GPSTimeStamp"));
        values.put("exifGPSDateStamp", exifInterface.getAttribute("GPSDateStamp"));
        putExifIntToContentValues(exifInterface, "WhiteBalance", values, "exifWhiteBalance");
        values.put("exifFocalLength", exifInterface.getAttribute("FocalLength"));
        values.put("exifGPSProcessingMethod", exifInterface.getAttribute("GPSProcessingMethod"));
        values.put("exifDateTime", exifInterface.getAttribute("DateTime"));
        ensureDateTakenAndLocation(path, true, values);
    }

    private static void ensureDateTakenAndLocation(String filePath, boolean isImage, final ContentValues values) {
        GalleryUtils.safeQuery(UriUtil.appendLimit(isImage ? Media.EXTERNAL_CONTENT_URI : Video.Media.EXTERNAL_CONTENT_URI, 1), isImage ? new String[]{"datetaken", "latitude", "longitude"} : new String[]{"datetaken", "latitude", "longitude"}, "_data = ? ", new String[]{filePath}, null, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null && cursor.moveToNext()) {
                    long dateTaken = cursor.getLong(0);
                    double latitude = cursor.getDouble(1);
                    double longitude = cursor.getDouble(2);
                    if (dateTaken > 0) {
                        values.put("dateTaken", Long.valueOf(dateTaken));
                    }
                    if (latitude != 0.0d && values.get("exifGPSLatitude") == null) {
                        values.put("exifGPSLatitude", GalleryCloudUtils.convertDoubleToLaLon(latitude));
                    }
                    if (longitude != 0.0d && values.get("exifGPSLongitude") == null) {
                        values.put("exifGPSLongitude", GalleryCloudUtils.convertDoubleToLaLon(longitude));
                    }
                }
                return null;
            }
        });
    }

    public static String convertDoubleToLaLon(double value) {
        int degrees = (int) Math.floor(Math.abs(value));
        double minutes = Math.floor((Math.abs(value) - ((double) degrees)) * 60.0d);
        double seconds = Math.floor(((Math.abs(value) - ((double) degrees)) - (minutes / 60.0d)) * 3600000.0d);
        if (value < 0.0d) {
            return "-" + degrees + "/1," + minutes + "/1," + seconds + "/1000";
        }
        return degrees + "/1," + minutes + "/1," + seconds + "/1000";
    }
}
