package com.cdv.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.media.ThumbnailUtils;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Video.Media;
import android.provider.MediaStore.Video.Thumbnails;
import android.util.Log;
import java.io.File;
import java.io.IOException;

public class NvAndroidThumbnail {
    private static final String TAG = "NvAndroidThumbnail";

    public static Bitmap createThumbnail(Context context, String str, boolean z, int i, int i2) {
        int i3 = 0;
        if (context == null || str == null || str.isEmpty()) {
            return null;
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        Cursor query;
        if (z) {
            query = contentResolver.query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        } else {
            query = contentResolver.query(Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{str}, null);
        }
        if (query != null) {
            if (query.getCount() == 0 || !query.moveToFirst()) {
                query.close();
            } else {
                int columnIndex = query.getColumnIndex("_id");
                if (columnIndex >= 0) {
                    Cursor query2;
                    Bitmap thumbnail;
                    long j = query.getLong(columnIndex);
                    query.close();
                    if (z) {
                        query2 = contentResolver.query(Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "video_id=?", new String[]{String.valueOf(j)}, null);
                    } else {
                        query2 = contentResolver.query(Images.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "image_id=?", new String[]{String.valueOf(j)}, null);
                    }
                    if (query2 != null) {
                        if (query2.getCount() == 0 || !query2.moveToFirst()) {
                            query2.close();
                        } else {
                            int columnIndex2;
                            if (z) {
                                columnIndex2 = query2.getColumnIndex("_data");
                            } else {
                                columnIndex2 = query2.getColumnIndex("_data");
                            }
                            if (columnIndex2 >= 0) {
                                String string = query2.getString(columnIndex2);
                                query2.close();
                                if (!string.isEmpty() && new File(string).exists()) {
                                    return createThumbnailFromThumbnailImageFile(string, i, i2, z ? 0 : detectImageFileRotation(str));
                                }
                            }
                            query2.close();
                        }
                    }
                    if (z) {
                        thumbnail = Thumbnails.getThumbnail(contentResolver, j, 1, null);
                    } else {
                        thumbnail = Images.Thumbnails.getThumbnail(contentResolver, j, 1, null);
                    }
                    if (thumbnail == null) {
                        Log.e(TAG, String.format("Fail to get thumbnail file for media '%d'!", new Object[]{Long.valueOf(j)}));
                        return createThumbnailFromFile(str, z, i, i2);
                    }
                    if (!z) {
                        i3 = detectImageFileRotation(str);
                    }
                    return rotateBitmap(thumbnail, i3);
                }
                query.close();
            }
        }
        Log.e(TAG, String.format("Failed to query media store id for '%s'!", new Object[]{str}));
        return createThumbnailFromFile(str, z, i, i2);
    }

    private static int detectImageFileRotation(String str) {
        int attributeInt;
        try {
            attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e) {
            e.printStackTrace();
            attributeInt = 1;
        }
        switch (attributeInt) {
            case 3:
            case 4:
                return 2;
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
                return 3;
            default:
                return 0;
        }
    }

    private static Bitmap createThumbnailFromThumbnailImageFile(String str, int i, int i2, int i3) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = 1;
        if (options.outWidth > i && options.outHeight > i2) {
            options.inSampleSize = Math.max(Math.round((((float) options.outWidth) * 1.0f) / ((float) i)), Math.round((((float) options.outHeight) * 1.0f) / ((float) i2)));
        }
        options.inJustDecodeBounds = false;
        return rotateBitmap(BitmapFactory.decodeFile(str, options), i3);
    }

    private static Bitmap rotateBitmap(Bitmap bitmap, int i) {
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        if (i == 1) {
            matrix.postRotate(90.0f);
        } else if (i == 2) {
            matrix.postRotate(180.0f);
        } else if (i == 3) {
            matrix.postRotate(270.0f);
        }
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private static Bitmap createThumbnailFromFile(String str, boolean z, int i, int i2) {
        if (z) {
            Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(str, 1);
            if (createVideoThumbnail != null) {
                return createVideoThumbnail;
            }
            Log.e(TAG, String.format("Failed to create video thumbnail bitmap for '%s'!", new Object[]{str}));
            return createVideoThumbnail;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = 1;
        if (options.outWidth > i && options.outHeight > i2) {
            options.inSampleSize = Math.max(Math.round((((float) options.outWidth) * 1.0f) / ((float) i)), Math.round((((float) options.outHeight) * 1.0f) / ((float) i2)));
        }
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }
}
