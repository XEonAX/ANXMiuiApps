package com.miui.gallery.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.provider.DocumentFile;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.BaseDocumentProviderUtils.WriteHandler;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.Locale;
import miui.security.DigestUtils;
import miui.text.ExtraTextUtils;

public class FileUtils extends BaseFileUtils {
    public static String getFileName(String path) {
        String trimPath = path == null ? null : path.trim();
        String fileName = "";
        if (TextUtils.isEmpty(trimPath)) {
            return fileName;
        }
        String tmpPath = trimPath;
        if (tmpPath.endsWith(File.separator)) {
            tmpPath = tmpPath.substring(0, tmpPath.length() - 1);
        }
        return tmpPath.substring(tmpPath.lastIndexOf(File.separator) + 1);
    }

    public static String getFileNameWithoutExtension(String path) {
        String fileName = getFileName(path);
        if (TextUtils.isEmpty(fileName)) {
            return fileName;
        }
        int indexOfDot = path.lastIndexOf(46);
        if (indexOfDot > 0) {
            return path.substring(0, indexOfDot);
        }
        return fileName;
    }

    public static String getFileTitle(String fileName) {
        if (TextUtils.isEmpty(fileName)) {
            return "";
        }
        int index = fileName.lastIndexOf(".");
        if (index > -1) {
            return fileName.substring(0, index);
        }
        return fileName;
    }

