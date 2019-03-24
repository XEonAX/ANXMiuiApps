package com.miui.gallery.module;

import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import miui.module.ModuleManager;

public class GalleryModuleManager {
    private static final GalleryModuleManager INSTANCE = new GalleryModuleManager(GalleryApp.sGetAndroidContext());
    private Context mContext;
    private ArrayList<String> mLoadedModules = new ArrayList();
    private ArrayList<String> mLoadingModules = new ArrayList();

    public interface ModuleLoadListener {
        void onLoadFailed();

        void onLoadSuccess();
    }

    public GalleryModuleManager(Context context) {
        this.mContext = context;
    }

    public boolean isModuleLoaded(String moduleName) {
        boolean contains;
        synchronized (this.mLoadedModules) {
            contains = this.mLoadedModules.contains(moduleName);
        }
        return contains;
    }

    public boolean isModuleLoading(String moduleName) {
        boolean contains;
        synchronized (this.mLoadingModules) {
            contains = this.mLoadingModules.contains(moduleName);
        }
        return contains;
    }

    public void loadModule(boolean localOnly, final ModuleLoadListener listener, String module) {
        synchronized (this.mLoadingModules) {
            if (!this.mLoadingModules.contains(module)) {
                this.mLoadingModules.add(module);
            }
        }
        Intent intent = new Intent("com.miui.gallery.extra_load_module_failed");
        intent.putExtra("module", module);
        LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(intent);
        if (module != null) {
            ModuleManager.getInstance().setModuleLoadListener(new miui.module.ModuleManager.ModuleLoadListener() {
                public void onLoadSuccess(String module, String path) {
                    Log.d("GalleryModuleManager", "load module success :" + module);
                    synchronized (GalleryModuleManager.this.mLoadedModules) {
                        if (!GalleryModuleManager.this.mLoadedModules.contains(module)) {
                            GalleryModuleManager.this.mLoadedModules.add(module);
                        }
                    }
                    synchronized (GalleryModuleManager.this.mLoadingModules) {
                        GalleryModuleManager.this.mLoadingModules.remove(module);
                    }
                    Intent intent = new Intent("com.miui.gallery.extra_load_module_success");
                    intent.putExtra("module", module);
                    LocalBroadcastManager.getInstance(GalleryModuleManager.this.mContext).sendBroadcast(intent);
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            if (listener != null) {
                                listener.onLoadSuccess();
                            }
                        }
                    });
                }

                public void onLoadFail(String module, int code) {
                    Log.d("GalleryModuleManager", "load module fail :" + module);
                    synchronized (GalleryModuleManager.this.mLoadingModules) {
                        GalleryModuleManager.this.mLoadingModules.remove(module);
                    }
                    Intent intent = new Intent("com.miui.gallery.extra_load_module_failed");
                    intent.putExtra("module", module);
                    LocalBroadcastManager.getInstance(GalleryModuleManager.this.mContext).sendBroadcast(intent);
                    if (code == 3) {
                        CacheRepository.clearCache(GalleryModuleManager.this.mContext, module);
                    }
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            if (listener != null) {
                                listener.onLoadFailed();
                            }
                        }
                    });
                }

                public void onLoadFinish() {
                }
            });
        }
        if (localOnly) {
            ModuleManager.getInstance().loadModules(new CacheRepository(this.mContext, true), module);
            return;
        }
        ModuleManager.getInstance().loadModules(new CacheRepository(this.mContext, false), module);
    }

    public void scheduleModuleDownLoadJob(String module) {
        if (module != null) {
            PersistableBundle bundle = new PersistableBundle();
            bundle.putString("module", module);
            ((JobScheduler) GalleryApp.sGetAndroidContext().getSystemService("jobscheduler")).schedule(new Builder(100, new ComponentName(GalleryApp.sGetAndroidContext(), ModuleManagerService.class)).setRequiredNetworkType(2).setRequiresDeviceIdle(true).setExtras(bundle).build());
            Log.d("GalleryModuleManager", "schedule job load module :" + module);
        }
    }

    public static GalleryModuleManager getInstance() {
        return INSTANCE;
    }
}
