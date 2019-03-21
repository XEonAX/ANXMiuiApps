package com.miui.gallery.util.photoview;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class PhotoPageDataCache {
    private static PhotoPageDataCache sInstance = null;
    private List<ItemViewInfo> mAppointedInfos;
    private Bundle mArguments;
    private SoftReference<View> mCacheItem;
    private WeakReference<ViewGroup> mItemViewParent;
    private SoftReference<View> mPageLayout;
    private long mPairKey;

    private PhotoPageDataCache() {
    }

    public static PhotoPageDataCache getInstance() {
        if (sInstance == null) {
            sInstance = new PhotoPageDataCache();
        }
        return sInstance;
    }

    public void setArguments(Bundle bundle) {
        Log.d("PhotoPageDataCache", "setArguments %s", (Object) bundle);
        this.mPairKey++;
        this.mArguments = bundle;
    }

    public Bundle getArguments() {
        return this.mArguments;
    }

    public void setItemViewParent(ViewGroup parent) {
        if (parent != null) {
            this.mItemViewParent = new WeakReference(parent);
        }
    }

    private ViewGroup getViewParent() {
        return this.mItemViewParent != null ? (ViewGroup) this.mItemViewParent.get() : null;
    }

    public ItemViewInfo getItemViewInfo(int tarPos) {
        ItemViewInfo info;
        ViewGroup parent = getViewParent();
        if (parent != null) {
            int minPos = Integer.MAX_VALUE;
            int maxPos = Integer.MIN_VALUE;
            View minPosChild = null;
            View maxPosChild = null;
            int childCount = parent.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View item = parent.getChildAt(i);
                Object itemPos = item.getTag(R.id.tag_item_position);
                if (itemPos != null) {
                    int position = ((Integer) itemPos).intValue();
                    if (position == tarPos) {
                        return ItemViewInfo.getImageInfo(item, Integer.valueOf(tarPos).intValue());
                    }
                    if (position < minPos) {
                        minPos = position;
                        minPosChild = item;
                    }
                    if (position > maxPos) {
                        maxPos = position;
                        maxPosChild = item;
                    }
                }
            }
            if (minPosChild != null && tarPos < minPos) {
                info = ItemViewInfo.getImageInfo(minPosChild, minPos);
                return new ItemViewInfo(tarPos, info.getX(), info.getY() - info.getHeight(), info.getWidth(), info.getHeight());
            } else if (maxPosChild != null && tarPos > maxPos) {
                info = ItemViewInfo.getImageInfo(maxPosChild, minPos);
                return new ItemViewInfo(tarPos, info.getX(), info.getHeight() + info.getY(), info.getWidth(), info.getHeight());
            }
        }
        if (this.mAppointedInfos != null) {
            for (ItemViewInfo info2 : this.mAppointedInfos) {
                if (info2.getPosition() == tarPos) {
                    return info2;
                }
            }
        }
        return null;
    }

    private ArrayList<ItemViewInfo> getAllItemInfos() {
        ViewGroup parent = getViewParent();
        ArrayList<ItemViewInfo> infos = new ArrayList();
        if (parent != null) {
            int childCount = parent.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View item = parent.getChildAt(i);
                Object itemPos = item.getTag(R.id.tag_item_position);
                if (itemPos != null) {
                    infos.add(ItemViewInfo.getImageInfo(item, ((Integer) itemPos).intValue()));
                }
            }
        } else if (this.mAppointedInfos != null) {
            infos.addAll(this.mAppointedInfos);
        }
        return infos;
    }

    public void saveInstance(Bundle outState) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.putBoolean("photo_enter_transit", false);
            outState.putBundle("key_save_arguments", getArguments());
        }
        outState.putParcelableArrayList("key_save_iteminfos", getAllItemInfos());
    }

    public void restoreInstance(Bundle savedInstance) {
        setArguments(savedInstance.getBundle("key_save_arguments"));
        setAppointedItemViewInfos(savedInstance.getParcelableArrayList("key_save_iteminfos"));
    }

    public void setAppointedItemViewInfos(List<ItemViewInfo> infos) {
        this.mAppointedInfos = infos;
    }

    public View getCacheItem() {
        Object item = null;
        if (this.mCacheItem != null) {
            item = (View) this.mCacheItem.get();
            this.mCacheItem.clear();
            this.mCacheItem = null;
        }
        Log.d("PhotoPageDataCache", "cache item %s", item);
        return item;
    }

    public View getPageLayout() {
        Object item = null;
        if (this.mPageLayout != null) {
            item = (View) this.mPageLayout.get();
            this.mPageLayout.clear();
            this.mPageLayout = null;
        }
        Log.d("PhotoPageDataCache", "page layout %s", item);
        return item;
    }

    public void clear() {
        long j = this.mPairKey - 1;
        this.mPairKey = j;
        if (j == 0) {
            Log.d("PhotoPageDataCache", "clear");
            this.mArguments = null;
            this.mAppointedInfos = null;
            if (this.mItemViewParent != null) {
                this.mItemViewParent.clear();
                this.mItemViewParent = null;
            }
            if (this.mCacheItem != null) {
                this.mCacheItem.clear();
                this.mCacheItem = null;
            }
            if (this.mPageLayout != null) {
                this.mPageLayout.clear();
                this.mPageLayout = null;
            }
        }
    }

    public static void preLoad(Context context, ImageLoadParams params) {
        if (params != null) {
            DisplayImageOptions build;
            Builder builder = new Builder();
            builder.cloneFrom(params.getDisplayImageOptions());
            String uri = params.getPath();
            if (Scheme.ofUri(uri) == Scheme.UNKNOWN) {
                uri = Scheme.FILE.wrap(params.getPath());
            }
            ImageLoader.getInstance().resume();
            ImageLoader instance = ImageLoader.getInstance();
            ImageSize targetSize = params.getTargetSize();
            if (params.isSecret()) {
                build = builder.secretKey(params.getSecretKey()).build();
            } else {
                build = builder.build();
            }
            instance.loadImage(uri, targetSize, build, null, null, params.getRegionRectF());
        }
    }

    public boolean isItemVisible(int position) {
        ViewGroup parent = getViewParent();
        if (parent != null) {
            int childCount = parent.getChildCount();
            for (int i = 0; i < childCount; i++) {
                Object itemPos = parent.getChildAt(i).getTag(R.id.tag_item_position);
                if (itemPos != null && position == ((Integer) itemPos).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean viewToPosition(int position) {
        ViewGroup parent = getViewParent();
        if (parent == null || !(parent instanceof ScrollableView)) {
            return false;
        }
        ((ScrollableView) parent).viewToPosition(position);
        return true;
    }

    public String getString(String key, String defaultValue) {
        return this.mArguments != null ? this.mArguments.getString(key, defaultValue) : null;
    }
}
