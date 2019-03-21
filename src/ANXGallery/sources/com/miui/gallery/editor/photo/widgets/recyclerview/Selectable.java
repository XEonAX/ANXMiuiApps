package com.miui.gallery.editor.photo.widgets.recyclerview;

import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import com.miui.gallery.util.Log;

public interface Selectable {

    public static final class Delegator implements Selectable {
        private RecyclerView mParent;
        private int mSelection;
        private Selector mSelector;

        public Delegator() {
            this(-1);
        }

        public Delegator(int defaultSelection) {
            this(defaultSelection, null);
        }

        public Delegator(int defaultSelection, Selector selector) {
            this.mSelection = defaultSelection;
            this.mSelector = selector;
            if (selector != null) {
                selector.mAdapter = this;
            }
        }

        public void setSelection(int index) {
            if (this.mSelection != index) {
                ViewHolder holder;
                boolean needNotify = false;
                int notifyPosition = 1;
                if (this.mSelection != -1) {
                    holder = this.mParent.findViewHolderForAdapterPosition(this.mSelection);
                    if (holder == null || holder.itemView == null) {
                        needNotify = true;
                        notifyPosition = this.mSelection;
                    } else {
                        holder.itemView.setActivated(false);
                        holder.itemView.setSelected(false);
                    }
                }
                this.mSelection = index;
                if (index != -1) {
                    holder = this.mParent.findViewHolderForAdapterPosition(index);
                    if (!(holder == null || holder.itemView == null)) {
                        holder.itemView.setActivated(true);
                        holder.itemView.setSelected(true);
                    }
                }
                if (this.mSelector != null) {
                    this.mParent.invalidate();
                }
                if (needNotify && notifyPosition != -1) {
                    this.mParent.getAdapter().notifyItemChanged(notifyPosition);
                }
            }
        }

        public int getSelection() {
            return this.mSelection;
        }

        public void onBindViewHolder(ViewHolder holder, int position) {
            boolean z = true;
            if (holder.itemView != null) {
                boolean z2;
                View view = holder.itemView;
                if (position == this.mSelection) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                view.setActivated(z2);
                View view2 = holder.itemView;
                if (position != this.mSelection) {
                    z = false;
                }
                view2.setSelected(z);
            }
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            if (this.mParent != null) {
                throw new IllegalStateException("already attach to a recycler view");
            }
            if (this.mSelector != null) {
                recyclerView.addItemDecoration(this.mSelector);
                if (this.mSelector.mRequireLayer && recyclerView.getLayerType() == 0) {
                    recyclerView.setLayerType(2, null);
                }
            }
            this.mParent = recyclerView;
        }

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            if (this.mParent == recyclerView) {
                if (this.mSelector != null) {
                    recyclerView.removeItemDecoration(this.mSelector);
                }
                this.mParent = null;
                return;
            }
            Log.w("Selectable.Delegator", "not the attached parent view .");
        }
    }

    public static class Selector extends ItemDecoration {
        Selectable mAdapter;
        boolean mRequireLayer;
        private Drawable mSelector;

        public Selector(Drawable selector) {
            this.mSelector = selector;
        }

        public Selector(int color) {
            this(createMaskDrawable(color));
            this.mRequireLayer = true;
        }

        public void onDrawOver(Canvas c, RecyclerView parent, State state) {
            super.onDrawOver(c, parent, state);
            ViewHolder holder = parent.findViewHolderForAdapterPosition(this.mAdapter.getSelection());
            if (holder != null && holder.itemView != null) {
                View view = holder.itemView;
                int index = c.save();
                c.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                this.mSelector.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                this.mSelector.draw(c);
                c.restoreToCount(index);
            }
        }

        private static Drawable createMaskDrawable(int color) {
            ShapeDrawable drawable = new ShapeDrawable();
            drawable.getPaint().setXfermode(new PorterDuffXfermode(Mode.SRC_ATOP));
            drawable.getPaint().setColor(color);
            return drawable;
        }
    }

    int getSelection();
}
