package com.miui.gallery.cloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;

public class TimeSetReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.TIME_SET".equals(intent.getAction())) {
            Log.d("TimeSetReceiver", "time is set, invalidate all cache of invitation");
            ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    GalleryUtils.safeDelete(GalleryCloudUtils.CLOUD_CACHE_URI, null, null);
                    return null;
                }
            });
        }
    }
}
