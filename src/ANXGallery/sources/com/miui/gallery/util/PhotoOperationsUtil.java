package com.miui.gallery.util;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.data.LocationUtil;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.os.Rom;
import com.nexstreaming.nexeditorsdk.nexEngine;

public class PhotoOperationsUtil {
    public static int getVideoSupportedOperations(String filePath) {
        if (TextUtils.isEmpty(filePath) || !StorageUtils.isInExternalStorage(GalleryApp.sGetAndroidContext(), filePath)) {
            return 1049732;
        }
        return (1049732 | 1) | 512;
    }

    public static int getImageSupportedOperations(String filePath, String mimeType, double latitude, double longitude) {
        int operation = 5637132;
        Context context = GalleryApp.sGetAndroidContext();
        if (WallpaperUtils.supported(context)) {
            operation = 5637132 | 32;
        }
        if (!Rom.IS_INTERNATIONAL && Rom.IS_MIUI) {
            operation |= 2048;
        }
        if (!TextUtils.isEmpty(filePath) && StorageUtils.isInExternalStorage(context, filePath)) {
            operation |= 1;
            if (!(TextUtils.equals(mimeType, "image/gif") || DownloadPathHelper.isShareFolderRelativePath(StorageUtils.getRelativePath(context, filePath)))) {
                operation |= 512;
            }
        }
        if (BaseFileMimeUtil.isGifFromMimeType(mimeType)) {
            operation = (operation & -33) & -2049;
        }
        if (BitmapUtils.isSupportedByRegionDecoder(mimeType)) {
            operation |= 64;
        }
        if (BitmapUtils.isRotationSupported(mimeType)) {
            operation |= 2;
        }
        if (LocationUtil.isValidateCoordinate(latitude, longitude)) {
            operation |= 16;
        }
        if (ApplicationHelper.isSecretAlbumFeatureOpen()) {
            return operation | nexEngine.ExportHEVCHighTierLevel61;
        }
        return operation;
    }

    public static boolean isSupportedOptions(int supports, int option) {
        return (supports & option) != 0;
    }
}
