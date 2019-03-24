package com.miui.gallery.cleaner;

import com.miui.gallery.cleaner.BaseScanner.OnScanResultUpdateListener;
import com.miui.gallery.cleaner.slim.SlimScanner;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.internal.widget.ActionModeView;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

public class ScannerManager {
    public static final int[] TIME_COST_STAGE = new int[]{5, 10, 15, 25, 40, 60, nexClip.kClip_Rotate_180, ActionModeView.ANIMATION_DURATION};
    private static ScannerManager instance;
    private ScanObserverHolder mObserverHolder = new ScanObserverHolder();
    private OnScanResultUpdateListener mOnScanResultUpdateListener = new OnScanResultUpdateListener() {
        public void onUpdate(int scannerType, long deletedId, ScanResult result) {
            if (result == null || result.getSize() <= 0) {
                ScannerManager.this.removeScanResult(scannerType);
            } else {
                ScannerManager.this.updateScanResult(scannerType, result);
            }
            if (deletedId > 0) {
                Iterator it = ScannerManager.this.mScanners.iterator();
                while (it.hasNext()) {
                    BaseScanner scanner = (BaseScanner) it.next();
                    if (scanner.mType != scannerType) {
                        scanner.onMediaItemDeleted(deletedId);
                    }
                }
            }
        }
    };
    private boolean mReset = true;
    private Future<Void> mScanFuture;
    private FutureHandler mScanFutureHandler = new FutureHandler<Void>() {
        public void onPostExecute(Future<Void> future) {
            if (!future.isCancelled()) {
                ScannerManager.this.mObserverHolder.onScanFinish(ScannerManager.this.mSize);
                HashMap<String, String> params = new HashMap();
                params.put("timeCost", BaseSamplingStatHelper.formatValueStage((float) ((int) ((System.currentTimeMillis() - ScannerManager.this.mScanStartTime) / 1000)), ScannerManager.TIME_COST_STAGE));
                BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_scan_finish", params);
            }
        }
    };
    private Job<Void> mScanJob = new Job<Void>() {
        public Void run(JobContext jc) {
            Iterator it = ScannerManager.this.mScanners.iterator();
            while (it.hasNext()) {
                BaseScanner scanner = (BaseScanner) it.next();
                if (jc.isCancelled()) {
                    break;
                }
                ScanResult result = scanner.scan();
                if (result != null && result.getSize() > 0) {
                    synchronized (ScannerManager.this) {
                        if (!jc.isCancelled()) {
                            synchronized (ScannerManager.this.mScanResults) {
                                ScannerManager.this.mSize = ScannerManager.this.mSize + result.getSize();
                                ScannerManager.this.mScanResults.add(result);
                            }
                            scanner.setListener(ScannerManager.this.mOnScanResultUpdateListener);
                            ScannerManager.this.onScanProgress(jc);
                        }
                    }
                }
            }
            synchronized (ScannerManager.this) {
                if (!jc.isCancelled()) {
                    ScannerManager.this.mScanFuture = null;
                }
            }
            return null;
        }
    };
    private ArrayList<ScanResult> mScanResults = new ArrayList();
    private long mScanStartTime;
    private ArrayList<BaseScanner> mScanners = new ArrayList();
    private volatile long mSize;

    public interface ScanObserver {
        void onScanCanceled();

        void onScanFinish(long j);

        void onScanProgress(long j);

        void onScanResultUpdate(long j);

        void onScanStart();
    }

    private static class ScanObserverHolder implements ScanObserver {
        CopyOnWriteArraySet<ScanObserver> observers;

        private ScanObserverHolder() {
            this.observers = new CopyOnWriteArraySet();
        }

        /* synthetic */ ScanObserverHolder(AnonymousClass1 x0) {
            this();
        }

        public void onScanStart() {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((ScanObserver) it.next()).onScanStart();
            }
        }

