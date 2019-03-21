package com.miui.gallery.util.photoview;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import com.miui.gallery.Config.TileConfig;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ReusedBitmapCache;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class TileView {
    private WeakReference<View> mAttachViewRef;
    private TileDecodeHandler mDecodeHandler;
    private TileDecodeManager mDecodeManager;
    private List<Tile> mDestroyedTiles = new LinkedList();
    private SparseArray<Tile> mDrawingTiles = new SparseArray();
    private boolean mIsMemoryTrimmed;
    private TileBitProvider mProvider;
    private BitmapRecycleCallback mRecycleCallback;
    private int mRefreshId = -1;
    private Matrix mRotateMatrix = new Matrix();
    private float mRotation;
    private List<Tile> mTempDecodeTiles = new ArrayList();
    private SparseArray<Tile> mTempDrawingTiles = new SparseArray();
    private RectF mTileIntersect = new RectF();
    private Rect mTileRange = new Rect();
    private final int mTileSize;
    private TrimMemoryCallback mTrimMemoryCallback;
    private Rect mViewPort = new Rect();

    private class TileDecodeHandler extends Handler {
        private TileDecodeHandler() {
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (msg.obj != null) {
                        Tile tile = msg.obj;
                        int tileKey = TileView.makeTileKey(tile.getTileRect());
                        TileView.this.mDecodeManager.removeDecodingTile(tileKey);
                        if (tile.isActive()) {
                            TileView.this.mDrawingTiles.put(tileKey, tile);
                            TileView.this.invalidate();
                            return;
                        }
                        tile.recycle();
                        return;
                    }
                    return;
                case 2:
                    if (msg.obj != null) {
                        TileView.this.mDecodeManager.removeDecodingTile(TileView.makeTileKey(((Tile) msg.obj).getTileRect()));
                    }
                    Log.w("TileView", "tile decode fail: %s", msg.obj);
                    return;
                default:
                    return;
            }
        }
    }

    public TileView(TileBitProvider provider, View attachView, BitmapRecycleCallback callback, TrimMemoryCallback trimMemoryCallback) {
        this.mProvider = provider;
        this.mAttachViewRef = new WeakReference(attachView);
        this.mRecycleCallback = callback;
        this.mTrimMemoryCallback = trimMemoryCallback;
        Handler tileDecodeHandler = new TileDecodeHandler();
        this.mDecodeHandler = tileDecodeHandler;
        this.mDecodeManager = new TileDecodeManager(tileDecodeHandler, this.mProvider);
        this.mTileSize = computeTileSize(provider);
    }

    private int computeTileSize(TileBitProvider provider) {
        int tileSize = 1024;
        int imageHeight = provider.getImageHeight();
        int imageWidth = provider.getImageWidth();
        if (imageHeight > 1024 && imageHeight < 1228) {
            tileSize = imageHeight;
        }
        if (imageWidth <= 1024 || imageWidth >= 1228) {
            return tileSize;
        }
        return Math.max(tileSize, imageWidth);
    }

    public void notifyInvalidate(RectF displayRect, float rotation) {
        layoutTiles(displayRect, rotation);
    }

    public void setViewPort(Rect viewPort) {
        this.mViewPort.set(viewPort);
    }

    public int getTileProviderWidth() {
        return this.mProvider != null ? this.mProvider.getImageWidth() : 0;
    }

    public int getTileProviderHeight() {
        return this.mProvider != null ? this.mProvider.getImageHeight() : 0;
    }

    public int getTileProviderRotation() {
        return this.mProvider != null ? this.mProvider.getRotation() : 0;
    }

    public void cleanup() {
        this.mDecodeManager.cancel();
        this.mDecodeHandler.removeCallbacksAndMessages(null);
        int size = this.mDrawingTiles.size();
        for (int i = 0; i < size; i++) {
            ((Tile) this.mDrawingTiles.valueAt(i)).recycle();
        }
        this.mDrawingTiles.clear();
        if (this.mIsMemoryTrimmed) {
            if (this.mTrimMemoryCallback != null) {
                this.mTrimMemoryCallback.onStopTrimMemory(1);
                this.mTrimMemoryCallback = null;
            }
            this.mIsMemoryTrimmed = false;
        }
        this.mRecycleCallback = null;
        if (size > 0) {
            invalidate();
        }
    }

    private int calculateInSampleSize(RectF displayRect) {
        int inSampleSize = 1;
        int halfWidth = this.mProvider.getImageWidth() / 2;
        int halfHeight = this.mProvider.getImageHeight() / 2;
        while (true) {
            if (((float) (halfWidth / inSampleSize)) < displayRect.width() && ((float) (halfHeight / inSampleSize)) < displayRect.height()) {
                return inSampleSize;
            }
            inSampleSize *= 2;
        }
    }

    private void layoutTiles(RectF displayRect, float rotation) {
        if (displayRect != null) {
            long start = SystemClock.uptimeMillis();
            this.mDecodeManager.clear();
            this.mTileIntersect.set(displayRect);
            this.mTileIntersect.intersect((float) this.mViewPort.left, (float) this.mViewPort.top, (float) this.mViewPort.right, (float) this.mViewPort.bottom);
            this.mRotation = rotation;
            this.mRotateMatrix.reset();
            this.mRotateMatrix.postRotate(rotation, (float) this.mViewPort.centerX(), (float) this.mViewPort.centerY());
            if (this.mProvider.getRotation() != 0) {
                this.mRotateMatrix.postRotate((float) (-this.mProvider.getRotation()), (float) this.mViewPort.centerX(), (float) this.mViewPort.centerY());
            }
            this.mRotateMatrix.mapRect(displayRect);
            this.mRotateMatrix.mapRect(this.mTileIntersect);
            int sampleSize = calculateInSampleSize(displayRect);
            float flipLeft = this.mTileIntersect.left - displayRect.left;
            if (this.mProvider.isFlip()) {
                flipLeft = this.mTileIntersect.right - displayRect.right;
            }
            float scaleX = ((float) this.mProvider.getImageWidth()) / displayRect.width();
            float scaleY = ((float) this.mProvider.getImageHeight()) / displayRect.height();
            int left = (int) ((flipLeft / displayRect.width()) * ((float) this.mProvider.getImageWidth()));
            int top = (int) (((this.mTileIntersect.top - displayRect.top) / displayRect.height()) * ((float) this.mProvider.getImageHeight()));
            int right = (int) (((float) left) + (this.mTileIntersect.width() * scaleX));
            int bottom = (int) (((float) top) + (this.mTileIntersect.height() * scaleY));
            this.mTileRange.set(floor(left, sampleSize), floor(top, sampleSize), ceil(right, sampleSize), ceil(bottom, sampleSize));
            refreshTiles((((float) this.mTileRange.left) / scaleX) + displayRect.left, (((float) this.mTileRange.top) / scaleY) + displayRect.top, ((float) (this.mTileSize * sampleSize)) / scaleX, ((float) (this.mTileSize * sampleSize)) / scaleY, sampleSize);
            Log.d("TileView", "layoutTiles, tile range: %s, display rect: %s, costs %d ms.", this.mTileRange.toShortString(), displayRect.toShortString(), Long.valueOf(SystemClock.uptimeMillis() - start));
        }
    }

    private boolean invalidate() {
        View view = getAttachView();
        if (view == null) {
            return false;
        }
        view.invalidate();
        return true;
    }

    private Tile obtainTile(Rect tileRect, RectF displayRect, int sampleSize) {
        if (this.mDestroyedTiles.size() <= 0) {
            return new Tile(tileRect, displayRect, sampleSize, this.mRecycleCallback);
        }
        Tile tile = (Tile) this.mDestroyedTiles.remove(0);
        tile.updateTileParam(tileRect, sampleSize);
        tile.updateDisplayParam(displayRect);
        return tile;
    }

    private void refreshTiles(float displayX, float displayY, float displaySizeX, float displaySizeY, int sampleSize) {
        Tile tile;
        int i;
        increaseRefreshId();
        float loopX = displayX;
        float loopY = displayY;
        int row = 0;
        int column = 0;
        int y = this.mTileRange.top;
        while (y < this.mTileRange.bottom) {
            column = 0;
            row++;
            int x = this.mTileRange.left;
            while (x < this.mTileRange.right) {
                column++;
                Rect tileRect = new Rect(x, y, (this.mTileSize * sampleSize) + x, (this.mTileSize * sampleSize) + y);
                RectF displayRect = new RectF(loopX, loopY, loopX + displaySizeX, loopY + displaySizeY);
                int key = makeTileKey(tileRect);
                tile = (Tile) this.mDrawingTiles.get(key);
                if (tile != null) {
                    tile.updateDisplayParam(displayRect);
                    this.mTempDrawingTiles.put(key, tile);
                } else {
                    tile = this.mDecodeManager.getDecodingTile(key);
                    if (tile != null) {
                        tile.updateDisplayParam(displayRect);
                    } else {
                        Object tile2 = obtainTile(tileRect, displayRect, sampleSize);
                        this.mTempDecodeTiles.add(tile2);
                        Log.i("TileView", "tile create %s", tile2);
                    }
                }
                tile2.setIndex(row, column);
                tile2.setRefreshId(this.mRefreshId);
                loopX += displaySizeX;
                x += this.mTileSize * sampleSize;
            }
            loopX = displayX;
            loopY += displaySizeY;
            y += this.mTileSize * sampleSize;
        }
        trimMemoryIfNeeded(row, column);
        int size = this.mDrawingTiles.size();
        for (i = 0; i < size; i++) {
            if (this.mTempDrawingTiles.get(this.mDrawingTiles.keyAt(i)) == null) {
                tile2 = (Tile) this.mDrawingTiles.valueAt(i);
                tile2.recycle();
                this.mDestroyedTiles.add(tile2);
            }
        }
        this.mDrawingTiles.clear();
        size = this.mTempDrawingTiles.size();
        for (i = 0; i < size; i++) {
            tile2 = (Tile) this.mTempDrawingTiles.valueAt(i);
            this.mDrawingTiles.put(makeTileKey(tile2.getTileRect()), tile2);
        }
        if (this.mDrawingTiles.size() > 0) {
            invalidate();
        }
        for (Tile tile22 : this.mTempDecodeTiles) {
            this.mDecodeManager.put(tile22);
        }
        this.mTempDrawingTiles.clear();
        this.mTempDecodeTiles.clear();
    }

    private void trimMemoryIfNeeded(int row, int column) {
        if (!this.mIsMemoryTrimmed && this.mTrimMemoryCallback != null) {
            if (((long) (((row * column) * this.mTileSize) * this.mTileSize)) * ((long) ReusedBitmapCache.getBytesPerPixel(TileConfig.getBitmapConfig())) >= 50331648) {
                this.mTrimMemoryCallback.onTrimMemory(1);
                this.mIsMemoryTrimmed = true;
            }
        }
    }

    public void draw(Canvas canvas, Paint paint) {
        long start = SystemClock.uptimeMillis();
        int size = this.mDrawingTiles.size();
        if (size != 0) {
            int saveCount = 0;
            if (!(!this.mProvider.isFlip() && this.mProvider.getRotation() == 0 && this.mRotation == 0.0f)) {
                saveCount = canvas.save();
                canvas.rotate(((float) this.mProvider.getRotation()) - this.mRotation, (float) this.mViewPort.centerX(), (float) this.mViewPort.centerY());
                if (this.mProvider.isFlip()) {
                    canvas.scale(-1.0f, 1.0f, (float) this.mViewPort.centerX(), (float) this.mViewPort.centerY());
                }
            }
            for (int i = 0; i < size; i++) {
                Tile tile = (Tile) this.mDrawingTiles.valueAt(i);
                if (tile.getRefreshId() == this.mRefreshId) {
                    tile.draw(canvas, paint);
                }
            }
            if (saveCount > 0) {
                canvas.restoreToCount(saveCount);
            }
            Log.d("TileView", "TileView draw cost %d ms.", Long.valueOf(SystemClock.uptimeMillis() - start));
        }
    }

    private void increaseRefreshId() {
        if (this.mRefreshId == Integer.MAX_VALUE) {
            this.mRefreshId = -1;
        }
        this.mRefreshId++;
    }

    private int floor(int value, int sampleSize) {
        int i = 0;
        while ((this.mTileSize * i) * sampleSize <= value) {
            i++;
        }
        return ((i - 1) * this.mTileSize) * sampleSize;
    }

    private int ceil(int value, int sampleSize) {
        int i = 0;
        while ((this.mTileSize * i) * sampleSize < value) {
            i++;
        }
        return (this.mTileSize * i) * sampleSize;
    }

    public static int makeTileKey(Rect rect) {
        if (rect == null) {
            return 0;
        }
        return ((((((rect.left + 527) * 31) + rect.top) * 31) + rect.right) * 31) + rect.bottom;
    }

    private View getAttachView() {
        View view = this.mAttachViewRef != null ? (View) this.mAttachViewRef.get() : null;
        if (view == null) {
            cleanup();
        }
        return view;
    }
}
