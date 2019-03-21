package com.miui.gallery.widget.recyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.util.photoview.ScrollableView;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemLongClickListener;
import java.util.LinkedList;
import java.util.List;

public class GalleryRecyclerView extends RecyclerView implements ScrollableView, OnItemLongClickListener {
    private boolean isHideViewCalled;
    private ContextMenuInfo mContextMenuInfo;
    protected FastScroller mCustomFastScroller;
    private View mEmptyView;
    private boolean mEnableCustomFastScroller;
    private int mFastScrollStyle;
    protected ItemClickSupport mItemClickSupport;
    private final RecyclerViewDataObserver mObserver;
    private OnItemLongClickListener mOnItemLongClickListener;
    private List<OnItemTouchListener> mOnItemTouchListeners;

    public static class RecyclerContextMenuInfo implements ContextMenuInfo {
        public int position;

        public RecyclerContextMenuInfo(int position) {
            setValues(position);
        }

        public void setValues(int position) {
            this.position = position;
        }
    }

    private class RecyclerViewDataObserver extends AdapterDataObserver {
        private RecyclerViewDataObserver() {
        }

        public void onChanged() {
            super.onChanged();
            GalleryRecyclerView.this.updateEmptyStatus();
        }

        public void onItemRangeChanged(int positionStart, int itemCount) {
            super.onItemRangeChanged(positionStart, itemCount);
            GalleryRecyclerView.this.updateEmptyStatus();
        }

        public void onItemRangeChanged(int positionStart, int itemCount, Object payload) {
            super.onItemRangeChanged(positionStart, itemCount, payload);
            GalleryRecyclerView.this.updateEmptyStatus();
        }

        public void onItemRangeInserted(int positionStart, int itemCount) {
            super.onItemRangeInserted(positionStart, itemCount);
            GalleryRecyclerView.this.updateEmptyStatus();
        }

        public void onItemRangeRemoved(int positionStart, int itemCount) {
            super.onItemRangeRemoved(positionStart, itemCount);
            GalleryRecyclerView.this.updateEmptyStatus();
        }

