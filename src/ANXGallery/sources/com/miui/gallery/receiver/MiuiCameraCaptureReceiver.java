package com.miui.gallery.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SystemIntent;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.MediaStore.Files;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.activity.ExternalPhotoPageActivity;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.permission.core.PermissionUtils;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.ProcessingMediaHelper;
import com.miui.os.Rom;
import java.util.HashMap;

public class MiuiCameraCaptureReceiver extends BroadcastReceiver {
    private static long sLastPreloadTime;
    private static PreloadBigPhotoRunnable sPreloadBigPhotoRunnable = new PreloadBigPhotoRunnable();

    private static class PreloadBigPhotoRunnable implements Runnable {
        private String mFilePath;
        private boolean mIsTempFile;
        private long mMediaStoreId;

        private PreloadBigPhotoRunnable() {
            this.mMediaStoreId = -1;
        }

        /* synthetic */ PreloadBigPhotoRunnable(AnonymousClass1 x0) {
            this();
        }

        public void setData(String filePath, long mediaStoreId, boolean isTempFile) {
            this.mFilePath = filePath;
            this.mMediaStoreId = mediaStoreId;
            this.mIsTempFile = isTempFile;
        }

        public void run() {
            if (!TextUtils.isEmpty(this.mFilePath) || this.mMediaStoreId > 0) {
                final String filePath = this.mFilePath;
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        if (!PreloadBigPhotoRunnable.this.isCanceled(filePath)) {
                            if (PermissionUtils.checkPermission(GalleryApp.sGetAndroidContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
                                Uri mediaUri;
                                if (PreloadBigPhotoRunnable.this.mMediaStoreId > 0) {
                                    mediaUri = Files.getContentUri("external", PreloadBigPhotoRunnable.this.mMediaStoreId);
                                } else {
                                    mediaUri = MediaStoreUtils.getFileMediaUri(filePath);
                                }
                                if (!(PreloadBigPhotoRunnable.this.isCanceled(filePath) || mediaUri == null)) {
                                    ExternalPhotoPageActivity.preloadThumbnail(mediaUri.toString(), PreloadBigPhotoRunnable.this.mIsTempFile);
                                }
                            } else {
                                Log.w("MiuiCameraCaptureReceiver", "Can't access external storage, relate permission is ungranted");
                            }
                        }
                        return null;
                    }
                });
            }
        }

        private boolean isCanceled(String filePath) {
            return !TextUtils.equals(this.mFilePath, filePath);
        }
    }

    public void onReceive(Context context, Intent intent) {
        String broadcastAction = intent.getAction();
        if (SystemIntent.ACTION_SAVE_TO_CLOUD_GALLERY.equals(broadcastAction)) {
            final String filePath = intent.getStringExtra(SystemIntent.EXTRA_FILE_PATH);
            long mediaStoreId = intent.getLongExtra("extra_media_store_id", -1);
            boolean isTempFile = intent.getBooleanExtra("extra_is_temp_file", false);
            LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
            if (intent.hasExtra("extra_is_temp_file")) {
                if (isTempFile) {
                    ProcessingMediaHelper.getInstance().addProcessingItem(mediaStoreId, filePath);
                } else {
                    ProcessingMediaHelper.getInstance().removeProcessingItem(mediaStoreId);
                }
            }
            if (!TextUtils.isEmpty(filePath)) {
                Log.d("MiuiCameraCaptureReceiver", "ACTION_SAVE_TO_CLOUD start, path: [%s] mediaId: [%d], temp: [%b]", filePath, Long.valueOf(mediaStoreId), Boolean.valueOf(isTempFile));
                final Intent intent2 = intent;
                final Context context2 = context;
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        long start = SystemClock.uptimeMillis();
                        LocationManager.getInstance().recordMediaLocation(filePath, intent2);
                        MediaScannerUtil.scanSingleFile(context2, filePath, 0, true);
                        if (Rom.IS_DEV) {
                            HashMap<String, String> params = new HashMap(1);
                            params.put("recordLocationAndTriggerScan", String.valueOf(SystemClock.uptimeMillis() - start));
                            BaseSamplingStatHelper.recordCountEvent("media_scanner", "camera_capture_receiver_time_consuming", params);
                        }
                        return null;
                    }
                });
                Handler mainHandler = ThreadManager.getMainHandler();
                mainHandler.removeCallbacks(sPreloadBigPhotoRunnable);
                long delayTime = 0;
                long currentTime = SystemClock.elapsedRealtime();
                if (currentTime - sLastPreloadTime < 400) {
                    delayTime = 400;
                }
                sLastPreloadTime = currentTime;
                sPreloadBigPhotoRunnable.setData(filePath, mediaStoreId, isTempFile);
                mainHandler.postDelayed(sPreloadBigPhotoRunnable, delayTime);
            }
        } else if ("com.miui.gallery.DELETE_FROM_CLOUD".equals(broadcastAction)) {
            final Object filePath2 = intent.getStringExtra(SystemIntent.EXTRA_FILE_PATH);
            if (!TextUtils.isEmpty(filePath2)) {
                Log.d("MiuiCameraCaptureReceiver", "ACTION_DELETE_FROM_CLOUD start %s", filePath2);
                final Context context3 = context;
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        long start = SystemClock.uptimeMillis();
                        MediaScannerUtil.scanSingleFile(context3, filePath2, 0, true);
                        if (Rom.IS_DEV) {
                            HashMap<String, String> params = new HashMap(1);
                            params.put("triggerScan", String.valueOf(SystemClock.uptimeMillis() - start));
                            BaseSamplingStatHelper.recordCountEvent("media_scanner", "camera_capture_receiver_time_consuming", params);
                        }
                        return null;
                    }
                });
            }
        }
    }
}
