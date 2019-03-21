package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.uil.MicroThumbCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.FailReason.FailType;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.decode.ImageDecoder;
import com.nostra13.universalimageloader.core.decode.ImageDecodingInfo;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.utils.IoUtils;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import com.nostra13.universalimageloader.utils.L;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import miui.graphics.BitmapFactory;

final class LoadAndDisplayImageTask implements CopyListener, Runnable {
    private final ImageLoaderConfiguration configuration;
    private final ImageDecoder decoder;
    private final ImageDownloader downloader;
    private final ImageLoaderEngine engine;
    private final Handler handler;
    final ImageAware imageAware;
    private final ImageLoadingInfo imageLoadingInfo;
    final ImageLoadingListener listener;
    private LoadedFrom loadedFrom = LoadedFrom.NETWORK;
    private final String memoryCacheKey;
    private final ImageDownloader networkDeniedDownloader;
    final DisplayImageOptions options;
    final ImageLoadingProgressListener progressListener;
    private final ImageDownloader slowNetworkDownloader;
    private final boolean syncLoading;
    private final ImageSize targetSize;
    final String uri;

    class TaskCancelledException extends Exception {
        TaskCancelledException() {
        }
    }

    public LoadAndDisplayImageTask(ImageLoaderEngine engine, ImageLoadingInfo imageLoadingInfo, Handler handler) {
        this.engine = engine;
        this.imageLoadingInfo = imageLoadingInfo;
        this.handler = handler;
        this.configuration = engine.configuration;
        this.downloader = this.configuration.downloader;
        this.networkDeniedDownloader = this.configuration.networkDeniedDownloader;
        this.slowNetworkDownloader = this.configuration.slowNetworkDownloader;
        this.decoder = this.configuration.decoder;
        this.uri = imageLoadingInfo.uri;
        this.memoryCacheKey = imageLoadingInfo.memoryCacheKey;
        this.imageAware = imageLoadingInfo.imageAware;
        this.targetSize = imageLoadingInfo.targetSize;
        this.options = imageLoadingInfo.options;
        this.listener = imageLoadingInfo.listener;
        this.progressListener = imageLoadingInfo.progressListener;
        this.syncLoading = this.options.isSyncLoading();
    }

