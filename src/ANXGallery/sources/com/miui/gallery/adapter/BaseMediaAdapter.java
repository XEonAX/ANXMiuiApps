package com.miui.gallery.adapter;

import android.content.Context;
import android.graphics.RectF;
import com.miui.gallery.R;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import java.lang.ref.WeakReference;

public abstract class BaseMediaAdapter<VH extends BaseViewHolder> extends BaseGalleryCursorAdapter<VH> {
    private static volatile boolean sIsGalleryCloudSyncable;
    private static volatile boolean sIsLoginAccount;
    private static Runnable sUpdateRunnable;
    protected DisplayScene mShowScene;
    protected int mSyncStateDisplayOptions;
    protected int mViewScrollState;

    private static class SyncStateRunnable implements Runnable {
        private final WeakReference<BaseMediaAdapter> mAdapterRef;

        public SyncStateRunnable(BaseMediaAdapter adapter) {
            this.mAdapterRef = new WeakReference(adapter);
        }

        public void run() {
            BaseMediaAdapter adapter = (BaseMediaAdapter) this.mAdapterRef.get();
            if (adapter != null) {
                Context context = adapter.mContext.getApplicationContext();
                BaseMediaAdapter.sIsLoginAccount = SyncUtil.existXiaomiAccount(context);
                boolean syncable = false;
                if (BaseMediaAdapter.sIsLoginAccount) {
                    syncable = SyncUtil.isGalleryCloudSyncable(context);
                }
                if (BaseMediaAdapter.sIsGalleryCloudSyncable != syncable) {
                    BaseMediaAdapter.sIsGalleryCloudSyncable = syncable;
                    notifyStateChanged();
                }
            }
        }

        private void notifyStateChanged() {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    BaseMediaAdapter adapter = (BaseMediaAdapter) SyncStateRunnable.this.mAdapterRef.get();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            });
        }
    }

    public abstract void doBindViewHolder(VH vh, int i);

    public BaseMediaAdapter(Context context) {
        this(context, DisplayScene.SCENE_NONE);
    }

    public BaseMediaAdapter(Context context, DisplayScene scene) {
        this(context, scene, 7);
    }

    public BaseMediaAdapter(Context context, DisplayScene scene, int syncStateDisplayOptions) {
        super(context);
        this.mViewScrollState = 0;
        this.mShowScene = scene;
        this.mSyncStateDisplayOptions = syncStateDisplayOptions;
        updateGalleryCloudSyncableState();
    }

    public RectF getItemDecodeRectF(int position) {
        return null;
    }

    public final void onBindViewHolder(VH holder, int position) {
        holder.itemView.setTag(R.id.tag_item_position, Integer.valueOf(position));
        doBindViewHolder(holder, position);
    }

    public void updateGalleryCloudSyncableState() {
        if (sUpdateRunnable == null) {
            sUpdateRunnable = new SyncStateRunnable(this);
        }
        ThreadManager.getWorkHandler().removeCallbacks(sUpdateRunnable);
        ThreadManager.getWorkHandler().postDelayed(sUpdateRunnable, 100);
    }
}
