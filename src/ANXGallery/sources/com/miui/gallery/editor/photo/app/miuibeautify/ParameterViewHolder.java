package com.miui.gallery.editor.photo.app.miuibeautify;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautifyData;

class ParameterViewHolder extends ViewHolder {
    private TextView mTextView;

    public ParameterViewHolder(View itemView) {
        super(itemView);
        this.mTextView = (TextView) itemView.findViewById(R.id.label);
    }

    void bind(int icon, MiuiBeautifyData data) {
        this.mTextView.setCompoundDrawablesWithIntrinsicBounds(0, icon, 0, 0);
        this.mTextView.setText(data.name);
    }
}
