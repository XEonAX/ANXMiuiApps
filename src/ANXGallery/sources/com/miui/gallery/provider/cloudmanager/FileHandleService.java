package com.miui.gallery.provider.cloudmanager;

import android.app.Notification;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.service.ServiceBase;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BackgroundServiceHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.NotificationHelper;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.StringUtils;
import com.miui.gallery.util.SyncUtil;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FileHandleService extends ServiceBase implements FileHandleListener {
    private boolean mNeedNotifyUri = false;
    private volatile ServiceHandler mServiceHandler;
    private volatile Looper mServiceLooper;
    private FileTaskExecutor mTaskExecutor = null;

    private final class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            Intent intent = msg.obj;
            String action = intent.getAction();
            long[] ids;
            if ("check_unhandled_media_ids".equals(action)) {
                ids = MediaRemarkManager.loadFileHandleMediaIds();
                if (ids != null && ids.length > 0) {
                    FileHandleService.this.handleRecords(ids);
                    Map<String, String> params = new HashMap();
                    params.put("batch_count", String.valueOf(ids.length));
                    BaseSamplingStatHelper.recordCountEvent("file_handle", "restore_unhandled_file_operations", params);
                }
            } else if ("dispatch_media_ids".equals(action)) {
                ids = intent.getLongArrayExtra("ids");
                if (ids != null && ids.length > 0) {
                    MediaRemarkManager.addFileHandleMediaIds(ids);
                    FileHandleService.this.handleRecords(ids);
                }
            }
            FileHandleService.this.stopSelfIfComplete();
        }
    }

    public static void execute(Context context, boolean executeSync, List<Long> dirtyIds) {
        if (!executeSync) {
            Intent intent = new Intent("dispatch_media_ids");
            intent.setClass(context, FileHandleService.class);
            intent.putExtra("ids", Numbers.toArray(dirtyIds));
            BackgroundServiceHelper.startForegroundServiceIfNeed(context, intent);
        } else if (dispatchTask(context, dirtyIds)) {
            SyncUtil.requestSync(context);
        }
    }

    public static boolean dispatchTask(Context context, List<Long> dirtyIds) {
        if (!needNotifyUri(new FileHandleTask(context, Numbers.toArray(dirtyIds)).run(null, null))) {
            return false;
        }
        notifyUri(context);
        return true;
    }

    public static void checkUnhandledMedias(Context context) {
        Intent intent = new Intent("check_unhandled_media_ids");
        intent.setClass(context, FileHandleService.class);
        BackgroundServiceHelper.startForegroundServiceIfNeed(context, intent);
    }

    protected Notification getNotification() {
        return NotificationHelper.getEmptyNotification(getApplicationContext());
    }

    protected int getNotificationId() {
        return 9;
    }

    public void onCreate() {
        super.onCreate();
        HandlerThread thread = new HandlerThread("CloudManager.FileHandleService");
        thread.start();
        this.mServiceLooper = thread.getLooper();
        this.mServiceHandler = new ServiceHandler(this.mServiceLooper);
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        Message msg = this.mServiceHandler.obtainMessage();
        msg.arg1 = startId;
        msg.obj = intent;
        this.mServiceHandler.sendMessage(msg);
        return 3;
    }

    public void onDestroy() {
        super.onDestroy();
        this.mServiceLooper.quit();
        if (this.mTaskExecutor != null) {
            FileTaskExecutor executor = this.mTaskExecutor;
            this.mTaskExecutor = null;
            executor.shutdown();
        }
    }

    public void onRecordsHandled(long[] ids, long[] results) {
        if (ids == null || results == null || ids.length != results.length) {
            Log.e("CloudManager.FileHandleService", "Invalid results ids:%s, results:%s", ids, results);
            return;
        }
        MediaRemarkManager.doneHandleFileForMediaIds(ids);
        Log.d("CloudManager.FileHandleService", "On receive results [%s]", StringUtils.join(",", results));
        if (needNotifyUri(results)) {
            Log.d("CloudManager.FileHandleService", "Need notify uri");
            notifyUri(this);
            this.mNeedNotifyUri = true;
        }
    }

    public void onAllTaskExecuted() {
        stopSelfIfComplete();
    }

    public void onCancel() {
        stopSelfIfComplete();
    }

    private static boolean needNotifyUri(long[] results) {
        if (results == null || results.length <= 0) {
            return false;
        }
        boolean needNotifyUri = false;
        for (long result : results) {
            int i;
            if (result == 1) {
                i = 1;
            } else {
                i = 0;
            }
            needNotifyUri |= i;
        }
        return needNotifyUri;
    }

    private static void notifyUri(Context context) {
        ContentResolver resolver = context.getContentResolver();
        resolver.notifyChange(Cloud.CLOUD_URI, null, false);
        resolver.notifyChange(Media.URI, null, false);
        resolver.notifyChange(Media.URI_OWNER_ALBUM_MEDIA, null, false);
        resolver.notifyChange(Media.URI_OTHER_ALBUM_MEDIA, null, false);
    }

    private void handleRecords(long[] ids) {
        if (this.mTaskExecutor == null) {
            this.mTaskExecutor = new FileTaskExecutor(this, this);
        }
        this.mTaskExecutor.submit(ids);
    }

    private void stopSelfIfComplete() {
        if (this.mTaskExecutor == null || this.mTaskExecutor.isCompleted()) {
            if (this.mNeedNotifyUri) {
                Log.d("CloudManager.FileHandleService", "Stop self and request sync");
                SyncUtil.requestSync(this);
            }
            stopSelf();
        }
    }
}
