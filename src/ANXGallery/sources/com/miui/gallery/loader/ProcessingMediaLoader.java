package com.miui.gallery.loader;

import android.content.AsyncTaskLoader;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Loader.ForceLoadContentObserver;
import android.database.ContentObserver;
import com.miui.gallery.photosapi.PhotosOemApi;
import com.miui.gallery.provider.ProcessingMedia;
import com.miui.gallery.provider.ProcessingMediaManager;
import java.util.List;

public class ProcessingMediaLoader extends AsyncTaskLoader<List<ProcessingMedia>> {
    private static boolean sHasSpecialTypesProvider = true;
    private List<ProcessingMedia> mDataSet;
    private final ContentObserver mForceLoadContentObserver = new ForceLoadContentObserver(this);
    private boolean mIsObserversRegistered;

    public ProcessingMediaLoader(Context context) {
        super(context);
    }

    public List<ProcessingMedia> loadInBackground() {
        return ProcessingMediaManager.queryProcessingMedias();
    }

    public final void deliverResult(List<ProcessingMedia> data) {
        if (!isReset()) {
            List<ProcessingMedia> oldSet = this.mDataSet;
            this.mDataSet = data;
            if (isStarted()) {
                super.deliverResult(data);
            }
            if (oldSet != null && oldSet != data) {
                oldSet.clear();
            }
        } else if (data != null) {
            data.clear();
        }
    }

    protected final void onStartLoading() {
        if (this.mDataSet != null) {
            deliverResult(this.mDataSet);
        }
        if (takeContentChanged() || this.mDataSet == null) {
            forceLoad();
        }
        registerContentObservers();
    }

    protected void onStopLoading() {
        cancelLoad();
    }

    protected final void onReset() {
        super.onReset();
        onStopLoading();
        unregisterContentObservers();
        if (this.mDataSet != null) {
            this.mDataSet.clear();
            this.mDataSet = null;
        }
    }

    public final void onCanceled(List<ProcessingMedia> data) {
        if (data != null) {
            data.clear();
        }
    }

    protected void onAbandon() {
        super.onAbandon();
        unregisterContentObservers();
    }

    private void registerContentObservers() {
        if (!this.mIsObserversRegistered) {
            this.mIsObserversRegistered = true;
            ContentResolver resolver = getContext().getContentResolver();
            if (sHasSpecialTypesProvider) {
                try {
                    resolver.registerContentObserver(PhotosOemApi.getQueryProcessingUri(getContext()), true, this.mForceLoadContentObserver);
                } catch (Exception e) {
                    sHasSpecialTypesProvider = false;
                }
            }
        }
    }

    private void unregisterContentObservers() {
        if (this.mIsObserversRegistered) {
            this.mIsObserversRegistered = false;
            getContext().getContentResolver().unregisterContentObserver(this.mForceLoadContentObserver);
        }
    }
}
