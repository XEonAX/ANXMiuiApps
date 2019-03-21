package com.miui.gallery.video.editor.adapter;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.model.MenuFragmentData;

public class VideoNavHolder extends ViewHolder {
    private TextView mView;

    public VideoNavHolder(View itemView) {
        super(itemView);
        this.mView = (TextView) itemView.findViewById(R.id.label);
    }

    void bind(MenuFragmentData data) {
        this.mView.setCompoundDrawablesWithIntrinsicBounds(0, data.iconId, 0, 0);
        this.mView.setText(data.nameId);
    }
}
