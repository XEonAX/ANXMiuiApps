package com.miui.gallery.movie.ui.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import java.util.List;

public abstract class BaseAdapter<T> extends Adapter<BaseHolder> implements OnClickListener {
    protected Context mContext;
    private ItemSelectChangeListener mItemSelectChangeListener;
    protected int mLastSelectedItemPosition = -1;
    protected List<T> mList;
    protected int mSelectedItemPosition = 0;

    public static abstract class BaseHolder extends ViewHolder {
        protected View mSelected;

        public abstract void bindView(int i);

        public BaseHolder(View itemView) {
            super(itemView);
            itemView.setTag(R.id.item_root, this);
            this.mSelected = itemView.findViewById(R.id.iv_selected);
        }

        public void bindView(int position, Object payload) {
        }
    }

    public interface ItemSelectChangeListener {
        boolean onItemSelect(RecyclerView recyclerView, BaseHolder baseHolder, int i, boolean z);
    }

    protected abstract BaseHolder getHolder(View view);

    protected abstract int getLayoutId();

    public void setSelectedItemPosition(int position) {
        if (position != this.mSelectedItemPosition) {
            this.mLastSelectedItemPosition = this.mSelectedItemPosition;
            this.mSelectedItemPosition = position;
            notifyItemChanged(this.mLastSelectedItemPosition, Boolean.valueOf(true));
            notifyItemChanged(this.mSelectedItemPosition, Boolean.valueOf(true));
        }
    }

    public void setSelectedItemPositionWithoutNotify(int position) {
        this.mLastSelectedItemPosition = this.mSelectedItemPosition;
        this.mSelectedItemPosition = position;
    }

    public void setItemSelectChangeListener(ItemSelectChangeListener itemSelectChangeListener) {
        this.mItemSelectChangeListener = itemSelectChangeListener;
    }

    public void setList(List<T> list) {
        this.mList = list;
    }

    public List<T> getList() {
        return this.mList;
    }

    public BaseAdapter(Context context) {
        this.mContext = context;
    }

    public BaseHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return getHolder(LayoutInflater.from(this.mContext).inflate(getLayoutId(), parent, false));
    }

    public void onBindViewHolder(BaseHolder holder, int position) {
        holder.itemView.setOnClickListener(this);
        setSelected(holder, position == this.mSelectedItemPosition);
        holder.bindView(position);
    }

    private void setSelected(BaseHolder holder, boolean selected) {
        holder.itemView.setSelected(selected);
        holder.mSelected.setVisibility(selected ? 0 : 4);
    }

    public void onBindViewHolder(BaseHolder holder, int position, List<Object> payloads) {
        if (payloads == null || payloads.size() <= 0) {
            super.onBindViewHolder(holder, position, payloads);
            return;
        }
        setSelected(holder, position == this.mSelectedItemPosition);
        holder.bindView(position, payloads);
    }

    public void onClick(View v) {
        BaseHolder holder = (BaseHolder) v.getTag(R.id.item_root);
        int position = holder.getAdapterPosition();
        if (this.mSelectedItemPosition != position) {
            if (this.mItemSelectChangeListener != null && this.mItemSelectChangeListener.onItemSelect((RecyclerView) v.getParent(), holder, position, true)) {
                setSelectedItemPosition(position);
            }
        } else if (this.mItemSelectChangeListener != null) {
            this.mItemSelectChangeListener.onItemSelect((RecyclerView) v.getParent(), holder, position, false);
        }
    }

    public int getItemCount() {
        return this.mList == null ? 0 : this.mList.size();
    }

    public T getItemData(int pos) {
        if (this.mList == null) {
            return null;
        }
        return this.mList.get(pos);
    }

    public int getSelectedItemPosition() {
        return this.mSelectedItemPosition;
    }
}
