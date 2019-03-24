package com.miui.internal.variable.v16;

import android.widget.GridView;
import com.miui.internal.util.TaggingDrawableHelper;

public class Android_Widget_GridView_class extends com.miui.internal.variable.Android_Widget_GridView_class {
    public void buildProxy() {
        attachMethod("layoutChildren", "()V");
        attachMethod("fillGap", "(Z)V");
    }

    protected void handle() {
        handleLayoutChildren(0, null);
        handleFillGap(0, null, false);
    }

    protected void handleLayoutChildren(long j, GridView gridView) {
        originalLayoutChildren(j, gridView);
        TaggingDrawableHelper.tagChildSequenceState(gridView);
    }

    protected void originalLayoutChildren(long j, GridView gridView) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Widget_GridView_class.originalLayoutChildren(long, GridView)");
    }

    protected void handleFillGap(long j, GridView gridView, boolean z) {
        originalFillGap(j, gridView, z);
        TaggingDrawableHelper.tagChildSequenceState(gridView);
    }

    protected void originalFillGap(long j, GridView gridView, boolean z) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Widget_GridView_class.originalFillGap(long, GridView, boolean)");
    }
}
