package com.miui.gallery.util.photoview;

import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseArray;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import java.lang.ref.WeakReference;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class TileDecodeManager {
    private volatile SparseArray<Tile> mCurrentDecodingTiles = new SparseArray();
    private Future mDecodeFuture;
    private WeakReference<Handler> mDecodeHandlerRef;
    private WeakReference<TileBitProvider> mDecodeProviderRef;
    private BlockingQueue<Tile> mDecodeQueue = new LinkedBlockingQueue();
    private final Object mLock = new Object();

    private class TileDecodeJob implements Job<Void> {
        private TileDecodeJob() {
        }

        public Void run(JobContext jc) {
            while (!jc.isCancelled()) {
                try {
                    Tile tile = (Tile) TileDecodeManager.this.mDecodeQueue.poll(2000, TimeUnit.MILLISECONDS);
                    if (tile != null && tile.isActive()) {
                        if (jc.isCancelled()) {
                            TileDecodeManager.this.mDecodeQueue.clear();
                            break;
                        }
                        long start = SystemClock.uptimeMillis();
                        int tileKey = TileView.makeTileKey(tile.getTileRect());
                        synchronized (TileDecodeManager.this.mLock) {
                            TileDecodeManager.this.mCurrentDecodingTiles.put(tileKey, tile);
                        }
                        boolean result = tile.decode(TileDecodeManager.this.getProvider());
                        Log.d("TileDecodeManager", "decode tile %s costs %d ms.", tile.toString(), Long.valueOf(SystemClock.uptimeMillis() - start));
                        Handler handler = TileDecodeManager.this.getHandler();
                        if (handler != null) {
                            handler.obtainMessage(result ? 1 : 2, tile).sendToTarget();
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            Log.i("TileDecodeManager", "tile decode job is cancelled %s", Boolean.valueOf(jc.isCancelled()));
            return null;
        }
    }

    public TileDecodeManager(Handler handler, TileBitProvider provider) {
        this.mDecodeHandlerRef = new WeakReference(handler);
        this.mDecodeProviderRef = new WeakReference(provider);
    }

    private void startDecodeEngine() {
        if (this.mDecodeFuture == null) {
            this.mDecodeFuture = ThreadManager.getDecodePool().submit(new TileDecodeJob());
            Log.i("TileDecodeManager", "start decode engine");
        }
    }

    public boolean put(Tile tile) {
        if (tile == null) {
            return false;
        }
        startDecodeEngine();
        return this.mDecodeQueue.offer(tile);
    }

    public void cancel() {
        if (this.mDecodeFuture != null) {
            this.mDecodeFuture.cancel();
            Log.i("TileDecodeManager", "cancel decode engine");
        }
        this.mDecodeFuture = null;
        this.mDecodeQueue.clear();
        synchronized (this.mLock) {
            this.mCurrentDecodingTiles.clear();
        }
    }

    public void clear() {
        this.mDecodeQueue.clear();
        Log.i("TileDecodeManager", "clear queue");
    }

    public Tile getDecodingTile(int key) {
        Tile tile;
        synchronized (this.mLock) {
            tile = (Tile) this.mCurrentDecodingTiles.get(key);
        }
        return tile;
    }

    public void removeDecodingTile(int key) {
        synchronized (this.mLock) {
            this.mCurrentDecodingTiles.remove(key);
        }
    }

    private TileBitProvider getProvider() {
        return this.mDecodeProviderRef != null ? (TileBitProvider) this.mDecodeProviderRef.get() : null;
    }

    private Handler getHandler() {
        return this.mDecodeHandlerRef != null ? (Handler) this.mDecodeHandlerRef.get() : null;
    }
}