    public void run() {
        boolean cacheInMemory = false;
        if (this.options.isHighPriority()) {
            Thread.currentThread().setPriority(5);
        } else {
            Thread.currentThread().setPriority(this.configuration.threadPriority);
        }
        if (!waitIfPaused() && !delayIfNeed()) {
            ReentrantLock loadFromUriLock = this.imageLoadingInfo.loadFromUriLock;
            L.d("Start display image task [%s]", this.memoryCacheKey);
            if (loadFromUriLock.isLocked()) {
                L.d("Image already is loading. Waiting... [%s]", this.memoryCacheKey);
            }
            loadFromUriLock.lock();
            Bitmap bmp = null;
            boolean delaySaveThumbnail = false;
            try {
                checkTaskNotActual();
                if (this.options.isCacheInMemory() || this.options.isCacheInSubMemory()) {
                    cacheInMemory = true;
                }
                if (cacheInMemory) {
                    bmp = this.configuration.memoryCache.get(this.memoryCacheKey);
                    if ((bmp == null || bmp.isRecycled()) && this.configuration.subMemoryCache != null) {
                        bmp = this.configuration.subMemoryCache.get(this.memoryCacheKey);
                    }
                }
                if ((bmp == null || bmp.isRecycled()) && this.options.isLoadFromMicroCache()) {
                    MicroThumbCache cache = MicroThumbCache.getInstance();
                    if (cache != null) {
                        bmp = cache.getCenterCropBitmap(this.memoryCacheKey, null);
                    }
                    checkTaskNotActual();
                    checkTaskInterrupted();
                    if (bmp != null) {
                        if (this.options.isCacheInMemory()) {
                            L.d("Cache image in memory [%s]", this.memoryCacheKey);
                            this.configuration.memoryCache.put(this.memoryCacheKey, bmp);
                        }
                        if (this.options.isCacheInSubMemory() && this.configuration.subMemoryCache != null) {
                            this.configuration.subMemoryCache.put(this.memoryCacheKey, bmp);
                        }
                    }
                }
                if ((bmp == null || bmp.isRecycled()) && this.options.isLoadThumbnail()) {
                    bmp = tryLoadThumbnail();
                    checkTaskNotActual();
                    checkTaskInterrupted();
                    if (bmp != null) {
                        if (this.options.isCacheInMemory()) {
                            L.d("Cache image in memory [%s]", this.memoryCacheKey);
                            this.configuration.memoryCache.put(this.memoryCacheKey, bmp);
                        }
                        if (this.options.isCacheInSubMemory() && this.configuration.subMemoryCache != null) {
                            this.configuration.subMemoryCache.put(this.memoryCacheKey, bmp);
                        }
                    }
                }
                if (bmp == null) {
                    bmp = tryLoadBitmap();
                    if (bmp != null) {
                        checkTaskNotActual();
                        checkTaskInterrupted();
                        if (this.options.shouldPreProcess()) {
                            L.d("PreProcess image before caching in memory [%s]", this.memoryCacheKey);
                            bmp = this.options.getPreProcessor().process(bmp);
                            if (bmp == null) {
                                L.e("Pre-processor returned null [%s]", this.memoryCacheKey);
                            }
                        }
                        if (bmp != null) {
                            if (this.options.isCacheInMemory()) {
                                L.d("Cache image in memory [%s]", this.memoryCacheKey);
                                this.configuration.memoryCache.put(this.memoryCacheKey, bmp);
                            }
                            if (this.options.isCacheInSubMemory() && this.configuration.subMemoryCache != null) {
                                this.configuration.subMemoryCache.put(this.memoryCacheKey, bmp);
                            }
                        }
                        if (this.options.isCacheThumbnail()) {
                            if (this.options.isDelayCacheThumbnail()) {
                                delaySaveThumbnail = true;
                            } else {
                                cacheImageThumbnail(bmp);
                            }
                        }
                    } else {
                        return;
                    }
                }
                this.loadedFrom = LoadedFrom.MEMORY_CACHE;
                L.d("...Get cached bitmap from memory after waiting. [%s]", this.memoryCacheKey);
                if (bmp != null && this.options.shouldPostProcess()) {
                    L.d("PostProcess image before displaying [%s]", this.memoryCacheKey);
                    bmp = this.options.getPostProcessor().process(bmp);
                    if (bmp == null) {
                        L.e("Post-processor returned null [%s]", this.memoryCacheKey);
                    }
                }
                checkTaskNotActual();
                checkTaskInterrupted();
                loadFromUriLock.unlock();
                runTask(new DisplayBitmapTask(bmp, this.imageLoadingInfo, this.engine, this.loadedFrom), this.syncLoading, this.handler, this.engine);
                if (delaySaveThumbnail) {
                    cacheImageThumbnail(bmp);
                }
            } catch (TaskCancelledException e) {
                fireCancelEvent();
            } finally {
                loadFromUriLock.unlock();
            }
        }
    }

    private void cacheImageThumbnail(Bitmap bmp) {
        if (bmp != null && !bmp.isRecycled()) {
            L.d("Cache image's thumbnail [%s]", this.memoryCacheKey);
            try {
                this.configuration.thumbnailCache.save(this.memoryCacheKey, bmp);
            } catch (Exception e) {
                L.e(e);
            }
        }
    }

    private boolean waitIfPaused() {
        AtomicBoolean pause = this.engine.getPause();
        if (pause.get()) {
            synchronized (this.engine.getPauseLock()) {
                if (pause.get()) {
                    L.d("ImageLoader is paused. Waiting...  [%s]", this.memoryCacheKey);
                    try {
                        this.engine.getPauseLock().wait();
                        L.d(".. Resume loading [%s]", this.memoryCacheKey);
                    } catch (InterruptedException e) {
                        L.e("Task was interrupted [%s]", this.memoryCacheKey);
                        return true;
                    }
                }
            }
        }
        return isTaskNotActual();
    }

    private boolean delayIfNeed() {
        if (!this.options.shouldDelayBeforeLoading()) {
            return false;
        }
        L.d("Delay %d ms before loading...  [%s]", Integer.valueOf(this.options.getDelayBeforeLoading()), this.memoryCacheKey);
        try {
            Thread.sleep((long) this.options.getDelayBeforeLoading());
            return isTaskNotActual();
        } catch (InterruptedException e) {
            L.e("Task was interrupted [%s]", this.memoryCacheKey);
            return true;
        }
    }

    private Bitmap tryLoadThumbnail() throws TaskCancelledException {
        checkTaskNotActual();
        return this.configuration.thumbnailCache.getBitmap(this.memoryCacheKey);
    }

