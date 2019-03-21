package com.miui.gallery.assistant.library;

import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.pendingtask.base.PendingTask;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

public class DeleteLibraryTask extends PendingTask {
    public DeleteLibraryTask(int type) {
        super(type);
    }

    public Object parseData(byte[] data) throws Exception {
        return new Object();
    }

    public byte[] wrapData(Object data) throws Exception {
        return new byte[0];
    }

    public int getNetworkType() {
        return 0;
    }

    public boolean requireCharging() {
        return false;
    }

    public boolean requireDeviceIdle() {
        return true;
    }

    public boolean process(Object data) throws Exception {
        Long[] allLibraryIds = LibraryConstants.sAllLibraries;
        Set<String> allLibrarySha1s = new HashSet();
        if (allLibraryIds == null || allLibraryIds.length <= 0 || !LibraryManager.getInstance().isInitialized()) {
            return false;
        }
        for (Long longValue : allLibraryIds) {
            Library library = LibraryManager.getInstance().getLibrarySync(longValue.longValue());
            if (library == null || !BaseMiscUtil.isValid(library.getLibraryItems())) {
                return false;
            }
            for (LibraryItem item : library.getLibraryItems()) {
                allLibrarySha1s.add(item.getSha1());
            }
        }
        File dir = GalleryApp.sGetAndroidContext().getDir("libs", 0);
        if (dir.exists() && dir.isDirectory()) {
            File[] files = dir.listFiles();
            if (files != null && files.length > 0) {
                for (File child : files) {
                    String fileSha1 = FileUtils.getSha1(child);
                    if (!(TextUtils.isEmpty(fileSha1) || allLibrarySha1s.contains(fileSha1) || isDownloadTempFile(child))) {
                        Log.e("DeleteLibraryTask", "Overdue Library item file (%s) delete success:%b", child.getName(), Boolean.valueOf(FileUtils.deleteFile(child)));
                    }
                }
            }
        }
        return false;
    }

    private boolean isDownloadTempFile(File child) {
        if (child == null || !child.getName().endsWith(".download")) {
            return false;
        }
        return true;
    }

    public static void post() {
        PendingTaskManager.getInstance().postTask(8, null);
    }
}
