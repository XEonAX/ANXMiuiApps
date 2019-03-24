package com.miui.gallery.util;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.StatFs;
import android.text.TextUtils;
import com.android.internal.storage.StorageInfo;
import com.android.internal.storage.StorageManager;
import com.miui.gallery.base.R;
import com.miui.gallery.util.deprecated.Storage;
import com.miui.xspace.XSpaceHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.os.C0001Environment;

public class StorageUtils {
    public static final String KEY_FOR_EMPTY_RELATIVE_PATH = String.valueOf("GallerySDCardRoot".hashCode());
    private static String sPrimaryStoragePath;
    private static String sSecondaryStoragePath;

    public static boolean isUsingSecondaryStorage(Context context) {
        return hasExternalSDCard(context) && isExternalSDCardPriorStorage();
    }

    public static String getPriorStoragePath() {
        if (isUsingSecondaryStorage(StaticContext.sGetAndroidContext())) {
            return getSecondaryStoragePath();
        }
        return getPrimaryStoragePath();
    }

    public static String getPathInPriorStorage(String relativePath) {
        return getFilePathUnder(getPriorStoragePath(), ensureCommonRelativePath(relativePath));
    }

    public static String getSafePriorStoragePath() {
        Context context = StaticContext.sGetAndroidContext();
        if (isUsingSecondaryStorage(context) && !BaseDocumentProviderUtils.needRequestExternalSDCardPermission(context)) {
            String secondaryStorage = getSecondaryStoragePath();
            if (!TextUtils.isEmpty(secondaryStorage)) {
                return secondaryStorage;
            }
        }
        return getPrimaryStoragePath();
    }

    public static String getSafePathInPriorStorage(String relativePath) {
        return getFilePathUnder(getSafePriorStoragePath(), relativePath);
    }

