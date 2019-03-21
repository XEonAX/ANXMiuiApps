package com.miui.gallery.video.editor.util;

import android.content.Context;
import com.miui.gallery.provider.CloudUtils;
import com.miui.gallery.util.Log;
import java.util.Arrays;
import java.util.LinkedList;

public class TempFileCollector {
    private static LinkedList<String> tempFilePaths = new LinkedList();

    public static void add(String path) {
        Log.d("TempFileCollector", "add %s", (Object) path);
        tempFilePaths.add(path);
    }

    public static void deleteAllTempFile(Context context) {
        if (tempFilePaths.size() > 0) {
            long start = System.currentTimeMillis();
            String[] paths = new String[tempFilePaths.size()];
            tempFilePaths.toArray(paths);
            tempFilePaths.clear();
            CloudUtils.deleteByPath(context, 56, paths);
            Log.d("TempFileCollector", "deleteAllTempFile %s, cost %s", Arrays.toString(paths), Long.valueOf(System.currentTimeMillis() - start));
        }
    }
}
