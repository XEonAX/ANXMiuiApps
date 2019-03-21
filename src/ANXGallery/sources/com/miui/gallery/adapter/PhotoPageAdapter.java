package com.miui.gallery.adapter;

import android.util.SparseLongArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.R;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.ProcessingMedia;
import com.miui.gallery.ui.PhotoPageFragmentBase.PhotoPageInteractionListener;
import com.miui.gallery.ui.PhotoPageItem;
import com.miui.gallery.ui.PhotoPageItem.OnImageLoadFinishListener;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.PhotoPageDataCache;
import com.miui.gallery.widget.PagerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class PhotoPageAdapter extends PagerAdapter implements OnImageLoadFinishListener, TransitionListener {
    private boolean isPreviewing;
    private LinkedList<WeakReference<PhotoPageItem>>[] mCachedViews;
    private Source mCheckSource = new Source() {
        public int getItemPos(long key, int possiblePos) {
            return PhotoPageAdapter.this.mDataSet != null ? PhotoPageAdapter.this.mDataSet.getIndexOfItem(new BaseDataItem().setKey(key), possiblePos) : -1;
        }

        public long getItemKey(int position) {
            return PhotoPageAdapter.this.mDataSet != null ? PhotoPageAdapter.this.mDataSet.getItemKey(position) : -1;
        }

        public int getCount() {
            return PhotoPageAdapter.this.getCount();
        }

        public void notifyCheckState() {
            PhotoPageAdapter.this.notifyDataSetChanged();
        }
    };
    private ChoiceMode mChoiceMode;
    private BaseDataSet mDataSet;
    private int mInitCount;
    private PhotoPageInteractionListener mPhotoPageInteractionListener;
    private ImageLoadParams mPreviewCache;
    private OnPreviewedListener mPreviewedListener;
    private WeakReference<PhotoPageItem> mPreviewingItem;
    private Map<String, ProcessingMedia> mProcessingMediaMap;
    private ItemViewInfo mTransitInfo;

    private static class CheckState {
        private SparseLongArray mSelectedIds;
        private Source mSource;

        public interface Source {
            int getCount();

            long getItemKey(int i);

            int getItemPos(long j, int i);

            void notifyCheckState();
        }

        public CheckState(Source source) {
            this.mSource = source;
            this.mSelectedIds = new SparseLongArray(source.getCount());
        }

        public void setChecked(int position, long id, boolean checked) {
            if (checked) {
                this.mSelectedIds.put(position, id);
            } else {
                this.mSelectedIds.delete(position);
            }
        }

        public void appendCheck(int position, long id) {
            this.mSelectedIds.append(position, id);
        }

        public boolean isCheckedId(long id) {
            return this.mSelectedIds.indexOfValue(id) > -1;
        }

        public void notifyDataChanged() {
            int count = this.mSelectedIds.size();
            if (count > 0) {
                SparseLongArray temp = new SparseLongArray(count);
                for (int i = 0; i < count; i++) {
                    long id = this.mSelectedIds.valueAt(i);
                    int newPos = this.mSource.getItemPos(id, this.mSelectedIds.keyAt(i));
                    if (newPos > -1) {
                        temp.put(newPos, id);
                    }
                }
                this.mSelectedIds = temp;
            }
        }

        public List<Integer> getSelectedPositions() {
            int size = this.mSelectedIds.size();
            List<Integer> pos = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                pos.add(Integer.valueOf(this.mSelectedIds.keyAt(i)));
            }
            return pos;
        }
    }

    public interface ChoiceModeInterface {
        boolean isChecked(long j);

        void onItemCheckedChanged(int i, long j, boolean z);

        void setChecked(int i, long j, boolean z);
    }

    public static class ChoiceMode {
        private MultiChoiceModeListener mChoiceModeListener;
        private boolean mInAction = false;
        private CheckState mOriginCheck;
        private ChoiceModeInterface mOriginInterface;
        private ChoiceModeInterface mRenderInterface;
        private CheckState mRenderState;
        private CheckState mSelectCheck;
        private ChoiceModeInterface mSelectInterface;
        private Source mSource;

        ChoiceMode(Source checkSource, MultiChoiceModeListener listener) {
            this.mOriginCheck = new CheckState(checkSource);
            this.mSelectCheck = new CheckState(checkSource);
            this.mRenderState = new CheckState(checkSource);
            this.mSource = checkSource;
            this.mChoiceModeListener = listener;
            this.mInAction = true;
        }

        public void notifyDataChanged() {
            this.mOriginCheck.notifyDataChanged();
            this.mSelectCheck.notifyDataChanged();
            this.mRenderState.notifyDataChanged();
        }

        protected ChoiceModeInterface getOriginIInstance() {
            if (this.mOriginInterface == null) {
                this.mOriginInterface = new ChoiceModeInterface() {
                    public void onItemCheckedChanged(int position, long id, boolean checked) {
                        if (checked) {
                            ChoiceMode.this.mSelectCheck.setChecked(position, id, checked);
                        }
                        int count = ChoiceMode.this.mSource.getCount();
                        for (int i = 0; i < count; i++) {
                            ChoiceMode.this.mOriginCheck.setChecked(i, ChoiceMode.this.mSource.getItemKey(i), checked);
                        }
                        ChoiceMode.this.mSource.notifyCheckState();
                        if (ChoiceMode.this.mChoiceModeListener != null) {
                            ChoiceMode.this.mChoiceModeListener.onItemCheckedStateChanged(position, id, checked);
                        }
                    }

                    public void setChecked(int position, long id, boolean checked) {
                        ChoiceMode.this.mOriginCheck.setChecked(position, id, checked);
                    }

                    public boolean isChecked(long id) {
                        return ChoiceMode.this.mOriginCheck.isCheckedId(id);
                    }
                };
            }
            return this.mOriginInterface;
        }

        protected ChoiceModeInterface getSelectIInstance() {
            if (this.mSelectInterface == null) {
                this.mSelectInterface = new ChoiceModeInterface() {
                    public void onItemCheckedChanged(int position, long id, boolean checked) {
                        ChoiceMode.this.mSelectCheck.setChecked(position, id, checked);
                        if (ChoiceMode.this.mChoiceModeListener != null) {
                            ChoiceMode.this.mChoiceModeListener.onItemCheckedStateChanged(position, id, checked);
                        }
                    }

                    public void setChecked(int position, long id, boolean checked) {
                        ChoiceMode.this.mSelectCheck.setChecked(position, id, checked);
                    }

                    public boolean isChecked(long id) {
                        return ChoiceMode.this.mSelectCheck.isCheckedId(id);
                    }
                };
            }
            return this.mSelectInterface;
        }

        protected ChoiceModeInterface getRenderIInstance() {
            if (this.mRenderInterface == null) {
                this.mRenderInterface = new ChoiceModeInterface() {
                    public void onItemCheckedChanged(int position, long id, boolean checked) {
                        ChoiceMode.this.mRenderState.setChecked(position, id, checked);
                    }

                    public void setChecked(int position, long id, boolean checked) {
                        ChoiceMode.this.mRenderState.setChecked(position, id, checked);
                    }

                    public boolean isChecked(long id) {
                        return ChoiceMode.this.mRenderState.isCheckedId(id);
                    }
                };
            }
            return this.mRenderInterface;
        }

        public List<Integer> getOriginItems() {
            return this.mOriginCheck.getSelectedPositions();
        }

        public List<Integer> getSelectItems() {
            return this.mSelectCheck.getSelectedPositions();
        }

        public List<Integer> getRenderItems() {
            return this.mRenderState.getSelectedPositions();
        }

        private boolean isInAction() {
            return this.mInAction;
        }

        void startAction() {
            this.mInAction = true;
            this.mSource.notifyCheckState();
        }

        public void chooseAll() {
            refreshAllState(true);
            if (this.mChoiceModeListener != null) {
                this.mChoiceModeListener.onAllItemsCheckedStateChanged(true);
            }
        }

        public void unChooseAll() {
            refreshAllState(false);
            if (this.mChoiceModeListener != null) {
                this.mChoiceModeListener.onAllItemsCheckedStateChanged(true);
            }
        }

        private void refreshAllState(boolean checked) {
            int count = this.mSource.getCount();
            for (int i = 0; i < count; i++) {
                long id = this.mSource.getItemKey(i);
                this.mSelectCheck.setChecked(i, id, checked);
                if (!checked) {
                    this.mOriginCheck.setChecked(i, id, checked);
                    this.mRenderState.setChecked(i, id, checked);
                }
            }
            this.mSource.notifyCheckState();
        }

        public int getCount() {
            return this.mSource.getCount();
        }

        public void setChecked(int position, long id, boolean checked) {
            this.mSelectCheck.setChecked(position, id, checked);
            this.mSource.notifyCheckState();
            if (this.mChoiceModeListener != null) {
                this.mChoiceModeListener.onItemCheckedStateChanged(position, id, checked);
            }
        }

        public void setRenderChecked(int position, long id, boolean checked) {
            this.mRenderState.setChecked(position, id, checked);
        }

        public void appendCheck(int position, long id) {
            this.mSelectCheck.appendCheck(position, id);
        }

        public void finishInit() {
            this.mSource.notifyCheckState();
            if (this.mChoiceModeListener != null) {
                this.mChoiceModeListener.onItemCheckedStateChanged(0, this.mSource.getItemKey(0), true);
            }
        }

        public void finish() {
            this.mInAction = false;
            this.mSource.notifyCheckState();
        }
    }

    public interface MultiChoiceModeListener {
        void onAllItemsCheckedStateChanged(boolean z);

        void onItemCheckedStateChanged(int i, long j, boolean z);
    }

    public interface OnPreviewedListener {
        void onPreviewed();
    }

    public static class PlaceHolderItem {
    }

    public PhotoPageAdapter(int initCount, ImageLoadParams previewCache, ItemViewInfo transitInfo, OnPreviewedListener previewListener, PhotoPageInteractionListener interactionListener) {
        this.mInitCount = initCount;
        this.mPreviewCache = previewCache;
        this.mTransitInfo = transitInfo;
        int viewTypeCount = getViewTypeCount();
        this.mCachedViews = new LinkedList[viewTypeCount];
        for (int i = 0; i < viewTypeCount; i++) {
            this.mCachedViews[i] = new LinkedList();
        }
        this.mPreviewedListener = previewListener;
        this.mPhotoPageInteractionListener = interactionListener;
        if (this.mPreviewCache != null) {
            this.isPreviewing = true;
        }
    }

    public void changeDataSet(BaseDataSet dataSet) {
        changeDataSet(dataSet, false);
    }

    public void changeDataSet(BaseDataSet dataSet, boolean immediate) {
        Log.d("PhotoPageAdapter", "change dataset [%s] to [%s], ignoreDelayNotify %s", this.mDataSet, dataSet, Boolean.valueOf(immediate));
        if (this.isPreviewing && immediate) {
            clearPreviewParams();
            notifyPreviewedCallback();
        }
        this.mDataSet = dataSet;
        boolean notifyChanged = true;
        if (this.isPreviewing) {
            PhotoPageItem item = this.mPreviewingItem != null ? (PhotoPageItem) this.mPreviewingItem.get() : null;
            if (item != null) {
                refreshItem(item, this.mPreviewCache.getPos());
                notifyChanged = false;
            }
        }
        if (notifyChanged) {
            notifyDataSetChanged();
        }
        if (this.mChoiceMode != null) {
            this.mChoiceMode.notifyDataChanged();
        }
    }

    public void setProcessingMedias(Map<String, ProcessingMedia> data) {
        this.mProcessingMediaMap = data;
    }

    private void clearPreviewParams() {
        this.isPreviewing = false;
        if (this.mPreviewingItem != null) {
            this.mPreviewingItem.clear();
            this.mPreviewingItem = null;
        }
    }

    public BaseDataSet getDataSet() {
        return this.mDataSet;
    }

    private int getViewTypeCount() {
        return 4;
    }

    private int getViewType(int position) {
        BaseDataItem item = getDataItem(position);
        if (this.isPreviewing) {
            if (this.mPreviewCache.match(item, position)) {
                if (this.mPreviewCache.isGif()) {
                    return 1;
                }
                if (this.mPreviewCache.isVideo()) {
                    return 2;
                }
                if (this.mPreviewCache.isFromFace()) {
                    return 3;
                }
                return 0;
            }
        } else if (item != null) {
            if (item.isGif()) {
                return 1;
            }
            if (item.isVideo()) {
                return 2;
            }
            if (item.hasFace()) {
                return 3;
            }
            return 0;
        }
        return -1;
    }

    private int getLayoutId(int type) {
        switch (type) {
            case 0:
                return R.layout.photo_page_image_item;
            case 1:
                return R.layout.photo_page_gif_item;
            case 2:
                return R.layout.photo_page_video_item;
            case 3:
                return R.layout.photo_page_face_item;
            default:
                return 0;
        }
    }

    public BaseDataItem getDataItem(int position) {
        if (this.mDataSet == null || position < 0 || position >= this.mDataSet.getCount()) {
            return null;
        }
        return this.mDataSet.getItem(null, position);
    }

    public boolean isPreviewing() {
        return this.isPreviewing;
    }

    public int getCount() {
        if (this.isPreviewing || this.mDataSet == null) {
            return this.mInitCount;
        }
        return this.mDataSet.getCount();
    }

    private void startOrFinishItemActionMode(PhotoPageItem item) {
        if (this.mChoiceMode == null || !this.mChoiceMode.isInAction()) {
            item.finishActionMode();
        } else {
            item.startActionMode(this.mChoiceMode.getOriginIInstance(), this.mChoiceMode.getSelectIInstance(), this.mChoiceMode.getRenderIInstance());
        }
    }

    public Object instantiateItem(ViewGroup container, int position) {
        int type = getViewType(position);
        if (type == -1) {
            return new PlaceHolderItem();
        }
        Log.d("PhotoPageAdapter", "instantiateItem %d", Integer.valueOf(position));
        Object viewItem = getPageItem(type, container);
        bindData(viewItem, position);
        viewItem.setTag(R.id.tag_view_type, Integer.valueOf(type));
        container.addView(viewItem, -1, -1);
        viewItem.setPhotoPageCallback(this.mPhotoPageInteractionListener);
        startOrFinishItemActionMode(viewItem);
        return viewItem;
    }

    public void refreshItem(Object object, int position) {
        if (isItemValidate(object)) {
            Log.d("PhotoPageAdapter", "refreshItem %d", Integer.valueOf(position));
            PhotoPageItem viewItem = (PhotoPageItem) object;
            bindData(viewItem, position);
            startOrFinishItemActionMode(viewItem);
        }
    }

    public void onTransitEnd() {
        Log.i("PhotoPageAdapter", "onTransitEnd");
        onPreviewedEnd();
    }

    public void onImageLoadFinish(boolean cancelled, String uri) {
        if (!needTransit()) {
            onPreviewedEnd();
        }
    }

    private void onPreviewedEnd() {
        if (this.isPreviewing) {
            notifyPreviewedCallback();
            clearPreviewParams();
            if (this.mDataSet != null) {
                notifyDataSetChanged();
            }
        }
    }

    private void notifyPreviewedCallback() {
        if (this.mPreviewedListener != null) {
            Log.i("PhotoPageAdapter", "notifyPreviewedCallback");
            this.mPreviewedListener.onPreviewed();
            this.mPreviewedListener = null;
        }
    }

    private boolean needTransit() {
        return this.mTransitInfo != null && this.mTransitInfo.isLocationValid();
    }

    private void bindData(PhotoPageItem viewItem, int position) {
        ProcessingMedia processingMedia = null;
        viewItem.setTag(R.id.tag_item_position, Integer.valueOf(position));
        if (this.isPreviewing) {
            if (this.mPreviewCache.match(null, position)) {
                if (this.mPreviewingItem == null) {
                    this.mPreviewingItem = new WeakReference(viewItem);
                }
                if (viewItem.getCacheItem() == null) {
                    viewItem.setCacheItem(this.mPreviewCache, this);
                    if (needTransit()) {
                        viewItem.animEnter(this.mTransitInfo, this);
                    }
                }
                if (this.mDataSet != null && viewItem.getDataItem() == null) {
                    BaseDataItem item = getDataItem(this.mDataSet.getIndexOfItem(new BaseDataItem().setKey(this.mPreviewCache.getKey()), this.mPreviewCache.getPos()));
                    if (item != null) {
                        if (this.mProcessingMediaMap != null) {
                            processingMedia = (ProcessingMedia) this.mProcessingMediaMap.get(item.getOriginalPath());
                        }
                        viewItem.setProcessingMedia(processingMedia);
                        viewItem.swapItem(item);
                    }
                }
            }
        } else if (this.mDataSet != null) {
            ProcessingMedia newProcessingMedia;
            BaseDataItem dataItem = getDataItem(position);
            ProcessingMedia oldProcessingMedia = viewItem.getProcessingMedia();
            if (this.mProcessingMediaMap == null || dataItem == null) {
                newProcessingMedia = null;
            } else {
                newProcessingMedia = (ProcessingMedia) this.mProcessingMediaMap.get(dataItem.getOriginalPath());
            }
            viewItem.setProcessingMedia(newProcessingMedia);
            if (this.mPreviewCache != null && this.mPreviewCache.match(dataItem, position)) {
                viewItem.loadCacheImage(this.mPreviewCache);
            }
            BaseDataItem oldItem = viewItem.getDataItem();
            if (oldItem == null || oldItem.isModified(dataItem) || isProcessingStatusChanged(oldProcessingMedia, newProcessingMedia)) {
                viewItem.swapItem(dataItem);
            }
            if (this.mPreviewCache == null) {
                notifyPreviewedCallback();
            }
        }
    }

    private boolean isProcessingStatusChanged(ProcessingMedia oldProcessingMedia, ProcessingMedia newProcessingMedia) {
        return (oldProcessingMedia != null && newProcessingMedia == null) || (newProcessingMedia != null && oldProcessingMedia == null);
    }

    private PhotoPageItem getPageItem(int type, ViewGroup container) {
        if (this.mCachedViews[type].size() > 0) {
            WeakReference<PhotoPageItem> item = (WeakReference) this.mCachedViews[type].removeFirst();
            if (item != null) {
                PhotoPageItem view = (PhotoPageItem) item.get();
                if (view != null) {
                    Log.d("PhotoPageAdapter", "instantiateItem reuse photoview");
                    return view;
                }
            }
        }
        if (isPreviewing()) {
            View view2 = PhotoPageDataCache.getInstance().getCacheItem();
            if (view2 != null) {
                Log.d("PhotoPageAdapter", "cache item");
                return (PhotoPageItem) view2;
            }
        }
        Log.d("PhotoPageAdapter", "instantiateItem new photoview");
        return (PhotoPageItem) LayoutInflater.from(container.getContext()).inflate(getLayoutId(type), container, false);
    }

    public void destroyItem(ViewGroup container, int position, Object object) {
        if (isItemValidate(object)) {
            Log.d("PhotoPageAdapter", "destroyItem %d", Integer.valueOf(position));
            PhotoPageItem obj = (PhotoPageItem) object;
            container.removeView(obj);
            this.mCachedViews[((Integer) obj.getTag(R.id.tag_view_type)).intValue()].add(new WeakReference(obj));
            obj.setPhotoPageCallback(null);
        }
    }

    public int getSlipWidth(int slipHeight, int position) {
        BaseDataItem item = getDataItem(position);
        if (item != null && item.getWidth() > 0 && item.getHeight() > 0) {
            float slideWidth = ((1.0f * ((float) item.getWidth())) * ((float) slipHeight)) / ((float) item.getHeight());
            if (slideWidth > getMinSlideWidth()) {
                return (int) slideWidth;
            }
        }
        return super.getSlipWidth(slipHeight, position);
    }

    public static float getMinSlideWidth() {
        return ((float) ScreenConfig.getScreenWidth()) * 0.5f;
    }

    public static float getMinSlideHeight() {
        return ((float) ScreenConfig.getScreenHeight()) * 0.2f;
    }

    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    public int getItemPosition(Object object, int position) {
        if (this.isPreviewing) {
            if (isItemValidate(object)) {
                return -3;
            }
            return -1;
        } else if (this.mDataSet == null) {
            return -1;
        } else {
            if (position < 0 || position >= this.mDataSet.getCount()) {
                return -2;
            }
            if (isTypeMatch(object, position)) {
                return -3;
            }
            return -2;
        }
    }

    private boolean isTypeMatch(Object object, int position) {
        if (!isItemValidate(object)) {
            return false;
        }
        Integer type = (Integer) ((PhotoPageItem) object).getTag(R.id.tag_view_type);
        BaseDataItem curDataItem = getDataItem(position);
        if (curDataItem == null) {
            return false;
        }
        if ((!curDataItem.isVideo() || type.intValue() != 2) && ((!curDataItem.isGif() || type.intValue() != 1) && ((!curDataItem.hasFace() || type.intValue() != 3) && (curDataItem.isVideo() || curDataItem.isGif() || curDataItem.hasFace() || type.intValue() != 0)))) {
            return false;
        }
        return true;
    }

    public static boolean isItemValidate(Object item) {
        return item != null && (item instanceof PhotoPageItem);
    }

    public ChoiceMode startActionMode(MultiChoiceModeListener listener) {
        if (this.mChoiceMode == null) {
            this.mChoiceMode = new ChoiceMode(this.mCheckSource, listener);
        }
        this.mChoiceMode.startAction();
        return this.mChoiceMode;
    }
}
