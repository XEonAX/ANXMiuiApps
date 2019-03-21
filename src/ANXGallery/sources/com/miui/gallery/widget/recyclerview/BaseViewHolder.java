package com.miui.gallery.widget.recyclerview;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class BaseViewHolder extends ViewHolder {
    public BaseViewHolder(View itemView) {
        super(itemView);
    }

    public static View getView(ViewGroup parent, int layoutRes) {
        return LayoutInflater.from(parent.getContext()).inflate(layoutRes, parent, false);
    }
}
