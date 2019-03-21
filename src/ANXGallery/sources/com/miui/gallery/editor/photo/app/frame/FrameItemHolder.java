package com.miui.gallery.editor.photo.app.frame;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.FrameData;

class FrameItemHolder extends ViewHolder {
    private Rect mBound = new Rect();
    private FrameItemPreviewDrawable mDrawable;
    private TextView mTextView = ((TextView) this.itemView.findViewById(R.id.text));

    FrameItemHolder(Context context, ViewGroup viewGroup) {
        super(LayoutInflater.from(context).inflate(R.layout.frame_menu_item, viewGroup, false));
        this.mDrawable = new FrameItemPreviewDrawable(context.getResources());
        int size = context.getResources().getDimensionPixelSize(R.dimen.frame_menu_image_size);
        this.mBound.set(0, 0, size, size);
    }

    void setFrameData(FrameData frameData) {
        this.mTextView.setText(frameData.toString());
        this.mDrawable.setRatio(frameData.iconRatio);
        this.mDrawable.setBounds(this.mBound);
        this.mTextView.setCompoundDrawables(null, this.mDrawable, null, null);
    }
}
