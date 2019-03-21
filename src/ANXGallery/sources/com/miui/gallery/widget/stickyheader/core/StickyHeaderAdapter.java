package com.miui.gallery.widget.stickyheader.core;

public interface StickyHeaderAdapter<VH> {
    int getHeaderCount();

    int getHeaderIndex(int i);

    int[] getItemPositionInterval(int i);
}
