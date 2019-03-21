package com.miui.gallery.assistant.library;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.library.Library.LibraryStatus;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.net.library.LibraryDownloadManager;
import com.miui.gallery.net.library.LibraryRequest;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.CancelListener;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.xiaomi.micloudsdk.request.utils.CloudUtils;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class LibraryManager {
    private static final String TAG = LibraryManager.class.getSimpleName();
    private final CountDownLatch mCountDownLatch;
    private final Map<Long, Library> mCurrentLibraries;
    @SuppressLint({"StaticFieldLeak"})
    private final AsyncTask<Context, Void, Void> mInitTask;
    private volatile boolean mInitialized;
    private volatile boolean mInitializing;
    private final LibraryDownloadManager mLibraryDownloadManager;
    private NetworkReceiver mNetworkReceiver;

    public interface DownloadListener {
        void onDownloadResult(long j, int i);
    }

    private class LibraryDownloadJob implements Job {
        private final boolean mAllowedOverMetered;
        private final Set<LibraryItem> mDownloadSet = new HashSet();
        private final Library mLibrary;
        private final DownloadListener mLibraryDownloadListener;

        LibraryDownloadJob(Library library, boolean allowedOverMetered, DownloadListener libraryStatusListener) {
            this.mLibrary = library;
            this.mAllowedOverMetered = allowedOverMetered;
            this.mLibraryDownloadListener = libraryStatusListener;
        }

        private void cancel() {
            LibraryManager.this.mLibraryDownloadManager.cancel(this.mLibrary.getLibraryId());
        }

        public Object run(JobContext jc) {
            if (this.mLibrary.getLibraryItems() != null) {
                for (LibraryItem libraryItem : this.mLibrary.getLibraryItems()) {
                    if (!libraryItem.isExist()) {
                        this.mDownloadSet.add(libraryItem);
                    }
                }
                if (this.mDownloadSet.isEmpty()) {
                    this.mLibraryDownloadListener.onDownloadResult(this.mLibrary.getLibraryId(), 0);
                } else if (jc.isCancelled()) {
                    this.mLibraryDownloadListener.onDownloadResult(this.mLibrary.getLibraryId(), 2);
                } else {
                    LibraryManager.this.mLibraryDownloadManager.download(this.mLibrary.getLibraryId(), this.mAllowedOverMetered, this.mDownloadSet, this.mLibraryDownloadListener);
                }
            } else {
                this.mLibraryDownloadListener.onDownloadResult(this.mLibrary.getLibraryId(), 1);
            }
            jc.setCancelListener(new CancelListener() {
                public void onCancel() {
                    LibraryDownloadJob.this.cancel();
                }
            });
            return null;
        }
    }

    private static final class LibraryManagerHolder {
        private static final LibraryManager INSTANCE = new LibraryManager();
    }

    private class NetworkReceiver extends BroadcastReceiver {
        private boolean mIsNetConnected = NetworkUtils.isNetworkConnected();
        private boolean mIsWifiConnected;

        public NetworkReceiver() {
            this.mIsWifiConnected = !NetworkUtils.isActiveNetworkMetered();
        }

        public void onReceive(Context context, Intent intent) {
            boolean netConnected;
            boolean isWifiConnected;
            if (intent.getBooleanExtra("noConnectivity", false)) {
                netConnected = false;
            } else {
                netConnected = true;
            }
            boolean netChanged = false;
            if (this.mIsNetConnected != netConnected) {
                Log.d(LibraryManager.TAG, "NetworkReceiver lastConnect: %s, netConnect: %s", Boolean.valueOf(this.mIsNetConnected), Boolean.valueOf(netConnected));
                this.mIsNetConnected = netConnected;
                netChanged = true;
            }
            if (!this.mIsNetConnected || NetworkUtils.isActiveNetworkMetered()) {
                isWifiConnected = false;
            } else {
                isWifiConnected = true;
            }
            if (this.mIsWifiConnected != isWifiConnected) {
                Log.d(LibraryManager.TAG, "NetworkReceiver lastWifiConnect: %s, wifiConnect: %s", Boolean.valueOf(this.mIsWifiConnected), Boolean.valueOf(isWifiConnected));
                this.mIsWifiConnected = isWifiConnected;
                netChanged = true;
            }
            if (netChanged && this.mIsWifiConnected && LibraryManager.this.tryDownloadAllLibrarys()) {
                LibraryManager.this.unRegisterNetObserver(GalleryApp.sGetAndroidContext());
            }
        }
    }

    /* synthetic */ LibraryManager(AnonymousClass1 x0) {
        this();
    }

    private LibraryManager() {
        this.mInitTask = new AsyncTask<Context, Void, Void>() {
            protected Void doInBackground(Context... params) {
                Context context = params[0];
                LibraryManager.this.initAllLibrarys();
                LibraryManager.this.mInitializing = false;
                LibraryManager.this.mInitialized = true;
                LibraryManager.this.mCountDownLatch.countDown();
                if (!LibraryManager.this.tryDownloadAllLibrarys()) {
                    LibraryManager.this.registerNetObserver(context);
                }
                return null;
            }
        };
        this.mCurrentLibraries = new ConcurrentHashMap();
        this.mLibraryDownloadManager = new LibraryDownloadManager();
        this.mCountDownLatch = new CountDownLatch(1);
    }

    public static LibraryManager getInstance() {
        return LibraryManagerHolder.INSTANCE;
    }

    public synchronized void init(Context context) {
        if (!(this.mInitialized || this.mInitializing)) {
            Log.d(TAG, "init");
            this.mInitializing = true;
            this.mInitTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Context[]{context});
        }
    }

    public synchronized boolean isInitialized() {
        return this.mInitialized;
    }

    private void initAllLibrarys() {
        for (Long longValue : LibraryConstants.sAllLibraries) {
            long libraryId = longValue.longValue();
            Library library = getCurrentLibraryById(libraryId);
            if (library == null || (library.isOverDue() && !library.isLoaded())) {
                try {
                    Object[] result = new LibraryRequest(libraryId).executeSync();
                    if (result != null && result.length > 0 && (result[0] instanceof Library)) {
                        refreshServerLibraryInfo(result[0]);
                    }
                } catch (Throwable requestError) {
                    Log.e(TAG, requestError);
                }
            }
            refreshLibraryStatusInternal(libraryId);
        }
    }

    private boolean tryDownloadAllLibrarys() {
        if (!this.mInitialized) {
            return false;
        }
        if (!LibraryDownloadManager.checkCondition(false)) {
            return false;
        }
        boolean isAllLibraryExist = true;
        for (Long longValue : LibraryConstants.sAllLibraries) {
            long libraryId = longValue.longValue();
            Library library = getLibrary(libraryId);
            if (library == null) {
                Log.d(TAG, "Library %d is available or no download info,no need to download now", Long.valueOf(libraryId));
            } else if (library.getLibraryStatus() == LibraryStatus.STATE_NOT_DOWNLOADED) {
                Log.d(TAG, String.format(Locale.US, "Library %d download when app start up Begin.", new Object[]{Long.valueOf(libraryId)}));
                downloadLibrary(library, false, new DownloadListener() {
                    public void onDownloadResult(long libraryId, int resultCode) {
                        Log.d(LibraryManager.TAG, "Library %d download result:%d.", Long.valueOf(libraryId), Integer.valueOf(resultCode));
                        if (LibraryManager.this.isLibrarysExist(LibraryConstants.sStoryLibraries) && CloudUtils.getXiaomiAccount() == null) {
                            CardManager.getInstance().triggerGuaranteeScenarios(false);
                        }
                    }
                });
                isAllLibraryExist = false;
            }
        }
        return isAllLibraryExist;
    }

    public boolean isLibrarysExist(Long[] ids) {
        if (ids != null && ids.length > 0) {
            for (Long longValue : ids) {
                Library library = getLibrary(longValue.longValue());
                if (library == null) {
                    return false;
                }
                if (library.getLibraryStatus() != LibraryStatus.STATE_AVAILABLE && library.getLibraryStatus() != LibraryStatus.STATE_LOADED) {
                    return false;
                }
            }
        }
        return true;
    }

    private void registerNetObserver(Context context) {
        this.mNetworkReceiver = new NetworkReceiver();
        IntentFilter netFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        netFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE");
        context.registerReceiver(this.mNetworkReceiver, netFilter, null, ThreadManager.getWorkHandler());
    }

    private void unRegisterNetObserver(Context context) {
        if (this.mNetworkReceiver != null) {
            context.unregisterReceiver(this.mNetworkReceiver);
            this.mNetworkReceiver = null;
        }
    }

    public Library getLibrary(long libraryId) {
        if (this.mInitialized) {
            return (Library) this.mCurrentLibraries.get(Long.valueOf(libraryId));
        }
        return null;
    }

    public Library getLibrarySync(long libraryId) {
        if (!this.mInitialized) {
            try {
                this.mCountDownLatch.await(1, TimeUnit.SECONDS);
            } catch (Throwable e) {
                Log.e(TAG, e);
            }
            this.mCountDownLatch.countDown();
        }
        Library library = (Library) this.mCurrentLibraries.get(Long.valueOf(libraryId));
        if (library != null) {
            return library;
        }
        try {
            Object[] result = new LibraryRequest(libraryId).executeSync();
            if (result == null || result.length <= 0 || !(result[0] instanceof Library)) {
                return library;
            }
            library = (Library) result[0];
            refreshServerLibraryInfo(library);
            refreshLibraryStatusInternal(libraryId);
            return library;
        } catch (Throwable requestError) {
            Log.e(TAG, requestError);
            return library;
        }
    }

    private void refreshServerLibraryInfo(Library library) {
        if (library != null) {
            library.setRefreshTime(System.currentTimeMillis());
            long libraryId = library.getLibraryId();
            Library currentLibrary = (Library) this.mCurrentLibraries.get(Long.valueOf(libraryId));
            this.mCurrentLibraries.put(Long.valueOf(libraryId), library);
            if (currentLibrary == null) {
                GalleryEntityManager.getInstance().insert((Entity) library);
            } else {
                updateLibraryToDatabase(library);
            }
        }
    }

    public String getLibraryItemPath(String itemName) {
        return GalleryApp.sGetAndroidContext().getDir("libs", 0).getAbsolutePath() + File.separator + itemName;
    }

    public Future downloadLibrary(Library library, boolean allowedOverMetered, final DownloadListener listener) {
        if (library == null || library.isLibraryItemInfosConsistent()) {
            return downloadLibraryInternal(library, allowedOverMetered, listener);
        }
        final long libraryId = library.getLibraryId();
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (listener != null) {
                    listener.onDownloadResult(libraryId, 1);
                }
            }
        });
        return null;
    }

    private Future downloadLibraryInternal(final Library library, boolean allowedOverMetered, final DownloadListener listener) {
        DownloadListener listenerWrapper = new DownloadListener() {
            public void onDownloadResult(final long libraryId, final int resultCode) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        if (listener != null) {
                            listener.onDownloadResult(libraryId, resultCode);
                        }
                    }
                });
                switch (resultCode) {
                    case 0:
                        if (library != null) {
                            library.setLibraryStatus(LibraryStatus.STATE_AVAILABLE);
                        }
                        DeleteLibraryTask.post();
                        LibraryManager.this.recordDownloadResult(library, "success");
                        return;
                    case 1:
                        if (library != null) {
                            library.setLibraryStatus(LibraryStatus.STATE_NOT_DOWNLOADED);
                        }
                        LibraryManager.this.recordDownloadResult(library, "cancel");
                        return;
                    case 2:
                        if (library != null) {
                            library.setLibraryStatus(LibraryStatus.STATE_NOT_DOWNLOADED);
                        }
                        LibraryManager.this.recordDownloadResult(library, "fail");
                        return;
                    default:
                        return;
                }
            }
        };
        if (library == null) {
            return null;
        }
        library.setLibraryStatus(LibraryStatus.STATE_DOWNLOADING);
        return ThreadManager.getNetworkPool().submit(new LibraryDownloadJob(library, allowedOverMetered, listenerWrapper));
    }

    private void recordDownloadResult(Library library, String result) {
        if (library != null) {
            BaseSamplingStatHelper.recordStringPropertyEvent("assistant", "library_download_result_" + library.getLibraryId(), result);
        }
    }

    public boolean loadLibrary(long libraryId) {
        return loadLibrary(new Long[]{Long.valueOf(libraryId)});
    }

    public synchronized boolean loadLibrary(Long[] libraryIds) {
        boolean z = false;
        synchronized (this) {
            if (libraryIds != null) {
                if (libraryIds.length > 0) {
                    for (Long longValue : libraryIds) {
                        long libraryId = longValue.longValue();
                        Library library = getLibrary(libraryId);
                        if (library == null) {
                            break;
                        }
                        if (library.getLibraryStatus() != LibraryStatus.STATE_LOADED) {
                            if (library.getLibraryStatus() != LibraryStatus.STATE_AVAILABLE || !getInstance().loadLibraryInternal(library)) {
                                break;
                            }
                            library.setLibraryStatus(LibraryStatus.STATE_LOADED);
                        } else {
                            Log.d(TAG, "Library %d has been loaded, no need load again!", Long.valueOf(libraryId));
                        }
                    }
                    z = true;
                }
            }
        }
        return z;
    }

    private boolean loadLibraryInternal(Library library) {
        return library != null && (library.isLoaded() || library.load());
    }

    private Library getCurrentLibraryById(long libraryId) {
        Library library = (Library) this.mCurrentLibraries.get(Long.valueOf(libraryId));
        if (library == null) {
            library = (Library) GalleryEntityManager.getInstance().find(Library.class, String.valueOf(libraryId));
            if (library != null) {
                this.mCurrentLibraries.put(Long.valueOf(libraryId), library);
            }
        }
        return library;
    }

    private void updateLibraryToDatabase(Library library) {
        if (library != null) {
            ContentValues values = new ContentValues();
            library.onConvertToContents(values);
            GalleryEntityManager.getInstance().update(Library.class, values, String.format("%s=%s", new Object[]{"libraryId", Long.valueOf(library.getLibraryId())}), null);
        }
    }

    private LibraryStatus refreshLibraryStatusInternal(long libraryId) {
        Library currentLib = (Library) this.mCurrentLibraries.get(Long.valueOf(libraryId));
        if (currentLib == null) {
            return LibraryStatus.STATE_NO_LIBRARY_INFO;
        }
        if (currentLib.isExist()) {
            currentLib.setLibraryStatus(currentLib.isLoaded() ? LibraryStatus.STATE_LOADED : LibraryStatus.STATE_AVAILABLE);
        } else if (this.mLibraryDownloadManager.isLibraryDownloading(currentLib.getLibraryId())) {
            currentLib.setLibraryStatus(LibraryStatus.STATE_DOWNLOADING);
        } else {
            currentLib.setLibraryStatus(LibraryStatus.STATE_NOT_DOWNLOADED);
        }
        return currentLib.getLibraryStatus();
    }
}
