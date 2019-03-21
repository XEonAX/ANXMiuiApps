package com.miui.gallery.editor.photo.app.mosaic;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.editor.photo.core.common.model.MosaicData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.ArrayList;
import java.util.List;

class MosaicAdapter extends Adapter<MosaicHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator = new Delegator(0);
    private List<MosaicData> mMosaicDataList;

    MosaicAdapter(Context context, List<MosaicData> mosaicDataList) {
        this.mContext = context;
        this.mMosaicDataList = new ArrayList(mosaicDataList);
    }

    public MosaicHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new MosaicHolder(this.mContext, parent);
    }

    public void onBindViewHolder(MosaicHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.setIconPath(((MosaicData) this.mMosaicDataList.get(position)).iconPath, position);
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mMosaicDataList == null ? 0 : this.mMosaicDataList.size();
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
