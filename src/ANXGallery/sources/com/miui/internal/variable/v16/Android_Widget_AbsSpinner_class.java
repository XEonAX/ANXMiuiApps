package com.miui.internal.variable.v16;

import android.widget.AbsSpinner;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import com.miui.internal.R;
import miui.util.AttributeResolver;

public class Android_Widget_AbsSpinner_class extends com.miui.internal.variable.Android_Widget_AbsSpinner_class {
    public void buildProxy() {
        attachMethod("setAdapter", "(Landroid/widget/SpinnerAdapter;)V");
    }

    protected void handle() {
        handleSetAdapter(0, null, null);
    }

    protected void handleSetAdapter(long j, AbsSpinner absSpinner, SpinnerAdapter spinnerAdapter) {
        if ((spinnerAdapter instanceof ArrayAdapter) && AttributeResolver.isUsingMiuiTheme(absSpinner.getContext())) {
            ((ArrayAdapter) spinnerAdapter).setDropDownViewResource(R.layout.simple_spinner_dropdown_item);
        }
        originalSetAdapter(j, absSpinner, spinnerAdapter);
    }

    protected void originalSetAdapter(long j, AbsSpinner absSpinner, SpinnerAdapter spinnerAdapter) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Widget_AbsSpinner_class.original_init_(long, AbsSpinner, Context, AttributeSet, int)");
    }
}
