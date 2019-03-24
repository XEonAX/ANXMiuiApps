package com.miui.gallery.util.deprecated;

import android.os.Build;
import com.android.internal.storage.StorageInfo;
import com.android.internal.storage.StorageManager;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StaticContext;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.lang.reflect.Method;
import miui.os.C0001Environment;

public class Storage {
    public static String getPrimaryStorageRoot() {
        return C0001Environment.getExternalStorageDirectory().getPath();
    }

    public static String getExternalSDCardRoot() {
        if (BaseBuildUtil.isUUIDSDCard()) {
            for (StorageInfo info : StorageManager.getInstance().getStorageInfos(StaticContext.sGetAndroidContext())) {
                if (info.isMounted() && info.isSd()) {
                    return info.getPath();
                }
            }
            return null;
        } else if (!isMocha()) {
            return System.getenv("SECONDARY_STORAGE");
        } else {
            try {
                Method method = C0001Environment.class.getMethod("getSecondaryStorageDirectory", new Class[0]);
                if (method == null) {
                    return null;
                }
                Object o = method.invoke(null, new Object[0]);
                if (o instanceof File) {
                    return ((File) o).getPath();
                }
                return null;
            } catch (Throwable e) {
                Log.w("Storage", e);
                return null;
            } catch (Throwable e2) {
                Log.w("Storage", e2);
                return null;
            } catch (Throwable e22) {
                Log.w("Storage", e22);
                return null;
            }
        }
    }

    @Deprecated
    private static boolean isMocha() {
        return "mocha".equals(Build.DEVICE);
    }

    @Deprecated
    public static String[] getAllSdCardAvatarFilePath() {
        return StorageUtils.getPathsInExternalStorage(StaticContext.sGetAndroidContext(), "/MIUI/Gallery/cloud/.avatar");
    }

    @Deprecated
    public static String[] getCloudThumbnailFilePath() {
        return StorageUtils.getPathsInExternalStorage(StaticContext.sGetAndroidContext(), "/MIUI/Gallery/cloud/.thumbnailFile");
    }

    @Deprecated
    public static String[] getCloudThumbnailModifiedTimeMapFilePath() {
        return StorageUtils.getPathsInExternalStorage(StaticContext.sGetAndroidContext(), "/MIUI/Gallery/cloud/.thumbnaillastmodifiedtime");
    }

    public static String[] getCloudWaitUploadFilePath() {
        return StorageUtils.getPathsInExternalStorage(StaticContext.sGetAndroidContext(), "/MIUI/Gallery/cloud/.waitUpload");
    }

    @Deprecated
    public static String getMainSDCardCloudThumbnailFilePath() {
        return StorageUtils.getPathInPriorStorage("/MIUI/Gallery/cloud/.thumbnailFile");
    }

    public static boolean startsWithFilePath(String[] filePaths, String filePath) {
        String lowerCaseFilePath = filePath.toLowerCase();
        for (String onePath : filePaths) {
            if (lowerCaseFilePath.startsWith(onePath.toLowerCase())) {
                return true;
            }
        }
        return false;
    }
}
