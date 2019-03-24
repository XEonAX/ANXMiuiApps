package com.miui.internal.variable.v21;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class Android_Widget_ListView_class extends com.miui.internal.variable.v16.Android_Widget_ListView_class {
    protected void handle() {
        handle_init_(0, null, null, null, 0);
        super.handle();
    }

    protected void attachSpecialMethod() {
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;II)V");
    }

    protected void handle_init_(long j, ListView listView, Context context, AttributeSet attributeSet, int i, int i2) {
        original_init_(j, listView, context, attributeSet, i, i2);
        doInit(listView, context);
    }

    protected void original_init_(long j, ListView listView, Context context, AttributeSet attributeSet, int i, int i2) {
        throw new IllegalStateException("com.miui.internal.variable.v21.Android_Widget_ListView_class.original_init_(long, ListView, Context, AttributeSet, int, int)");
    }
}
