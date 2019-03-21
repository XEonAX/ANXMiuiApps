package com.miui.gallery.util;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.provider.MediaStore.Files;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.support.media.ExifInterface;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.util.Locale;

public class MediaStoreUtils {
    private static final Uri BASE_URI = Files.getContentUri("external");
    private static final String[] PROJECTION = new String[]{"_id", "_data", "mime_type"};

    public static Uri insert(Context context, String filePath, int type) {
        if (!TextUtils.isEmpty(filePath)) {
            return insert(context, new File(filePath), type);
        }
        throw new IllegalStateException(String.format(Locale.US, "%s is not a valid path", new Object[]{filePath}));
    }

    public static Uri insert(Context context, File file, int type) {
        if (!file.exists()) {
            return null;
        }
        ContentValues values;
        if (type == 1) {
            values = new ContentValues();
            fillByFile(values, file);
            if (fillByImage(values, file.getPath())) {
                fillByJpeg(values, file);
                return submit(context, Media.EXTERNAL_CONTENT_URI, values);
            }
            Log.w("MediaStoreUtils", "fill image bounds failed, skip");
            return null;
        } else if (type == 2) {
            values = new ContentValues();
            fillByFile(values, file);
            fillByMp4(values, file);
            return submit(context, Media.EXTERNAL_CONTENT_URI, values);
        } else {
            throw new UnsupportedOperationException("not support type");
        }
    }

    private static Uri submit(Context context, Uri baseUri, ContentValues values) {
        return SafeDBUtil.safeInsert(context, baseUri, values);
    }

    private static void fillByFile(ContentValues values, File file) {
        values.put("_data", file.getAbsolutePath());
        values.put("title", FileUtils.getFileTitle(file.getName()));
        values.put("date_modified", Long.valueOf(file.lastModified() / 1000));
        values.put("_size", Long.valueOf(file.length()));
    }

