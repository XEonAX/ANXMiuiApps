package com.miui.gallery.editor.photo.app.remover;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.common.model.RemoverData;

class RemoverItemHolder extends ViewHolder {
    private ImageView mIconView;
    private TextView mLabelView;

    public RemoverItemHolder(View itemView) {
        super(itemView);
        this.mLabelView = (TextView) itemView.findViewById(R.id.labelView);
        this.mIconView = (ImageView) itemView.findViewById(R.id.iconView);
    }

    void bind(RemoverData data) {
        this.mIconView.setImageResource(data.mIcon);
        this.mLabelView.setText(data.name);
    }
}
