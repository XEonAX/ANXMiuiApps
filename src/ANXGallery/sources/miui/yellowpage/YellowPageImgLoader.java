package miui.yellowpage;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.widget.ImageView;
import com.miui.internal.yellowpage.ImageLoader;
import com.miui.internal.yellowpage.YellowPageAvatar;
import com.miui.internal.yellowpage.YellowPageAvatar.YellowPageAvatarFormat;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.security.MessageDigest;
import miui.provider.ExtraTelephony.FirewallLog;
import miui.util.HashUtils;
import miui.yellowpage.YellowPageContract.ImageLookup;

public class YellowPageImgLoader {
    private static final String YELLOWPAGE_PHOTO_DOWNLOAD_WIFI_ONLY = "yellowpage_photo_download_wifi_only";

    public static class Image {
        private ImageFormat mFormat;
        private ImageProcessor mImageProcesser;
        protected String mUrl;

        public interface ImageProcessor {
            Bitmap processImage(Bitmap bitmap);
        }

        public enum ImageFormat {
            JPG,
            PNG
        }

        public Image(String url) {
            this.mUrl = url;
            this.mFormat = ImageFormat.JPG;
        }

        public Image(String url, ImageFormat format) {
            this.mUrl = url;
            this.mFormat = format;
        }

        public String getUrl() {
            return this.mUrl;
        }

        public String getName() {
            return HashUtils.getSHA1(this.mUrl);
        }

        public ImageFormat getFormat() {
            return this.mFormat;
        }

        public boolean isValid() {
            return TextUtils.isEmpty(this.mUrl) ^ 1;
        }

        public boolean equals(Object o) {
            if (o == this) {
                return true;
            }
            if (o instanceof Image) {
                return TextUtils.equals(((Image) o).mUrl, this.mUrl);
            }
            return false;
        }

        public int hashCode() {
            return this.mUrl == null ? 0 : this.mUrl.hashCode();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(" Image name is:");
            stringBuilder.append(getName());
            return stringBuilder.toString();
        }

        public Bitmap proccessImage(Bitmap originImage) {
            if (this.mImageProcesser != null) {
                return this.mImageProcesser.processImage(originImage);
            }
            return originImage;
        }

        public void setImageProcessor(ImageProcessor processor) {
            this.mImageProcesser = processor;
        }
    }

    private YellowPageImgLoader() {
    }

    private static boolean isYellowPagePhotoDownloadWifiOnly(Context context) {
        return System.getInt(context.getContentResolver(), YELLOWPAGE_PHOTO_DOWNLOAD_WIFI_ONLY, 1) == 1;
    }

    public static Bitmap loadPhoto(Context context, long yid, boolean fetchRemote) {
        Image image = new YellowPageAvatar(context, String.valueOf(yid), YellowPageAvatarFormat.PHOTO_YID);
        boolean z = fetchRemote && (!isYellowPagePhotoDownloadWifiOnly(context) || isWifiConnected(context));
        return ImageLoader.getInstance(context).loadImageBitmap(image, z);
    }

    public static Bitmap loadPhotoByName(Context context, String name, boolean fetchRemote) {
        Image image = new YellowPageAvatar(context, name, YellowPageAvatarFormat.PHOTO_NAME);
        boolean z = fetchRemote && (!isYellowPagePhotoDownloadWifiOnly(context) || isWifiConnected(context));
        return ImageLoader.getInstance(context).loadImageBitmap(image, z);
    }

    public static byte[] loadThumbnailByName(Context context, String name, boolean fetchRemote, int defaultRes, int timeout) {
        return ImageLoader.getInstance(context).loadImageBytes(new YellowPageAvatar(context, name, YellowPageAvatarFormat.THUMBNAIL_NAME), fetchRemote, defaultRes, timeout);
    }

    public static byte[] loadThumbnailByName(Context context, String name, boolean fetchRemote) {
        return ImageLoader.getInstance(context).loadImageBytes(new YellowPageAvatar(context, name, YellowPageAvatarFormat.THUMBNAIL_NAME), fetchRemote, 0, 0);
    }

    public static void loadThumbnail(Context context, ImageView view, ImageProcessor processor, long yid, int defaultThumbnailRes) {
        Image image = new YellowPageAvatar(context, String.valueOf(yid), YellowPageAvatarFormat.THUMBNAIL_YID);
        image.setImageProcessor(processor);
        ImageLoader.getInstance(context).loadImage(view, image, defaultThumbnailRes);
    }

    public static void loadThumbnail(Context context, ImageView view, ImageProcessor processor, String number, int defaultThumbnailRes) {
        Image image = new YellowPageAvatar(context, number, YellowPageAvatarFormat.THUMBNAIL_NUMBER);
        image.setImageProcessor(processor);
        ImageLoader.getInstance(context).loadImage(view, image, defaultThumbnailRes);
    }

