package com.miui.gallery.util;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.deprecated.Storage;
import com.miui.gallery.util.uil.BlobCache;
import java.io.File;

public class OldCacheCleaner {
    public static void clean() {
        if (!PreferenceHelper.getBoolean(PrefKeys.UPGRADE_OLD_CACHE_CLEANED, false)) {
            PreferenceHelper.putBoolean(PrefKeys.UPGRADE_OLD_CACHE_CLEANED, true);
            cleanThumbnailCache();
            cleanBlobCache();
            cleanTempFiles();
        }
    }

    private static void cleanThumbnailCache() {
        String THUMB_CACHE_FOLDER = ".cache/Gallery";
        for (String miuiFilePath : StorageUtils.getPathsInExternalStorage(GalleryApp.sGetAndroidContext(), "MIUI")) {
            MediaFileUtils.deleteFileType(FileType.TEMP, miuiFilePath + File.separator + ".cache/Gallery");
        }
    }

    private static void cleanBlobCache() {
        String[] cacheFileNames = new String[]{"imgcache", "rev_geocoding", "bookmark", "avatar", "internal_img_cache", "cover"};
        for (File cacheDir : new File[]{GalleryApp.sGetAndroidContext().getCacheDir(), GalleryApp.sGetAndroidContext().getExternalCacheDir()}) {
            if (cacheDir != null) {
                for (String cacheFileName : cacheFileNames) {
                    BlobCache.deleteFiles(cacheDir.getAbsolutePath() + File.separator + cacheFileName);
                }
            }
        }
    }

    private static void cleanTempFiles() {
        for (String avatarPath : Storage.getAllSdCardAvatarFilePath()) {
            MediaFileUtils.deleteFileType(FileType.TEMP, avatarPath);
        }
    }
}
