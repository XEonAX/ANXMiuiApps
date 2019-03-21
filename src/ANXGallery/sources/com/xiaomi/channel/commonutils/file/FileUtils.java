package com.xiaomi.channel.commonutils.file;

import com.xiaomi.channel.commonutils.logger.MyLog;
import java.io.File;
import java.util.HashMap;

public class FileUtils {
    private static final HashMap<String, String> mFileTypes = new HashMap();

    static {
        mFileTypes.put("FFD8FF", "jpg");
        mFileTypes.put("89504E47", "png");
        mFileTypes.put("47494638", "gif");
        mFileTypes.put("474946", "gif");
        mFileTypes.put("424D", "bmp");
    }

    public static long getFolderSize(File file) {
        long size = 0;
        try {
            File[] fileList = file.listFiles();
            for (int i = 0; i < fileList.length; i++) {
                long folderSize;
                if (fileList[i].isDirectory()) {
                    folderSize = getFolderSize(fileList[i]);
                } else {
                    folderSize = fileList[i].length();
                }
                size += folderSize;
            }
        } catch (Throwable e) {
            MyLog.e(e);
        }
        return size;
    }
}
