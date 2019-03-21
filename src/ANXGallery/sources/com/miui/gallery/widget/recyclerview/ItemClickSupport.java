package com.miui.gallery.widget.recyclerview;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.miui.gallery.R;

public class ItemClickSupport {
    private OnItemClickListener mItemClickListener;
    private OnItemLongClickListener mItemLongClickListener;
    private final RecyclerView mRecyclerView;
    private final TouchListener mTouchListener;

    public interface OnItemClickListener {
        boolean onItemClick(RecyclerView recyclerView, View view, int i, long j, float f, float f2);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(RecyclerView recyclerView, View view, int i, long j);
    }

    private class TouchListener extends ClickItemTouchListener {
        TouchListener(RecyclerView recyclerView) {
            super(recyclerView);
        }

        boolean performItemClick(RecyclerView parent, View view, int position, long id, float x, float y) {
            if (ItemClickSupport.this.mItemClickListener == null) {
                return false;
            }
            boolean handled = ItemClickSupport.this.mItemClickListener.onItemClick(parent, view, position, id, x, y);
            if (!handled) {
                return handled;
            }
            view.playSoundEffect(0);
            return handled;
        }

        boolean performItemLongClick(RecyclerView parent, View view, int position, long id, float x, float y) {
            if (ItemClickSupport.this.mItemLongClickListener == null) {
                return false;
            }
            boolean handled = ItemClickSupport.this.mItemLongClickListener.onItemLongClick(parent, view, position, id);
            if (!handled) {
                return handled;
            }
            view.performHapticFeedback(0);
            return handled;
        }
    }

    private ItemClickSupport(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.mTouchListener = new TouchListener(recyclerView);
        recyclerView.addOnItemTouchListener(this.mTouchListener);
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mItemClickListener = listener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener listener) {
        if (!this.mRecyclerView.isLongClickable()) {
            this.mRecyclerView.setLongClickable(true);
        }
        this.mItemLongClickListener = listener;
    }

    public static ItemClickSupport addTo(RecyclerView recyclerView) {
        ItemClickSupport itemClickSupport = from(recyclerView);
        if (itemClickSupport != null) {
            return itemClickSupport;
        }
        itemClickSupport = new ItemClickSupport(recyclerView);
        recyclerView.setTag(R.id.tag_item_click_support, itemClickSupport);
        return itemClickSupport;
    }

    public static ItemClickSupport from(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return null;
        }
        return (ItemClickSupport) recyclerView.getTag(R.id.tag_item_click_support);
    }
}
