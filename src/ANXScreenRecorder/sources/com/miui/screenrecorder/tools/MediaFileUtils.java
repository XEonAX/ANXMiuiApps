package com.miui.screenrecorder.tools;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.os.FileUtils;

public class MediaFileUtils {
    private static final String MEDIA_URL = "content://media/";
    private static final String SCREEN_RECORDER_DIR = "ScreenRecorder";
    private static final String TAG = "MediaFileUtils";

    public static String getSavePath() {
        File srDir = getSaveFile();
        if (srDir == null) {
            return null;
        }
        return srDir.getAbsolutePath();
    }

    private static File getSaveFile() {
        File srDir = getMediaDir();
        long millis = System.currentTimeMillis();
        File newSRFile = new File(srDir, "Screenrecorder-" + new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.US).format(Long.valueOf(millis)) + "-" + String.valueOf(millis % 1000) + ".mp4" + ".tmp");
        if (newSRFile.exists()) {
            return newSRFile;
        }
        try {
            if (newSRFile.createNewFile()) {
                return newSRFile;
            }
            LogUtil.e(TAG, "create screen recorder file failed.");
            return newSRFile;
        } catch (IOException e) {
            LogUtil.e(TAG, "create screen recorder file failed." + e.toString());
            return null;
        }
    }

    private static File getMediaDir() {
        String dcimDir = getExternalStorage() + "/" + Environment.DIRECTORY_DCIM;
        File dcim = new File(dcimDir);
        if (!dcim.exists()) {
            if (dcim.mkdir()) {
                LogUtil.i(TAG, "DCIM directory is created");
            } else {
                LogUtil.i(TAG, "DCIM directory create fail");
            }
        }
        File srDir = new File(dcimDir, SCREEN_RECORDER_DIR);
        if (!srDir.exists()) {
            if (srDir.mkdir()) {
                LogUtil.i(TAG, "Method - getMediaDir() : MI Log directory is created");
            } else {
                LogUtil.i(TAG, "Method - getMediaDir() : MI Log directory create fail");
            }
        }
        return srDir;
    }

    public static List<String> getMediaDirStrList() {
        List<File> fileList = getMediaDirList();
        List<String> fileStringList = new ArrayList();
        for (File file : fileList) {
            fileStringList.add(file.getAbsolutePath());
        }
        return fileStringList;
    }

    private static List<File> getMediaDirList() {
        List<File> srDirLists = new ArrayList();
        for (String externalStorage : getExtSDCardPaths()) {
            File srDir = new File(externalStorage + "/" + Environment.DIRECTORY_DCIM, SCREEN_RECORDER_DIR);
            if (!srDir.exists()) {
                if (srDir.mkdir()) {
                    LogUtil.i(TAG, "Method - getMediaDir() : MI Log directory is created");
                } else {
                    LogUtil.i(TAG, "Method - getMediaDir() : MI Log directory create fail");
                }
            }
            srDirLists.add(srDir);
        }
        return srDirLists;
    }

    public static int deleteFile(File... files) {
        int count = 0;
        for (File file : files) {
            if (file != null) {
                if (file.exists()) {
                    boolean result;
                    int i;
                    if (file.isDirectory()) {
                        result = FileUtils.rm(file.getAbsolutePath());
                    } else {
                        result = file.delete();
                        if (!result) {
                            result = file.delete();
                        }
                    }
                    if (result) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    count += i;
                } else {
                    count++;
                }
            }
        }
        return count;
    }

    public static void scanFolder(Context context, String folderPath) {
        if (!TextUtils.isEmpty(folderPath)) {
            Intent scanIntent = new Intent("android.intent.action.MEDIA_MOUNTED");
            scanIntent.setData(Uri.fromFile(new File(folderPath)));
            context.sendBroadcast(scanIntent);
        }
    }

    public static void scanFile(Context context, String filePath) {
        Intent scanIntent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        scanIntent.setData(Uri.fromFile(new File(filePath)));
        context.sendBroadcast(scanIntent);
    }

    @NonNull
    public static String convertTmpFile(String filePath) {
        String newFilePath = convertTmpFileName(filePath);
        renameFile(filePath, newFilePath);
        return newFilePath;
    }

    public static String convertTmpFileName(String filePath) {
        if (filePath == null || filePath.length() < 5) {
            return "";
        }
        StringBuilder fileSb = new StringBuilder();
        for (int i = 0; i < filePath.length() - 4; i++) {
            fileSb.append(filePath.charAt(i));
        }
        return new String(fileSb);
    }

    private static void renameFile(String filePath, String newFilePath) {
        File originFile = new File(filePath);
        if (originFile.renameTo(new File(newFilePath))) {
            LogUtil.v(TAG, "originfile.renameTo success");
        } else {
            LogUtil.v(TAG, "originfile.renameTo fail originfile = " + originFile.getAbsolutePath() + " lastfile = " + originFile.getAbsolutePath());
        }
    }

    public static Boolean isVideoUri(Uri uri) {
        return Boolean.valueOf((uri + "").contains(MEDIA_URL));
    }

    public static void saveToCloud(Context context, String filePath) {
        Intent intent = new Intent("com.miui.gallery.SAVE_TO_CLOUD");
        intent.setPackage("com.miui.gallery");
        List<ResolveInfo> resolveInfos = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (resolveInfos != null && resolveInfos.size() > 0) {
            intent.setComponent(new ComponentName("com.miui.gallery", ((ResolveInfo) resolveInfos.get(0)).activityInfo.name));
        }
        intent.putExtra("extra_file_path", filePath);
        context.sendBroadcast(intent);
    }

    public static Boolean isOverMaxFileSize(String filePath) {
        boolean isOverMaxFileSize = false;
        try {
            if (new File(filePath).length() > ScreenRecorderConfig.maxFileSize) {
                isOverMaxFileSize = true;
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "The file parameter is illegality!");
        }
        return Boolean.valueOf(isOverMaxFileSize);
    }

    private static String getExternalStorage() {
        List<String> externalStorageList = getExtSDCardPaths();
        if (externalStorageList.size() <= 1) {
            return (String) externalStorageList.get(0);
        }
        if (ScreenRecorderConfig.getConfig().getStorageLocation() == 0) {
            return (String) externalStorageList.get(0);
        }
        return (String) externalStorageList.get(1);
    }

    public static boolean isExtraSd() {
        if (getExtSDCardPaths().size() > 1) {
            return true;
        }
        return false;
    }

    @NonNull
    private static List<String> getExtSDCardPaths() {
        List<String> resultPaths = new ArrayList();
        resultPaths.add(Environment.getExternalStorageDirectory().getAbsolutePath());
        if (VERSION.SDK_INT < 28) {
            StorageManager mStorageManager = (StorageManager) ScreenRecorderApplication.getContext().getSystemService("storage");
            try {
                Class<?> storageVolumeClazz = Class.forName("android.os.storage.StorageVolume");
                Method getVolumeList = mStorageManager.getClass().getMethod("getVolumeList", new Class[0]);
                Method getPath = storageVolumeClazz.getMethod("getPath", new Class[0]);
                Method isRemovable = storageVolumeClazz.getMethod("isRemovable", new Class[0]);
                Object result = getVolumeList.invoke(mStorageManager, new Object[0]);
                int length = Array.getLength(result);
                for (int i = 0; i < length; i++) {
                    Object storageVolumeElement = Array.get(result, i);
                    String path = (String) getPath.invoke(storageVolumeElement, new Object[0]);
                    if (((Boolean) isRemovable.invoke(storageVolumeElement, new Object[0])).booleanValue()) {
                        if (((String) Class.forName("android.os.storage.StorageManager").getMethod("getVolumeState", new Class[]{String.class}).invoke((StorageManager) ScreenRecorderApplication.getContext().getSystemService("storage"), new Object[]{path})).equals("mounted")) {
                            resultPaths.add(path);
                        }
                    }
                }
            } catch (Exception e) {
                LogUtil.e(TAG, "getSDPath() failed", e);
            }
        }
        return resultPaths;
    }
}
