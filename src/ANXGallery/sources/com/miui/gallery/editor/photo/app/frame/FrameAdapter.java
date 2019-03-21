package com.miui.gallery.editor.photo.app.frame;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.editor.photo.core.common.model.FrameData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class FrameAdapter extends Adapter<FrameItemHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator = new Delegator(0);
    private List<FrameData> mFrameDataList;

    FrameAdapter(List<FrameData> frameDataList, Context context) {
        this.mFrameDataList = frameDataList;
        this.mContext = context;
    }

    public FrameItemHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new FrameItemHolder(this.mContext, parent);
    }

    public void onBindViewHolder(FrameItemHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.setFrameData((FrameData) this.mFrameDataList.get(position));
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mFrameDataList == null ? 0 : this.mFrameDataList.size();
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
