package com.miui.gallery.card.ui.detail;

import android.content.Context;
import android.util.AttributeSet;
import com.miui.gallery.ui.MicroThumbGridItem;

public class StoryRecyclerViewItem extends MicroThumbGridItem {
    public StoryRecyclerViewItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected boolean isSquareItem() {
        return false;
    }
}
