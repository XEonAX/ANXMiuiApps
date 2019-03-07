package com.miui.screenrecorder.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

public interface StickyGridHeadersBaseAdapter extends ListAdapter {
    int getCountForHeader(int i);

    View getHeaderView(int i, View view, ViewGroup viewGroup);

    int getNumHeaders();
}
