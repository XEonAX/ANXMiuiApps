package miui.os;

import android.text.TextUtils;
import java.io.File;

public class ExtraFileUtils {
    public static String getExtension(File file) {
        if (file == null) {
            return "";
        }
        return getExtension(file.getName());
    }

    public static String getExtension(String fileName) {
        if (TextUtils.isEmpty(fileName)) {
            return "";
        }
        int index = fileName.lastIndexOf(".");
        if (index > -1) {
            return fileName.substring(index + 1);
        }
        return "";
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

    public static String getFileName(String filePath) {
        if (TextUtils.isEmpty(filePath)) {
            return "";
        }
        int index = filePath.lastIndexOf(File.separator);
        if (index > -1) {
            return filePath.substring(index + 1);
        }
        return filePath;
    }
}
