package com.miui.gallery.movie.utils;

import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MovieStorage {
    private static final String IMAGE_SAVED_SUFFIX = "_PHOTOMOVIE";
    private static final String SAVE_FILE_FORMAT = "%sMP4_%s.mp4";
    private static final String TEMP_FILE_NAME = "TEMP_PHOTOMOVIE.mp4";

    public static String getOutPutDirectory() {
        return StorageUtils.getCreativeDirectory();
    }

    public static String getOutputMediaFilePath() {
        if (FileUtils.createFolder(new File(getOutPutDirectory()), false)) {
            String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            return String.format(SAVE_FILE_FORMAT, new Object[]{mediaStorageDir.getPath() + File.separator, timeStamp + IMAGE_SAVED_SUFFIX});
        }
        Log.e("MovieStorage", "getOutputMediaFile failed");
        return null;
    }

    public static String getTempFilePath() {
        File tempDir = new File(getOutPutDirectory(), "temp");
        if (FileUtils.createFolder(tempDir, true)) {
            return tempDir.getPath() + File.separator + TEMP_FILE_NAME;
        }
        Log.e("MovieStorage", "getTempFilePath failed");
        return null;
    }
}
