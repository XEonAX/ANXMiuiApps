package com.miui.gallery.video.editor.util;

import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class FileHelper {
    public static String generateOutputFilePath(String path, boolean isHiddened) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return generateOutputFilePath(new File(path), isHiddened);
    }

    public static String generateOutputFilePath(File file, boolean isHiddened) {
        if (file == null) {
            return null;
        }
        String name;
        String parentPath = null;
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentPath = parentFile.getAbsolutePath();
        }
        if (TextUtils.isEmpty(parentPath)) {
            parentPath = StorageUtils.getCreativeDirectory();
            FileUtils.createFolder(parentPath, false);
        } else if (BaseDocumentProviderUtils.needUseDocumentProvider(parentPath)) {
            parentPath = StorageUtils.getPathInPrimaryStorage(StorageUtils.getRelativePath(GalleryApp.sGetAndroidContext(), parentPath));
            FileUtils.createFolder(parentPath, false);
        }
        String extensionName = "";
        int lastPointIndex = file.getName().lastIndexOf(".");
        if (lastPointIndex == -1 || lastPointIndex >= file.getName().length() - 1) {
            name = file.getName();
        } else {
            extensionName = file.getName().substring(lastPointIndex + 1);
            name = file.getName().substring(0, lastPointIndex);
        }
        return generateFileName(parentPath, name, extensionName, 0, isHiddened);
    }

    private static String generateFileName(String parentPath, String fileName, String extensionName, int number, boolean isHiddened) {
        StringBuilder fileNameSB = new StringBuilder();
        if (isHiddened && !fileName.startsWith(".")) {
            fileNameSB.append(".");
        }
        fileNameSB.append(fileName).append("(").append(String.valueOf(number)).append(")");
        if (!TextUtils.isEmpty(extensionName)) {
            fileNameSB.append(".").append(extensionName);
        }
        File file = new File(parentPath, fileNameSB.toString());
        if (file.exists()) {
            return generateFileName(parentPath, fileName, extensionName, number + 1, isHiddened);
        }
        return file.getAbsolutePath();
    }

    public static boolean createDir(String destDirName) {
        File dir = new File(destDirName);
        if (dir.exists()) {
            Log.d("FileHelper", "The target directory already exists");
            return true;
        } else if (dir.mkdirs()) {
            Log.d("FileHelper", "create dir sucessed！");
            return true;
        } else {
            Log.d("FileHelper", "create dir failed！ ");
            return false;
        }
    }

    public static String unZipTemplateFile(String zipPath, String unZipPath) {
        IOException e;
        Throwable th;
        File zipFile = new File(zipPath);
        if (!zipFile.exists()) {
            return null;
        }
        File unzipFile = new File(unZipPath);
        if (!unzipFile.exists()) {
            unzipFile.mkdirs();
        }
        InputStream inputStream = null;
        ZipInputStream zipInputStream = null;
        try {
            ZipInputStream zipInputStream2 = new ZipInputStream(new FileInputStream(zipFile));
            try {
                byte[] buffer = new byte[1024];
                for (ZipEntry zipEntry = zipInputStream2.getNextEntry(); zipEntry != null; zipEntry = zipInputStream2.getNextEntry()) {
                    File file;
                    if (zipEntry.isDirectory()) {
                        file = new File(unzipFile, zipEntry.getName());
                        if (!file.exists()) {
                            file.mkdir();
                        }
                    } else {
                        file = new File(unzipFile, zipEntry.getName());
                        if (!file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                        }
                        file.createNewFile();
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        while (true) {
                            int count = zipInputStream2.read(buffer);
                            if (count <= 0) {
                                break;
                            }
                            fileOutputStream.write(buffer, 0, count);
                        }
                        fileOutputStream.close();
                    }
                }
                if (zipInputStream2 != null) {
                    try {
                        zipInputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                }
                if (!unzipFile.exists()) {
                    return null;
                }
                if (zipFile.exists()) {
                    zipFile.delete();
                }
                return unzipFile.getAbsolutePath();
            } catch (IOException e3) {
                e22 = e3;
                zipInputStream = zipInputStream2;
            } catch (Throwable th2) {
                th = th2;
                zipInputStream = zipInputStream2;
            }
        } catch (IOException e4) {
            e22 = e4;
            try {
                if (unzipFile.exists()) {
                    unzipFile.delete();
                }
                Log.e("FileHelper", e22.toString());
                if (zipInputStream != null) {
                    try {
                        zipInputStream.close();
                    } catch (IOException e222) {
                        e222.printStackTrace();
                    }
                }
                if (inputStream == null) {
                    return null;
                }
                try {
                    inputStream.close();
                    return null;
                } catch (IOException e2222) {
                    e2222.printStackTrace();
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                if (zipInputStream != null) {
                    try {
                        zipInputStream.close();
                    } catch (IOException e22222) {
                        e22222.printStackTrace();
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e222222) {
                        e222222.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    public static String unZipFile(String zipPath) {
        IOException e;
        Throwable th;
        File zipFile = new File(zipPath);
        if (!zipFile.exists()) {
            return null;
        }
        File unzipFile = new File(zipFile.getParent() + "/" + zipFile.getName().replaceAll("[.][^.]+$", ""));
        if (!unzipFile.exists()) {
            unzipFile.mkdirs();
            InputStream inputStream = null;
            ZipInputStream zipInputStream = null;
            try {
                ZipInputStream zipInputStream2 = new ZipInputStream(new FileInputStream(zipFile));
                try {
                    byte[] buffer = new byte[1024];
                    for (ZipEntry zipEntry = zipInputStream2.getNextEntry(); zipEntry != null; zipEntry = zipInputStream2.getNextEntry()) {
                        File file;
                        if (zipEntry.isDirectory()) {
                            file = new File(unzipFile, zipEntry.getName());
                            if (!file.exists()) {
                                file.mkdir();
                            }
                        } else {
                            file = new File(unzipFile, zipEntry.getName());
                            if (!file.getParentFile().exists()) {
                                file.getParentFile().mkdirs();
                            }
                            if (file.exists()) {
                                continue;
                            } else {
                                file.createNewFile();
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                while (true) {
                                    int count = zipInputStream2.read(buffer);
                                    if (count <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(buffer, 0, count);
                                }
                                fileOutputStream.close();
                            }
                        }
                    }
                    if (zipInputStream2 != null) {
                        try {
                            zipInputStream2.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                    }
                } catch (IOException e3) {
                    e22 = e3;
                    zipInputStream = zipInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    zipInputStream = zipInputStream2;
                }
            } catch (IOException e4) {
                e22 = e4;
                try {
                    if (unzipFile.exists()) {
                        unzipFile.delete();
                    }
                    Log.e("FileHelper", e22.toString());
                    if (zipInputStream != null) {
                        try {
                            zipInputStream.close();
                        } catch (IOException e222) {
                            e222.printStackTrace();
                        }
                    }
                    if (inputStream == null) {
                        return null;
                    }
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e2222) {
                        e2222.printStackTrace();
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (zipInputStream != null) {
                        try {
                            zipInputStream.close();
                        } catch (IOException e22222) {
                            e22222.printStackTrace();
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e222222) {
                            e222222.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        }
        if (!unzipFile.exists()) {
            return null;
        }
        if (zipFile.exists()) {
            zipFile.delete();
        }
        return unzipFile.getAbsolutePath();
    }
}