        public void onScanCanceled() {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((ScanObserver) it.next()).onScanCanceled();
            }
        }

        public void onScanProgress(long size) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((ScanObserver) it.next()).onScanProgress(size);
            }
        }

        public void onScanFinish(long size) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((ScanObserver) it.next()).onScanFinish(size);
            }
        }

        public void onScanResultUpdate(long size) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((ScanObserver) it.next()).onScanResultUpdate(size);
            }
        }
    }

    private ScannerManager() {
        this.mScanners.add(new SlimScanner());
        this.mScanners.add(new ScreenshotScanner());
    }

    public static synchronized ScannerManager getInstance() {
        ScannerManager scannerManager;
        synchronized (ScannerManager.class) {
            if (instance == null) {
                instance = new ScannerManager();
            }
            scannerManager = instance;
        }
        return scannerManager;
    }

    public void registerObserver(ScanObserver observer) {
        this.mObserverHolder.observers.add(observer);
    }

    public void unregisterObserver(ScanObserver observer) {
        this.mObserverHolder.observers.remove(observer);
    }

    public BaseScanner getScanner(int type) {
        Iterator<BaseScanner> iterator = this.mScanners.iterator();
        while (iterator.hasNext()) {
            BaseScanner scanner = (BaseScanner) iterator.next();
            if (scanner.mType == type) {
                return scanner;
            }
        }
        return null;
    }

    public synchronized void startScan() {
        resetScan();
        this.mScanStartTime = System.currentTimeMillis();
        this.mScanFuture = ThreadManager.getMiscPool().submit(this.mScanJob, this.mScanFutureHandler);
        this.mReset = false;
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                ScannerManager.this.mObserverHolder.onScanStart();
            }
        });
    }

    public synchronized void resetScan() {
        if (this.mScanFuture != null) {
            this.mScanFuture.cancel();
            this.mScanFuture = null;
            ThreadManager.runOnMainThread(new Runnable() {
                public void run() {
                    ScannerManager.this.mObserverHolder.onScanCanceled();
                }
            });
        }
        Iterator it = this.mScanners.iterator();
        while (it.hasNext()) {
            ((BaseScanner) it.next()).reset();
        }
        synchronized (this.mScanResults) {
            this.mSize = 0;
            this.mScanStartTime = 0;
            this.mScanResults.clear();
        }
        this.mReset = true;
    }

    public synchronized boolean isReset() {
        return this.mReset;
    }

    public synchronized boolean isScanning() {
        return this.mScanFuture != null;
    }

    public synchronized boolean isScanFinish() {
        boolean z;
        z = (isReset() || isScanning()) ? false : true;
        return z;
    }

    public List<ScanResult> getScanResults() {
        return new ArrayList(this.mScanResults);
    }

    public boolean isScanResultEmpty() {
        boolean isEmpty;
        synchronized (this.mScanResults) {
            isEmpty = this.mScanResults.isEmpty();
        }
        return isEmpty;
    }

    public long getScanSize() {
        long j;
        synchronized (this.mScanResults) {
            j = this.mSize;
        }
        return j;
    }

    public long getStartTime() {
        return this.mScanStartTime;
    }

    private void updateScanResult() {
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                ScannerManager.this.mObserverHolder.onScanResultUpdate(ScannerManager.this.mSize);
            }
        });
    }

    private void removeScanResult(int type) {
        synchronized (this.mScanResults) {
            Iterator<ScanResult> iterator = this.mScanResults.iterator();
            while (iterator.hasNext()) {
                ScanResult result = (ScanResult) iterator.next();
                if (result.getType() == type) {
                    iterator.remove();
                    this.mSize -= result.getSize();
                    if (this.mSize < 0) {
                        this.mSize = 0;
                    }
                }
            }
        }
        updateScanResult();
    }

    private void updateScanResult(int type, ScanResult newResult) {
        synchronized (this.mScanResults) {
            int i = 0;
            int count = this.mScanResults.size();
            while (i < count) {
                ScanResult result = (ScanResult) this.mScanResults.get(i);
                if (result.getType() == type) {
                    this.mScanResults.set(i, newResult);
                    this.mSize += newResult.getSize() - result.getSize();
                    if (this.mSize < 0) {
                        this.mSize = 0;
                    }
                } else {
                    i++;
                }
            }
        }
        updateScanResult();
    }

    private void onScanProgress(final JobContext jc) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                if (!jc.isCancelled()) {
                    ScannerManager.this.mObserverHolder.onScanProgress(ScannerManager.this.mSize);
                }
            }
        });
    }
}
