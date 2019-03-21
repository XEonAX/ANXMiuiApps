package com.miui.gallery.loader;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.Loader.ForceLoadContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import com.miui.gallery.util.BaseMiscUtil;
import java.io.Closeable;

public class AsyncContentLoader<T extends Closeable> extends AsyncTaskLoader<T> {
    private CancellationSignal mCancellationSignal;
    private CursorConvertCallback<T> mCursorConvertCallback;
    private T mData;
    private boolean mIsObserversRegistered;
    private final ForceLoadContentObserver mObserver = new ForceLoadContentObserver(this);
    private String[] mProjection;
    private String mSelection;
    private String[] mSelectionArgs;
    private String mSortOrder;
    private Uri mUri;

    public AsyncContentLoader(Context context, CursorConvertCallback<T> converter) {
        super(context);
        this.mCursorConvertCallback = converter;
    }

    public final T loadInBackground() {
        synchronized (this) {
            if (isLoadInBackgroundCanceled()) {
                throw new OperationCanceledException();
            }
            this.mCancellationSignal = new CancellationSignal();
        }
        T data = null;
        try {
            Cursor cursor = getContext().getContentResolver().query(this.mUri, this.mProjection, this.mSelection, this.mSelectionArgs, this.mSortOrder, this.mCancellationSignal);
            if (cursor != null) {
                data = (Closeable) this.mCursorConvertCallback.convert(cursor);
            }
            BaseMiscUtil.closeSilently(cursor);
            synchronized (this) {
                this.mCancellationSignal = null;
            }
            return data;
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            synchronized (this) {
                this.mCancellationSignal = null;
            }
        }
    }

    public void cancelLoadInBackground() {
        super.cancelLoadInBackground();
        synchronized (this) {
            if (this.mCancellationSignal != null) {
                this.mCancellationSignal.cancel();
            }
        }
    }

    public void deliverResult(T data) {
        if (!isReset()) {
            T oldData = this.mData;
            this.mData = data;
            if (isStarted()) {
                super.deliverResult(data);
            }
            if (oldData != null && oldData != data) {
                BaseMiscUtil.closeSilently(oldData);
            }
        } else if (data != null) {
            BaseMiscUtil.closeSilently(data);
        }
    }

    protected void onStartLoading() {
        if (this.mData != null) {
            deliverResult(this.mData);
        }
        if (takeContentChanged() || this.mData == null) {
            forceLoad();
        }
        registerContentObservers();
    }

    protected void onStopLoading() {
        cancelLoad();
    }

    public void onCanceled(T data) {
        if (data != null) {
            BaseMiscUtil.closeSilently(data);
        }
    }

    protected void onReset() {
        super.onReset();
        onStopLoading();
        unregisterContentObservers();
        if (this.mData != null) {
            BaseMiscUtil.closeSilently(this.mData);
        }
        this.mData = null;
    }

    protected void onAbandon() {
        super.onAbandon();
        unregisterContentObservers();
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
    }

    public void setProjection(String[] projection) {
        this.mProjection = projection;
    }

    public void setSelection(String selection) {
        this.mSelection = selection;
    }

    public void setSortOrder(String sortOrder) {
        this.mSortOrder = sortOrder;
    }

    private void registerContentObservers() {
        if (!this.mIsObserversRegistered) {
            this.mIsObserversRegistered = true;
            getContext().getContentResolver().registerContentObserver(this.mUri, true, this.mObserver);
        }
    }

    private void unregisterContentObservers() {
        if (this.mIsObserversRegistered) {
            this.mIsObserversRegistered = false;
            getContext().getContentResolver().unregisterContentObserver(this.mObserver);
        }
    }
}
