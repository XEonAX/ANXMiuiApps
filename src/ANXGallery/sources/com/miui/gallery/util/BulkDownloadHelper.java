package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.util.uil.CloudImageLoadingListenerAdapter;
import com.miui.gallery.util.uil.CloudImageLoadingProgressListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class BulkDownloadHelper {
    private long mCurSize;
    private BulkDownloadListener mDownloadListener;
    private List<BulkDownloadItem> mExcutingList = new LinkedList();
    private List<BulkDownloadItem> mFailList = new LinkedList();
    private List<BulkDownloadItem> mSuccessList = new LinkedList();
    private long mTotalSize;

    public interface BulkDownloadListener {
        void onDownloadEnd(List<BulkDownloadItem> list, List<BulkDownloadItem> list2);

        void onDownloadProgress(float f);
    }

    private static abstract class BulkItemLoadingListener extends CloudImageLoadingListenerAdapter implements CloudImageLoadingProgressListener {
        private WeakReference<BulkDownloadItem> mDownloadItemRef;

        public abstract void onLoadingFailed(BulkDownloadItem bulkDownloadItem, ErrorCode errorCode);

        public abstract void onLoadingProgress(BulkDownloadItem bulkDownloadItem, long j, long j2);

        public abstract void onLoadingSuccess(BulkDownloadItem bulkDownloadItem);

        BulkItemLoadingListener(BulkDownloadItem item) {
            this.mDownloadItemRef = new WeakReference(item);
        }

        private boolean isValidate() {
            return (this.mDownloadItemRef == null || this.mDownloadItemRef.get() == null) ? false : true;
        }

        public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
            if (isValidate()) {
                ((BulkDownloadItem) this.mDownloadItemRef.get()).setDownloadPath(filePath);
            }
        }

        public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
            if (isValidate()) {
                onLoadingFailed((BulkDownloadItem) this.mDownloadItemRef.get(), code);
            } else {
                Log.i("BulkDownloadHelper", "onLoadingFailed not validate");
            }
        }

        public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
            if (isValidate()) {
                onLoadingSuccess((BulkDownloadItem) this.mDownloadItemRef.get());
            } else {
                Log.i("BulkDownloadHelper", "onLoadingComplete not validate");
            }
        }

        public void onProgressUpdate(Uri uri, DownloadType type, View view, int current, int total) {
            if (!isValidate()) {
                Log.i("BulkDownloadHelper", "onProgressUpdate not validate");
            } else if (current <= total) {
                float progress = (1.0f * ((float) current)) / ((float) total);
                long size = ((BulkDownloadItem) this.mDownloadItemRef.get()).getSize();
                onLoadingProgress((BulkDownloadItem) this.mDownloadItemRef.get(), (long) (((float) size) * progress), size);
            }
        }
    }

    public static class BulkDownloadItem implements Parcelable {
        public static final Creator<BulkDownloadItem> CREATOR = new Creator<BulkDownloadItem>() {
            public BulkDownloadItem createFromParcel(Parcel source) {
                return new BulkDownloadItem(source);
            }

            public BulkDownloadItem[] newArray(int size) {
                return new BulkDownloadItem[size];
            }
        };
        private String mDownloadPath;
        private Uri mDownloadUri;
        private long mSize;
        private DownloadType mType;

        public BulkDownloadItem(Uri downloadUri, DownloadType type, long size) {
            this.mDownloadUri = downloadUri;
            this.mType = type;
            this.mSize = size;
        }

        protected BulkDownloadItem(Parcel source) {
            this.mDownloadUri = (Uri) source.readParcelable(Uri.class.getClassLoader());
            this.mType = (DownloadType) source.readParcelable(DownloadType.class.getClassLoader());
            this.mSize = source.readLong();
        }

        void setDownloadPath(String path) {
            this.mDownloadPath = path;
        }

        public Uri getDownloadUri() {
            return this.mDownloadUri;
        }

        public DownloadType getType() {
            return this.mType;
        }

        public long getSize() {
            return this.mSize;
        }

        public String getDownloadPath() {
            return this.mDownloadPath;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeParcelable(this.mDownloadUri, flags);
            dest.writeParcelable(this.mType, flags);
            dest.writeLong(this.mSize);
        }

        public String toString() {
            return String.format(Locale.US, "Uri[%s], ImageType[%s]", new Object[]{this.mDownloadUri, this.mType.name()});
        }
    }

    public BulkDownloadHelper() {
        reset();
    }

    private void reset() {
        this.mExcutingList.clear();
        this.mSuccessList.clear();
        this.mFailList.clear();
        this.mCurSize = 0;
        this.mTotalSize = 0;
        this.mDownloadListener = null;
    }

    public void download(List<BulkDownloadItem> items, boolean cancelExcuting, BulkDownloadListener listener) {
        if (BaseMiscUtil.isValid(items)) {
            if (cancelExcuting) {
                cancel();
            }
            reset();
            this.mExcutingList.addAll(items);
            for (BulkDownloadItem item : this.mExcutingList) {
                this.mTotalSize += item.getSize();
            }
            this.mDownloadListener = listener;
            List<Uri> uris = new ArrayList(items.size());
            List<DownloadType> imageTypes = new ArrayList(items.size());
            List<CloudImageLoadingListener> listeners = new ArrayList(items.size());
            List<CloudImageLoadingProgressListener> progressListeners = new ArrayList(items.size());
            for (BulkDownloadItem item2 : items) {
                if (item2.getDownloadUri() == null) {
                    Log.w("BulkDownloadHelper", "Null download uri for item %s", item2);
                    onItemLoadingFail(item2);
                } else {
                    uris.add(item2.getDownloadUri());
                    imageTypes.add(item2.getType());
                    BulkItemLoadingListener itemListener = generatorItemListener(item2);
                    listeners.add(itemListener);
                    progressListeners.add(itemListener);
                }
            }
            CloudImageLoader.getInstance().loadImages(uris, imageTypes, listeners, progressListeners);
        }
    }

    private boolean contains(BulkDownloadItem item) {
        return this.mExcutingList.contains(item);
    }

    private boolean isDownloadEnd() {
        return this.mSuccessList.size() + this.mFailList.size() == this.mExcutingList.size();
    }

    private void onDownloadEnd() {
        if (this.mDownloadListener != null) {
            this.mDownloadListener.onDownloadEnd(this.mSuccessList, this.mFailList);
        }
        reset();
    }

    private void onItemLoadingFail(BulkDownloadItem item) {
        this.mTotalSize -= item.getSize();
        this.mFailList.add(item);
        if (isDownloadEnd()) {
            onDownloadEnd();
        }
    }

    private BulkItemLoadingListener generatorItemListener(BulkDownloadItem item) {
        return new BulkItemLoadingListener(item) {
            public void onLoadingFailed(BulkDownloadItem item, ErrorCode errorCode) {
                Log.i("BulkDownloadHelper", "onLoadingFailed %s", (Object) item);
                if (BulkDownloadHelper.this.contains(item)) {
                    BulkDownloadHelper.this.onItemLoadingFail(item);
                }
            }

            public void onLoadingSuccess(BulkDownloadItem item) {
                Log.i("BulkDownloadHelper", "onLoadingSuccess %s", (Object) item);
                if (BulkDownloadHelper.this.contains(item)) {
                    BulkDownloadHelper.this.mCurSize = BulkDownloadHelper.this.mCurSize + item.getSize();
                    BulkDownloadHelper.this.mSuccessList.add(item);
                    if (BulkDownloadHelper.this.isDownloadEnd()) {
                        BulkDownloadHelper.this.onDownloadEnd();
                    }
                }
            }

            public void onLoadingProgress(BulkDownloadItem item, long current, long total) {
                if (BulkDownloadHelper.this.contains(item) && BulkDownloadHelper.this.mDownloadListener != null) {
                    BulkDownloadHelper.this.mDownloadListener.onDownloadProgress((1.0f * ((float) (BulkDownloadHelper.this.mCurSize + current))) / ((float) BulkDownloadHelper.this.mTotalSize));
                }
            }
        };
    }

    public void cancel() {
        if (this.mExcutingList.size() > 0) {
            for (BulkDownloadItem item : this.mExcutingList) {
                CloudImageLoader.getInstance().cancel(item.getDownloadUri(), item.getType());
            }
        }
        reset();
    }
}