    public static boolean isExternalSDCardPriorStorage() {
        Context context = StaticContext.sGetAndroidContext();
        int state = context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, PriorityStorageBroadcastReceiver.class));
        if (state == 0) {
            return context.getResources().getBoolean(R.bool.priority_storage);
        }
        if (state != 1) {
            return false;
        }
        return true;
    }

    public static void setPriorStorage(boolean externalSDCard) {
        Context context = StaticContext.sGetAndroidContext();
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, PriorityStorageBroadcastReceiver.class), externalSDCard ? 1 : 2, 1);
    }

    public static String getSafePathInPriorStorageForUnadapted(String relativePath) {
        if (VERSION.SDK_INT >= 28) {
            return getPathInPrimaryStorage(relativePath);
        }
        return getPathInPriorStorage(relativePath);
    }

    public static String getPrimaryStoragePath() {
        if (TextUtils.isEmpty(sPrimaryStoragePath)) {
            sPrimaryStoragePath = Storage.getPrimaryStorageRoot();
        }
        return sPrimaryStoragePath;
    }

    public static boolean isPrimaryStorageWritable(Context context) {
        if ("mounted".equals(C0001Environment.getExternalStorageState())) {
            return canWriteThroughFileSystem(context, getPrimaryStoragePath());
        }
        return false;
    }

    public static boolean isInPrimaryStorage(String filePath) {
        return !TextUtils.isEmpty(filePath) && BaseFileUtils.contains(getPrimaryStoragePath(), filePath);
    }

    public static String getPathInPrimaryStorage(String relativePath) {
        return getFilePathUnder(getPrimaryStoragePath(), relativePath);
    }

    public static String getSecondaryStoragePath() {
        if (TextUtils.isEmpty(sSecondaryStoragePath)) {
            sSecondaryStoragePath = Storage.getExternalSDCardRoot();
        }
        return sSecondaryStoragePath;
    }

    public static boolean isInSecondaryStorage(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return false;
        }
        String secondaryStoragePath = getSecondaryStoragePath();
        if (TextUtils.isEmpty(secondaryStoragePath)) {
            return false;
        }
        return BaseFileUtils.contains(secondaryStoragePath, filePath);
    }

    public static String getPathInSecondaryStorage(String relativePath) {
        return getFilePathUnder(getSecondaryStoragePath(), relativePath);
    }

    public static boolean hasExternalSDCard(Context context) {
        for (StorageInfo volume : StorageManager.getInstance().getStorageInfos(context)) {
            if (volume.isMounted() && volume.isSd()) {
                return true;
            }
        }
        return false;
    }

    public static String getCreativeDirectory() {
        return getSafePathInPriorStorageForUnadapted("DCIM/Creative");
    }

    public static boolean canWrite(Context context, String absoluteFilePath) {
        if (context == null || !isAbsolutePath(absoluteFilePath)) {
            return false;
        }
        if (BaseDocumentProviderUtils.needUseDocumentProvider(absoluteFilePath) && BaseDocumentProviderUtils.needRequestExternalSDCardPermission(context)) {
            return false;
        }
        return true;
    }

    static List<StorageInfo> getVolumes(Context context) {
        List<StorageInfo> volumes = StorageManager.getInstance().getStorageInfos(context);
        StorageInfo info = getXSpaceStorageInfo(context);
        if (info != null) {
            volumes.add(info);
        }
        return volumes;
    }

    public static List<String> getMountedVolumePaths(Context context) {
        List<StorageInfo> volumes = getVolumes(context);
        List<String> mountedVolumes = new ArrayList(volumes.size());
        for (StorageInfo volume : volumes) {
            if (volume.isMounted() && !TextUtils.isEmpty(volume.getPath())) {
                mountedVolumes.add(volume.getPath());
            }
        }
        return mountedVolumes;
    }

    public static String[] getPathsInExternalStorage(Context context, String relativePath) {
        if (context == null) {
            return null;
        }
        List<String> mountedVolumes = getMountedVolumePaths(context);
        int size = mountedVolumes.size();
        String[] paths = new String[size];
        for (int i = 0; i < size; i++) {
            paths[i] = getFilePathUnder((String) mountedVolumes.get(i), relativePath);
        }
        return paths;
    }

    public static String getVolumePath(Context context, String absolutePath) {
        if (context == null || !isAbsolutePath(absolutePath)) {
            return null;
        }
        for (String externalVolumePath : getMountedVolumePaths(context)) {
            if (BaseFileUtils.contains(externalVolumePath, absolutePath)) {
                return externalVolumePath;
            }
        }
        return null;
    }

    public static boolean isInExternalStorage(Context context, String absolutePath) {
        if (!isAbsolutePath(absolutePath)) {
            return false;
        }
        for (String volumePaths : getMountedVolumePaths(context)) {
            if (BaseFileUtils.contains(volumePaths, absolutePath)) {
                return true;
            }
        }
        return false;
    }

    public static String getPathForDisplay(Context context, String filePath) {
        if (!(context == null || TextUtils.isEmpty(filePath))) {
            for (StorageInfo volume : getVolumes(context)) {
                if (BaseFileUtils.contains(volume.getPath(), filePath)) {
                    String description = volume.getDescription();
                    if (volume.isPrimary()) {
                        description = context.getString(R.string.storage_description_primary);
                    } else if (volume.isSd()) {
                        description = context.getString(R.string.storage_description_sdcard);
                    } else if (volume.isXspace()) {
                        description = context.getString(R.string.storage_description_xspace);
                    } else if (volume.isUsb()) {
                        description = context.getString(R.string.storage_description_usb);
                    }
                    if (!TextUtils.isEmpty(description)) {
                        return String.format(Locale.US, "%s%s", new Object[]{description, filePath.substring(volume.getPath().length())});
                    }
                }
            }
        }
        return filePath == null ? "" : filePath;
    }

    public static String getPriorMicroThumbnailDirectory() {
        return getSafePathInPriorStorage("MIUI/Gallery/cloud/.microthumbnailFile");
    }

    public static String[] getMicroThumbnailDirectories(Context context) {
        return getPathsInExternalStorage(context, "MIUI/Gallery/cloud/.microthumbnailFile");
    }

    public static String getMicroThumbnailTempDirectory() {
        return getPriorMicroThumbnailDirectory();
    }

    public static String getPriorMicroThumbnailPath(String fileName) {
        return getFilePathUnder(getPriorMicroThumbnailDirectory(), fileName);
    }

    public static String getThumbnailTempDirectory() {
        return getSafePathInPriorStorageForUnadapted("MIUI/Gallery/cloud/.cache/.downloadThumbnail");
    }

    public static String getOriginTempDirectory() {
        return getSafePathInPriorStorageForUnadapted("MIUI/Gallery/cloud/.cache/.downloadFile");
    }

    public static String getCacheDirectory() {
        return getPathInPrimaryStorage("MIUI/Gallery/cloud/.cache");
    }

    public static File getNetworkCacheDirectory() {
        File cache = null;
        if ("mounted".equals(C0001Environment.getExternalStorageState())) {
            cache = new File(StaticContext.sGetAndroidContext().getExternalCacheDir(), "request");
        }
        if (cache == null) {
            return new File(StaticContext.sGetAndroidContext().getCacheDir(), "request");
        }
        return cache;
    }

    public static String getRelativePath(Context context, String absolutePath) {
        if (context == null || TextUtils.isEmpty(absolutePath)) {
            return null;
        }
        if (!isAbsolutePath(absolutePath)) {
            return absolutePath;
        }
        for (String volumePath : getMountedVolumePaths(context)) {
            if (BaseFileUtils.contains(volumePath, absolutePath)) {
                if (volumePath.length() < absolutePath.length()) {
                    String relativePath = absolutePath.substring(volumePath.length());
                    int start = relativePath.startsWith(File.separator) ? 1 : 0;
                    int end = relativePath.endsWith(File.separator) ? relativePath.length() - 1 : relativePath.length();
                    if (start < end) {
                        return relativePath.substring(start, end);
                    }
                }
                return KEY_FOR_EMPTY_RELATIVE_PATH;
            }
        }
        return null;
    }

    public static String ensureCommonRelativePath(String relativePath) {
        if (KEY_FOR_EMPTY_RELATIVE_PATH.equals(relativePath)) {
            return "";
        }
        return relativePath == null ? "" : relativePath;
    }

    public static String[] getAbsolutePath(Context context, String relativePath) {
        if (isAbsolutePath(relativePath)) {
            return new String[]{relativePath};
        } else if (context == null) {
            return null;
        } else {
            return getPathsInExternalStorage(context, ensureCommonRelativePath(relativePath));
        }
    }

    public static String getFilePathUnder(String rootFolder, String relativePath) {
        if (rootFolder == null) {
            return null;
        }
        if (relativePath == null) {
            relativePath = "";
        }
        return BaseFileUtils.concat(rootFolder, relativePath);
    }

    public static long getTotalBytes(String path) {
        if (!TextUtils.isEmpty(path)) {
            try {
                return new StatFs(path).getTotalBytes();
            } catch (Exception e) {
                Log.e("StorageUtils", String.format(Locale.US, "Failed to get total bytes [%s]", new Object[]{e}));
            }
        }
        return 0;
    }

    public static long getAvailableBytes(String path) {
        if (!TextUtils.isEmpty(path)) {
            try {
                return new StatFs(path).getAvailableBytes();
            } catch (Exception e) {
                Log.e("StorageUtils", String.format(Locale.US, "Failed to get available bytes [%s]", new Object[]{e}));
            }
        }
        return 0;
    }

    public static boolean canWriteThroughFileSystem(Context context, String absoluteFilePath) {
        if (context == null || !isAbsolutePath(absoluteFilePath)) {
            return false;
        }
        String volumePath = getVolumePath(context, absoluteFilePath);
        if (TextUtils.isEmpty(volumePath)) {
            return false;
        }
        File testFile = new File(volumePath, ".fe_tmp");
        try {
            BaseMiscUtil.closeSilently(new FileOutputStream(testFile, true));
            if (testFile.exists()) {
                try {
                    testFile.delete();
                } catch (Exception e) {
                    Log.w("StorageUtils", "Failed to delete test file [%s], %s", testFile.getPath(), e);
                }
            }
            return true;
        } catch (Exception e2) {
            Log.w("StorageUtils", "Cannot write to file volume [%s], %s", volumePath, e2);
            BaseMiscUtil.closeSilently(null);
            if (!testFile.exists()) {
                return false;
            }
            try {
                testFile.delete();
                return false;
            } catch (Exception e22) {
                Log.w("StorageUtils", "Failed to delete test file [%s], %s", testFile.getPath(), e22);
                return false;
            }
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            if (testFile.exists()) {
                try {
                    testFile.delete();
                } catch (Exception e222) {
                    Log.w("StorageUtils", "Failed to delete test file [%s], %s", testFile.getPath(), e222);
                }
            }
        }
    }

    private static StorageInfo getXSpaceStorageInfo(Context context) {
        if (XSpaceHelper.isXSpaceEnable(context)) {
            File file = XSpaceHelper.getXSpacePath();
            if (file != null && file.exists() && file.canRead()) {
                StorageInfo info = new StorageInfo(file.getAbsolutePath());
                info.setXspace(true);
                info.setMounted(true);
                return info;
            }
        }
        return null;
    }

    private static boolean isAbsolutePath(String path) {
        return !TextUtils.isEmpty(path) && path.startsWith(File.separator);
    }
}