    private Bitmap tryLoadBitmap() throws TaskCancelledException {
        Bitmap bitmap = null;
        try {
            File imageFile = this.configuration.diskCache.get(this.uri);
            if (imageFile != null && imageFile.exists() && imageFile.length() > 0) {
                L.d("Load image from disk cache [%s]", this.memoryCacheKey);
                this.loadedFrom = LoadedFrom.DISC_CACHE;
                checkTaskNotActual();
                bitmap = decodeImage(Scheme.FILE.wrap(imageFile.getAbsolutePath()));
            }
            if (bitmap == null || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
                L.d("Load image from network [%s]", this.memoryCacheKey);
                this.loadedFrom = LoadedFrom.NETWORK;
                String imageUriForDecoding = this.uri;
                if (this.options.isCacheOnDisk() && tryCacheImageOnDisk()) {
                    imageFile = this.configuration.diskCache.get(this.uri);
                    if (imageFile != null) {
                        imageUriForDecoding = Scheme.FILE.wrap(imageFile.getAbsolutePath());
                    }
                }
                checkTaskNotActual();
                bitmap = decodeImage(imageUriForDecoding);
                if (bitmap == null || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
                    fireFailEvent(FailType.DECODING_ERROR, null);
                }
            }
        } catch (IllegalStateException e) {
            recordDecodeError(e);
            fireFailEvent(FailType.NETWORK_DENIED, null);
        } catch (TaskCancelledException e2) {
            throw e2;
        } catch (FileNotFoundException e3) {
            if (this.options.isLoadThumbnail()) {
                fireFailEventNoLog(FailType.IO_ERROR, e3);
            } else {
                recordDecodeError(e3);
                L.e(e3);
                fireFailEvent(FailType.IO_ERROR, e3);
            }
        } catch (IOException e4) {
            recordDecodeError(e4);
            L.e(e4);
            fireFailEvent(FailType.IO_ERROR, e4);
        } catch (OutOfMemoryError e5) {
            recordDecodeError(e5);
            L.e(e5);
            fireFailEvent(FailType.OUT_OF_MEMORY, e5);
        } catch (Exception e6) {
            recordDecodeError(e6);
            L.e(e6);
            fireFailEvent(FailType.UNKNOWN, e6);
        }
        return bitmap;
    }

    private void recordDecodeError(Throwable t) {
        if (!this.options.isLoadThumbnail()) {
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            params.put("uri", this.uri);
            params.put("exception", t != null ? t.toString() : "unknow");
            BaseSamplingStatHelper.recordErrorEvent("pager_decode_bitmap", "pager_photo_decode_error", params);
        }
    }

    private Bitmap decodeImage(String imageUri) throws IOException {
        String str = imageUri;
        Bitmap decodedBitmap = this.decoder.decode(new ImageDecodingInfo(this.memoryCacheKey, str, this.uri, this.targetSize, this.imageAware.getScaleType(), getDownloader(), this.options, this.imageLoadingInfo.regionDecodeRect));
        if (decodedBitmap == null || this.options.getBlurRadius() <= 0) {
            return decodedBitmap;
        }
        Bitmap finalBitmap = BitmapFactory.fastBlur(decodedBitmap, this.options.getBlurRadius());
        if (decodedBitmap == finalBitmap) {
            return finalBitmap;
        }
        if (this.options.getReusedBitmapCache() != null) {
            this.options.getReusedBitmapCache().put(decodedBitmap);
            return finalBitmap;
        }
        decodedBitmap.recycle();
        return finalBitmap;
    }

    private boolean tryCacheImageOnDisk() throws TaskCancelledException {
        L.d("Cache image on disk [%s]", this.memoryCacheKey);
        try {
            boolean loaded = downloadImage();
            if (!loaded) {
                return loaded;
            }
            int width = this.configuration.maxImageWidthForDiskCache;
            int height = this.configuration.maxImageHeightForDiskCache;
            if (width <= 0 && height <= 0) {
                return loaded;
            }
            L.d("Resize image in disk cache [%s]", this.memoryCacheKey);
            resizeAndSaveImage(width, height);
            return loaded;
        } catch (IOException e) {
            L.e(e);
            return false;
        }
    }

    private boolean downloadImage() throws IOException {
        boolean z = false;
        InputStream is = getDownloader().getStream(this.uri, this.options.getExtraForDownloader());
        if (is == null) {
            L.e("No stream for image [%s]", this.memoryCacheKey);
        } else {
            try {
                z = this.configuration.diskCache.save(this.uri, is, this);
            } finally {
                IoUtils.closeSilently(is);
            }
        }
        return z;
    }

