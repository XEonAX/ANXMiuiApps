package cn.kuaipan.android.utils;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;

public class FileUtils {
    private static final File EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY = new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data");
    private static final Object mSync = new Object();
    private static File sExternalCacheDir;

    public static File getExternalStorageAppCacheDirectory(String packageName) {
        return new File(new File(EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY, packageName), "cache");
    }

    public static File getCacheDir(Context context, String folderName, boolean external) {
        File cacheDir = getCacheDir(context, external);
        if (cacheDir == null) {
            return null;
        }
        File result = new File(cacheDir, folderName);
        if (result.exists()) {
            return result;
        }
        result.mkdirs();
        if (result.exists() && result.isDirectory()) {
            return result;
        }
        Log.w("FileUtils", "Unable to create cache directory:" + result);
        return null;
    }

    public static File getCacheDir(Context context, boolean external) {
        return getCacheDir(context, external, true);
    }

    public static File getCacheDir(Context context, boolean external, boolean mustExist) {
        if (external) {
            return getExternalCacheDir(context, mustExist);
        }
        return context.getCacheDir();
    }

    public static boolean deleteChildren(File folder) {
        if (folder == null || !folder.exists() || !folder.isDirectory()) {
            return true;
        }
        File[] children = folder.listFiles();
        if (children == null) {
            return true;
        }
        boolean success = true;
        for (File child : children) {
            if (deletes(child) && success) {
                success = true;
            } else {
                success = false;
            }
        }
        return success;
    }

    public static boolean deletes(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isDirectory()) {
            deleteChildren(file);
        }
        return file.delete();
    }

    public static File getExternalCacheDir(Context context, boolean mustExist) {
        File file;
        synchronized (mSync) {
            if (sExternalCacheDir == null) {
                sExternalCacheDir = getExternalStorageAppCacheDirectory(context.getPackageName());
            }
            if (!sExternalCacheDir.exists()) {
                try {
                    new File(EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY, ".nomedia").createNewFile();
                } catch (IOException e) {
                }
                sExternalCacheDir.mkdirs();
                if (mustExist && !(sExternalCacheDir.exists() && sExternalCacheDir.isDirectory())) {
                    Log.w("FileUtils", "Unable to create external cache directory");
                    file = null;
                }
            }
            file = sExternalCacheDir;
        }
        return file;
    }
}
