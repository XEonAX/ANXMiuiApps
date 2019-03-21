package com.miui.gallery.cloudcontrol;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.cloudcontrol.strategies.AlbumSortDateStrategy;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy;
import com.miui.gallery.cloudcontrol.strategies.BackupPolicisStrategy;
import com.miui.gallery.cloudcontrol.strategies.BaseStrategy;
import com.miui.gallery.cloudcontrol.strategies.CloudGuideStrategy;
import com.miui.gallery.cloudcontrol.strategies.ComponentsStrategy;
import com.miui.gallery.cloudcontrol.strategies.CreationStrategy;
import com.miui.gallery.cloudcontrol.strategies.HiddenAlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.LocationStrategy;
import com.miui.gallery.cloudcontrol.strategies.PhotoPrintStrategy;
import com.miui.gallery.cloudcontrol.strategies.ScannerStrategy;
import com.miui.gallery.cloudcontrol.strategies.SearchStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerReservedAlbumNamesStrategy;
import com.miui.gallery.cloudcontrol.strategies.ServerUnModifyAlbumsStrategy;
import com.miui.gallery.cloudcontrol.strategies.SyncStrategy;
import com.miui.gallery.cloudcontrol.strategies.UploadSupportedFileTypeStrategy;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

public class CloudControlManager {
    private ProfileCache mCache;
    private CountDownLatch mInitDoneSignal;
    private AsyncTask<Context, Void, Void> mInitTask;
    private volatile boolean mInitialized;
    private volatile boolean mIsInitDone;
    private volatile boolean mIsInitStart;
    private Map<String, Class<? extends BaseStrategy>> mStrategyClassMap;

    private static class SingletonHolder {
        static final CloudControlManager INSTANCE = new CloudControlManager();
    }

    /* synthetic */ CloudControlManager(AnonymousClass1 x0) {
        this();
    }

    private CloudControlManager() {
        this.mInitTask = new AsyncTask<Context, Void, Void>() {
            protected Void doInBackground(Context... params) {
                CloudControlManager.this.registerStrategyClass();
                try {
                    long start = System.currentTimeMillis();
                    CloudControlManager.this.mCache.load(params[0]);
                    CloudControlManager.this.mInitialized = true;
                    Log.d("CloudControlManager", "Load cache costs %d ms.", Long.valueOf(System.currentTimeMillis() - start));
                } catch (Object ex) {
                    CloudControlManager.this.mInitialized = false;
                    Log.e("CloudControlManager", "Init failed, what should not happen: %s.", ex);
                } finally {
                    CloudControlManager.this.mIsInitDone = true;
                    CloudControlManager.this.mInitDoneSignal.countDown();
                }
                CloudControlManager.this.mCache.notifyAfterLoadFinished();
                return null;
            }
        };
        this.mInitDoneSignal = new CountDownLatch(1);
        this.mStrategyClassMap = new HashMap();
        this.mCache = new ProfileCache();
    }

    private void registerStrategyClass() {
        this.mStrategyClassMap.clear();
        this.mStrategyClassMap.put("album-list", AlbumsStrategy.class);
        this.mStrategyClassMap.put("cloud-guide", CloudGuideStrategy.class);
        this.mStrategyClassMap.put("sync", SyncStrategy.class);
        this.mStrategyClassMap.put("server-unmodify-albums", ServerUnModifyAlbumsStrategy.class);
        this.mStrategyClassMap.put("components-list", ComponentsStrategy.class);
        this.mStrategyClassMap.put("hidden-albums", HiddenAlbumsStrategy.class);
        this.mStrategyClassMap.put("location", LocationStrategy.class);
        this.mStrategyClassMap.put("search", SearchStrategy.class);
        this.mStrategyClassMap.put("album-sort-date", AlbumSortDateStrategy.class);
        this.mStrategyClassMap.put("backup-policies", BackupPolicisStrategy.class);
        this.mStrategyClassMap.put("server-reserved-album-names", ServerReservedAlbumNamesStrategy.class);
        this.mStrategyClassMap.put("media_scanner", ScannerStrategy.class);
        this.mStrategyClassMap.put("upload-supported-file-types", UploadSupportedFileTypeStrategy.class);
        this.mStrategyClassMap.put("photo-print", PhotoPrintStrategy.class);
        this.mStrategyClassMap.put("creation", CreationStrategy.class);
        this.mStrategyClassMap.put("assistant-rules", AssistantScenarioStrategy.class);
    }

    public synchronized void init(Context context) {
        if (!(this.mIsInitDone || this.mIsInitStart)) {
            Log.d("CloudControlManager", "init");
            this.mIsInitStart = true;
            this.mInitTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Context[]{context});
        }
    }

    private boolean initialized() {
        if (this.mIsInitDone) {
            return this.mInitialized;
        }
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            Log.d("CloudControlManager", "not initialized, but caller is main thread, doesn't block, stack trace:\n%s", TextUtils.join("\n\t", Thread.currentThread().getStackTrace()));
            return false;
        }
        if (!this.mIsInitStart) {
            Log.d("CloudControlManager", "start init");
            init(GalleryApp.sGetAndroidContext());
        }
        Log.d("CloudControlManager", "not initialized, waiting lock from:\n%s", TextUtils.join("\n\t", Thread.currentThread().getStackTrace()));
        try {
            long start = SystemClock.uptimeMillis();
            this.mInitDoneSignal.await();
            Log.d("CloudControlManager", "wait init done costs %d ms", Long.valueOf(SystemClock.uptimeMillis() - start));
        } catch (Throwable e) {
            Log.e("CloudControlManager", e);
        }
        Log.d("CloudControlManager", "initialized: %b", Boolean.valueOf(this.mInitialized));
        return this.mInitialized;
    }

    public static CloudControlManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void insertToCache(FeatureProfile featureProfile) {
        if (featureProfile != null && initialized()) {
            this.mCache.insertToCloudCache(featureProfile);
        }
    }

    public void clearCloudCache() {
        if (this.mIsInitStart && initialized()) {
            this.mCache.clearCloudCache();
        }
    }

    public Status queryFeatureStatus(String feature) {
        if (initialized()) {
            return this.mCache.queryStatus(feature);
        }
        return Status.UNAVAILABLE;
    }

    public Status registerStatusObserver(String feature, FeatureStatusObserver observer) {
        return this.mCache.registerStatusObserver(feature, observer);
    }

    public void unregisterStatusObserver(String feature, FeatureStatusObserver observer) {
        this.mCache.unregisterStatusObserver(feature, observer);
    }

    public <T extends BaseStrategy> T queryFeatureStrategy(String feature) {
        return queryFeatureStrategy(feature, null);
    }

    public <T extends BaseStrategy> T queryFeatureStrategy(String feature, Merger<T> merger) {
        if (initialized()) {
            if (((Class) this.mStrategyClassMap.get(feature)) != null) {
                try {
                    return this.mCache.queryStrategy(feature, (Class) this.mStrategyClassMap.get(feature), merger);
                } catch (Exception e) {
                    Log.e("CloudControlManager", "Generic type doesn't match.");
                    e.printStackTrace();
                }
            } else {
                Log.e("CloudControlManager", "No strategy class was registered with %s.", (Object) feature);
            }
        }
        return null;
    }
}
