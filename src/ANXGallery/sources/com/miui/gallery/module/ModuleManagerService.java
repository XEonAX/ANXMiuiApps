package com.miui.gallery.module;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import miui.net.ConnectivityHelper;

public class ModuleManagerService extends JobService {
    private String TAG = "ModuleManagerService";

    public boolean onStartJob(final JobParameters params) {
        Log.d(this.TAG, "onStartJob");
        if (params != null) {
            final String module = params.getExtras().getString("module");
            if (module != null) {
                Log.d(this.TAG, "onStartLoadingModulesFromCloud");
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        if (CTA.canConnectNetwork() && ConnectivityHelper.getInstance().isUnmeteredNetworkConnected() && new CacheRepository(ModuleManagerService.this.getApplicationContext(), false).cache(module) == null) {
                            Log.d(ModuleManagerService.this.TAG, "cache %s failed", module);
                        }
                        ModuleManagerService.this.jobFinished(params, false);
                        return null;
                    }
                });
                return true;
            }
        }
        return false;
    }

    public boolean onStopJob(JobParameters params) {
        Log.d(this.TAG, "onStopJob");
        return false;
    }

    public int onStartCommand(Intent intent, int flags, int startId) {
        return 0;
    }
}
