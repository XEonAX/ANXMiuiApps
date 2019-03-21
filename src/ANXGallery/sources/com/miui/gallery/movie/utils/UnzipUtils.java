package com.miui.gallery.movie.utils;

import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexEngine;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class UnzipUtils {
    private static final String TAG = UnzipUtils.class.getSimpleName();

    public static boolean unZipFile(String zipPath) {
        IOException e;
        Throwable th;
        File zipFile = new File(zipPath);
        if (!zipFile.exists()) {
            return false;
        }
        File unzipFile = new File(zipFile.getParent());
        FileUtils.createFolder(unzipFile, true);
        InputStream inputStream = null;
        ZipInputStream zipInputStream = null;
        try {
            ZipInputStream zipInputStream2 = new ZipInputStream(new FileInputStream(zipFile));
            try {
                byte[] buffer = new byte[nexEngine.ExportHEVCMainTierLevel6];
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
                if (zipFile.exists()) {
                    zipFile.delete();
                }
                return true;
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
                Log.e(TAG, e22.toString());
                if (zipInputStream != null) {
                    try {
                        zipInputStream.close();
                    } catch (IOException e222) {
                        e222.printStackTrace();
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2222) {
                        e2222.printStackTrace();
                    }
                }
                if (!zipFile.exists()) {
                    return false;
                }
                zipFile.delete();
                return false;
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
                if (zipFile.exists()) {
                    zipFile.delete();
                }
                throw th;
            }
        }
    }
}
