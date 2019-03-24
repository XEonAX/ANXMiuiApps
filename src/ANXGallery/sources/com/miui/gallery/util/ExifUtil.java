package com.miui.gallery.util;

import android.annotation.TargetApi;
import android.content.res.MiuiConfiguration;
import android.graphics.RectF;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery3d.exif.ExifInterface;
import com.miui.gallery3d.exif.ExifInvalidFormatException;
import com.nexstreaming.nexeditorsdk.nexClip;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class ExifUtil {
    public static final ExifCreator<ExifInterface> sGallery3DExifCreator = new ExifCreator<ExifInterface>() {
        public ExifInterface create(InputStream inputStream) {
            if (inputStream == null) {
                return null;
            }
            try {
                ExifInterface exifInterface = new ExifInterface();
                exifInterface.readExif(inputStream);
                return exifInterface;
            } catch (ExifInvalidFormatException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", inputStream, e);
            } catch (IOException e2) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", inputStream, e2);
            }
            return null;
        }

        public ExifInterface create(String filePath) {
            if (TextUtils.isEmpty(filePath)) {
                return null;
            }
            try {
                ExifInterface exifInterface = new ExifInterface();
                exifInterface.readExif(filePath);
                return exifInterface;
            } catch (ExifInvalidFormatException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", filePath, e);
            } catch (IOException e2) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", filePath, e2);
            }
            return null;
        }

        public ExifInterface create(FileDescriptor fileDescriptor) {
            Log.d("ExifUtil", "Not support create com.miui.gallery3d.exif.ExifInterface from fileDescriptor");
            return null;
        }
    };
    public static final ExifCreator<android.media.ExifInterface> sMediaExifCreator = new ExifCreator<android.media.ExifInterface>() {
        @TargetApi(24)
        public android.media.ExifInterface create(InputStream inputStream) {
            if (inputStream == null) {
                return null;
            }
            try {
                return new android.media.ExifInterface(inputStream);
            } catch (IOException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", inputStream, e);
                return null;
            }
        }

        public android.media.ExifInterface create(String filePath) {
            if (TextUtils.isEmpty(filePath)) {
                return null;
            }
            try {
                return new android.media.ExifInterface(filePath);
            } catch (IOException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", filePath, e);
                return null;
            }
        }

        @TargetApi(24)
        public android.media.ExifInterface create(FileDescriptor fileDescriptor) {
            if (fileDescriptor == null) {
                return null;
            }
            try {
                return new android.media.ExifInterface(fileDescriptor);
            } catch (IOException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", fileDescriptor, e);
                return null;
            }
        }
    };
    public static final ExifCreator<android.support.media.ExifInterface> sSupportExifCreator = new ExifCreator<android.support.media.ExifInterface>() {
        public android.support.media.ExifInterface create(InputStream inputStream) {
            if (inputStream == null) {
                return null;
            }
            try {
                return new android.support.media.ExifInterface(inputStream);
            } catch (IOException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", inputStream, e);
                return null;
            }
        }

        public android.support.media.ExifInterface create(String filePath) {
            if (TextUtils.isEmpty(filePath)) {
                return null;
            }
            try {
                return new android.support.media.ExifInterface(filePath);
            } catch (IOException e) {
                Log.e("ExifUtil", "failed to create exif interface from %s, %s", filePath, e);
                return null;
            }
        }

        public android.support.media.ExifInterface create(FileDescriptor fileDescriptor) {
            Log.d("ExifUtil", "Not support create android.support.media.ExifInterface from fileDescriptor");
            return null;
        }
    };

    public interface ExifCreator<T> {
        T create(FileDescriptor fileDescriptor);

        T create(InputStream inputStream);

        T create(String str);
    }

    public static class ExifInfo {
        public final int exifOrientation;
        public final boolean flip;
        public final int rotation;

        public ExifInfo(int exifOrientation, int rotation, boolean flip) {
            this.exifOrientation = exifOrientation;
            this.rotation = rotation;
            this.flip = flip;
        }
    }

    public static final class UserCommentData {
        private String mExt;
        private String mSha1;

        public UserCommentData(String sha1, String ext) {
            this.mSha1 = sha1;
            this.mExt = ext;
        }

        public String getSha1() {
            return this.mSha1;
        }

        public String getExt() {
            return this.mExt;
        }

        public String getFileName(String filePrefix) {
            if (TextUtils.isEmpty(filePrefix) || TextUtils.isEmpty(getExt())) {
                return null;
            }
            return filePrefix + "." + getExt();
        }
    }

    public static void setUserCommentData(android.media.ExifInterface exif, UserCommentData data) throws Exception {
        if (exif != null && data != null) {
            new UserComment(new ExifInterfaceWrapper(exif)).setData(data);
        }
    }

    public static String getUserCommentSha1(String path) {
        if (!TextUtils.isEmpty(path)) {
            try {
                UserCommentData commentData = getUserCommentData(path);
                if (commentData != null) {
                    return commentData.getSha1();
                }
            } catch (Object e) {
                Log.e("ExifUtil", "Failed to read exif!!", e);
            }
        }
        return null;
    }

    public static UserCommentData getUserCommentData(String path) throws Exception {
        Exception exception = null;
        if (!TextUtils.isEmpty(path)) {
            UserComment comment;
            Map<String, String> params;
            try {
                comment = new UserComment(new ExifInterfaceWrapper((android.support.media.ExifInterface) sSupportExifCreator.create(path)));
                if (comment.isOriginalUserCommentUsable()) {
                    return new UserCommentData(comment.getSha1(), comment.getFileExt());
                }
            } catch (Object e) {
                exception = e;
                Log.d("ExifUtil", "Failed to read user comment using support exif interface, %s", e);
            }
            File file = new File(path);
            if (file.exists() && file.isFile() && file.length() <= MiuiConfiguration.THEME_FLAG_ALARMSTYLE) {
                try {
                    ExifInterface exif = (ExifInterface) sGallery3DExifCreator.create(path);
                    if (exif != null) {
                        comment = new UserComment(new ExifInterfaceWrapper(exif));
                        if (comment.isOriginalUserCommentUsable() && !TextUtils.isEmpty(comment.getSha1())) {
                            UserCommentData data = new UserCommentData(comment.getSha1(), comment.getFileExt());
                            params = BaseSamplingStatHelper.generatorCommonParams();
                            params.put("exception", exception != null ? exception.toString() : "unrecognizable UserComment");
                            params.put(nexExportFormat.TAG_FORMAT_PATH, path);
                            BaseSamplingStatHelper.recordErrorEvent("exif_parser", "exif_read_by_gallery_3d_exif_interface", params);
                            rewriteUserComment(path, data);
                            return data;
                        }
                    }
                } catch (Object e2) {
                    exception = e2;
                    Log.d("ExifUtil", "Failed to read user comment using gallery 3d exif interface, %s", e2);
                }
            }
            if (exception != null) {
                params = new HashMap();
                params.put("model", Build.MODEL);
                params.put("version", VERSION.INCREMENTAL);
                params.put(nexExportFormat.TAG_FORMAT_PATH, path);
                params.put("exception", exception.toString());
                BaseSamplingStatHelper.recordCountEvent("exif_parser", "exif_read_error", params);
                throw exception;
            }
        }
        return null;
    }

    private static void rewriteUserComment(String path, UserCommentData data) {
        try {
            Log.d("ExifUtil", "Try to rewrite UserComment using android.media.ExifInterface");
            android.media.ExifInterface mediaExifI = (android.media.ExifInterface) sMediaExifCreator.create(path);
            setUserCommentData(mediaExifI, data);
            mediaExifI.saveAttributes();
        } catch (Exception e) {
            Log.w("ExifUtil", "Failed to rewrite UserComment using android.media.ExifInterface, %s", e);
        }
    }

    public static String getXiaomiComment(String path) {
        if (!TextUtils.isEmpty(path)) {
            try {
                ExifInterface exif = (ExifInterface) sGallery3DExifCreator.create(path);
                if (exif != null) {
                    return exif.getXiaomiComment();
                }
            } catch (Throwable e) {
                Log.w("ExifUtil", e);
            }
        }
        return null;
    }

    public static String getXiaomiCommentSensorType(String path) {
        if (!TextUtils.isEmpty(path)) {
            try {
                String xiaomiComment = getXiaomiComment(path);
                if (!TextUtils.isEmpty(xiaomiComment)) {
                    return new JSONObject(xiaomiComment).optString("sensor_type");
                }
            } catch (Throwable e) {
                Log.w("ExifUtil", e);
            }
        }
        return null;
    }

    public static boolean isFromFrontCamera(String path) {
        return "front".equalsIgnoreCase(getXiaomiCommentSensorType(path));
    }

    public static long getDateTime(android.support.media.ExifInterface exif) {
        return exif == null ? -1 : GalleryTimeUtils.getDateTime(exif.getAttribute("DateTime"));
    }

    public static long getDateTime(android.media.ExifInterface exif) {
        return exif == null ? -1 : GalleryTimeUtils.getDateTime(exif.getAttribute("DateTime"));
    }

    public static void setDateTime(android.media.ExifInterface exif, String dateTime) {
        if (exif != null && !TextUtils.isEmpty(dateTime)) {
            exif.setAttribute("DateTimeOriginal", dateTime);
            exif.setAttribute("DateTime", dateTime);
        }
    }

    public static Date getDate(android.support.media.ExifInterface exif) {
        return exif == null ? null : GalleryTimeUtils.getDate(exif.getAttribute("DateTime"));
    }

    public static int getOrientation(ExifInterface exif) {
        Integer rawValue = exif == null ? null : exif.getTagIntValue(ExifInterface.TAG_ORIENTATION);
        return rawValue == null ? 1 : rawValue.intValue();
    }

    public static int getRotationDegrees(ExifInterface exif) {
        return exifOrientationToDegrees(getOrientation(exif));
    }

    public static int getRotationDegrees(android.support.media.ExifInterface exif) {
        int orientation = 1;
        if (exif != null) {
            orientation = exif.getAttributeInt("Orientation", 1);
        }
        return exifOrientationToDegrees(orientation);
    }

    public static int exifOrientationToDegrees(int exifOrientation) {
        switch (exifOrientation) {
            case 3:
                return nexClip.kClip_Rotate_180;
            case 6:
                return 90;
            case 8:
                return nexClip.kClip_Rotate_270;
            default:
                return 0;
        }
    }

    public static long getGpsDateTime(android.support.media.ExifInterface exif) {
        if (exif == null) {
            return -1;
        }
        return GalleryTimeUtils.getGpsDateTime(exif.getAttribute("GPSDateStamp"), exif.getAttribute("GPSTimeStamp"));
    }

    public static Date getGpsDate(android.support.media.ExifInterface exif) {
        if (exif == null) {
            return null;
        }
        return GalleryTimeUtils.getGpsDate(exif.getAttribute("GPSDateStamp"), exif.getAttribute("GPSTimeStamp"));
    }

    public static boolean supportRefocus(ExifInterface exif) {
        return (exif == null || (TextUtils.isEmpty(exif.getTagStringValue(34960, 2)) && exif.getTag(34968, 2) == null)) ? false : true;
    }

    public static boolean isMotionPhoto(ExifInterface exif) {
        Byte value = exif.getTagByteValue(34967, 2);
        if (value == null) {
            return false;
        }
        if (value.byteValue() == (byte) 1) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Missing block: B:5:0x0016, code:
            if (r1 == false) goto L_0x001c;
     */
    /* JADX WARNING: Missing block: B:6:0x0018, code:
            r2 = (((float) r3) - r2) - r5;
     */
    /* JADX WARNING: Missing block: B:8:0x0025, code:
            return new android.graphics.RectF(r2, r4, r2 + r5, r4 + r0);
     */
    /* JADX WARNING: Missing block: B:15:0x0032, code:
            r3 = r10;
            r2 = (((float) r10) - r11.top) - r11.height();
            r4 = r11.left;
            r5 = r11.height();
            r0 = r11.width();
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code:
            r2 = (((float) r9) - r11.left) - r11.width();
            r4 = (((float) r10) - r11.top) - r11.height();
     */
    /* JADX WARNING: Missing block: B:19:0x005f, code:
            r3 = r10;
            r2 = r11.top;
            r4 = (((float) r9) - r11.left) - r11.width();
            r5 = r11.height();
            r0 = r11.width();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static RectF adjustRectOrientation(int imageWidth, int imageHeight, RectF rect, int orientation, boolean revert) {
        float left = rect.left;
        float top = rect.top;
        float width = rect.width();
        float height = rect.height();
        int targetImageWidth = imageWidth;
        if (!revert) {
            switch (orientation) {
                case 5:
                    orientation = 7;
                    break;
                case 6:
                    orientation = 8;
                    break;
                case 7:
                    orientation = 5;
                    break;
                case 8:
                    orientation = 6;
                    break;
            }
        }
        boolean isFlip = false;
        switch (orientation) {
            case 2:
                isFlip = true;
                break;
            case 3:
                break;
            case 4:
                isFlip = true;
                break;
            case 5:
                isFlip = true;
                break;
            case 6:
                break;
            case 7:
                isFlip = true;
                break;
            case 8:
                break;
        }
    }

    public static ExifInfo parseRotationInfo(String path, byte[] secretKey) {
        return parseRotationInfo(path, secretKey, sGallery3DExifCreator);
    }

    public static <T> ExifInfo parseRotationInfo(String path, byte[] secretKey, ExifCreator<T> creator) {
        T exif = createExifInterface(path, secretKey, creator);
        if (exif == null) {
            return null;
        }
        int orientation;
        if (exif instanceof android.support.media.ExifInterface) {
            orientation = ((android.support.media.ExifInterface) exif).getAttributeInt("Orientation", 1);
        } else if (exif instanceof ExifInterface) {
            orientation = getOrientation((ExifInterface) exif);
        } else if (exif instanceof android.media.ExifInterface) {
            orientation = ((android.media.ExifInterface) exif).getAttributeInt("Orientation", 1);
        } else {
            Log.w("ExifUtil", "Not supported exif interface %s", exif);
            return null;
        }
        return parseRotationInfo(orientation);
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0093  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T> T createExifInterface(String path, byte[] secretKey, ExifCreator<T> exifCreator) {
        Exception e;
        Throwable th;
        if (exifCreator == null || !FileUtils.isFileExist(path)) {
            return null;
        }
        T exif;
        InputStream is = null;
        File temp = null;
        try {
            is = BitmapUtils.createInputStream(path, secretKey);
            exif = exifCreator.create(is);
            if (exif != null) {
                if (null != null) {
                    MediaFileUtils.deleteFile(null);
                }
                BaseMiscUtil.closeSilently(is);
                return exif;
            }
        } catch (IOException e2) {
            try {
                Log.w("ExifUtil", "Can't read EXIF tags from file [%s] %s", path, e2);
            } catch (Exception e3) {
                e = e3;
                try {
                    Log.w("ExifUtil", "Can't read EXIF tags from file [%s] %s", path, e);
                    if (temp != null) {
                        MediaFileUtils.deleteFile(temp);
                    }
                    BaseMiscUtil.closeSilently(is);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (temp != null) {
                    }
                    BaseMiscUtil.closeSilently(is);
                    throw th;
                }
            }
        }
        BaseMiscUtil.closeSilently(is);
        if (secretKey != null) {
            File temp2 = new File(GalleryApp.sGetAndroidContext().getFilesDir(), String.valueOf(SystemClock.elapsedRealtimeNanos()));
            try {
                if (GalleryAes.decryptFile(path, temp2.getAbsolutePath(), secretKey)) {
                    is = BitmapUtils.createInputStream(temp2.getAbsolutePath(), null);
                    exif = exifCreator.create(is);
                    if (temp2 != null) {
                        MediaFileUtils.deleteFile(temp2);
                    }
                    BaseMiscUtil.closeSilently(is);
                    return exif;
                }
                temp = temp2;
            } catch (Exception e4) {
                e = e4;
                temp = temp2;
                Log.w("ExifUtil", "Can't read EXIF tags from file [%s] %s", path, e);
                if (temp != null) {
                }
                BaseMiscUtil.closeSilently(is);
                return null;
            } catch (Throwable th3) {
                th = th3;
                temp = temp2;
                if (temp != null) {
                    MediaFileUtils.deleteFile(temp);
                }
                BaseMiscUtil.closeSilently(is);
                throw th;
            }
        }
        if (temp != null) {
            MediaFileUtils.deleteFile(temp);
        }
        BaseMiscUtil.closeSilently(is);
        return null;
    }

    /* JADX WARNING: Missing block: B:3:0x000a, code:
            return new com.miui.gallery.util.ExifUtil.ExifInfo(r3, r1, r0);
     */
    /* JADX WARNING: Missing block: B:5:0x000c, code:
            r1 = 0;
     */
    /* JADX WARNING: Missing block: B:7:0x000f, code:
            r1 = 90;
     */
    /* JADX WARNING: Missing block: B:9:0x0013, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_180;
     */
    /* JADX WARNING: Missing block: B:11:0x0017, code:
            r1 = com.nexstreaming.nexeditorsdk.nexClip.kClip_Rotate_270;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static ExifInfo parseRotationInfo(int orientation) {
        boolean isFlip = false;
        int rotation = 0;
        switch (orientation) {
            case 1:
                break;
            case 2:
                isFlip = true;
                break;
            case 3:
                break;
            case 4:
                isFlip = true;
                break;
            case 5:
                isFlip = true;
                break;
            case 6:
                break;
            case 7:
                isFlip = true;
                break;
            case 8:
                break;
        }
    }

    public static boolean isWidthHeightRotated(int orientation) {
        switch (orientation) {
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }
}
