package com.miui.gallery.editor.photo.app.crop;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.CropData;

class ItemHolder extends ViewHolder {
    private ImageView mView;

    ItemHolder(View itemView) {
        super(itemView);
        this.mView = (ImageView) itemView.findViewById(R.id.icon);
    }

    void bind(CropData data) {
        this.mView.setImageResource(data.icon);
        this.mView.setContentDescription(this.mView.getResources().getString(data.talkbackName));
    }
}
