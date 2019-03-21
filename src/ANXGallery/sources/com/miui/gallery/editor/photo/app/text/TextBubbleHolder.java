package com.miui.gallery.editor.photo.app.text;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.TextData;
import com.nostra13.universalimageloader.core.ImageLoader;

class TextBubbleHolder extends ViewHolder {
    private Context mContext;
    private ImageView mImageView;

    TextBubbleHolder(View itemView) {
        super(itemView);
        this.mContext = itemView.getContext();
        this.mImageView = (ImageView) itemView.findViewById(R.id.img);
    }

    public void bind(TextData textData, int position) {
        ImageLoader.getInstance().displayImage(textData.iconPath, this.mImageView);
        if (textData.showBackgroundColor) {
            this.itemView.setBackgroundColor(this.mContext.getResources().getColor(textData.backgroundColor));
        }
        this.mImageView.setContentDescription(this.mImageView.getResources().getString(R.string.photo_editor_talkback_effect, new Object[]{Integer.valueOf(position + 1)}));
    }
}
