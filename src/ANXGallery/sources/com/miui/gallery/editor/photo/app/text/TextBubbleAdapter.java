package com.miui.gallery.editor.photo.app.text;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.TextData;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Selector;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

public class TextBubbleAdapter extends Adapter<TextBubbleHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator;
    private List<TextData> mTextDataList;

    public TextBubbleAdapter(Context context, List<TextData> textDataList, int defaultSelection) {
        this.mTextDataList = textDataList;
        this.mContext = context;
        this.mDelegator = new Delegator(defaultSelection, new Selector(context.getResources().getDrawable(R.drawable.shape_text_edit_menu_selector)));
    }

    public TextBubbleHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new TextBubbleHolder(LayoutInflater.from(this.mContext).inflate(R.layout.text_menu_item, parent, false));
    }

    public void onBindViewHolder(TextBubbleHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind((TextData) this.mTextDataList.get(position), position);
        this.mDelegator.onBindViewHolder(holder, position);
    }

    public int getItemCount() {
        return this.mTextDataList == null ? 0 : this.mTextDataList.size();
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

    public TextData getItemData(int position) {
        if (this.mTextDataList == null || position < 0 || position >= this.mTextDataList.size()) {
            return null;
        }
        return (TextData) this.mTextDataList.get(position);
    }
}
