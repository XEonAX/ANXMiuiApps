package com.miui.gallery.picker;

import android.content.res.Configuration;
import android.database.Cursor;
import android.view.View;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.picker.helper.AdapterHolder;
import com.miui.gallery.picker.helper.CursorUtils;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.picker.helper.PickerItemCheckedListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.MicroThumbGridItem;
import com.miui.gallery.util.ToastUtils;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class PickAlbumDetailFragmentBase extends PickerFragment {
    protected StickyGridHeadersGridView mAlbumDetailGridView;
    private String mPageName;
    protected SelectionHolder mSelections;
    private boolean mShouldContainUnique = true;

    public interface ItemStateListener {
        void onStateChanged();
    }

    protected class AlbumItemCheckListener extends PickerItemCheckedListener {
        public AlbumItemCheckListener(Picker picker) {
            super(picker);
        }

        public void onItemChecked(Cursor cursor, View view) {
            String sha1 = CursorUtils.getSha1(cursor);
            if (PickAlbumDetailFragmentBase.this.mPicker.contains(sha1)) {
                PickAlbumDetailFragmentBase.this.removeInternal(PickAlbumDetailFragmentBase.this.mPicker, sha1);
            } else if (PickAlbumDetailFragmentBase.this.mPicker.isFull()) {
                ToastUtils.makeText(view.getContext(), view.getContext().getString(R.string.picker_full_format, new Object[]{Integer.valueOf(PickAlbumDetailFragmentBase.this.mPicker.capacity())}));
            } else {
                PickAlbumDetailFragmentBase.this.pickInternal(PickAlbumDetailFragmentBase.this.mPicker, sha1);
            }
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(PickAlbumDetailFragmentBase.this.mPicker.contains(sha1));
            }
        }
    }

    static class SelectionHolder implements Iterable<String> {
        private AdapterHolder mAdapter;
        private ItemStateListener mItemStateListener;
        private ArrayList<String> mSelection = new ArrayList();

        public SelectionHolder(AdapterHolder adapter) {
            this.mAdapter = adapter;
        }

        public boolean add(String object) {
            boolean result = this.mSelection.add(object);
            updateState();
            return result;
        }

        public boolean remove(Object object) {
            boolean result = this.mSelection.remove(object);
            updateState();
            return result;
        }

        public void copyFrom(Picker picker) {
            this.mSelection.clear();
            Adapter adapter = this.mAdapter.get();
            for (int i = 0; i < adapter.getCount(); i++) {
                String sha1 = CursorUtils.getSha1((Cursor) adapter.getItem(i));
                if (picker.contains(sha1)) {
                    this.mSelection.add(sha1);
                }
            }
            updateState();
        }

        public void setItemStateListener(ItemStateListener itemStateListener) {
            this.mItemStateListener = itemStateListener;
        }

        public Iterator iterator() {
            return this.mSelection.iterator();
        }

        private void updateState() {
            if (this.mItemStateListener != null) {
                this.mItemStateListener.onStateChanged();
            }
        }

        boolean isAllSelected() {
            BaseAdapter baseAdapter = this.mAdapter.get();
            int selectionCount = this.mSelection.size();
            return selectionCount > 0 && baseAdapter != null && selectionCount == baseAdapter.getCount();
        }
    }

    public PickAlbumDetailFragmentBase(String pageName) {
        this.mPageName = pageName;
    }

    protected void intialSelections() {
        this.mSelections = new SelectionHolder(new AdapterHolder() {
            public BaseAdapter get() {
                return (BaseAdapter) PickAlbumDetailFragmentBase.this.mAlbumDetailGridView.getRealAdapter();
            }
        });
    }

    public void setSelectionCloudNotContainUnique() {
        this.mShouldContainUnique = false;
    }

    protected void copy2Pick() {
        this.mSelections.copyFrom(getPicker());
    }

    private void pickInternal(Picker picker, String sha1) {
        if (picker.pick(sha1) || !this.mShouldContainUnique) {
            this.mSelections.add(sha1);
        }
        BaseSamplingStatHelper.recordStringPropertyEvent("picker", "pick_event_page", this.mPageName);
    }

    private void removeInternal(Picker picker, String sha1) {
        if (picker.remove(sha1) || !this.mShouldContainUnique) {
            this.mSelections.remove(sha1);
        }
    }

    public void selectAll() {
        ListAdapter adapter = this.mAlbumDetailGridView.getRealAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                if (this.mPicker.isFull()) {
                    ToastUtils.makeText(getActivity(), getActivity().getString(R.string.picker_full_format, new Object[]{Integer.valueOf(this.mPicker.capacity())}));
                    break;
                }
                pickInternal(this.mPicker, CursorUtils.getSha1((Cursor) adapter.getItem(i)));
            }
            refreshPickState();
        }
    }

    public void clear() {
        ListAdapter adapter = this.mAlbumDetailGridView.getRealAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                removeInternal(this.mPicker, CursorUtils.getSha1((Cursor) adapter.getItem(i)));
                if (this.mPicker.count() <= 0) {
                    break;
                }
            }
            refreshPickState();
        }
    }

    private void refreshPickState() {
        int firstVisibleItem = this.mAlbumDetailGridView.getFirstVisiblePosition();
        for (int i = 0; i < this.mAlbumDetailGridView.getChildCount(); i++) {
            View v = this.mAlbumDetailGridView.getChildAt(i);
            if (v instanceof com.miui.gallery.ui.Checkable) {
                ((com.miui.gallery.ui.Checkable) v).setChecked(this.mPicker.contains(CursorUtils.getSha1((Cursor) this.mAlbumDetailGridView.getItemAtPosition(firstVisibleItem + i))));
            }
        }
    }

    public void setItemStateListener(ItemStateListener itemStateListener) {
        this.mSelections.setItemStateListener(itemStateListener);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        int firstVisibleItemPosition = this.mAlbumDetailGridView.getFirstVisiblePosition();
        if (newConfig.orientation == 2) {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsLand);
        } else {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsPortrait);
        }
        this.mAlbumDetailGridView.setSelection(firstVisibleItemPosition);
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        if (this.mPicker.getMode() != Mode.SINGLE) {
            return false;
        }
        this.mPicker.pick(CursorUtils.getSha1(cursor));
        ((PickAlbumDetailActivityBase) this.mActivity).setResultCode(-1);
        this.mPicker.done();
        return true;
    }

    protected void bindCheckState(View view, Cursor cursor) {
        if (this.mPicker.getMode() != Mode.SINGLE) {
            com.miui.gallery.ui.Checkable checkable = (com.miui.gallery.ui.Checkable) view;
            checkable.setCheckable(true);
            checkable.setChecked(this.mPicker.contains(CursorUtils.getSha1(cursor)));
        } else if (view instanceof MicroThumbGridItem) {
            ((MicroThumbGridItem) view).setSimilarMarkEnable(true);
        }
    }

    protected boolean isAllSelected() {
        return this.mSelections != null && this.mSelections.isAllSelected();
    }
}
