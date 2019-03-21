package com.miui.gallery.editor.photo.app.sticker;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.StickerData;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;

class StickerHolder extends ViewHolder {
    private DisplayImageOptions mOptions;
    private ImageSize mSize;
    private ImageView mView;

    StickerHolder(View itemView, DisplayImageOptions options, ImageSize size) {
        super(itemView);
        this.mView = (ImageView) itemView;
        this.mOptions = options;
        this.mSize = size;
    }

    void bind(StickerData data, int position) {
        ImageLoader.getInstance().displayImage("file://" + data.icon, this.mView, this.mOptions, this.mSize, null);
        this.mView.setContentDescription(this.mView.getResources().getString(R.string.photo_editor_talkback_effect, new Object[]{Integer.valueOf(position + 1)}));
    }
}
