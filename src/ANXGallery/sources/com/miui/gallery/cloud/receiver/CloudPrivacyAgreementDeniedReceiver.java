package com.miui.gallery.cloud.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.DeleteDataUtil;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.Log;
import java.util.concurrent.atomic.AtomicBoolean;

public class CloudPrivacyAgreementDeniedReceiver extends BroadcastReceiver {
    private static AtomicBoolean sRunning = new AtomicBoolean(false);

    public void onReceive(Context context, Intent intent) {
        Log.w("CloudPrivacyAgreementDeniedReceiver", "cloud privacy denied");
        onCloudPrivacyAgreementDenied(context);
    }

    public static void onCloudPrivacyAgreementDenied(Context context) {
        final Context app = context.getApplicationContext();
        if (sRunning.compareAndSet(false, true)) {
            ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    try {
                        if (SyncStateUtil.hasSyncedData(app)) {
                            Log.w("CloudPrivacyAgreementDeniedReceiver", "delete synced data");
                            DeleteDataUtil.delete(app, 1);
                            GalleryStatHelper.recordCountEvent("sync", "cloud_privacy_agreement_denied");
                        }
                        CloudPrivacyAgreementDeniedReceiver.sRunning.set(false);
                        return null;
                    } catch (Throwable th) {
                        CloudPrivacyAgreementDeniedReceiver.sRunning.set(false);
                    }
                }
            });
        }
    }
}
