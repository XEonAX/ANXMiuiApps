package com.miui.gallery.adapter;

import android.content.Context;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.SyncUtil;
import java.lang.ref.WeakReference;

public abstract class BaseMediaSyncStateAdapter extends BaseMediaAdapterDeprecated {
    private static volatile boolean sIsGalleryCloudSyncable;
    private static volatile boolean sIsLoginAccount;
    private static Runnable sUpdateRunnable;
    protected DisplayScene mShowScene;
    protected int mSyncStateDisplayOptions;

    private static class SyncStateRunnable implements Runnable {
        private final WeakReference<BaseMediaSyncStateAdapter> mAdapterRef;

        public SyncStateRunnable(BaseMediaSyncStateAdapter adapter) {
            this.mAdapterRef = new WeakReference(adapter);
        }

        public void run() {
            BaseMediaSyncStateAdapter adapter = (BaseMediaSyncStateAdapter) this.mAdapterRef.get();
            if (adapter != null) {
                Context context = adapter.mContext.getApplicationContext();
                BaseMediaSyncStateAdapter.sIsLoginAccount = SyncUtil.existXiaomiAccount(context);
                boolean syncable = false;
                if (BaseMediaSyncStateAdapter.sIsLoginAccount) {
                    syncable = SyncUtil.isGalleryCloudSyncable(context);
                }
                if (BaseMediaSyncStateAdapter.sIsGalleryCloudSyncable != syncable) {
                    BaseMediaSyncStateAdapter.sIsGalleryCloudSyncable = syncable;
                    notifyStateChanged();
                }
            }
        }

        private void notifyStateChanged() {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    BaseMediaSyncStateAdapter adapter = (BaseMediaSyncStateAdapter) SyncStateRunnable.this.mAdapterRef.get();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            });
        }
    }

    public BaseMediaSyncStateAdapter(Context context) {
        this(context, DisplayScene.SCENE_NONE);
    }

    public BaseMediaSyncStateAdapter(Context context, DisplayScene scene) {
        this(context, scene, 7);
    }

    public BaseMediaSyncStateAdapter(Context context, DisplayScene scene, int syncStateDisplayOptions) {
        super(context);
        this.mShowScene = scene;
        this.mSyncStateDisplayOptions = syncStateDisplayOptions;
        updateGalleryCloudSyncableState();
    }

    public void updateGalleryCloudSyncableState() {
        if (sUpdateRunnable == null) {
            sUpdateRunnable = new SyncStateRunnable(this);
        }
        ThreadManager.getWorkHandler().removeCallbacks(sUpdateRunnable);
        ThreadManager.getWorkHandler().postDelayed(sUpdateRunnable, 100);
    }

    protected int getSyncStateInternal(int syncState) {
        if (sIsGalleryCloudSyncable) {
            return syncState;
        }
        if (sIsLoginAccount && syncState == 3) {
            return 4;
        }
        return Integer.MAX_VALUE;
    }
}
