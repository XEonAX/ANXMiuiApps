package com.miui.gallery.search;

import android.content.AsyncTaskLoader;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.provider.deprecated.GalleryCloudProvider;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deprecated.Preference;
import java.lang.ref.WeakReference;

public class SearchStatusLoader extends AsyncTaskLoader<Integer> {
    private BroadcastReceiver mBroadCastReceiver;
    private ConnectivityReceiver mConnectivityReceiver;
    private Handler mHandler = new Handler();
    private int mLastStatus = -1;
    private WeakReference<StatusReportDelegate> mStatusReportDelegateRef;
    private ContentObserver mUploadingObserver;

    private class ConnectivityReceiver extends BroadcastReceiver {
        private Boolean mLastConnected;

        private ConnectivityReceiver() {
        }

        /* synthetic */ ConnectivityReceiver(SearchStatusLoader x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE".equals(intent.getAction())) && SearchStatusLoader.this.getContext() != null) {
                boolean connected = NetworkUtils.isNetworkConnected();
                SearchLog.d("SearchStatusLoader", "mLastConnected: %b, noConn: %b", this.mLastConnected, Boolean.valueOf(connected));
                if (this.mLastConnected == null || this.mLastConnected.booleanValue() != NetworkUtils.isNetworkConnected()) {
                    this.mLastConnected = Boolean.valueOf(connected);
                    SearchStatusLoader.this.onContentChanged();
                }
            }
        }
    }

    public interface StatusReportDelegate {
        boolean shouldReportStatus(int i);
    }

    public SearchStatusLoader(Context context, StatusReportDelegate delegate) {
        super(context);
        this.mStatusReportDelegateRef = new WeakReference(delegate);
    }

    public Integer loadInBackground() {
        int status = 0;
        if (shouldReportStatus(2) && NetworkUtils.isActiveNetworkMetered()) {
            status = 2;
        } else if (shouldReportStatus(1) && !NetworkUtils.isNetworkConnected()) {
            status = 1;
        } else if (shouldReportStatus(3) && !SyncUtil.existXiaomiAccount(getContext())) {
            status = 3;
        } else if (shouldReportStatus(4) && !SyncUtil.isGalleryCloudSyncable(getContext())) {
            status = 4;
        } else if (shouldReportStatus(10) && !Preference.sIsFirstSynced()) {
            status = SyncUtil.isGalleryCloudSyncable(getContext()) ? 10 : 4;
        }
        return Integer.valueOf(status);
    }

    protected boolean shouldReportStatus(int status) {
        StatusReportDelegate delegate = this.mStatusReportDelegateRef != null ? (StatusReportDelegate) this.mStatusReportDelegateRef.get() : null;
        return delegate == null || delegate.shouldReportStatus(status);
    }

    public void deliverResult(Integer data) {
        this.mLastStatus = data.intValue();
        if (isStarted()) {
            super.deliverResult(data);
        }
    }

    protected void onStartLoading() {
        super.onStartLoading();
        if (this.mLastStatus != -1) {
            deliverResult(Integer.valueOf(this.mLastStatus));
        }
        if (this.mConnectivityReceiver == null) {
            this.mConnectivityReceiver = new ConnectivityReceiver(this, null);
            IntentFilter filter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE");
            filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            getContext().registerReceiver(this.mConnectivityReceiver, filter);
        }
        if (this.mUploadingObserver == null) {
            this.mUploadingObserver = new ContentObserver(this.mHandler) {
                public void onChange(boolean selfChange) {
                    SearchStatusLoader.this.onContentChanged();
                }
            };
            getContext().getContentResolver().registerContentObserver(GalleryCloudProvider.UPLOAD_STATE_URI, true, this.mUploadingObserver);
        }
        if (!Preference.sIsFirstSynced() && this.mBroadCastReceiver == null) {
            this.mBroadCastReceiver = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    if ("com.miui.gallery.action.FIRST_SYNC_FINISHED".equals(intent.getAction()) || "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE".equals(intent.getAction())) {
                        SearchStatusLoader.this.onContentChanged();
                    }
                }
            };
            LocalBroadcastManager lbm = LocalBroadcastManager.getInstance(getContext());
            lbm.registerReceiver(this.mBroadCastReceiver, new IntentFilter("com.miui.gallery.action.FIRST_SYNC_FINISHED"));
            lbm.registerReceiver(this.mBroadCastReceiver, new IntentFilter("com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"));
        }
        if (takeContentChanged() || this.mLastStatus == -1) {
            forceLoad();
        }
    }

    protected void onStopLoading() {
        super.onStopLoading();
        cancelLoad();
        if (this.mConnectivityReceiver != null) {
            getContext().unregisterReceiver(this.mConnectivityReceiver);
            this.mConnectivityReceiver = null;
        }
        if (this.mUploadingObserver != null) {
            getContext().getContentResolver().unregisterContentObserver(this.mUploadingObserver);
        }
        if (this.mBroadCastReceiver != null) {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.mBroadCastReceiver);
            this.mBroadCastReceiver = null;
        }
    }

    protected void onReset() {
        super.onReset();
        onStopLoading();
    }
}
