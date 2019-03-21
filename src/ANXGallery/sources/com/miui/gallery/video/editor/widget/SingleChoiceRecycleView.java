package com.miui.gallery.video.editor.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.miui.gallery.R;

public class SingleChoiceRecycleView extends RecyclerView {

    public static abstract class SingleChoiceRecyclerViewAdapter<SCVH extends SingleChoiceViewHolder> extends Adapter<SCVH> implements OnClickListener {
        private int lastselectedItemPosition = -1;
        private ItemSelectChangeListener mItemSelectChangeListener;
        private int selectedItemPosition = 0;

        public static abstract class SingleChoiceViewHolder extends ViewHolder {
            private int itemPosition;
            protected View mItemView;

            public abstract void setSelect(boolean z);

            public SingleChoiceViewHolder(View itemView) {
                super(itemView);
                this.mItemView = itemView;
                itemView.setTag(R.id.video_editor_viewHolder, this);
            }

            public void setMarginLeft(int margin) {
                LayoutParams params = this.mItemView.getLayoutParams();
                if (params instanceof MarginLayoutParams) {
                    ((MarginLayoutParams) params).setMarginStart(margin);
                }
            }

            public void setItemPosition(int position) {
                this.itemPosition = position;
                this.itemView.setTag(R.id.video_editor_itemIndex, Integer.valueOf(position));
            }

            public int getItemPosition() {
                return this.itemPosition;
            }

            public void setItemViewOnClickListener(OnClickListener onClickListener) {
                this.mItemView.setOnClickListener(onClickListener);
            }
        }

        public interface ItemSelectChangeListener {
            boolean onItemSelect(SingleChoiceRecyclerViewAdapter singleChoiceRecyclerViewAdapter, int i, boolean z);
        }

        public abstract void onBindView(SCVH scvh, int i);

        public abstract SCVH onCreateSingleChoiceViewHolder(ViewGroup viewGroup, int i);

        public void setItemSelectChangeListener(ItemSelectChangeListener itemSelectChangeListener) {
            this.mItemSelectChangeListener = itemSelectChangeListener;
        }

        public SCVH onCreateViewHolder(ViewGroup parent, int viewType) {
            SCVH holder = onCreateSingleChoiceViewHolder(parent, viewType);
            holder.setItemViewOnClickListener(this);
            return holder;
        }

        public void setSelectedItemPosition(int position) {
            this.selectedItemPosition = position;
            notifyItemChanged(position, Integer.valueOf(1));
        }

        public int getSelectedItemPosition() {
            return this.selectedItemPosition;
        }

        public void clearLastSelectedPostion() {
            notifyItemChanged(this.lastselectedItemPosition, Integer.valueOf(1));
        }

        public void onBindViewHolder(SCVH holder, int position) {
            holder.setSelect(position == this.selectedItemPosition);
            holder.setItemPosition(position);
            onBindView(holder, position);
        }

        public void onClick(View v) {
            int position = ((SingleChoiceViewHolder) v.getTag(R.id.video_editor_viewHolder)).getItemPosition();
            boolean isChanged = this.selectedItemPosition != position;
            if (isChanged) {
                this.lastselectedItemPosition = this.selectedItemPosition;
            }
            if (this.mItemSelectChangeListener != null) {
                this.mItemSelectChangeListener.onItemSelect(this, position, isChanged);
            }
        }
    }

    public SingleChoiceRecycleView(Context context) {
        super(context);
    }

    public SingleChoiceRecycleView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SingleChoiceRecycleView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }
}
