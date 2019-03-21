package com.miui.gallery.editor.photo.app.adjust;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.AdjustData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import com.miui.gallery.util.ScreenUtils;
import java.util.List;

class AdjustAdapter extends Adapter<AdjustAdapterItemHolder> implements Selectable {
    private List<AdjustData> mDataList;
    private Delegator mDelegator;
    private int mItemWidth;

    static class AdjustAdapterItemHolder extends ViewHolder {
        private ImageView mIconView;
        private TextView mLabelView;

        public AdjustAdapterItemHolder(View itemView) {
            super(itemView);
            this.mLabelView = (TextView) itemView.findViewById(R.id.labelView);
            this.mIconView = (ImageView) itemView.findViewById(R.id.iconView);
        }

        void bind(AdjustData data) {
            this.mIconView.setImageResource(data.icon);
            this.mLabelView.setText(data.name);
        }
    }

    public AdjustAdapter(Context context, List<AdjustData> dataList, Selector selector) {
        this.mDataList = dataList;
        this.mDelegator = new Delegator(-1, selector);
        this.mItemWidth = (int) ((((float) ScreenUtils.getScreenWidth()) - (2.0f * context.getResources().getDimension(R.dimen.photo_editor_menu_bound_padding))) / ((float) getItemCount()));
    }

    public AdjustAdapterItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = getInflater().inflate(R.layout.adjust_menu_item, parent, false);
        view.getLayoutParams().width = this.mItemWidth;
        return new AdjustAdapterItemHolder(view);
    }

    public void onBindViewHolder(AdjustAdapterItemHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((AdjustData) this.mDataList.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mDataList.size();
    }

    public void setSelection(int index) {
        this.mDelegator.setSelection(index);
    }

    public int getSelection() {
        return this.mDelegator.getSelection();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mDelegator.onAttachedToRecyclerView(recyclerView);
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.mDelegator.onDetachedFromRecyclerView(recyclerView);
    }
}
