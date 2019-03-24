package com.miui.internal.variable.v23;

import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.PopupWindow;
import com.miui.internal.R;
import miui.reflect.Field;
import miui.util.AttributeResolver;

public class Android_Widget_PopupWindow_class extends com.miui.internal.variable.v21.Android_Widget_PopupWindow_class {
    private static final int mi = 8192;
    private static final Field mj = Field.of(PopupWindow.class, "mBackgroundView", "Landroid/view/View;");
    private static final Field mk = Field.of(PopupWindow.class, "mDecorView", "Landroid/widget/PopupWindow$PopupDecorView;");
    private static final Field ml = Field.of(PopupWindow.class, "mLayoutInsetDecor", Field.BOOLEAN_SIGNATURE_PRIMITIVE);

    protected void handleInvokePopup(long j, PopupWindow popupWindow, LayoutParams layoutParams) {
        super.handleInvokePopup(j, popupWindow, layoutParams);
        int resolveInt = AttributeResolver.resolveInt(popupWindow.getContentView().getContext(), R.attr.windowTranslucentStatus, 1);
        boolean z = ml.getBoolean(popupWindow);
        View view = (View) mj.get(popupWindow);
        if (resolveInt != 0 && z && view != null) {
            ((View) mk.get(popupWindow)).setFitsSystemWindows(z ^ 1);
            view.setFitsSystemWindows(z);
            if (resolveInt == 1) {
                view.setSystemUiVisibility(8192);
            } else {
                view.setSystemUiVisibility(view.getSystemUiVisibility() & -8193);
            }
        }
    }
}
