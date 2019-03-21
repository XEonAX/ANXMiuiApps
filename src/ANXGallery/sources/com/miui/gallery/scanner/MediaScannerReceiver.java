package com.miui.gallery.scanner;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.android.internal.EnvironmentCompat;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.io.IOException;

public class MediaScannerReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (!intent.getBooleanExtra("com.miui.gallery.extra.trigger_scan", false)) {
            String action = intent.getAction();
            Uri uri = intent.getData();
            Log.d("MediaScannerReceiver", "Broadcast received, action: [%s], data uri: [%s]", action, uri);
            if ("android.intent.action.MEDIA_SCANNER_FINISHED".equals(action)) {
                onMediaScannerFinished(context, uri);
            } else if ("android.intent.action.MEDIA_SCANNER_SCAN_FILE".equals(action)) {
                onMediaScannerScanFile(context, uri);
            } else if ("android.intent.action.MEDIA_UNMOUNTED".equals(action)) {
                MediaScannerUtil.cleanup(context.getApplicationContext());
            } else if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
                String path = uri.getPath();
                if (!TextUtils.isEmpty(path)) {
                    MediaScannerUtil.scanDirectory(context.getApplicationContext(), path, 6, true, true);
                }
            }
        }
    }

    private void onMediaScannerFinished(final Context context, final Uri uri) {
        ThreadManager.getMiscPool().submit(new Job<Object>() {
            public Object run(JobContext jc) {
                if (uri != null && "file".equals(uri.getScheme())) {
                    String path = uri.getPath();
                    if (!TextUtils.isEmpty(path) && new File(path).isDirectory()) {
                        MediaScannerUtil.scanDirectory(context.getApplicationContext(), path, 6, true, false);
                    }
                }
                return null;
            }
        });
    }

    private void onMediaScannerScanFile(final Context context, final Uri uri) {
        ThreadManager.getMiscPool().submit(new Job<Object>() {
            public Object run(JobContext jc) {
                if (uri != null && uri.getScheme().equals("file")) {
                    String path = uri.getPath();
                    if (!TextUtils.isEmpty(path)) {
                        String externalStoragePath = Environment.getExternalStorageDirectory().getPath();
                        String legacyPath = EnvironmentCompat.getLegacyExternalStorageDirectory();
                        try {
                            Object path2 = new File(path).getCanonicalPath();
                            if (ExtraTextUtils.startsWithIgnoreCase(path2, legacyPath)) {
                                path2 = externalStoragePath + path2.substring(legacyPath.length());
                            }
                            if (MediaScannerReceiver.shouldHandlePath(context.getApplicationContext(), FileUtils.getParentFolderPath(path2))) {
                                Log.i("MediaScannerReceiver", "ACTION_MEDIA_SCANNER_SCAN_FILE %s", path2);
                                MediaScannerUtil.scanSingleFile(context.getApplicationContext(), path2, 1);
                            } else {
                                Log.i("MediaScannerReceiver", "ACTION_MEDIA_SCANNER_SCAN_FILE but not trigger %s", path2);
                            }
                        } catch (IOException e) {
                            Log.w("MediaScannerReceiver", "can't canonicalize " + path);
                        }
                    }
                }
                return null;
            }
        });
    }

    private static boolean shouldHandlePath(Context context, String folderPath) {
        return !ExtraTextUtils.startsWithIgnoreCase(StorageUtils.getRelativePath(context, folderPath), "MIUI/Gallery/cloud");
    }
}
