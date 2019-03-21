package com.miui.gallery.util.uil;

import android.content.ContentUris;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.Config.ImageDownload;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadOptions;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.ImageDownloader;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItemStatus;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.listener.DownloadListener;
import com.miui.gallery.sdk.download.listener.DownloadProgressListener;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class CloudImageLoader implements Callback {
    private static CloudImageLoader sLoader;
    private final Map<DownloadType, Map<String, Set<ViewAware>>> mDelayRequest = new HashMap();
    private DownloadListener mDownloadListener = new DownloadListener() {
        public void onDownloadStarted(Uri uri, DownloadType type) {
            Log.d("CloudImageLoader", "onAddItem %s", (Object) uri);
            CloudImageLoader.this.dispatchMessage(0, new DownloadWrapper(CloudImageLoader.this, uri, type));
        }

        public void onDownloadSuccess(Uri uri, DownloadType type, DownloadedItem item) {
            Log.d("CloudImageLoader", "onDownloadSuccess %s", (Object) uri);
            CloudImageLoader.this.dispatchMessage(1, new DownloadWrapper(CloudImageLoader.this, uri, type, item));
        }

        public void onDownloadFail(Uri uri, DownloadType type, DownloadFailReason reason) {
            Log.d("CloudImageLoader", "onDownloadFail %s", (Object) uri);
            CloudImageLoader.this.dispatchMessage(2, new DownloadWrapper(CloudImageLoader.this, uri, type, reason));
        }

        public void onDownloadCancel(Uri uri, DownloadType type) {
            Log.d("CloudImageLoader", "onDownloadCancel %s", (Object) uri);
            CloudImageLoader.this.dispatchMessage(3, new DownloadWrapper(CloudImageLoader.this, uri, type));
        }
    };
    private Handler mMainThreadHandler;
    private volatile boolean mPauseLoading;
    private final Map<String, Set<ViewAware>> mPendingRequest = new HashMap();
    private DownloadProgressListener mProgressListener = new DownloadProgressListener() {
        public void onDownloadProgress(Uri uri, DownloadType type, long curSize, long totalSize) {
            CloudImageLoader.this.dispatchMessage(4, new DownloadWrapper(CloudImageLoader.this, uri, type, curSize, totalSize));
        }
    };
    private final Map<String, Set<ViewAware>> mRequestingRequest = new HashMap();

    public interface GetStatusCallBack {
        void onStatusGotten(DownloadItemStatus downloadItemStatus);
    }

    private interface Caller {
        void call(ViewAware viewAware);
    }

    private class DecodeListenerWrapper implements ImageLoadingListener {
        private ViewAware mAware;
        private final DownloadType mType;
        private final Uri mUri;

        public DecodeListenerWrapper(ViewAware aware) {
            this.mUri = aware.getUri();
            this.mType = aware.getDownloadType();
            this.mAware = aware;
        }

        private ErrorCode translateFailReason(FailReason reason) {
            return ErrorCode.DECODE_ERROR;
        }

        private boolean isViewReused() {
            return !TextUtils.equals(this.mAware.getKey(), CloudImageLoader.generateKey(this.mUri, this.mType));
        }

        public void onLoadingStarted(String imageUri, View view) {
        }

        public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
            if (!isViewReused()) {
                CloudImageLoadingListener listener = this.mAware.getLoadingListener();
                if (listener != null) {
                    listener.onLoadingFailed(this.mUri, this.mType, view, translateFailReason(failReason));
                }
            }
        }

        public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
            if (!isViewReused()) {
                CloudImageLoadingListener listener = this.mAware.getLoadingListener();
                if (listener != null) {
                    listener.onLoadingComplete(this.mUri, this.mType, view, loadedImage);
                }
            }
        }

        public void onLoadingCancelled(String imageUri, View view) {
            if (!isViewReused()) {
                CloudImageLoadingListener listener = this.mAware.getLoadingListener();
                if (listener != null) {
                    listener.onLoadingCancelled(this.mUri, this.mType, view);
                }
            }
        }
    }

    private class DownloadWrapper {
        private final long curSize;
        private final DownloadedItem downloadedItem;
        private final DownloadFailReason failReason;
        private final long totalSize;
        private final DownloadType type;
        private final Uri uri;

        DownloadWrapper(CloudImageLoader cloudImageLoader, Uri uri, DownloadType type) {
            this(uri, type, null, null, 0, 0);
        }

        DownloadWrapper(CloudImageLoader cloudImageLoader, Uri uri, DownloadType type, long curSize, long totalSize) {
            this(uri, type, null, null, curSize, totalSize);
        }

        DownloadWrapper(CloudImageLoader cloudImageLoader, Uri uri, DownloadType type, DownloadedItem downloadedItem) {
            this(uri, type, downloadedItem, null, 0, 0);
        }

        DownloadWrapper(CloudImageLoader cloudImageLoader, Uri uri, DownloadType type, DownloadFailReason failReason) {
            this(uri, type, null, failReason, 0, 0);
        }

        DownloadWrapper(Uri uri, DownloadType type, DownloadedItem downloadedItem, DownloadFailReason failReason, long curSize, long totalSize) {
            this.uri = uri;
            this.type = type;
            this.downloadedItem = downloadedItem;
            this.failReason = failReason;
            this.curSize = curSize;
            this.totalSize = totalSize;
        }
    }

    private abstract class ViewAware implements Comparable<ViewAware> {
        protected final DownloadType mInternalType;
        private final Uri mInternalUri;
        private final long mRequestTime = System.currentTimeMillis();

        public abstract DisplayImageOptions getDisplayOptions();

        public abstract DownloadType getDownloadType();

        public abstract ImageAware getImageAware();

        public abstract ImageSize getImageSize();

        public abstract String getKey();

        public abstract CloudImageLoadingListener getLoadingListener();

        public abstract CloudImageLoadingProgressListener getLoadingProgressListener();

        public abstract Uri getUri();

        public abstract boolean needDisplay();

        public ViewAware(Uri uri, DownloadType type) {
            this.mInternalUri = uri;
            this.mInternalType = type;
        }

        final Uri getInternalUri() {
            return this.mInternalUri;
        }

        final DownloadType getInternalDownloadType() {
            return this.mInternalType;
        }

        final String getInternalKey() {
            return CloudImageLoader.generateKey(getInternalUri(), getInternalDownloadType());
        }

        public RectF getRegionDecodeRect() {
            return null;
        }

        public View getWrappedView() {
            return getImageAware() != null ? getImageAware().getWrappedView() : null;
        }

        public final long getRequestTime() {
            return this.mRequestTime;
        }

        public boolean equals(Object o) {
            boolean z = true;
            if (o == null || !(o instanceof ViewAware)) {
                return false;
            }
            if (getWrappedView() == null && ((ViewAware) o).getWrappedView() == null) {
                return this == o;
            } else {
                if (getWrappedView() != ((ViewAware) o).getWrappedView()) {
                    z = false;
                }
                return z;
            }
        }

        public int hashCode() {
            View view = getWrappedView();
            return view != null ? view.hashCode() : super.hashCode();
        }

        public int compareTo(ViewAware o) {
            if (o == null) {
                return 1;
            }
            long c = getRequestTime() - o.getRequestTime();
            if (c > 0) {
                return 1;
            }
            if (c < 0) {
                return -1;
            }
            return 0;
        }
    }

    private class NonViewAwareImpl extends ViewAware {
        private CloudImageLoadingListener mLoadingListener;
        private CloudImageLoadingProgressListener mProgressListener;

        public NonViewAwareImpl(Uri uri, DownloadType imageType, CloudImageLoadingListener loadingListener, CloudImageLoadingProgressListener progressListener) {
            super(uri, imageType);
            this.mLoadingListener = loadingListener;
            this.mProgressListener = progressListener;
        }

        public ImageAware getImageAware() {
            return null;
        }

        public Uri getUri() {
            return getInternalUri();
        }

        public DownloadType getDownloadType() {
            return getInternalDownloadType();
        }

        public String getKey() {
            return CloudImageLoader.generateKey(getUri(), getDownloadType());
        }

        public CloudImageLoadingListener getLoadingListener() {
            return this.mLoadingListener;
        }

        public CloudImageLoadingProgressListener getLoadingProgressListener() {
            return this.mProgressListener;
        }

        public DisplayImageOptions getDisplayOptions() {
            return null;
        }

        public ImageSize getImageSize() {
            return null;
        }

        public boolean needDisplay() {
            return false;
        }
    }

    private class WeakRefViewAwareImpl extends ViewAware {
        private ImageAware mImageAware;

        public WeakRefViewAwareImpl(Uri uri, DownloadType imageType, ImageAware aware, DisplayImageOptions displayImageOptions, ImageSize imageSize, CloudImageLoadingListener listener, CloudImageLoadingProgressListener progressListener, RectF regionRect, boolean needDisplay) {
            super(uri, imageType);
            CloudImageHolder.getImageHolder(aware).setUri(uri).setImageType(imageType).setDisplayImageOptions(displayImageOptions).setImageSize(imageSize).setImageLoadingListener(listener).setImageLoadingProgressListener(progressListener).setRegionDecodeRect(regionRect).setNeedDisplay(needDisplay);
            this.mImageAware = aware;
        }

        public WeakRefViewAwareImpl(CloudImageLoader cloudImageLoader, Uri uri, DownloadType imageType, ImageAware aware, DisplayImageOptions displayImageOptions, ImageSize imageSize, CloudImageLoadingListener listener, CloudImageLoadingProgressListener progressListener, RectF regionRect) {
            this(uri, imageType, aware, displayImageOptions, imageSize, listener, progressListener, regionRect, true);
        }

        public String getKey() {
            return CloudImageLoader.generateKey(getUri(), getDownloadType());
        }

        public ImageAware getImageAware() {
            return this.mImageAware;
        }

        public Uri getUri() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getUri();
        }

        public DownloadType getDownloadType() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getImageType();
        }

        public CloudImageLoadingListener getLoadingListener() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getImageLoadingListener();
        }

        public CloudImageLoadingProgressListener getLoadingProgressListener() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getImageLoadingProgressListener();
        }

        public DisplayImageOptions getDisplayOptions() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getDisplayImageOptions();
        }

        public ImageSize getImageSize() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getImageSize();
        }

        public RectF getRegionDecodeRect() {
            return CloudImageHolder.getImageHolder(this.mImageAware).getRegionDecodeRect();
        }

        public boolean needDisplay() {
            return CloudImageHolder.getImageHolder(this.mImageAware).needDisplay();
        }
    }

    public boolean handleMessage(Message msg) {
        DownloadWrapper item = null;
        if (msg.obj != null) {
            item = msg.obj;
        }
        switch (msg.what) {
            case 0:
                return onStartLoading(item);
            case 1:
                return onSuccessLoading(item);
            case 2:
                return onFailLoading(item);
            case 3:
                return onCancelLoading(item);
            case 4:
                return onProgressUpdate(item);
            case 5:
                doRequestDelay(DownloadType.MICRO);
                return false;
            case 6:
                doRequestDelay(DownloadType.THUMBNAIL);
                return false;
            default:
                return false;
        }
    }

    private void dispatchListener(DownloadWrapper wrapper, Caller caller, boolean clean) {
        List<ViewAware> matches = getMatchAware(wrapper, clean);
        for (ViewAware aware : matches) {
            if (aware != null) {
                caller.call(aware);
            }
        }
        if (matches.size() == 0) {
            Log.e("CloudImageLoader", "The ref for %s should not be null", wrapper.uri);
        }
    }

    private boolean onStartLoading(final DownloadWrapper wrapper) {
        Log.d("CloudImageLoader", "onStartLoading %s", wrapper.uri);
        dispatchListener(wrapper, new Caller() {
            public void call(ViewAware aware) {
                CloudImageLoadingListener loadingListener = aware.getLoadingListener();
                if (loadingListener != null) {
                    loadingListener.onLoadingStarted(wrapper.uri, wrapper.type, aware.getWrappedView());
                }
            }
        }, false);
        return true;
    }

    private boolean onSuccessLoading(final DownloadWrapper wrapper) {
        Log.d("CloudImageLoader", "onEndLoading remove requesting item %s", wrapper.uri.toString());
        dispatchListener(wrapper, new Caller() {
            public void call(ViewAware aware) {
                CloudImageLoadingListener loadingListener = aware.getLoadingListener();
                if (loadingListener != null) {
                    loadingListener.onDownloadComplete(wrapper.uri, wrapper.type, aware.getWrappedView(), wrapper.downloadedItem.getFilePath());
                }
                if (aware.needDisplay()) {
                    DisplayImageOptions options = aware.getDisplayOptions();
                    if (wrapper.downloadedItem.getFileCipher() != null) {
                        if (options != null) {
                            options = new Builder().cloneFrom(options).secretKey(wrapper.downloadedItem.getFileCipher()).build();
                        } else {
                            options = new Builder().secretKey(wrapper.downloadedItem.getFileCipher()).build();
                        }
                    }
                    ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(wrapper.downloadedItem.getFilePath()), aware.getImageAware(), options, aware.getImageSize(), new DecodeListenerWrapper(aware), null, aware.getRegionDecodeRect());
                } else if (loadingListener != null) {
                    loadingListener.onLoadingComplete(wrapper.uri, wrapper.type, aware.getWrappedView(), null);
                }
            }
        }, true);
        return true;
    }

    private boolean onCancelLoading(final DownloadWrapper wrapper) {
        Log.i("CloudImageLoader", "onLoadingCancelled %s", wrapper.uri);
        dispatchListener(wrapper, new Caller() {
            public void call(ViewAware aware) {
                CloudImageLoadingListener loadingListener = aware.getLoadingListener();
                if (loadingListener != null) {
                    loadingListener.onLoadingCancelled(wrapper.uri, wrapper.type, aware.getWrappedView());
                }
            }
        }, true);
        return true;
    }

    private boolean onFailLoading(final DownloadWrapper wrapper) {
        Log.d("CloudImageLoader", "onLoadingFailed %s", wrapper.uri);
        dispatchListener(wrapper, new Caller() {
            public void call(ViewAware aware) {
                CloudImageLoadingListener loadingListener = aware.getLoadingListener();
                if (loadingListener != null) {
                    loadingListener.onLoadingFailed(wrapper.uri, wrapper.type, aware.getWrappedView(), wrapper.failReason == null ? ErrorCode.UNKNOWN : wrapper.failReason.getCode());
                }
            }
        }, true);
        return true;
    }

    private boolean onProgressUpdate(final DownloadWrapper wrapper) {
        Log.d("CloudImageLoader", "onProgressUpdate %s", wrapper.uri.toString());
        dispatchListener(wrapper, new Caller() {
            public void call(ViewAware aware) {
                CloudImageLoadingProgressListener progressListener = aware.getLoadingProgressListener();
                if (progressListener != null) {
                    progressListener.onProgressUpdate(wrapper.uri, wrapper.type, aware.getWrappedView(), (int) wrapper.curSize, (int) wrapper.totalSize);
                }
            }
        }, false);
        return true;
    }

    private void dispatchMessage(int what, DownloadWrapper wrapper) {
        Message msg = this.mMainThreadHandler.obtainMessage();
        msg.what = what;
        msg.obj = wrapper;
        this.mMainThreadHandler.sendMessage(msg);
    }

    private static String generateKey(Uri uri, DownloadType type) {
        return DownloadUtil.generateKey(uri, type);
    }

    private CloudImageLoader(Context context) {
        this.mMainThreadHandler = new Handler(context.getMainLooper(), this);
    }

    public static synchronized void init(Context context) {
        synchronized (CloudImageLoader.class) {
            if (sLoader == null) {
                sLoader = new CloudImageLoader(context);
            }
        }
    }

    private boolean isValidRequest(String requestKey, ViewAware aware) {
        return (aware == null || TextUtils.isEmpty(aware.getKey()) || !TextUtils.equals(requestKey, aware.getKey())) ? false : true;
    }

    private static <T> List<T> set2List(Set<T> set) {
        LinkedList<T> list = new LinkedList();
        if (set != null) {
            for (T add : set) {
                list.add(add);
            }
        }
        return list;
    }

    private static <E, T> List<T> map2List(Map<E, Set<T>> map) {
        List<T> list = new LinkedList();
        for (Entry value : map.entrySet()) {
            Set<T> set = (Set) value.getValue();
            if (set != null) {
                for (T add : set) {
                    list.add(add);
                }
            }
        }
        return list;
    }

    private List<ViewAware> getRequestingAwareBy(String key) {
        List<ViewAware> list;
        synchronized (this.mRequestingRequest) {
            list = set2List((Set) this.mRequestingRequest.get(key));
        }
        return list;
    }

    private List<ViewAware> getAllRequestingAware() {
        List<ViewAware> map2List;
        synchronized (this.mRequestingRequest) {
            map2List = map2List(this.mRequestingRequest);
        }
        return map2List;
    }

    private List<ViewAware> getMatchAware(DownloadWrapper wrapper, boolean clean) {
        List<ViewAware> list;
        String key = generateKey(wrapper.uri, wrapper.type);
        synchronized (this.mRequestingRequest) {
            list = getRequestingAwareBy(key);
            if (clean) {
                removeMatchAware(wrapper);
            }
        }
        Iterator<ViewAware> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (!isValidRequest(key, (ViewAware) iterator.next())) {
                iterator.remove();
            }
        }
        return list;
    }

    private void removeMatchAware(DownloadWrapper wrapper) {
        String key = generateKey(wrapper.uri, wrapper.type);
        synchronized (this.mRequestingRequest) {
            this.mRequestingRequest.remove(key);
        }
    }

    public static CloudImageLoader getInstance() {
        return sLoader;
    }

    public void displayImage(Uri uri, DownloadType imageType, ImageView imageView, DisplayImageOptions displayImageOptions, ImageSize imageSize, RectF regionRect, boolean delayRequest, boolean showLoadingImage) {
        displayImage(uri, imageType, imageView, displayImageOptions, imageSize, null, null, regionRect, delayRequest, showLoadingImage);
    }

    public void displayImage(Uri uri, DownloadType imageType, ImageView imageView, DisplayImageOptions displayImageOptions, ImageSize imageSize, CloudImageLoadingListener listener, CloudImageLoadingProgressListener progressListener) {
        displayImage(uri, imageType, imageView, displayImageOptions, imageSize, listener, progressListener, null, false, false);
    }

    public void displayImage(Uri uri, DownloadType imageType, ImageView imageView, DisplayImageOptions displayImageOptions, ImageSize imageSize, CloudImageLoadingListener listener, CloudImageLoadingProgressListener progressListener, RectF regionDecodeRect, boolean delayRequest, boolean showLoadingImage) {
        displayImage(uri, imageType, new ImageViewAware(imageView), displayImageOptions, imageSize, listener, progressListener, regionDecodeRect, delayRequest, showLoadingImage);
    }

    public void displayImage(Uri uri, DownloadType imageType, ImageAware imageAware, DisplayImageOptions displayImageOptions, ImageSize imageSize, CloudImageLoadingListener listener, CloudImageLoadingProgressListener progressListener, RectF regionDecodeRect, boolean delayRequest, boolean showLoadingImage) {
        if (uri == null) {
            Log.w("CloudImageLoader", "Can't display an image with null uri");
            if (displayImageOptions != null && displayImageOptions.shouldShowImageForEmptyUri()) {
                directShowImage(imageAware, displayImageOptions.getImageForEmptyUri(getResources(imageAware)));
            }
            onInvalidDownloadItem(uri, imageType, imageAware.getWrappedView(), listener);
            return;
        }
        long id = ContentUris.parseId(uri);
        if (id <= 0) {
            Log.w("CloudImageLoader", "Can't display an image with illegal id %s", Long.valueOf(id));
            if (displayImageOptions != null && displayImageOptions.shouldShowImageOnFail()) {
                directShowImage(imageAware, displayImageOptions.getImageOnFail(getResources(imageAware)));
            }
            if (listener != null) {
                listener.onLoadingFailed(uri, imageType, imageAware.getWrappedView(), ErrorCode.UNKNOWN);
                return;
            }
            return;
        }
        if (displayImageOptions != null && displayImageOptions.shouldShowImageOnLoading() && showLoadingImage) {
            directShowImage(imageAware, displayImageOptions.getImageOnLoading(getResources(imageAware)));
        }
        ViewAware aware = new WeakRefViewAwareImpl(this, uri, imageType, imageAware, displayImageOptions, imageSize, listener, progressListener, regionDecodeRect);
        if (imageType == DownloadType.MICRO || delayRequest) {
            loadImageDelay(aware);
        } else if (!requestLoading(aware)) {
            putToPending(aware);
        }
    }

    private Resources getResources(ImageAware aware) {
        View view = aware.getWrappedView();
        return view != null ? view.getResources() : GalleryApp.sGetAndroidContext().getResources();
    }

    private void directShowImage(final ImageAware imageAware, final Drawable drawable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            imageAware.setImageDrawable(drawable);
        } else {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    imageAware.setImageDrawable(drawable);
                }
            });
        }
    }

    public void loadImages(List<Uri> uris, List<DownloadType> imageTypes, List<CloudImageLoadingListener> listeners, List<CloudImageLoadingProgressListener> progressListeners) {
        if (BaseMiscUtil.isValid(uris)) {
            List<ViewAware> list = new ArrayList(uris.size());
            for (int i = 0; i < uris.size(); i++) {
                if (uris.get(i) == null) {
                    Log.w("CloudImageLoader", "Null download uri!");
                    onInvalidDownloadItem((Uri) uris.get(i), (DownloadType) imageTypes.get(i), null, listeners == null ? null : (CloudImageLoadingListener) listeners.get(i));
                } else {
                    CloudImageLoadingListener cloudImageLoadingListener;
                    CloudImageLoadingProgressListener cloudImageLoadingProgressListener;
                    Uri uri = (Uri) uris.get(i);
                    DownloadType downloadType = (DownloadType) imageTypes.get(i);
                    if (listeners == null) {
                        cloudImageLoadingListener = null;
                    } else {
                        cloudImageLoadingListener = (CloudImageLoadingListener) listeners.get(i);
                    }
                    if (progressListeners == null) {
                        cloudImageLoadingProgressListener = null;
                    } else {
                        cloudImageLoadingProgressListener = (CloudImageLoadingProgressListener) progressListeners.get(i);
                    }
                    list.add(new NonViewAwareImpl(uri, downloadType, cloudImageLoadingListener, cloudImageLoadingProgressListener));
                }
            }
            if (!requestLoading((List) list)) {
                for (ViewAware aware : list) {
                    putToPending(aware);
                }
            }
        }
    }

    private void loadImageDelay(ViewAware aware) {
        Map<String, Set<ViewAware>> delayMap = getDelayMap(aware.getDownloadType());
        synchronized (delayMap) {
            if (put(delayMap, aware)) {
                sendDelayMessage(aware.getDownloadType());
            }
        }
    }

    private Map<String, Set<ViewAware>> getDelayMap(DownloadType imageType) {
        Map<String, Set<ViewAware>> delayMap;
        synchronized (this.mDelayRequest) {
            delayMap = (Map) this.mDelayRequest.get(imageType);
            if (delayMap == null) {
                delayMap = new HashMap();
                this.mDelayRequest.put(imageType, delayMap);
            }
        }
        return delayMap;
    }

    private int getDelayMessage(DownloadType imageType) {
        switch (imageType) {
            case MICRO:
                return 5;
            case THUMBNAIL:
                return 6;
            default:
                return -1;
        }
    }

    private void sendDelayMessage(DownloadType imageType) {
        int delayWhat = getDelayMessage(imageType);
        if (delayWhat >= 0) {
            this.mMainThreadHandler.removeMessages(delayWhat);
            Message message = this.mMainThreadHandler.obtainMessage();
            message.what = delayWhat;
            this.mMainThreadHandler.sendMessageDelayed(message, 200);
        }
    }

    private void doRequestDelay(DownloadType imageType) {
        Map<String, Set<ViewAware>> delayMap;
        synchronized (this.mDelayRequest) {
            delayMap = (Map) this.mDelayRequest.get(imageType);
        }
        if (delayMap != null) {
            List<ViewAware> validRequests;
            ViewAware aware;
            synchronized (delayMap) {
                validRequests = map2List(delayMap);
                delayMap.clear();
            }
            Iterator<ViewAware> iterator = validRequests.iterator();
            while (iterator.hasNext()) {
                aware = (ViewAware) iterator.next();
                if (!(aware == null || isValidRequest(aware.getInternalKey(), aware))) {
                    iterator.remove();
                    onInvalidDownloadItem(aware.getInternalUri(), aware.getInternalDownloadType(), aware.getWrappedView(), aware.getLoadingListener());
                }
            }
            if (BaseMiscUtil.isValid(validRequests)) {
                Collections.sort(validRequests);
                if (!requestLoading((List) validRequests)) {
                    for (ViewAware aware2 : validRequests) {
                        putToPending(aware2);
                    }
                }
            }
        }
    }

    private void cancelInvalidRequest(DownloadType type) {
        if (type != null) {
            List<ViewAware> requesting = getAllRequestingAware();
            HashSet<String> validKeys = new HashSet();
            for (ViewAware value : requesting) {
                if (value.getInternalDownloadType() == type) {
                    String requestKey = value.getInternalKey();
                    if (isValidRequest(requestKey, value)) {
                        validKeys.add(requestKey);
                    }
                }
            }
            for (ViewAware value2 : requesting) {
                if (value2.getInternalDownloadType() == type && !validKeys.contains(value2.getInternalKey())) {
                    Log.i("CloudImageLoader", "cancel invalid request %s", value2.getInternalKey());
                    ImageDownloader.getInstance().cancel(value2.getInternalUri(), value2.getInternalDownloadType());
                }
            }
        }
    }

    public void cancel(Uri uri, DownloadType downloadType) {
        String key = generateKey(uri, downloadType);
        synchronized (this.mPendingRequest) {
            this.mPendingRequest.remove(key);
        }
        ImageDownloader.getInstance().cancel(uri, downloadType);
        if (isOrigin(downloadType)) {
            ImageDownloader.getInstance().cancel(uri, downloadType == DownloadType.ORIGIN ? DownloadType.ORIGIN_FORCE : DownloadType.ORIGIN);
        }
    }

    private static boolean put(Map<String, Set<ViewAware>> container, ViewAware aware) {
        String key = aware.getKey();
        if (TextUtils.isEmpty(key)) {
            return false;
        }
        Set<ViewAware> set = (Set) container.get(key);
        if (set == null) {
            set = new HashSet();
            container.put(key, set);
        }
        return set.add(aware);
    }

    private boolean putToRequesting(ViewAware aware) {
        boolean put;
        synchronized (this.mRequestingRequest) {
            put = put(this.mRequestingRequest, aware);
        }
        return put;
    }

    private boolean putToPending(ViewAware aware) {
        boolean put;
        synchronized (this.mPendingRequest) {
            put = put(this.mPendingRequest, aware);
        }
        return put;
    }

    private boolean requestLoading(ViewAware aware) {
        boolean queueFirst = false;
        if (this.mPauseLoading) {
            return false;
        }
        DownloadType type = aware.getDownloadType();
        boolean putSuccess = putToRequesting(aware);
        if (isOrigin(type) || isThumbnail(type)) {
            queueFirst = true;
        }
        ImageDownloader.getInstance().load(aware.getUri(), aware.getDownloadType(), new DownloadOptions.Builder().setRequireWLAN(ImageDownload.requireWLAN(type)).setQueueFirst(queueFirst).setInterruptExecuting(isOrigin(type)).build(), this.mDownloadListener, this.mProgressListener);
        if (!putSuccess || !needCancelInvalidRequest(type)) {
            return true;
        }
        cancelInvalidRequest(type);
        return true;
    }

    private boolean needCancelInvalidRequest(DownloadType type) {
        return !isOrigin(type);
    }

    private boolean requestLoading(List<ViewAware> awares) {
        if (this.mPauseLoading) {
            return false;
        }
        DownloadType type;
        boolean putSuccess = false;
        int i = 0;
        while (i < awares.size()) {
            boolean queueFirst;
            boolean interruptExecuting;
            ViewAware aware = (ViewAware) awares.get(i);
            type = aware.getDownloadType();
            putSuccess |= putToRequesting(aware);
            if (isOrigin(type) || isThumbnail(type)) {
                queueFirst = true;
            } else {
                queueFirst = false;
            }
            if (isOrigin(type) && i == 0) {
                interruptExecuting = true;
            } else {
                interruptExecuting = false;
            }
            ImageDownloader.getInstance().load(aware.getUri(), aware.getDownloadType(), new DownloadOptions.Builder().setRequireWLAN(ImageDownload.requireWLAN(type)).setQueueFirst(queueFirst).setInterruptExecuting(interruptExecuting).build(), this.mDownloadListener, this.mProgressListener);
            i++;
        }
        if (!putSuccess || awares.size() <= 0) {
            return true;
        }
        type = ((ViewAware) awares.get(0)).getDownloadType();
        if (!needCancelInvalidRequest(type)) {
            return true;
        }
        cancelInvalidRequest(type);
        return true;
    }

    private void onInvalidDownloadItem(Uri downloadUri, DownloadType type, View view, CloudImageLoadingListener loadingListener) {
        if (loadingListener != null) {
            if (downloadUri == null) {
                downloadUri = null;
            }
            loadingListener.onLoadingFailed(downloadUri, type, view, ErrorCode.PARAMS_ERROR);
        }
    }

    public boolean isOrigin(DownloadType imageType) {
        return imageType != null && (imageType == DownloadType.ORIGIN || imageType == DownloadType.ORIGIN_FORCE);
    }

    public boolean isThumbnail(DownloadType imageType) {
        return imageType != null && imageType == DownloadType.THUMBNAIL;
    }

    public boolean isRequesting(Uri uri, DownloadType imageType) {
        String key = generateKey(uri, imageType);
        return this.mPendingRequest.containsKey(key) || this.mRequestingRequest.containsKey(key);
    }

    public void getStatusAsync(final Uri uri, final DownloadType imageType, final GetStatusCallBack callBack) {
        new AsyncTask<Void, Void, DownloadItemStatus>() {
            protected DownloadItemStatus doInBackground(Void... params) {
                return ImageDownloader.getInstance().getStatusSync(uri, imageType);
            }

            protected void onPostExecute(DownloadItemStatus downloadItemStatus) {
                if (callBack != null) {
                    callBack.onStatusGotten(downloadItemStatus);
                }
            }
        }.execute(new Void[0]);
    }
}
