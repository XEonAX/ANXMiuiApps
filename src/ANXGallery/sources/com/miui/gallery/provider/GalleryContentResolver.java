package com.miui.gallery.provider;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.miui.gallery.util.Log;

public abstract class GalleryContentResolver implements Callback {
    private SparseArray<Integer> mDelayNums;
    private Handler mHandler;

    private class NotifyParams {
        public ContentObserver observer;
        public boolean sync;
        public int syncReason;
        public Uri uri;

        private NotifyParams() {
        }
    }

    protected abstract Object matchUri(Uri uri);

    protected abstract void notifyInternal(Uri uri, ContentObserver contentObserver, boolean z, int i);

    public GalleryContentResolver() {
        if (Looper.myLooper() != null) {
            this.mHandler = new Handler(Looper.myLooper(), this);
        } else {
            this.mHandler = new Handler(Looper.getMainLooper(), this);
        }
        this.mDelayNums = new SparseArray();
    }

    public final void notifyChange(Uri uri, ContentObserver observer, boolean sync) {
        notifyInternal(uri, observer, sync, 0);
    }

    public final void notifyChange(Uri uri, ContentObserver observer, boolean sync, int syncReason) {
        notifyInternal(uri, observer, sync, syncReason);
    }

    public final void notifyChangeDelay(Uri uri, ContentObserver observer, boolean sync) {
        notifyChangeDelay(uri, observer, sync, 0);
    }

    public final void notifyChangeDelay(Uri uri, ContentObserver observer, boolean sync, int syncReason) {
        int what = matchUri(uri).hashCode();
        this.mHandler.removeMessages(what);
        NotifyParams params = new NotifyParams();
        params.uri = uri;
        params.observer = observer;
        params.sync = sync;
        params.syncReason = syncReason;
        Message msg = this.mHandler.obtainMessage(what, params);
        int count = ((Integer) this.mDelayNums.get(what, Integer.valueOf(0))).intValue() + 1;
        if (count > 100) {
            count = 0;
            this.mHandler.sendMessage(msg);
        } else {
            this.mHandler.sendMessageDelayed(msg, 1000);
        }
        this.mDelayNums.put(what, Integer.valueOf(count));
    }

    public boolean handleMessage(Message msg) {
        NotifyParams params = msg.obj;
        notifyChange(params.uri, params.observer, params.sync, params.syncReason);
        this.mDelayNums.put(msg.what, Integer.valueOf(0));
        Log.i("GalleryContentResolver", "delay notify %s %s", Thread.currentThread(), params.uri);
        return false;
    }
}
