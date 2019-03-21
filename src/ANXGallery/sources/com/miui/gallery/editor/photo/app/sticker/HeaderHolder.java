package com.miui.gallery.editor.photo.app.sticker;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.editor.photo.core.common.model.StickerCategory;

public class HeaderHolder extends ViewHolder {
    private TextView mTitle;

    public HeaderHolder(View itemView) {
        super(itemView);
        if (itemView instanceof TextView) {
            this.mTitle = (TextView) itemView;
        }
    }

    void bind(StickerCategory category) {
        if (this.mTitle != null) {
            Context context = this.mTitle.getContext();
            int nameResId = context.getResources().getIdentifier(category.name, "string", "com.miui.gallery");
            if (nameResId != 0) {
                this.mTitle.setText(context.getString(nameResId));
            }
        }
    }
}
