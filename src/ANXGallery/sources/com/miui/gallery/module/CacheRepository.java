package com.miui.gallery.module;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.os.Rom;
import java.io.File;
import miui.module.Repository;
import miui.module.appstore.AppStoreRepository;

public class CacheRepository extends Repository {
    private AppStoreRepository mAppStoreRepo = new AppStoreRepository();
    private File mFolder;
    private boolean mLocalOnly;

    public CacheRepository(Context context, boolean localOnly) {
        this.mLocalOnly = localOnly;
        this.mFolder = new File(context.getFilesDir(), "plugins/preloads/");
    }

    public boolean contains(String name) {
        return new File(this.mFolder, name).exists() || (!this.mLocalOnly && this.mAppStoreRepo.contains(name));
    }

    public String fetch(File targetFolder, String name) {
        Log.d("CacheRepository", "fetching %s", (Object) name);
        File src = new File(this.mFolder, name);
        if (src.exists()) {
            Log.d("CacheRepository", "%s cached", (Object) name);
        } else {
            Log.d("CacheRepository", "%s not in cache", (Object) name);
            if (this.mLocalOnly) {
                return null;
            }
            Log.d("CacheRepository", "start to cache %s", (Object) name);
            if (cache(name) == null) {
                return null;
            }
        }
        if (!FileUtils.copyFile(src, new File(targetFolder, name))) {
            return null;
        }
        Log.d("CacheRepository", "fetch %s success");
        return name;
    }

    String cache(String name) {
        if (this.mFolder.exists() || this.mFolder.mkdirs()) {
            File src = new File(this.mFolder, name);
            if (src.exists()) {
                Log.d("CacheRepository", "%s loaded, skip cache", (Object) name);
                return name;
            }
            String fileName = this.mAppStoreRepo.fetch(this.mFolder, name);
            if (fileName == null) {
                Log.d("CacheRepository", "app store repo fetch %s failed", (Object) name);
                return null;
            }
            File module = new File(this.mFolder, fileName);
            if (TextUtils.equals(fileName, name) || module.renameTo(src)) {
                Log.d("CacheRepository", "cache success");
                return name;
            }
            Log.d("CacheRepository", "rename %s -> %s failed", module, src);
            return null;
        }
        throw new IllegalStateException("create plugin cache folder failed");
    }

    public static void clearCache(Context context, String name) {
        if (Rom.IS_MIUI && Rom.IS_ALPHA && context != null && !TextUtils.isEmpty(name)) {
            File cacheFile = new File(new File(context.getFilesDir(), "plugins/preloads/"), name);
            FileUtils.deleteFile(cacheFile);
            Log.d("CacheRepository", "delete %s", cacheFile.getAbsolutePath());
            File sdkDir = new File(context.getFilesDir(), "miuisdk/modules/");
            File apkFile = new File(sdkDir, name + ".apk");
            FileUtils.deleteFile(apkFile);
            Log.d("CacheRepository", "delete %s", apkFile.getAbsolutePath());
            File libFile = new File(sdkDir, name + ".lib");
            FileUtils.deleteFile(libFile);
            Log.d("CacheRepository", "delete %s", libFile.getAbsolutePath());
        }
    }
}
