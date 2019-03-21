package com.miui.gallery.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloudcontrol.CloudControlRequestHelper;
import com.miui.gallery.settingssync.GallerySettingsSyncHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public class GalleryTestReceiver extends BroadcastReceiver {
    public void onReceive(Context context, final Intent intent) {
        if ("com.miui.gallery.action.REQUEST_CLOUD_CONTROL_DATA".equals(intent.getAction())) {
            ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    if (intent.hasExtra(nexExportFormat.TAG_FORMAT_TYPE)) {
                        String type = intent.getStringExtra(nexExportFormat.TAG_FORMAT_TYPE);
                        if ("real_name".equals(type)) {
                            new CloudControlRequestHelper(GalleryApp.sGetAndroidContext()).execRequestSync(true);
                        } else if ("anonymous".equals(type)) {
                            new CloudControlRequestHelper(GalleryApp.sGetAndroidContext()).execRequestSync(false);
                        }
                        return null;
                    }
                    new CloudControlRequestHelper(GalleryApp.sGetAndroidContext()).execRequestSync();
                    return null;
                }
            });
        } else if ("com.miui.gallery.action.REQUEST_SYNC_SETTINGS".equals(intent.getAction())) {
            ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    GallerySettingsSyncHelper.doSync(GalleryApp.sGetAndroidContext());
                    return null;
                }
            });
        }
    }
}
