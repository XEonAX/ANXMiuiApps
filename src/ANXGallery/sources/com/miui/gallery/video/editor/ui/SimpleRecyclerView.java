package com.miui.gallery.video.editor.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.miui.gallery.util.Log;

public class SimpleRecyclerView extends RecyclerView {

    public static abstract class Adapter<VH extends ViewHolder> extends android.support.v7.widget.RecyclerView.Adapter<VH> implements OnClickListener {
        private LayoutInflater mInflater;
        private OnItemClickListener mOnItemClickListener;

        public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
            this.mOnItemClickListener = onItemClickListener;
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
            super.onAttachedToRecyclerView(recyclerView);
            this.mInflater = LayoutInflater.from(recyclerView.getContext());
        }

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
            super.onDetachedFromRecyclerView(recyclerView);
            this.mInflater = null;
        }

        public void onBindViewHolder(VH vh, int position) {
            vh.itemView.setOnClickListener(this);
            vh.itemView.setTag(Integer.valueOf(position));
        }

        public int getItemCount() {
            return 0;
        }

        protected final LayoutInflater getInflater() {
            return this.mInflater;
        }

        public void onClick(View view) {
            if (this.mOnItemClickListener != null) {
                this.mOnItemClickListener.OnItemClick((RecyclerView) view.getParent(), view, ((Integer) view.getTag()).intValue());
            }
        }
    }

    public interface OnItemClickListener {
        boolean OnItemClick(RecyclerView recyclerView, View view, int i);
    }

    public static class BlankDivider extends ItemDecoration {
        private int mBottom;
        private int mEnd;
        private int mHorizonalInterval;
        private int mStart;
        private int mTop;
        private int mVerticalInterval;

        public BlankDivider(Resources res, int horizontalId, int verticalId) {
            int i = 0;
            int dimensionPixelSize = horizontalId == 0 ? 0 : res.getDimensionPixelSize(horizontalId);
            if (verticalId != 0) {
                i = res.getDimensionPixelSize(verticalId);
            }
            this(dimensionPixelSize, i);
        }

        public BlankDivider(int hInterval, int vInterval) {
            this(hInterval, hInterval, hInterval, vInterval, vInterval, vInterval);
        }

        public BlankDivider(int start, int end, int hInterval, int top, int bottom, int vInterval) {
            this.mStart = start;
            this.mEnd = end;
            this.mHorizonalInterval = hInterval;
            this.mTop = top;
            this.mBottom = bottom;
            this.mVerticalInterval = vInterval;
        }

        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, State state) {
            super.getItemOffsets(outRect, view, parent, state);
            if (parent.getChildAdapterPosition(view) == -1) {
                Log.w("SimpleRecyclerView", "no adapter bound");
                return;
            }
            int start;
            int end;
            int top;
            int bottom;
            if (parent.getChildAdapterPosition(view) == 0) {
                start = this.mStart;
                end = this.mHorizonalInterval;
                top = this.mTop;
                bottom = this.mVerticalInterval;
            } else if (parent.getChildAdapterPosition(view) == parent.getAdapter().getItemCount() - 1) {
                start = 0;
                end = this.mEnd;
                top = 0;
                bottom = this.mBottom;
            } else {
                start = 0;
                end = this.mHorizonalInterval;
                top = 0;
                bottom = this.mVerticalInterval;
            }
            if (parent.getLayoutDirection() == 1) {
                outRect.set(end, top, start, bottom);
            } else {
                outRect.set(start, top, end, bottom);
            }
        }
    }

    public SimpleRecyclerView(Context context) {
        this(context, null);
    }

    public SimpleRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SimpleRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setLayoutManager(new LinearLayoutManager(context, 0, false));
        setItemAnimator(null);
    }

    public boolean fling(int velocityX, int velocityY) {
        return super.fling((int) (((float) velocityX) * 0.6f), velocityY);
    }
}
