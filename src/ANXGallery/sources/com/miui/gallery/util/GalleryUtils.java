package com.miui.gallery.util;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DecodeUtils.GalleryOptions;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.deprecated.GalleryCloudProvider;
import com.miui.os.FeatureHelper;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Locale;

public class GalleryUtils {
    private static Handler sHandler;
    private static File sInternalCacheDir;

    public interface QueryHandler<T> {
        T handle(Cursor cursor);
    }

    public interface ConcatConverter<T> {
        String convertToString(T t);
    }

    public static void closeStream(Closeable stream) {
        if (stream != null) {
            try {
                stream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean copyFile(InputStream inputStream, OutputStream outputStream) {
        boolean z = false;
        byte[] buffer = new byte[102400];
        while (true) {
            try {
                int byteread = inputStream.read(buffer);
                if (byteread == -1) {
                    break;
                }
                outputStream.write(buffer, 0, byteread);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                closeStream(inputStream);
                closeStream(outputStream);
            }
        }
        outputStream.flush();
        z = true;
        return z;
    }

    public static boolean saveBitmapToOutputStream(Bitmap bitmap, CompressFormat format, OutputStream os) {
        if (bitmap == null) {
            return false;
        }
        try {
            if (!bitmap.compress(format, 90, os)) {
                return false;
            }
            Utils.closeSilently((Closeable) os);
            return true;
        } finally {
            Utils.closeSilently((Closeable) os);
        }
    }

    public static CompressFormat convertExtensionToCompressFormat(String extension) {
        return extension.equals("png") ? CompressFormat.PNG : CompressFormat.JPEG;
    }

    public static File getInternalCacheDir() {
        if (sInternalCacheDir == null && GalleryApp.sGetAndroidContext() != null) {
            sInternalCacheDir = GalleryApp.sGetAndroidContext().getCacheDir();
        }
        return sInternalCacheDir;
    }

    public static Uri safeInsert(Uri url, ContentValues values) {
        try {
            return GalleryApp.sGetAndroidContext().getContentResolver().insert(url, values);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void putMixedDateTime(ContentValues values) {
        long longValue;
        long j = 0;
        String exifGpsDateStamp = values.getAsString("exifGPSDateStamp");
        String exifGpsTimeStamp = values.getAsString("exifGPSTimeStamp");
        String exifDateTime = values.getAsString("exifDateTime");
        Long dateTaken = values.getAsLong("dateTaken");
        Long dateModified = values.getAsLong("dateModified");
        if (dateTaken != null) {
            longValue = dateTaken.longValue();
        } else {
            longValue = 0;
        }
        if (dateModified != null) {
            j = dateModified.longValue();
        }
        values.put("mixedDateTime", Long.valueOf(GalleryTimeUtils.getTakenDateTime(exifGpsDateStamp, exifGpsTimeStamp, exifDateTime, longValue, j)));
    }

    public static Uri safeInsertImage(Uri url, ContentValues values) {
        putMixedDateTime(values);
        return safeInsert(url, values);
    }

    public static int safeUpdateImage(ContentValues values, DBImage targetItem) {
        putMixedDateTime(values);
        String localFile = targetItem.getLocalFile();
        if (!TextUtils.isEmpty(localFile) && TextUtils.equals(values.getAsString("sha1"), ExifUtil.getUserCommentSha1(localFile))) {
            values.putNull("localFile");
        }
        return safeUpdate(targetItem.getBaseUri(), values, String.format(Locale.US, "%s=?", new Object[]{"_id"}), new String[]{targetItem.getId()});
    }

    public static int safeUpdate(Uri uri, ContentValues values, String where, String[] selectionArgs) {
        try {
            return GalleryApp.sGetAndroidContext().getContentResolver().update(uri, values, where, selectionArgs);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static int safeDelete(Uri url, String where, String[] selectionArgs) {
        try {
            return GalleryApp.sGetAndroidContext().getContentResolver().delete(url, where, selectionArgs);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static boolean safeExec(String sql) {
        try {
            return GalleryDBHelper.getInstance().execSQL(sql);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Cursor queryToCursor(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Context context = GalleryApp.sGetAndroidContext();
        if (context == null) {
            return null;
        }
        ContentProviderClient client = null;
        try {
            if (GalleryCloudProvider.isCloudUri(uri)) {
                client = GalleryApp.sGetAndroidContext().getContentResolver().acquireContentProviderClient("com.miui.gallery.cloud.provider");
                ContentProvider provider = client.getLocalContentProvider();
                if (provider != null) {
                    Cursor cursor = provider.query(uri, projection, selection, selectionArgs, sortOrder);
                    if (cursor == null) {
                        releaseSilently(client);
                        return null;
                    }
                    final ContentProviderClient constClient = client;
                    return new CursorWrapper(cursor) {
                        public void close() {
                            super.close();
                            GalleryUtils.releaseSilently(constClient);
                        }
                    };
                }
                releaseSilently(client);
            }
            return context.getContentResolver().query(uri, projection, selection, selectionArgs, sortOrder);
        } catch (Exception e) {
            releaseSilently(client);
            e.printStackTrace();
            return null;
        }
    }

    private static void releaseSilently(ContentProviderClient client) {
        if (client != null) {
            try {
                client.release();
            } catch (Exception e) {
            }
        }
    }

    public static <T> T safeQuery(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder, QueryHandler<T> handler) {
        Cursor cursor = null;
        try {
            cursor = queryToCursor(uri, projection, selection, selectionArgs, sortOrder);
            T handle = handler.handle(cursor);
            if (cursor == null) {
                return handle;
            }
            cursor.close();
            return handle;
        } catch (Exception e) {
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static <T> T safeQuery(String tableName, String[] projection, String selection, String[] selectionArgs, String sortOrder, QueryHandler<T> handler) {
        Cursor cursor = null;
        try {
            cursor = GalleryDBHelper.getInstance().query(tableName, projection, selection, selectionArgs, null, null, sortOrder, null);
            T handle = handler.handle(cursor);
            if (cursor == null) {
                return handle;
            }
            cursor.close();
            return handle;
        } catch (Exception e) {
            e.printStackTrace();
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static <T> String concatAll(Collection<T> collection, String splitter) {
        return concatAll(collection, splitter, null);
    }

    public static <T> String concatAll(Collection<T> collection, String splitter, ConcatConverter<T> converter) {
        if (collection == null || collection.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (T c : collection) {
            if (c != null) {
                String str = converter != null ? converter.convertToString(c) : c.toString();
                if (!TextUtils.isEmpty(str)) {
                    if (sb.length() > 0) {
                        sb.append(splitter);
                    }
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public static Bitmap safeDecodeFileDescriptor(FileDescriptor fd, Rect outPadding, GalleryOptions opts) {
        Bitmap result = null;
        try {
            result = BitmapFactory.decodeFileDescriptor(fd, outPadding, opts);
        } catch (Object e) {
            Log.e("GalleryUtils", "safeDecodeFileDescriptor() failed OOM: ", e);
        } catch (Object e2) {
            Log.e("GalleryUtils", "safeDecodeFileDescriptor() failed: ", e2);
        } finally {
            closeStream(null);
        }
        return result;
    }

    public static ProgressDialog showProgressDialog(Context context, int titleId, int messageId, int progressMax, boolean cancelable) {
        ProgressDialog dialog = new ProgressDialog(context);
        dialog.setTitle(titleId == 0 ? null : context.getResources().getString(titleId));
        dialog.setMessage(messageId == 0 ? null : context.getResources().getString(messageId));
        dialog.setCancelable(cancelable);
        dialog.setCanceledOnTouchOutside(false);
        if (cancelable) {
            dialog.setButton(-2, context.getString(17039360), (Message) null);
        }
        if (progressMax > 1) {
            dialog.setMax(progressMax);
            dialog.setProgressStyle(1);
        }
        dialog.show();
        return dialog;
    }

    public static boolean safeUnregisterReceiver(Context context, BroadcastReceiver receiver) {
        return ReceiverUtils.safeUnregisterReceiver(context, receiver);
    }

    public static void registerReceiver(Context context, BroadcastReceiver receiver, String... actions) {
        ReceiverUtils.registerReceiver(context, receiver, actions);
    }

    public static boolean needImpunityDeclaration() {
        return !FeatureHelper.isPad();
    }

    public static void runOnMainThreadPostDelay(Runnable runnable, int delayMillis) {
        if (runnable != null) {
            if (sHandler == null) {
                sHandler = new Handler(Looper.getMainLooper());
            }
            sHandler.removeCallbacks(runnable);
            sHandler.postDelayed(runnable, (long) delayMillis);
        }
    }

    public static boolean sIsStorageReady(Context context) {
        return StorageUtils.isPrimaryStorageWritable(context);
    }
}