    public static void loadThumbnailByName(Context context, ImageView view, ImageProcessor processor, String name, int defaultThumbnailRes) {
        Image image = new YellowPageAvatar(context, name, YellowPageAvatarFormat.THUMBNAIL_NAME);
        image.setImageProcessor(processor);
        ImageLoader.getInstance(context).loadImage(view, image, defaultThumbnailRes);
    }

    public static void loadImage(Context context, ImageView view, Image image, int defaultImageRes) {
        ImageLoader.getInstance(context).loadImage(view, image, defaultImageRes);
    }

    public static void pauseLoading(Context context) {
        ImageLoader.getInstance(context).pauseLoading();
    }

    public static void cancelLoading(Context context, ImageView view) {
        ImageLoader.getInstance(context).cancelRequest(view);
    }

    public static void resumeLoading(Context context) {
        ImageLoader.getInstance(context).resumeLoading();
    }

    public static String getDataSha1Digest(byte[] data) {
        if (data == null || data.length == 0) {
            return null;
        }
        try {
            MessageDigest md = MessageDigest.getInstance(HashUtils.SHA1);
            md.update(data);
            return getHexString(md.digest());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String getHexString(byte[] b) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < b.length; i++) {
            int c = (b[i] & 240) >> 4;
            int i2 = (c < 0 || c > 9) ? (97 + c) - 10 : 48 + c;
            builder.append((char) i2);
            c = b[i] & 15;
            int i3 = (c < 0 || c > 9) ? (97 + c) - 10 : 48 + c;
            builder.append((char) i3);
        }
        return builder.toString();
    }

    private static String getImageUrl(Context context, String name, int width, int height, ImageFormat format) {
        Builder builder = Uri.withAppendedPath(ImageLookup.CONTENT_URI_IMAGE_URL, Uri.encode(name)).buildUpon();
        builder.appendQueryParameter("width", String.valueOf(width));
        builder.appendQueryParameter(nexExportFormat.TAG_FORMAT_HEIGHT, String.valueOf(height));
        builder.appendQueryParameter("format", format == ImageFormat.JPG ? "jpg" : "png");
        Uri uri = builder.build();
        if (!YellowPageUtils.isContentProviderInstalled(context, uri)) {
            return null;
        }
        Cursor cursor = context.getContentResolver().query(uri, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    return string;
                }
                cursor.close();
            } finally {
                cursor.close();
            }
        }
        return null;
    }

    public static void loadImage(Context context, ImageView view, ImageProcessor processor, ImageFormat format, String name, int width, int height, int defaultImageRes) {
        Image image = new Image(HostManager.getImageUrl(context, name, width, height, format), format);
        image.setImageProcessor(processor);
        ImageLoader.getInstance(context).loadImage(view, image, defaultImageRes);
    }

    public static Bitmap loadThumbnail(Context context, String number, boolean fetchRemote) {
        return ImageLoader.getInstance(context).loadImageBitmap(new YellowPageAvatar(context, number, YellowPageAvatarFormat.THUMBNAIL_NUMBER), fetchRemote);
    }

    public static Bitmap loadPhoneDisplayAd(Context context, long yid, String number, boolean isIncoming) {
        boolean z = true;
        int callType = isIncoming ? 1 : 2;
        Builder builder = ImageLookup.CONTENT_URI_IMAGE_PHONE_AD.buildUpon();
        String str = number;
        builder.appendQueryParameter("number", str);
        builder.appendQueryParameter("yid", String.valueOf(yid));
        builder.appendQueryParameter(FirewallLog.CALL_TYPE, String.valueOf(callType));
        Uri uri = builder.build();
        Context context2 = context;
        if (!YellowPageUtils.isContentProviderInstalled(context2, uri)) {
            return null;
        }
        Cursor cursor = context.getContentResolver().query(uri, null, null, null, null);
        String url = null;
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    url = cursor.getString(0);
                }
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
            }
        }
        Bitmap bitmap = null;
        if (!TextUtils.isEmpty(url)) {
            bitmap = ImageLoader.getInstance(context).loadImageBitmap(new Image(url), true);
            url = Uri.parse(url).getLastPathSegment();
        }
        String url2 = url;
        Bitmap bitmap2 = bitmap;
        String valueOf = String.valueOf(yid);
        if (bitmap2 == null) {
            z = false;
        }
        YellowPageStatistic.viewYellowPageInPhoneCall(context2, str, callType, true, valueOf, url2, z);
        return bitmap2;
    }

    private static boolean isWifiConnected(Context context) {
        ConnectivityManager connManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connManager.getActiveNetworkInfo();
        return (connManager.isActiveNetworkMetered() || networkInfo == null || !networkInfo.isConnected()) ? false : true;
    }
}