    private static boolean fillByImage(ContentValues values, String path) {
        Options opt = new Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, opt);
        if (opt.outWidth <= 0 || opt.outHeight <= 0) {
            Log.w("MediaStoreUtils", "decode image bounds failed");
            return false;
        }
        values.put(nexExportFormat.TAG_FORMAT_WIDTH, Integer.valueOf(opt.outWidth));
        values.put(nexExportFormat.TAG_FORMAT_HEIGHT, Integer.valueOf(opt.outHeight));
        return true;
    }

    private static void fillByJpeg(ContentValues values, File file) {
        values.put("mime_type", "image/jpeg");
        try {
            ExifInterface exif = new ExifInterface(file.getAbsolutePath());
            double[] latLong = exif.getLatLong();
            if (latLong != null) {
                values.put("latitude", Double.valueOf(latLong[0]));
                values.put("longitude", Double.valueOf(latLong[1]));
            }
            long time = file.lastModified();
            if (time > 0) {
                values.put("datetaken", Long.valueOf(time));
            } else {
                time = exif.getDateTime();
                if (time != -1) {
                    values.put("datetaken", Long.valueOf(time));
                } else {
                    time = exif.getGpsDateTime();
                    if (time != -1) {
                        values.put("datetaken", Long.valueOf(time));
                    }
                }
            }
            values.put("orientation", Integer.valueOf(ExifUtil.getRotationDegrees(exif)));
        } catch (Throwable e) {
            Log.w("MediaStoreUtils", e);
        }
    }

    public static void fillByMp4(ContentValues values, File file) {
        values.put("mime_type", "video/mp4");
        values.put("duration", Long.valueOf(getVideoDuration(file.getAbsolutePath())));
    }

    private static long getVideoDuration(String filePath) {
        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        long parseLong;
        try {
            retriever.setDataSource(filePath);
            parseLong = Long.parseLong(retriever.extractMetadata(9));
            return parseLong;
        } catch (Object e) {
            parseLong = "MediaStoreUtils";
            Log.e((String) parseLong, "IllegalArgumentException when getDuration()", e);
            return 0;
        } catch (Object e2) {
            parseLong = "MediaStoreUtils";
            Log.e((String) parseLong, "RuntimeException when getDuration()", e2);
            return 0;
        } finally {
            retriever.release();
        }
    }

    public static String getMineTypeFromUri(Uri uri) {
        if (uri == null || uri.getPath() == null) {
            return null;
        }
        String path = uri.getPath();
        if (path.contains(Media.EXTERNAL_CONTENT_URI.getPath()) || path.contains(Media.INTERNAL_CONTENT_URI.getPath())) {
            return "image";
        }
        if (path.contains(Video.Media.EXTERNAL_CONTENT_URI.getPath()) || path.contains(Video.Media.INTERNAL_CONTENT_URI.getPath())) {
            return "video";
        }
        return null;
    }

    public static String getMediaFilePath(String mediaUri) {
        if (TextUtils.isEmpty(mediaUri)) {
            return null;
        }
        Uri uri = Uri.parse(mediaUri);
        if (!"media".equals(uri.getAuthority())) {
            return null;
        }
        return (String) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), uri, new String[]{"_data"}, null, null, null, new QueryHandler<String>() {
            public String handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                return cursor.getString(0);
            }
        });
    }

    public static long getMediaStoreId(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return -1;
        }
        Long ret = (Long) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), BASE_URI, PROJECTION, String.format("%s=%s", new Object[]{"_data", DatabaseUtils.sqlEscapeString(filePath)}), null, null, new QueryHandler<Long>() {
            public Long handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return Long.valueOf(-1);
                }
                return Long.valueOf(cursor.getLong(0));
            }
        });
        return ret != null ? ret.longValue() : -1;
    }

    public static Uri getLastMediaUri() {
        if (getBucketIds() == null) {
            return null;
        }
        return (Uri) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), BASE_URI.buildUpon().appendQueryParameter("limit", "1").build(), PROJECTION, String.format("bucket_id in (%s) AND media_type in (1,3) AND _size > 0", new Object[]{TextUtils.join(",", bucketIds)}), null, "datetaken DESC, _id DESC", new QueryHandler<Uri>() {
            public Uri handle(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst() && FileUtils.isFileExist(cursor.getString(1))) {
                    long id = cursor.getLong(0);
                    String type = cursor.getString(2);
                    if (BaseFileMimeUtil.isImageFromMimeType(type)) {
                        return ContentUris.withAppendedId(Media.EXTERNAL_CONTENT_URI, id);
                    }
                    if (BaseFileMimeUtil.isVideoFromMimeType(type)) {
                        return ContentUris.withAppendedId(Video.Media.EXTERNAL_CONTENT_URI, id);
                    }
                }
                return null;
            }
        });
    }

    public static Uri getFileMediaUri(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        return (Uri) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), BASE_URI, PROJECTION, String.format("%s='%s'", new Object[]{"_data", filePath}), null, null, new QueryHandler<Uri>() {
            public Uri handle(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst()) {
                    long id = cursor.getLong(0);
                    String type = cursor.getString(2);
                    if (BaseFileMimeUtil.isImageFromMimeType(type)) {
                        return ContentUris.withAppendedId(Media.EXTERNAL_CONTENT_URI, id);
                    }
                    if (BaseFileMimeUtil.isVideoFromMimeType(type)) {
                        return ContentUris.withAppendedId(Video.Media.EXTERNAL_CONTENT_URI, id);
                    }
                }
                return null;
            }
        });
    }

    private static String[] getBucketIds() {
        String[] bucketPaths = StorageUtils.getPathsInExternalStorage(GalleryApp.sGetAndroidContext(), "DCIM/Camera");
        int length = bucketPaths.length;
        if (length == 0) {
            return null;
        }
        String[] bucketIds = new String[length];
        for (int i = 0; i < length; i++) {
            bucketIds[i] = String.valueOf(FileUtils.getBucketID(bucketPaths[i]));
        }
        return bucketIds;
    }

    private static void submitUpdate(Uri baseUri, ContentValues values) {
        SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), baseUri, values, null, null);
    }

    public static void update(Uri uri) {
        if (uri == null) {
            Log.w("MediaStoreUtils", "update uri is null");
            return;
        }
        String path = getMediaFilePath(uri.toString());
        if (path == null) {
            Log.w("MediaStoreUtils", "getMediaFilePath is null");
            return;
        }
        File file = new File(path);
        if (file.exists()) {
            ContentValues values = new ContentValues();
            fillByFile(values, file);
            fillByImage(values, path);
            submitUpdate(uri, values);
            return;
        }
        Log.w("MediaStoreUtils", "update file not exist");
    }
}