    private boolean resizeAndSaveImage(int maxWidth, int maxHeight) throws IOException {
        File targetFile = this.configuration.diskCache.get(this.uri);
        if (targetFile == null || !targetFile.exists()) {
            return false;
        }
        Bitmap bmp = this.decoder.decode(new ImageDecodingInfo(this.memoryCacheKey, Scheme.FILE.wrap(targetFile.getAbsolutePath()), this.uri, new ImageSize(maxWidth, maxHeight), ViewScaleType.FIT_INSIDE, getDownloader(), new Builder().cloneFrom(this.options).imageScaleType(ImageScaleType.IN_SAMPLE_INT).build()));
        if (!(bmp == null || this.configuration.processorForDiskCache == null)) {
            L.d("Process image before cache on disk [%s]", this.memoryCacheKey);
            bmp = this.configuration.processorForDiskCache.process(bmp);
            if (bmp == null) {
                L.e("Bitmap processor for disk cache returned null [%s]", this.memoryCacheKey);
            }
        }
        if (bmp == null) {
            return false;
        }
        boolean saved = this.configuration.diskCache.save(this.uri, bmp);
        bmp.recycle();
        return saved;
    }

    public boolean onBytesCopied(int current, int total) {
        return this.syncLoading || fireProgressEvent(current, total);
    }

    private boolean fireProgressEvent(final int current, final int total) {
        if (isTaskInterrupted() || isTaskNotActual()) {
            return false;
        }
        if (this.progressListener != null) {
            runTask(new Runnable() {
                public void run() {
                    LoadAndDisplayImageTask.this.progressListener.onProgressUpdate(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView(), current, total);
                }
            }, false, this.handler, this.engine);
        }
        return true;
    }

    private void fireFailEvent(FailType failType, Throwable failCause) {
        L.e(failCause, "Loading image failed, fail Type %s, uri %s", failType, this.uri);
        fireFailEventNoLog(failType, failCause);
    }

    private void fireFailEventNoLog(final FailType failType, final Throwable failCause) {
        if (!this.syncLoading && !isTaskInterrupted() && !isTaskNotActual()) {
            runTask(new Runnable() {
                public void run() {
                    if (LoadAndDisplayImageTask.this.options.shouldShowImageOnFail()) {
                        LoadAndDisplayImageTask.this.imageAware.setImageDrawable(LoadAndDisplayImageTask.this.options.getImageOnFail(LoadAndDisplayImageTask.this.configuration.resources));
                    }
                    LoadAndDisplayImageTask.this.listener.onLoadingFailed(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView(), new FailReason(failType, failCause));
                }
            }, false, this.handler, this.engine);
        }
    }

    private void fireCancelEvent() {
        L.d("Cancel loading image %s", this.uri);
        if (!this.syncLoading && !isTaskInterrupted()) {
            runTask(new Runnable() {
                public void run() {
                    LoadAndDisplayImageTask.this.listener.onLoadingCancelled(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView());
                }
            }, false, this.handler, this.engine);
        }
    }

    private ImageDownloader getDownloader() {
        if (this.engine.isNetworkDenied()) {
            return this.networkDeniedDownloader;
        }
        if (this.engine.isSlowNetwork()) {
            return this.slowNetworkDownloader;
        }
        return this.downloader;
    }

    private void checkTaskNotActual() throws TaskCancelledException {
        checkViewCollected();
        checkViewReused();
    }

    private boolean isTaskNotActual() {
        return isViewCollected() || isViewReused();
    }

    private void checkViewCollected() throws TaskCancelledException {
        if (isViewCollected()) {
            throw new TaskCancelledException();
        }
    }

    private boolean isViewCollected() {
        if (!this.imageAware.isCollected()) {
            return false;
        }
        L.d("ImageAware was collected by GC. Task is cancelled. [%s]", this.memoryCacheKey);
        return true;
    }

    private void checkViewReused() throws TaskCancelledException {
        if (isViewReused()) {
            throw new TaskCancelledException();
        }
    }

    private boolean isViewReused() {
        boolean imageAwareWasReused;
        if (this.memoryCacheKey.equals(this.engine.getLoadingUriForView(this.imageAware))) {
            imageAwareWasReused = false;
        } else {
            imageAwareWasReused = true;
        }
        if (!imageAwareWasReused) {
            return false;
        }
        L.d("ImageAware is reused for another image. Task is cancelled. [%s]", this.memoryCacheKey);
        return true;
    }

    private void checkTaskInterrupted() throws TaskCancelledException {
        if (isTaskInterrupted()) {
            throw new TaskCancelledException();
        }
    }

    private boolean isTaskInterrupted() {
        if (!Thread.interrupted()) {
            return false;
        }
        L.d("Task was interrupted [%s]", this.memoryCacheKey);
        return true;
    }

    String getLoadingUri() {
        return this.uri;
    }

    static void runTask(Runnable r, boolean sync, Handler handler, ImageLoaderEngine engine) {
        if (sync) {
            r.run();
        } else if (handler == null) {
            engine.fireCallback(r);
        } else {
            handler.post(r);
        }
    }
}
