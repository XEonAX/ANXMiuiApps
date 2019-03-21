package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class PreloadMediaAdapter extends BaseMediaSyncStateAdapter {
    private PreloadOnScrollListener mPreloadListener;
    private int mPreloadNum = ThumbConfig.get().sPreloadNum;
    private List<PreloadViewAware> mPreloadViewList = new LinkedList();
    private List<PreloadViewAware> mRecycleViewList = new LinkedList();

    public static class PreloadOnScrollListener implements OnScrollListener {
        private int mFirstVisiblePos = 0;
        private int mLastVisiblePos = 0;
        private OnScrollListener mScrollListener;
        private int mScrollState = 0;

        public PreloadOnScrollListener(OnScrollListener scrollListener) {
            this.mScrollListener = scrollListener;
        }

        public void onScrollStateChanged(AbsListView view, int scrollState) {
            if (this.mScrollListener != null) {
                this.mScrollListener.onScrollStateChanged(view, scrollState);
            }
        }

        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            if (firstVisibleItem != this.mFirstVisiblePos) {
                this.mScrollState = firstVisibleItem > this.mFirstVisiblePos ? 0 : 1;
            }
            this.mFirstVisiblePos = firstVisibleItem;
            this.mLastVisiblePos = (this.mFirstVisiblePos + visibleItemCount) - 1;
            if (this.mScrollListener != null) {
                this.mScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
            }
        }

        public int getFirstPosition() {
            return this.mFirstVisiblePos;
        }

        public int getLastPosition() {
            return this.mLastVisiblePos;
        }

        public int getScrollState() {
            return this.mScrollState;
        }
    }

    private static class PreloadViewAware extends NonViewAware {
        protected int position;

        public PreloadViewAware(ImageSize imageSize, ViewScaleType scaleType) {
            super(imageSize, scaleType);
        }

        public PreloadViewAware setImageUri(String imageUri) {
            this.imageUri = imageUri;
            return this;
        }

        public PreloadViewAware setImageSize(ImageSize imageSize) {
            this.imageSize = imageSize;
            return this;
        }

        public PreloadViewAware setScaleType(ViewScaleType scaleType) {
            this.scaleType = scaleType;
            return this;
        }

        public PreloadViewAware setPosition(int position) {
            this.position = position;
            return this;
        }
    }

    protected abstract void doBindData(View view, Context context, Cursor cursor);

    public PreloadMediaAdapter(Context context, DisplayScene scene) {
        super(context, scene);
    }

    public PreloadMediaAdapter(Context context, DisplayScene scene, int syncStateDisplayOptions) {
        super(context, scene, syncStateDisplayOptions);
    }

    public void setPreloadNum(int num) {
        this.mPreloadNum = num;
    }

    protected final void doBindView(View view, Context context, Cursor cursor) {
        doBindData(view, context, cursor);
        preload(context, cursor);
    }

    private boolean needPreload(int curBindPos) {
        if (this.mPreloadNum <= 0 || this.mPreloadListener == null) {
            return false;
        }
        switch (this.mPreloadListener.getScrollState()) {
            case 0:
                if (curBindPos < this.mPreloadListener.getLastPosition()) {
                    return false;
                }
                return true;
            case 1:
                if (curBindPos > this.mPreloadListener.getFirstPosition()) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    private void preload(Context context, Cursor cursor) {
        if (needPreload(cursor.getPosition())) {
            doPreload(context, cursor);
        }
    }

    private boolean isBackwards() {
        return this.mPreloadListener.getScrollState() == 0;
    }

    private void doPreload(Context context, Cursor cursor) {
        int preloadEnd;
        boolean isBackwards = isBackwards();
        int position = cursor.getPosition();
        if (this.mPreloadViewList.size() > 0) {
            boolean ignore = isBackwards ? ((PreloadViewAware) this.mPreloadViewList.get(0)).position > position : ((PreloadViewAware) this.mPreloadViewList.get(0)).position < position;
            if (ignore) {
                return;
            }
        }
        Iterator<PreloadViewAware> iterator = this.mPreloadViewList.iterator();
        while (iterator.hasNext()) {
            PreloadViewAware aware = (PreloadViewAware) iterator.next();
            boolean isBreak = isBackwards ? aware.position > position : aware.position < position;
            if (isBreak) {
                break;
            }
            iterator.remove();
            this.mRecycleViewList.add(aware);
        }
        int preloadStart = position + (isBackwards ? 1 : -1);
        if (this.mPreloadViewList.size() > 0) {
            preloadStart = ((PreloadViewAware) this.mPreloadViewList.get(this.mPreloadViewList.size() - 1)).position + (isBackwards ? 1 : -1);
        }
        if (isBackwards) {
            preloadEnd = Math.min(this.mPreloadNum + position, cursor.getCount() - 1);
        } else {
            preloadEnd = Math.max(position - this.mPreloadNum, 0);
        }
        int i;
        if (isBackwards) {
            for (i = preloadStart; i <= preloadEnd; i++) {
                loadImage(i);
            }
            return;
        }
        for (i = preloadStart; i >= preloadEnd; i--) {
            loadImage(i);
        }
    }

    private void loadImage(int position) {
        ImageAware aware = getViewAware();
        String imageUri = Scheme.FILE.wrap(getClearThumbFilePath(position));
        aware.setPosition(position).setImageUri(imageUri).setImageSize(getDisplayImageSize(position)).setScaleType(getDisplayScaleType(position));
        ImageLoader.getInstance().displayImage(imageUri, aware, new Builder().cloneFrom(getDisplayImageOptions(position)).cacheInMemory(false).cacheInSubMemory(true).preferSyncLoadFromMicroCache(false).build());
        this.mPreloadViewList.add(aware);
    }

    private PreloadViewAware getViewAware() {
        if (this.mRecycleViewList.size() > 0) {
            return (PreloadViewAware) this.mRecycleViewList.remove(0);
        }
        return new PreloadViewAware(ThumbConfig.get().sMicroTargetSize, ViewScaleType.CROP);
    }

    public OnScrollListener generateWrapScrollListener(OnScrollListener scrollListener) {
        this.mPreloadListener = new PreloadOnScrollListener(super.generateWrapScrollListener(scrollListener));
        return this.mPreloadListener;
    }
}
