package com.miui.gallery.editor.photo.app.beautify;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.BeautifyData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import com.miui.gallery.util.ScreenUtils;
import java.util.List;

class BeautifyAdapter extends Adapter<BeautifyAdapterItemHolder> implements Selectable {
    private List<BeautifyData> mDataList;
    private Delegator mDelegator;
    private int mItemWidth;

    static class BeautifyAdapterItemHolder extends ViewHolder {
        private ImageView mIconView;
        private TextView mLabelView;

        public BeautifyAdapterItemHolder(View itemView) {
            super(itemView);
            this.mLabelView = (TextView) itemView.findViewById(R.id.labelView);
            this.mIconView = (ImageView) itemView.findViewById(R.id.iconView);
        }

        void bind(BeautifyData data) {
            this.mIconView.setImageResource(data.icon);
            this.mLabelView.setText(data.name);
        }
    }

    public BeautifyAdapter(Context context, List<BeautifyData> dataList, Selector selector) {
        this.mDataList = dataList;
        this.mDelegator = new Delegator(-1, selector);
        if (getItemCount() != 0) {
            this.mItemWidth = (int) ((((float) ScreenUtils.getScreenWidth()) - (2.0f * context.getResources().getDimension(R.dimen.photo_editor_menu_bound_padding))) / ((float) getItemCount()));
        }
    }

    public BeautifyAdapterItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = getInflater().inflate(R.layout.beautify_menu_item, parent, false);
        view.getLayoutParams().width = this.mItemWidth;
        return new BeautifyAdapterItemHolder(view);
    }

    public void onBindViewHolder(BeautifyAdapterItemHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((BeautifyData) this.mDataList.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mDataList == null ? 0 : this.mDataList.size();
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
