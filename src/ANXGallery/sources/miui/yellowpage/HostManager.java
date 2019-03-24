package miui.yellowpage;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import miui.os.C0015Build;
import miui.yellowpage.YellowPageImgLoader.Image.ImageFormat;

@Deprecated
public class HostManager {
    protected static final String BASE_URL = (C0015Build.IS_INTERNATIONAL_BUILD ? GLOBAL_BASE_URL : FORMAL_BASE_URL);
    private static final String DIRECTORY_IMAGE_JPG = "/thumbnail/jpeg/w%dh%d/";
    private static final String DIRECTORY_IMAGE_PHOTO = "/thumbnail/jpeg/h%d/";
    private static final String DIRECTORY_IMAGE_PNG = "/thumbnail/png/w%d/";
    private static final String DIRECTORY_IMAGE_THUMBNAIL = "/thumbnail/jpeg/w100/";
    private static final String FORMAL_BASE_URL = "https://api.huangye.miui.com";
    private static final String GLOBAL_BASE_URL = "https://global.api.huangye.miui.com";
    protected static final String URL_DEFAULT_IMAGE_BASE = "http://file.market.xiaomi.com";
    protected static final String URL_SPBOOK_BASE;
    protected static final String URL_YELLOW_PAGE_BASE;
    private static int sDisplayHeight;
    private static String sImageDomain;

    static {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(BASE_URL);
        stringBuilder.append("/spbook");
        URL_SPBOOK_BASE = stringBuilder.toString();
        stringBuilder = new StringBuilder();
        stringBuilder.append(URL_SPBOOK_BASE);
        stringBuilder.append("/yellowpage");
        URL_YELLOW_PAGE_BASE = stringBuilder.toString();
    }

    private HostManager() {
    }

    public static String getBaseUrl() {
        return BASE_URL;
    }

    public static String getYellowPageBaseUrl() {
        return URL_YELLOW_PAGE_BASE;
    }

    public static String getSpbookBaseUrl() {
        return URL_SPBOOK_BASE;
    }

    public static String getDefaultImageBase() {
        return URL_DEFAULT_IMAGE_BASE;
    }

    public static String getImageUrl(Context context, String name, int width, int height, ImageFormat format) {
        return getImageUrl(getImageDomain(context), name, width, height, format);
    }

    private static String getImageDomain(Context context) {
        if (sImageDomain != null) {
            return sImageDomain;
        }
        sImageDomain = URL_DEFAULT_IMAGE_BASE;
        String domain = InvocationHandler.invoke(context, "image_domain").getString("domain");
        if (!TextUtils.isEmpty(domain)) {
            sImageDomain = domain;
            if (!sImageDomain.startsWith("http://")) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("http://");
                stringBuilder.append(sImageDomain);
                sImageDomain = stringBuilder.toString();
            }
        }
        return sImageDomain;
    }

    public static String getYellowPageThumbnail(Context context, String name) {
        if (TextUtils.isEmpty(name)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getImageDomain(context));
        stringBuilder.append(DIRECTORY_IMAGE_THUMBNAIL);
        stringBuilder.append(name);
        return stringBuilder.toString();
    }

    public static String getYellowPagePhotoUrl(Context context, String name) {
        if (TextUtils.isEmpty(name)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getImageDomain(context));
        stringBuilder.append(String.format(DIRECTORY_IMAGE_PHOTO, new Object[]{Integer.valueOf(getScreenHeight(context))}));
        stringBuilder.append(name);
        return stringBuilder.toString();
    }

    private static String getImageUrl(String imageDomain, String name, int width, int height, ImageFormat format) {
        if (TextUtils.isEmpty(name) || width <= 0 || height <= 0 || TextUtils.isEmpty(imageDomain)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(imageDomain);
        stringBuilder.append(String.format(format == ImageFormat.PNG ? DIRECTORY_IMAGE_PNG : DIRECTORY_IMAGE_JPG, new Object[]{Integer.valueOf(width), Integer.valueOf(height)}));
        stringBuilder.append(name);
        return stringBuilder.toString();
    }

    private static int getScreenHeight(Context context) {
        if (sDisplayHeight == 0) {
            DisplayMetrics dm = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(dm);
            sDisplayHeight = dm.heightPixels;
        }
        return sDisplayHeight;
    }
}
