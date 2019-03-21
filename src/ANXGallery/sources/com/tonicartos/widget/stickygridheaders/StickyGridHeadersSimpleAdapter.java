package com.tonicartos.widget.stickygridheaders;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

public interface StickyGridHeadersSimpleAdapter extends ListAdapter {
    View getDividerView(int i, View view, ViewGroup viewGroup);

    long getHeaderId(int i);

    View getHeaderView(int i, View view, ViewGroup viewGroup);

    boolean shouldDrawDivider();
}