        public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
            super.onItemRangeMoved(fromPosition, toPosition, itemCount);
            GalleryRecyclerView.this.updateEmptyStatus();
        }
    }

    public GalleryRecyclerView(Context context) {
        this(context, null);
    }

    public GalleryRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public GalleryRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mContextMenuInfo = null;
        this.mOnItemTouchListeners = new LinkedList();
        this.isHideViewCalled = false;
        this.mObserver = new RecyclerViewDataObserver();
        if (attrs != null) {
            TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.RecyclerView, defStyle, 0);
            this.mEnableCustomFastScroller = a.getBoolean(12, false);
            this.mFastScrollStyle = a.getResourceId(11, 0);
            a.recycle();
        }
        initItemClick();
    }

    protected void initItemClick() {
        this.mItemClickSupport = ItemClickSupport.addTo(this);
        this.mItemClickSupport.setOnItemLongClickListener(this);
    }

    public void setFastScrollStyle(int styleResId) {
        if (this.mCustomFastScroller == null) {
            this.mFastScrollStyle = styleResId;
        } else {
            this.mCustomFastScroller.setStyle(styleResId);
        }
    }

    public void setFastScrollEnabled(boolean enabled) {
        if (this.mEnableCustomFastScroller != enabled) {
            this.mEnableCustomFastScroller = enabled;
            if (enabled) {
                if (this.mCustomFastScroller == null) {
                    this.mCustomFastScroller = new FastScroller(this);
                    this.mCustomFastScroller.setStyle(this.mFastScrollStyle);
                }
                this.mCustomFastScroller.attach();
            } else if (this.mCustomFastScroller != null) {
                this.mCustomFastScroller.detach();
            }
        }
    }

    public void addItemDecoration(ItemDecoration decor, int index) {
        super.addItemDecoration(decor, index);
        if (this.mCustomFastScroller != null) {
            bringFastScrollerToFront();
        }
    }

    private void bringFastScrollerToFront() {
        removeItemDecoration(this.mCustomFastScroller);
        super.addItemDecoration(this.mCustomFastScroller, -1);
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mItemClickSupport.setOnItemClickListener(listener);
    }

    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        this.mOnItemLongClickListener = listener;
    }

    public void addOnItemTouchListener(OnItemTouchListener listener) {
        super.addOnItemTouchListener(listener);
        this.mOnItemTouchListeners.add(listener);
    }

    public void removeOnItemTouchListener(OnItemTouchListener listener) {
        super.removeOnItemTouchListener(listener);
        this.mOnItemTouchListeners.remove(listener);
    }

    OnItemTouchListener getItemTouchListenerAt(int index) {
        int size = this.mOnItemTouchListeners.size();
        if (index > -1 && index < size) {
            return (OnItemTouchListener) this.mOnItemTouchListeners.get(index);
        }
        throw new IndexOutOfBoundsException(index + " is an invalid index for size " + size);
    }

    int getItemTouchListenerCount() {
        return this.mOnItemTouchListeners.size();
    }

    protected ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    private boolean openContextMenu(int position) {
        if (position >= 0) {
            createContextMenuInfo(position);
        }
        return showContextMenu();
    }

    protected void createContextMenuInfo(int position) {
        if (this.mContextMenuInfo == null) {
            this.mContextMenuInfo = new RecyclerContextMenuInfo(position);
        } else {
            ((RecyclerContextMenuInfo) this.mContextMenuInfo).setValues(position);
        }
    }

    public boolean onItemLongClick(RecyclerView parent, View view, int position, long id) {
        boolean handled = false;
        if (this.mOnItemLongClickListener != null) {
            handled = this.mOnItemLongClickListener.onItemLongClick(parent, view, position, id);
        }
        return handled || openContextMenu(position);
    }

    public ViewHolder findViewHolderForAdapterPositionForExternal(int position) {
        return findViewHolderForAdapterPosition(position);
    }

    public View findChildViewUnderForExternal(float x, float y) {
        return findChildViewUnder(x, y);
    }

    public int getChildAdapterPositionForExternal(View child) {
        return getChildAdapterPosition(child);
    }

    public void setAdapter(Adapter adapter) {
        setAdapterInternal(adapter, false, true);
    }

    public void swapAdapter(Adapter adapter, boolean removeAndRecycleExistingViews) {
        setAdapterInternal(adapter, true, removeAndRecycleExistingViews);
    }

    private void setAdapterInternal(Adapter adapter, boolean compatibleWithPrevious, boolean removeAndRecycleViews) {
        Adapter oldAdapter = getAdapter();
        if (oldAdapter != null) {
            oldAdapter.unregisterAdapterDataObserver(this.mObserver);
        }
        adapter.registerAdapterDataObserver(this.mObserver);
        if (compatibleWithPrevious) {
            super.swapAdapter(adapter, removeAndRecycleViews);
        } else {
            super.setAdapter(adapter);
        }
        updateEmptyStatus();
    }

    public void setEmptyView(View emptyView) {
        this.mEmptyView = emptyView;
        if (emptyView != null && emptyView.getImportantForAccessibility() == 0) {
            emptyView.setImportantForAccessibility(1);
        }
        updateEmptyStatus();
    }

    public void setVisibility(int visibility) {
        this.isHideViewCalled = visibility != 0;
        super.setVisibility(visibility);
    }

    private void updateEmptyStatus() {
        boolean empty;
        Adapter adapter = getAdapter();
        if (adapter == null || adapter.getItemCount() == 0) {
            empty = true;
        } else {
            empty = false;
        }
        if (!empty) {
            if (this.mEmptyView != null) {
                this.mEmptyView.setVisibility(8);
            }
            if (!this.isHideViewCalled) {
                super.setVisibility(0);
            }
        } else if (this.mEmptyView != null) {
            this.mEmptyView.setVisibility(0);
            super.setVisibility(8);
        } else if (!this.isHideViewCalled) {
            super.setVisibility(0);
        }
    }

    public void scrollToPosition(int position) {
        super.scrollToPosition(position);
    }

    public void scrollToPositionWithOffset(int position, int offset) {
        LayoutManager layout = getLayoutManager();
        if (layout == null || !(layout instanceof LinearLayoutManager)) {
            scrollToPosition(position);
        } else {
            ((LinearLayoutManager) layout).scrollToPositionWithOffset(position, offset);
        }
    }

    public void viewToPosition(int position) {
        scrollToPositionWithOffset(position, getHeight() / 2);
    }
}