    public static long getFileSize(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return 0;
        }
        return new File(filePath).length();
    }

    public static String getParentFolderPath(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return "";
        }
        int index = filePath.lastIndexOf(File.separator);
        if (index > -1) {
            return filePath.substring(0, index);
        }
        return filePath;
    }

    public static String getSha1(File file) {
        Throwable e;
        Throwable th;
        long start = SystemClock.uptimeMillis();
        InputStream in = null;
        String sha1String = null;
        try {
            InputStream in2 = new FileInputStream(file);
            try {
                sha1String = ExtraTextUtils.toHexReadable(DigestUtils.get(in2, "SHA-1"));
                BaseMiscUtil.closeSilently(in2);
                in = in2;
            } catch (Exception e2) {
                e = e2;
                in = in2;
                try {
                    Log.e("FileUtils", e);
                    BaseMiscUtil.closeSilently(in);
                    Log.d("FileUtils", "getSha1 for [%s] costs [%d]", file.getPath(), Long.valueOf(SystemClock.uptimeMillis() - start));
                    return sha1String;
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(in);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                in = in2;
                BaseMiscUtil.closeSilently(in);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            Log.e("FileUtils", e);
            BaseMiscUtil.closeSilently(in);
            Log.d("FileUtils", "getSha1 for [%s] costs [%d]", file.getPath(), Long.valueOf(SystemClock.uptimeMillis() - start));
            return sha1String;
        }
        Log.d("FileUtils", "getSha1 for [%s] costs [%d]", file.getPath(), Long.valueOf(SystemClock.uptimeMillis() - start));
        return sha1String;
    }

    public static byte[] getFileSha1(String path) {
        Throwable e;
        Throwable th;
        byte[] bArr = null;
        File file = new File(path);
        if (file.exists() && file.isFile()) {
            InputStream in = null;
            try {
                InputStream in2 = new FileInputStream(file);
                try {
                    bArr = DigestUtils.get(in2, "SHA-1");
                    BaseMiscUtil.closeSilently(in2);
                } catch (Exception e2) {
                    e = e2;
                    in = in2;
                    try {
                        Log.e("FileUtils", e);
                        BaseMiscUtil.closeSilently(in);
                        return bArr;
                    } catch (Throwable th2) {
                        th = th2;
                        BaseMiscUtil.closeSilently(in);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    in = in2;
                    BaseMiscUtil.closeSilently(in);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                Log.e("FileUtils", e);
                BaseMiscUtil.closeSilently(in);
                return bArr;
            }
        }
        Log.d("FileUtils", "File [%s] doesn't exist or is not a file", (Object) path);
        return bArr;
    }

    public static String getSha1(String path) {
        return getSha1(new File(path));
    }

    public static int getBucketID(String path) {
        return TextUtils.isEmpty(path) ? -1 : path.toLowerCase(Locale.ENGLISH).hashCode();
    }

    public static boolean createFolder(String destFolder, boolean hideFolder) {
        return createFolder(new File(destFolder), hideFolder);
    }

    public static boolean createFolder(File destFolderFile, boolean hideFolder) {
        if (destFolderFile.exists() && destFolderFile.isFile()) {
            boolean deleted = MediaFileUtils.deleteFileType(FileType.NORMAL, destFolderFile) > 0;
            Log.e("FileUtils", "createFolder  there is a file that has the same name as the dest folder, delete it first. result:" + deleted);
            if (!deleted) {
                return false;
            }
            DeleteRecorder.record(new DeleteRecord(52, destFolderFile.getAbsolutePath(), "FileUtils"));
        }
        mkdirsCustomize(destFolderFile, 511, -1, -1);
        if (destFolderFile.exists()) {
            if (hideFolder) {
                try {
                    if (BaseDocumentProviderUtils.needUseDocumentProvider(destFolderFile.getAbsolutePath())) {
                        DocumentFile destFolderDocumentFile = BaseDocumentProviderUtils.getDocumentFile(GalleryApp.sGetAndroidContext(), destFolderFile);
                        if (destFolderDocumentFile.findFile(".nomedia") == null) {
                            destFolderDocumentFile.createFile("any/any", ".nomedia");
                        }
                    } else {
                        new File(destFolderFile, ".nomedia").createNewFile();
                    }
                } catch (Throwable e) {
                    Log.e("FileUtils", e);
                }
            }
            return true;
        }
        Log.e("FileUtils", "folder: " + destFolderFile + " Can not be created.");
        return false;
    }

    private static boolean mkdirsCustomize(File file, int mode, int uid, int gid) {
        if (file.exists()) {
            return file.isDirectory();
        }
        if (!mkdirsCustomize(file.getParentFile(), mode, uid, gid)) {
            return false;
        }
        String path;
        if (file.mkdir()) {
            path = file.getPath();
            Log.i("FileUtils", "path %s, chmod %s, chown %s", path, Boolean.valueOf(miui.os.FileUtils.chmod(path, mode)), Boolean.valueOf(miui.os.FileUtils.chown(path, uid, gid)));
            return true;
        } else if (!BaseDocumentProviderUtils.needUseDocumentProvider(file.getAbsolutePath())) {
            return false;
        } else {
            DocumentFile documentFile = BaseDocumentProviderUtils.getDocumentFileDirectory(GalleryApp.sGetAndroidContext(), file);
            if (documentFile == null || !documentFile.isDirectory()) {
                return false;
            }
            path = file.getPath();
            Log.i("FileUtils", "path %s, chmod %s, chown %s", path, Boolean.valueOf(miui.os.FileUtils.chmod(path, mode)), Boolean.valueOf(miui.os.FileUtils.chown(path, uid, gid)));
            return true;
        }
    }

    public static File forceCreate(String dir, String name, int strategy) {
        Log.d("FileUtils", "forceCreate file(%s, %s).", dir, name);
        File file = new File(dir, name);
        if (file.exists()) {
            switch (strategy) {
                case 1:
                    if (MediaFileUtils.deleteFileType(FileType.NORMAL, file) <= 0) {
                        Log.e("FileUtils", "forceCreate: Delete exist file failed");
                    } else {
                        DeleteRecorder.record(new DeleteRecord(51, file.getAbsolutePath(), "FileUtils"));
                    }
                    return file;
                default:
                    Object file2;
                    Log.d("FileUtils", "duplicated file fount, rename: ");
                    int prefixIndex = name.indexOf(".");
                    String prefix = name.substring(0, prefixIndex);
                    String suffix = name.substring(prefixIndex, name.length());
                    int index = 1;
                    while (file2.exists()) {
                        file2 = new File(dir, prefix + "_" + index + suffix);
                        index++;
                    }
                    Log.d("FileUtils", "rename to %s, create finish.", file2);
                    return file2;
            }
        }
        Log.d("FileUtils", "no conflict, create finish.");
        return file2;
    }

    public static boolean isFileExist(String path) {
        return !TextUtils.isEmpty(path) && new File(path).exists();
    }

    public static String getPackageNameFromScreenshotFileName(Context context, String fileName) {
        if (!TextUtils.isEmpty(fileName) && fileName.startsWith("Screenshot")) {
            int packageNameStart = fileName.lastIndexOf("_");
            int packageNameEnd = fileName.lastIndexOf(".");
            if (packageNameEnd > packageNameStart) {
                Object packageName = fileName.substring(packageNameStart + 1, packageNameEnd);
                Log.d("FileUtils", "The packageName is %s", packageName);
                PackageManager pm = context.getPackageManager();
                try {
                    return pm.getApplicationLabel(pm.getApplicationInfo(packageName, 128)).toString();
                } catch (NameNotFoundException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public static boolean isScreenShot(Uri uri) {
        if (uri == null) {
            return false;
        }
        String name = uri.getLastPathSegment();
        if (name == null || !name.startsWith("Screenshot")) {
            return false;
        }
        return true;
    }

    public static File getImageRelativeDngFile(String imgFilePath) {
        if (imgFilePath == null || imgFilePath.length() < 4) {
            return null;
        }
        File dngFile;
        if (imgFilePath.substring(imgFilePath.length() - 4).equalsIgnoreCase(".jpg")) {
            dngFile = new File(imgFilePath.substring(0, imgFilePath.length() - 4) + ".dng");
        } else {
            dngFile = null;
        }
        if (dngFile == null) {
            return dngFile;
        }
        if (dngFile.exists() && dngFile.isFile()) {
            return dngFile;
        }
        return null;
    }

    public static boolean move(File srcFile, File destFile) {
        if (srcFile == null || destFile == null) {
            return false;
        }
        if (renameFile(srcFile, destFile)) {
            return true;
        }
        if (!copyFile(srcFile, destFile)) {
            return false;
        }
        MediaFileUtils.deleteFile(srcFile);
        return true;
    }

    public static boolean copyFile(File srcFile, File destFile) {
        if (BaseDocumentProviderUtils.needUseDocumentProvider(destFile.getAbsolutePath())) {
            return copyFileByDocumentProvider(srcFile, destFile);
        }
        return miui.os.FileUtils.copyFile(srcFile, destFile);
    }

    public static boolean copyFileByDocumentProvider(File srcFile, File destFile) {
        Throwable e;
        Throwable th;
        boolean result = false;
        FileInputStream in = null;
        try {
            InputStream in2 = new FileInputStream(srcFile);
            InputStream inputStream;
            try {
                result = copyFileByDocumentProvider(in2, destFile);
                BaseMiscUtil.closeSilently(in2);
                inputStream = in2;
            } catch (IOException e2) {
                e = e2;
                inputStream = in2;
                try {
                    Log.e("FileUtils", e);
                    BaseMiscUtil.closeSilently(in);
                    return result;
                } catch (Throwable th2) {
                    th = th2;
                    BaseMiscUtil.closeSilently(in);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = in2;
                BaseMiscUtil.closeSilently(in);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            Log.e("FileUtils", e);
            BaseMiscUtil.closeSilently(in);
            return result;
        }
        return result;
    }

    public static boolean copyFileByDocumentProvider(final InputStream inputStream, File destFile) {
        boolean z = true;
        if (destFile.exists()) {
            if (MediaFileUtils.deleteFile(destFile) <= 0) {
                return false;
            }
        }
        Boolean result = (Boolean) BaseDocumentProviderUtils.safeWriteFile(destFile.getAbsolutePath(), new WriteHandler<Boolean>() {
            public Boolean handle(FileOutputStream out) {
                try {
                    byte[] buffer = new byte[4096];
                    while (true) {
                        int bytesRead = inputStream.read(buffer);
                        if (bytesRead >= 0) {
                            out.write(buffer, 0, bytesRead);
                        } else {
                            out.flush();
                            return Boolean.valueOf(true);
                        }
                    }
                } catch (Throwable e) {
                    Log.e("FileUtils", e);
                    return Boolean.valueOf(false);
                }
            }
        });
        if (result == null || !result.booleanValue()) {
            z = false;
        }
        return z;
    }

    public static boolean renameFile(File srcFile, File desFile) {
        if (srcFile.renameTo(desFile)) {
            return true;
        }
        if (!BaseDocumentProviderUtils.needUseDocumentProvider(desFile.getAbsolutePath())) {
            FileChannel inChannel = null;
            FileChannel outChannel = null;
            try {
                inChannel = new FileInputStream(srcFile).getChannel();
                outChannel = new FileOutputStream(desFile).getChannel();
                long count = inChannel.size();
                long transferCount = inChannel.transferTo(0, count, outChannel);
                boolean result = count == transferCount;
                if (!result) {
                    Log.w("FileUtils", "transfer error, expect count %s, actual count %s", Long.valueOf(count), Long.valueOf(transferCount));
                }
                if (inChannel != null) {
                    try {
                        inChannel.close();
                    } catch (Exception e) {
                    }
                }
                if (outChannel != null) {
                    try {
                        outChannel.close();
                    } catch (Exception e2) {
                    }
                }
                if (result) {
                    MediaFileUtils.deleteFile(srcFile);
                    return result;
                }
                MediaFileUtils.deleteFile(desFile);
                return result;
            } catch (IOException e3) {
                if (inChannel != null) {
                    try {
                        inChannel.close();
                    } catch (Exception e4) {
                    }
                }
                if (outChannel != null) {
                    try {
                        outChannel.close();
                    } catch (Exception e5) {
                    }
                }
                if (null != null) {
                    MediaFileUtils.deleteFile(srcFile);
                } else {
                    MediaFileUtils.deleteFile(desFile);
                }
            } catch (Throwable th) {
                if (inChannel != null) {
                    try {
                        inChannel.close();
                    } catch (Exception e6) {
                    }
                }
                if (outChannel != null) {
                    try {
                        outChannel.close();
                    } catch (Exception e7) {
                    }
                }
                if (null != null) {
                    MediaFileUtils.deleteFile(srcFile);
                } else {
                    MediaFileUtils.deleteFile(desFile);
                }
            }
        } else if (copyFile(srcFile, desFile)) {
            MediaFileUtils.deleteFile(srcFile);
            return true;
        }
        return false;
    }

    public static boolean deleteFile(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        boolean result;
        if (BaseDocumentProviderUtils.needUseDocumentProvider(file.getAbsolutePath())) {
            boolean isDir = file.isDirectory();
            DocumentFile documentFile = BaseDocumentProviderUtils.getDocumentFile(GalleryApp.sGetAndroidContext(), file);
            if (documentFile == null) {
                result = false;
            } else {
                result = documentFile.delete();
            }
            if (isDir) {
                Log.i("FileUtils", "delete folder [%s]'s files, result %s", file.getAbsolutePath(), Boolean.valueOf(result));
                return result;
            }
            Log.i("FileUtils", "delete [%s]'s file, result %s", file.getAbsolutePath(), Boolean.valueOf(result));
            return result;
        } else if (file.isDirectory()) {
            result = miui.os.FileUtils.rm(file.getAbsolutePath());
            Log.i("FileUtils", "delete folder [%s]'s files, result %s", file.getAbsolutePath(), Boolean.valueOf(result));
            return result;
        } else {
            result = file.delete();
            if (!result) {
                Log.e("FileUtils", "File.delete() returns false %s", file.getAbsoluteFile());
                result = file.delete();
                Log.d("FileUtils", "Try File.delete() again. return %s", Boolean.valueOf(result));
            }
            Log.i("FileUtils", "delete [%s]'s file, result %s", file.getAbsolutePath(), Boolean.valueOf(result));
            return result;
        }
    }
}
