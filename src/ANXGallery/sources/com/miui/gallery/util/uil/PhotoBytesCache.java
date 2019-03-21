package com.miui.gallery.util.uil;

import com.miui.gallery.Config.BigPhotoConfig;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexProject;
import java.io.File;
import java.io.IOException;
import java.util.Map;

public class PhotoBytesCache {
    private BlobCache mBlobCache;
    private Object mLock;

    private static class Singleton {
        private static PhotoBytesCache sInstance = new PhotoBytesCache(new File(BigPhotoConfig.getCacheDir()), nexProject.kAutoThemeTransitionDuration, 838860800);
    }

    public static PhotoBytesCache getInstance() {
        return Singleton.sInstance;
    }

    private PhotoBytesCache(File cacheDir, int maxEntries, int cacheMaxSize) {
        this.mLock = new Object();
        if (cacheDir != null) {
            try {
                if (!cacheDir.exists()) {
                    FileUtils.createFolder(cacheDir, true);
                }
            } catch (Throwable e) {
                Log.e("PhotoBytesCache", e);
                recordInitError(e, cacheDir);
                return;
            }
        }
        this.mBlobCache = new BlobCache(cacheDir + "/" + "photo_blob", maxEntries, cacheMaxSize, false, 4);
    }

    private void recordInitError(Exception e, File cacheDir) {
        Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
        params.put("cacheDir", cacheDir.getAbsolutePath());
        params.put("exception", e.toString());
        BaseSamplingStatHelper.recordErrorEvent("pager_decode_bitmap", "pager_photo_cache_init_error", params);
    }

    public boolean putData(String imageUri, byte[] data) {
        boolean z;
        synchronized (this.mLock) {
            if (this.mBlobCache != null) {
                try {
                    Log.d("PhotoBytesCache", "Save data size %d", Integer.valueOf(data.length));
                    this.mBlobCache.insert(BaseMiscUtil.crc64Long(imageUri.getBytes()), data);
                } catch (Throwable e) {
                    Log.e("PhotoBytesCache", e);
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public byte[] getData(String imageUri) {
        byte[] data = null;
        synchronized (this.mLock) {
            try {
                if (this.mBlobCache != null) {
                    long start = System.currentTimeMillis();
                    data = this.mBlobCache.lookup(BaseMiscUtil.crc64Long(imageUri.getBytes()));
                    Log.d("PhotoBytesCache", "getData [%s] cost %d", imageUri, Long.valueOf(System.currentTimeMillis() - start));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return data;
    }
}
