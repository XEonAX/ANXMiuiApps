package com.xiaomi.analytics.internal.util;

import java.io.File;

public class FileUtils {
    public static void deleteFile(File file) {
        try {
            file.delete();
        } catch (Exception e) {
        }
    }

    public static void deleteAllFiles(String path) {
        deleteAllFiles(new File(path));
    }

    public static void deleteAllFiles(File dir) {
        try {
            if (dir.isDirectory()) {
                for (File file : dir.listFiles()) {
                    if (file.isDirectory()) {
                        deleteDir(file.getAbsolutePath());
                    } else {
                        deleteFile(file);
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    public static void deleteDir(String path) {
        try {
            File dir = new File(path);
            deleteAllFiles(path);
            dir.delete();
        } catch (Exception e) {
        }
    }
}
