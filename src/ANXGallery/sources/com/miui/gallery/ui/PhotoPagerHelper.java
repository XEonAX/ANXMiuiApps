package com.miui.gallery.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;
import com.miui.gallery.adapter.PhotoPageAdapter;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.TrimMemoryCallback;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.widget.ViewPager;
import com.miui.gallery.widget.ViewPager.OnPageChangeListener;
import java.util.LinkedList;
import java.util.List;
import uk.co.senab.photoview.PhotoViewAttacher.OnBackgroundAlphaChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnMatrixChangedListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnScaleChangeListener;
import uk.co.senab.photoview.PhotoViewAttacher.OnViewTapListener;

public class PhotoPagerHelper {
    private OnAlphaChangedListener mAlphaChangedListener;
    private OnDisplayRectChangedListener mDisplayRectChangedListener;
    private CloudImageLoadingListener mDownloadListener;
    private OnExitListener mExitListener;
    private OnBackgroundAlphaChangedListener mInternalAlphaChangedListener = new OnBackgroundAlphaChangedListener() {
        public void onAlphaChanged(float alpha) {
            if (PhotoPagerHelper.this.mAlphaChangedListener != null) {
                PhotoPagerHelper.this.mAlphaChangedListener.onAlphaChanged(alpha);
            }
        }
    };
    private uk.co.senab.photoview.PhotoViewAttacher.OnExitListener mInternalExitListener = new uk.co.senab.photoview.PhotoViewAttacher.OnExitListener() {
        public void onExit() {
            if (PhotoPagerHelper.this.mExitListener != null) {
                PhotoPagerHelper.this.mExitListener.onExit();
            }
        }
    };
    private OnHierarchyChangeListener mInternalHierarchyChangeListener = new OnHierarchyChangeListener() {
        public void onChildViewAdded(View parent, View child) {
        }

        public void onChildViewRemoved(View parent, View child) {
        }
    };
    private CloudImageLoadingListener mInternalImageLoadingListener = new CloudImageLoadingListener() {
        public void onLoadingStarted(Uri uri, DownloadType type, View view) {
            if (PhotoPagerHelper.this.mDownloadListener != null) {
                PhotoPagerHelper.this.mDownloadListener.onLoadingStarted(uri, type, view);
            }
        }

        public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
            if (PhotoPagerHelper.this.mDownloadListener != null) {
                PhotoPagerHelper.this.mDownloadListener.onLoadingFailed(uri, type, view, code);
            }
        }

        public void onLoadingComplete(Uri uri, DownloadType type, View view, Bitmap loadedImage) {
            if (PhotoPagerHelper.this.mDownloadListener != null) {
                PhotoPagerHelper.this.mDownloadListener.onLoadingComplete(uri, type, view, loadedImage);
            }
        }

