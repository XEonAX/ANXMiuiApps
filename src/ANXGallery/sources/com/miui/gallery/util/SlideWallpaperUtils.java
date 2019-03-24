package com.miui.gallery.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import miui.yellowpage.Tag.TagYellowPage;

public class SlideWallpaperUtils {
    public static void setSlideWallpaper(Context context, Uri uri, String sha1) {
        try {
            Intent intent;
            if (supported(context)) {
                intent = new Intent("android.intent.action.VIEW");
                Uri providerUri = GalleryOpenProvider.translateToContent(uri.getPath());
                intent.setData(Uri.parse("mifg://fashiongallery/addcw?from=MiuiGallery").buildUpon().appendQueryParameter("uri", providerUri.toString()).appendQueryParameter("sha1", sha1).build());
                context.grantUriPermission("com.mfashiongallery.emag", providerUri, 1);
            } else {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.mfashiongallery.emag&back=true&ref=MiuiGallery&startDownload=true"));
            }
            context.startActivity(intent);
        } catch (Throwable ex) {
            Log.w("SlideWallpaperUtils", ex);
            BaseSamplingStatHelper.recordCountEvent(TagYellowPage.PHOTO, "set_slide_wallpaper_fail");
        }
    }

    private static boolean supported(Context context) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("mifg://fashiongallery/addcw?uri=/DCIM/Camera/IMG.jpg&from=test"));
        if (intent.resolveActivityInfo(context.getPackageManager(), 0) != null) {
            return true;
        }
        return false;
    }
}
