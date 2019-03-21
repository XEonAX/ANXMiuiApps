package com.miui.gallery.util;

import android.text.TextUtils;
import java.io.File;
import miui.os.FileUtils;

public class BaseFileUtils extends FileUtils {
    public static String concat(String folder, String leaf) {
        String separator = "";
        if (!(TextUtils.isEmpty(leaf) || leaf.startsWith(File.separator))) {
            separator = File.separator;
        }
        return folder + separator + leaf;
    }

    public static boolean contains(String folderPath, String filePath) {
        if (folderPath == null || filePath == null) {
            return false;
        }
        if (folderPath.equals(filePath)) {
            return true;
        }
        if (!folderPath.endsWith("/")) {
            folderPath = folderPath + "/";
        }
        return filePath.toLowerCase().startsWith(folderPath.toLowerCase());
    }
}
