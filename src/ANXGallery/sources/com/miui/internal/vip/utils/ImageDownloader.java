package com.miui.internal.vip.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import miui.graphics.BitmapFactory;
import miui.net.ConnectivityHelper;
import miui.util.AppConstants;
import miui.util.async.Task;
import miui.util.async.TaskManager;
import miui.util.async.tasks.listeners.BaseTaskListener;

public class ImageDownloader {
    public static final int SCALE = Math.round(getContext().getResources().getDisplayMetrics().density);
    static NetworkChangeReceiver sReceiver = null;
    static final Map<String, ImageDownloadTask> sRecords = new ConcurrentHashMap();

    public static class FileDownloadListener extends BaseTaskListener {
        OnFileDownload mOnDownload;

        public FileDownloadListener(OnFileDownload onDownload) {
            setOnDownload(onDownload);
        }

        public final void setOnDownload(OnFileDownload onDownload) {
            this.mOnDownload = onDownload;
        }

        public Object onResult(TaskManager tm, Task<?> task, Object result) {
            if ((task instanceof ImageDownloadTask) && (result instanceof File)) {
                String filePath = ((ImageDownloadTask) task).mSavePath;
                if (this.mOnDownload != null) {
                    this.mOnDownload.onDownload(filePath);
                }
            }
            return result;
        }

        public void onFinalize(TaskManager tm, Task<?> task) {
            if (task instanceof ImageDownloadTask) {
                ImageDownloadTask downloadTask = (ImageDownloadTask) task;
                if (!downloadTask.isWaitNetwork()) {
                    ImageDownloader.sRecords.remove(downloadTask.mSavePath);
                } else if (ConnectivityHelper.getInstance().isNetworkConnected()) {
                    ImageDownloader.startDownload(downloadTask);
                } else {
                    ImageDownloader.startReceiver();
                }
            }
        }
    }

    static class NetworkChangeReceiver extends BroadcastReceiver {
        static final IntentFilter sFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");

        NetworkChangeReceiver() {
        }

