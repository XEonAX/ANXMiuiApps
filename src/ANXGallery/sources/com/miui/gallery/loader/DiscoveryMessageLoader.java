package com.miui.gallery.loader;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import com.miui.gallery.discovery.DiscoveryMessageManager;
import com.miui.gallery.model.DiscoveryMessage;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class DiscoveryMessageLoader extends AsyncTaskLoader<ArrayList<DiscoveryMessage>> {
    private ForceLoadContentObserver mContentObserver;
    private Context mContext;
    private ArrayList<DiscoveryMessage> mDataSet;
    private int mMessageTypeMask;

    public static final class ForceLoadContentObserver extends ContentObserver {
        private WeakReference<DiscoveryMessageLoader> mLoaderRef;
        private int mMessageTypeMask;

        public ForceLoadContentObserver(DiscoveryMessageLoader loader, int messageTypeMask) {
            super(new Handler(Looper.myLooper()));
            this.mMessageTypeMask = messageTypeMask;
            this.mLoaderRef = new WeakReference(loader);
        }

        public int getMessageTypeMask() {
            return this.mMessageTypeMask;
        }

        public void onChange(boolean selfChange) {
            if (this.mLoaderRef.get() != null) {
                ((DiscoveryMessageLoader) this.mLoaderRef.get()).onContentChanged();
            }
        }
    }

    public DiscoveryMessageLoader(Context context, int messageTypeMask) {
        super(context);
        this.mContext = context.getApplicationContext();
        this.mContentObserver = new ForceLoadContentObserver(this, messageTypeMask);
        this.mMessageTypeMask = messageTypeMask;
        DiscoveryMessageManager.getInstance().registerContentObserver(this.mContentObserver);
    }

    public ArrayList<DiscoveryMessage> loadInBackground() {
        return DiscoveryMessageManager.getInstance().loadMessage(this.mContext, this.mMessageTypeMask);
    }

    public final void deliverResult(ArrayList<DiscoveryMessage> data) {
        if (!isReset()) {
            ArrayList<DiscoveryMessage> oldSet = this.mDataSet;
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

    public final void onCanceled(ArrayList<DiscoveryMessage> data) {
        if (data != null) {
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
    }

    protected final void onReset() {
        super.onReset();
        onStopLoading();
        DiscoveryMessageManager.getInstance().unregisterContentObserver(this.mContentObserver);
        if (this.mDataSet != null) {
            this.mDataSet.clear();
            this.mDataSet = null;
        }
    }

    protected void onAbandon() {
        super.onAbandon();
        DiscoveryMessageManager.getInstance().unregisterContentObserver(this.mContentObserver);
    }
}