        public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
            if (PhotoPagerHelper.this.mDownloadListener != null) {
                PhotoPagerHelper.this.mDownloadListener.onDownloadComplete(uri, type, view, filePath);
            }
        }

        public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
            if (PhotoPagerHelper.this.mDownloadListener != null) {
                PhotoPagerHelper.this.mDownloadListener.onLoadingCancelled(uri, type, view);
            }
        }
    };
    private OnMatrixChangedListener mInternalMatrixListener = new OnMatrixChangedListener() {
        public void onMatrixChanged(RectF rect) {
            if (PhotoPagerHelper.this.mDisplayRectChangedListener != null) {
                PhotoPagerHelper.this.mDisplayRectChangedListener.onDisplayRectChanged(rect);
            }
        }
    };
    private com.miui.gallery.ui.PhotoPageItem.OnImageLoadFinishListener mInternalOnImageLoadFinishListener = new com.miui.gallery.ui.PhotoPageItem.OnImageLoadFinishListener() {
        public void onImageLoadFinish(boolean cancelled, String uri) {
            if (PhotoPagerHelper.this.mOnImageLoadFinishListener != null) {
                PhotoPagerHelper.this.mOnImageLoadFinishListener.onImageLoadFinish(uri);
            }
        }
    };
    private OnPageChangeListener mInternalPageChangedListener = new OnPageChangeListener() {
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        public void onPageSelected(int position) {
            PhotoPagerHelper.this.setPageChanged(position);
        }

        public void onPageScrollStateChanged(int state) {
            PhotoPagerHelper.this.setPageScrollStateChanged(state);
        }
    };
    private com.miui.gallery.widget.ViewPager.OnPageSettledListener mInternalPageSettledListener = new com.miui.gallery.widget.ViewPager.OnPageSettledListener() {
        public void onPageSettled(int position) {
            PhotoPagerHelper.this.setPageSettled(position);
        }
    };
    private OnScaleChangeListener mInternalScaleListener = new OnScaleChangeListener() {
        public void onScaleChange(float scaleFactorX, float scaleFactorY, float focusX, float focusY, float scale) {
            if (PhotoPagerHelper.this.mScaleChangedListener != null) {
                PhotoPagerHelper.this.mScaleChangedListener.onScaleChanged(scaleFactorX, scaleFactorY, scale);
            }
        }
    };
    private OnViewTapListener mInternalTapListener = new OnViewTapListener() {
        public void onViewTap(View view, float x, float y) {
            if (PhotoPagerHelper.this.mTapListener != null) {
                PhotoPagerHelper.this.mTapListener.onTap(x, y);
            }
        }
    };
    private TrimMemoryCallback mInternalTrimMemoryCallback = new TrimMemoryCallback() {
        public void onTrimMemory(int flag) {
            int i;
            PhotoPageItem item;
            List<PhotoPageItem> remain = new LinkedList();
            int curItem = PhotoPagerHelper.this.mViewPager.getCurrentItem();
            for (i = curItem - 1; i <= curItem + 1; i++) {
                item = PhotoPagerHelper.this.getItem(i);
                if (item != null) {
                    remain.add(item);
                }
            }
            for (i = 0; i < PhotoPagerHelper.this.getActiveItemCount(); i++) {
                item = PhotoPagerHelper.this.getItemByNativeIndex(i);
                if (!(item == null || remain.contains(item))) {
                    item.onTrimMemory(flag);
                }
            }
        }

        public void onStopTrimMemory(int flag) {
            for (int i = 0; i < PhotoPagerHelper.this.getActiveItemCount(); i++) {
                PhotoPageItem item = PhotoPagerHelper.this.getItemByNativeIndex(i);
                if (item != null) {
                    item.onStopTrimMemory(flag);
                }
            }
        }
    };
    private OnImageLoadFinishListener mOnImageLoadFinishListener;
    private OnPageChangedListener mPageChangedListener;
    private OnPageSettledListener mPageSettledListener;
    private OnScaleChangedListener mScaleChangedListener;
    private OnSingleTapListener mTapListener;
    private ViewPager mViewPager;

    public interface OnDisplayRectChangedListener {
        void onDisplayRectChanged(RectF rectF);
    }

    public interface OnExitListener {
        void onExit();
    }

    public interface OnAlphaChangedListener {
        void onAlphaChanged(float f);
    }

    public interface OnSingleTapListener {
        void onTap(float f, float f2);
    }

    public interface OnScaleChangedListener {
        void onScaleChanged(float f, float f2, float f3);
    }

    public interface OnImageLoadFinishListener {
        void onImageLoadFinish(String str);
    }

    public interface OnPageChangedListener {
        void onPageChanged(int i);
    }

    public interface OnPageSettledListener {
        void onPageSettled(int i);
    }

    public PhotoPagerHelper(ViewPager viewPager) {
        this.mViewPager = viewPager;
        this.mViewPager.setOnPageSettledListener(this.mInternalPageSettledListener);
        this.mViewPager.setOnPageChangeListener(this.mInternalPageChangedListener);
        this.mViewPager.setOnHierarchyChangeListener(this.mInternalHierarchyChangeListener);
    }

    public void setPageChanged(int position) {
        if (this.mPageChangedListener != null) {
            this.mPageChangedListener.onPageChanged(position);
        }
    }

    public void setPageScrollStateChanged(int state) {
        PhotoPageItem curItem = getCurrentItem();
        if (curItem == null) {
            return;
        }
        if (state == 1) {
            curItem.onPageScrollDragging();
        } else if (state == 0) {
            curItem.onPageScrollIdle();
        }
    }

    public void setPageSettled(int position) {
        if (this.mPageSettledListener != null) {
            this.mPageSettledListener.onPageSettled(position);
        }
        int count = getActiveItemCount();
        PhotoPageItem curItem = getItem(position);
        for (int i = 0; i < count; i++) {
            PhotoPageItem item = getItemByNativeIndex(i);
            if (item != null) {
                if (item != curItem) {
                    item.onUnSelected(false);
                    item.setOnViewTapListener(null);
                    item.setCloudImageLoadingListener(null);
                    item.setOnExitListener(null);
                    item.setOnScaleChangeListener(null);
                    item.removeOnMatrixChangeListener(this.mInternalMatrixListener);
                    item.setOnBackgroundAlphaChangedListener(null);
                    item.setTrimMemoryCallback(null);
                } else {
                    item.onSelected(false);
                    item.setOnViewTapListener(this.mInternalTapListener);
                    item.setCloudImageLoadingListener(this.mInternalImageLoadingListener);
                    item.setOnExitListener(this.mInternalExitListener);
                    item.setOnScaleChangeListener(this.mInternalScaleListener);
                    item.addOnMatrixChangeListener(this.mInternalMatrixListener);
                    item.setOnBackgroundAlphaChangedListener(this.mInternalAlphaChangedListener);
                    item.setTrimMemoryCallback(this.mInternalTrimMemoryCallback);
                }
                item.setOnImageLoadFinishListener(this.mInternalOnImageLoadFinishListener);
            }
        }
    }

    public void setOnPageSettledListener(OnPageSettledListener listener) {
        this.mPageSettledListener = listener;
    }

    public void setOnPageChangedListener(OnPageChangedListener listener) {
        this.mPageChangedListener = listener;
    }

    public void setOnTapListener(OnSingleTapListener tapListener) {
        this.mTapListener = tapListener;
    }

    public void setOnDownloadListener(CloudImageLoadingListener downloadListener) {
        this.mDownloadListener = downloadListener;
    }

    public void setOnScaleChangedListener(OnScaleChangedListener scaleChangedListener) {
        this.mScaleChangedListener = scaleChangedListener;
    }

    public void setOnExitListener(OnExitListener exitListener) {
        this.mExitListener = exitListener;
    }

    public void setOnDisplayRectChangedListener(OnDisplayRectChangedListener displayRectChangedListener) {
        this.mDisplayRectChangedListener = displayRectChangedListener;
    }

    public void setOnAlphaChangedListener(OnAlphaChangedListener alphaChangedListener) {
        this.mAlphaChangedListener = alphaChangedListener;
    }

    public void setOnImageLoadFinishListener(OnImageLoadFinishListener imageLoadFinishListener) {
        this.mOnImageLoadFinishListener = imageLoadFinishListener;
    }

    public int getActiveItemCount() {
        return this.mViewPager.getActiveCount();
    }

    public PhotoPageItem getItemByNativeIndex(int index) {
        Object object = this.mViewPager.getItemByNativeIndex(index);
        if (PhotoPageAdapter.isItemValidate(object)) {
            return (PhotoPageItem) object;
        }
        return null;
    }

    public PhotoPageItem getItem(int position) {
        Object object = this.mViewPager.getItem(position);
        if (PhotoPageAdapter.isItemValidate(object)) {
            return (PhotoPageItem) object;
        }
        return null;
    }

    public PhotoPageItem getCurrentItem() {
        return getItem(this.mViewPager.getCurrentItem());
    }

    public void onStart() {
        PhotoPageItem currentItem = getCurrentItem();
        if (currentItem != null) {
            currentItem.onSelected(true);
        }
        int count = getActiveItemCount();
        for (int i = 0; i < count; i++) {
            PhotoPageItem item = getItemByNativeIndex(i);
            if (item != null) {
                item.onStopTrimMemory(2);
            }
        }
    }

    public void onStop() {
        PhotoPageItem currentItem = getCurrentItem();
        int count = getActiveItemCount();
        for (int i = 0; i < count; i++) {
            PhotoPageItem item = getItemByNativeIndex(i);
            if (!(item == null || currentItem == item)) {
                item.onTrimMemory(2);
            }
        }
        if (currentItem != null) {
            currentItem.onUnSelected(true);
        }
    }

    public void onResume() {
        int count = getActiveItemCount();
        for (int i = 0; i < count; i++) {
            PhotoPageItem item = getItemByNativeIndex(i);
            if (item != null) {
                item.onResume();
            }
        }
    }

    public void onPause() {
        int count = getActiveItemCount();
        for (int i = 0; i < count; i++) {
            PhotoPageItem item = getItemByNativeIndex(i);
            if (item != null) {
                item.onPause();
            }
        }
    }

    public void onActivityTransition() {
        int count = getActiveItemCount();
        for (int i = 0; i < count; i++) {
            PhotoPageItem item = getItemByNativeIndex(i);
            if (item != null) {
                item.onActivityTransition();
            }
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        PhotoPageItem item = getCurrentItem();
        if (item != null) {
            item.onActivityResult(requestCode, resultCode, data);
        }
    }

    public boolean doExitTransition(ItemViewInfo info, TransitionListener listener) {
        PhotoPageItem item = getCurrentItem();
        if (item == null) {
            return false;
        }
        item.animExit(info, listener);
        return true;
    }

    public void onActionBarVisibleChanged(boolean visible, int actionBarHeight) {
        PhotoPageItem item = getCurrentItem();
        if (item != null) {
            item.onActionBarVisibleChanged(Boolean.valueOf(visible), actionBarHeight);
        }
    }

    public RectF getCurItemDisplayRect() {
        PhotoPageItem item = getCurrentItem();
        if (item != null) {
            Drawable d = item.mPhotoView.getDrawable();
            if (d != null) {
                RectF rect = new RectF(0.0f, 0.0f, (float) d.getIntrinsicWidth(), (float) d.getIntrinsicHeight());
                item.mPhotoView.getAbsoluteRect(rect);
                return rect;
            }
        }
        return null;
    }
}