        public void start() {
            ImageDownloader.getContext().registerReceiver(this, sFilter);
        }

        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (networkInfo != null && networkInfo.isConnected()) {
                    startWaitingDownloadTask();
                    ImageDownloader.stopReceiver();
                }
            }
        }

        private void startWaitingDownloadTask() {
            for (ImageDownloadTask task : ImageDownloader.sRecords.values()) {
                if (task.isWaitNetwork()) {
                    ImageDownloader.startDownload(task);
                }
            }
        }
    }

    public interface OnFileDownload {
        void onDownload(String str);
    }

    static class ToViewDownloadListener extends FileDownloadListener {
        WeakReference<ImageView> mTargetView;

        ToViewDownloadListener(ImageView view, final boolean isPhoto) {
            this.mTargetView = new WeakReference(view);
            setOnDownload(new OnFileDownload() {
                public void onDownload(final String filePath) {
                    final ImageView view = (ImageView) ToViewDownloadListener.this.mTargetView.get();
                    if (view != null && !TextUtils.isEmpty(filePath)) {
                        RunnableHelper.runInBackground(new Runnable() {
                            public void run() {
                                ImageDownloader.onLoad(view, filePath, isPhoto);
                            }
                        });
                    }
                }
            });
        }
    }

    private static void onLoad(final ImageView view, final String path, final boolean isPhoto) {
        if (view != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            int scale = 1;
            boolean waitLayout = true;
            LayoutParams lp = view.getLayoutParams();
            if (width == 0 && height == 0 && lp != null) {
                boolean allMatch = false;
                boolean allWrapContent = lp.width == -2 && lp.height == -2;
                if (lp.width == -1 && lp.height == -1) {
                    allMatch = true;
                }
                if (allMatch || allWrapContent || lp.width == 0 || lp.height == 0) {
                    waitLayout = false;
                }
                if (allWrapContent) {
                    scale = SCALE;
                }
                width = lp.width > 0 ? lp.width : width;
                height = lp.height > 0 ? lp.height : height;
            }
            if (waitLayout && width == 0 && height == 0) {
                view.getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
                    public boolean onPreDraw() {
                        if (view.getWidth() > 0 || view.getHeight() > 0) {
                            view.getViewTreeObserver().removeOnPreDrawListener(this);
                            ImageDownloader.onLoad(view, path, isPhoto);
                        }
                        return true;
                    }
                });
                return;
            }
            Bitmap bmp = Utils.decodeFile(path, width, height, scale);
            if (bmp != null) {
                if (isPhoto) {
                    bmp = Utils.createPhoto(bmp);
                }
                final Bitmap refBmp = bmp;
                RunnableHelper.runInUIThread(new Runnable() {
                    public void run() {
                        view.setImageBitmap(refBmp);
                    }
                });
            }
        }
    }

    public static void loadImage(Context ctx, String url, String dirName, ImageView targetView) {
        loadImage(ctx, url, dirName, targetView, false);
    }

    public static void loadImage(Context ctx, String url, String dirName, ImageView targetView, boolean isPhoto) {
        loadImage(ctx, url, dirName, new ToViewDownloadListener(targetView, isPhoto));
    }

    public static void loadImage(final Context ctx, final String url, final String dirName, final FileDownloadListener listener) {
        if (!TextUtils.isEmpty(url) && !TextUtils.isEmpty(dirName)) {
            RunnableHelper.runInBackground(new Runnable() {
                public void run() {
                    String filePath = ImageDownloader.getImageFilePathAndClearUnusedFiles(ctx, url, dirName, true);
                    if (!TextUtils.isEmpty(filePath)) {
                        if (Utils.isBitmap(filePath) ^ true) {
                            ImageDownloader.downloadImage(url, dirName, filePath, listener);
                        } else {
                            listener.mOnDownload.onDownload(filePath);
                        }
                    }
                }
            });
        }
    }

    public static Bitmap loadImageFile(Context ctx, String url, String dirName, FileDownloadListener listener) {
        String filePath = getImageFilePathAndClearUnusedFiles(ctx, url, dirName, false);
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        try {
            Bitmap bmp = BitmapFactory.decodeBitmap(filePath, true);
            if (bmp == null) {
                downloadImage(url, dirName, filePath, listener);
            }
            return bmp;
        } catch (IOException e) {
            Utils.logW("fail to loadImageFile, %s", e);
            return null;
        }
    }

    public static void stop() {
        sRecords.clear();
        stopReceiver();
    }

    static void downloadImage(String url, String dirName, String filePath, FileDownloadListener listener) {
        ImageDownloadTask task = (ImageDownloadTask) sRecords.get(filePath);
        if (task == null) {
            task = new ImageDownloadTask(url, filePath);
            task.addListener(listener);
            if (startDownload(task)) {
                sRecords.put(filePath, task);
                Utils.log("download bitmap %s for %s, filePath = %s", url, dirName, filePath);
                return;
            }
            return;
        }
        Utils.log("downloading task for %s: %s existed, add listener", dirName, filePath);
        task.addListener(listener);
    }

    public static String getImageFilePathAndClearUnusedFiles(Context ctx, String url, String dirName, boolean createDir) {
        if (TextUtils.isEmpty(dirName)) {
            return "";
        }
        String subDirPath = Utils.getPictureFilePath(ctx, dirName);
        if (subDirPath == null) {
            return "";
        }
        File subDir = new File(subDirPath);
        if (!subDir.exists()) {
            if (!createDir) {
                Utils.log("fail to load image for directory %s doesn't exist", subDirPath);
            } else if (!subDir.mkdirs()) {
                Utils.log("fail to create directory %s", subDirPath);
            }
            return "";
        }
        String curFileName = Utils.getName(url);
        deleteUnusedFiles(subDir, curFileName);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(subDirPath);
        stringBuilder.append(File.separator);
        stringBuilder.append(curFileName);
        return stringBuilder.toString();
    }

    static void deleteUnusedFiles(final File dir, final String curFileName) {
        RunnableHelper.runInBackground(new Runnable() {
            public void run() {
                File[] files = dir.listFiles();
                if (files != null && files.length > 0) {
                    for (File file : files) {
                        if (!(file.getName().equals(curFileName) || file.delete())) {
                            Utils.log("fail to delete file %s", file.getPath());
                        }
                    }
                }
            }
        });
    }

    static boolean startDownload(ImageDownloadTask task) {
        try {
            TaskManager.getDefault().add(task);
            return true;
        } catch (IllegalArgumentException e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ImageDownloader.startDownload fail, savePath = ");
            stringBuilder.append(task.mSavePath);
            stringBuilder.append(" , ");
            stringBuilder.append(e);
            Log.w("vip_sdk", stringBuilder.toString());
            return false;
        }
    }

    static synchronized void startReceiver() {
        synchronized (ImageDownloader.class) {
            if (sReceiver == null) {
                sReceiver = new NetworkChangeReceiver();
                sReceiver.start();
            }
        }
    }

    static synchronized void stopReceiver() {
        synchronized (ImageDownloader.class) {
            if (sReceiver != null) {
                getContext().unregisterReceiver(sReceiver);
                sReceiver = null;
            }
        }
    }

    static Context getContext() {
        return AppConstants.getCurrentApplication().getApplicationContext();
    }
}
