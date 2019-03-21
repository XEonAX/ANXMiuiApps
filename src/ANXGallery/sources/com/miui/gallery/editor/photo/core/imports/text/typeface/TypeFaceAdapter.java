package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable;
import com.miui.gallery.editor.photo.widgets.recyclerview.Selectable.Delegator;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

public class TypeFaceAdapter extends Adapter<TypeFaceHolder> implements Selectable {
    private Context mContext;
    private Delegator mDelegator = new Delegator(0);
    private List<TextStyle> mTextStyleList;

    public TypeFaceAdapter(Context context, List<TextStyle> textStyleList) {
        this.mTextStyleList = textStyleList;
        this.mContext = context;
    }

    public TypeFaceHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new TypeFaceHolder(this.mContext, parent);
    }

    public void onBindViewHolder(TypeFaceHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        TextStyle textStyle = (TextStyle) this.mTextStyleList.get(position);
        holder.bind(textStyle, getSelection() == position);
        this.mDelegator.onBindViewHolder(holder, position);
        if (textStyle.isDownloadSuccess()) {
            textStyle.setState(17);
        }
    }

    public int getItemCount() {
        if (this.mTextStyleList == null) {
            return 0;
        }
        return this.mTextStyleList.size();
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
