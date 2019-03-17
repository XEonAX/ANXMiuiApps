package com.xiaomi.scanner.util;

import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.File;

public class DeleteFileTask implements Runnable {
    private static final Tag TAG = new Tag("DeleteFileTask");
    private String mFilePath;

    public DeleteFileTask(String filePath) {
        this.mFilePath = filePath;
    }

    public void run() {
        if (TextUtils.isEmpty(this.mFilePath)) {
            Log.w(TAG, "delete file fail, null path");
            return;
        }
        try {
            File file = new File(this.mFilePath);
            if (file.exists() && file.isFile()) {
                Log.v(TAG, "delete " + this.mFilePath);
                file.delete();
            }
        } catch (Exception e) {
            Log.e(TAG, "delete file error", e);
        }
    }
}
