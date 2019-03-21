package com.miui.gallery.editor.photo.app.miuibeautify;

import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautifyData;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter;
import java.util.List;

class BeautyParameterAdapter extends Adapter<ParameterViewHolder> {
    private int[] mIcons;
    private List<MiuiBeautifyData> mParameterData;

    BeautyParameterAdapter(List<MiuiBeautifyData> parameters, int[] icons) {
        this.mParameterData = parameters;
        this.mIcons = icons;
    }

    public ParameterViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new ParameterViewHolder(getInflater().inflate(R.layout.miuibeauty_menu_item, parent, false));
    }

    public void onBindViewHolder(ParameterViewHolder holder, int position) {
        super.onBindViewHolder(holder, position);
        holder.bind(this.mIcons[position], (MiuiBeautifyData) this.mParameterData.get(position));
    }

    public int getItemCount() {
        return this.mParameterData.size();
    }
}
