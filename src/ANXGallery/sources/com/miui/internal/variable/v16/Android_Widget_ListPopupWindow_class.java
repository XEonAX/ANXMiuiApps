package com.miui.internal.variable.v16;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.Spinner;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.R;
import miui.reflect.Field;
import miui.util.AttributeResolver;
import miui.widget.ArrowPopupWindow;

public class Android_Widget_ListPopupWindow_class extends com.miui.internal.variable.Android_Widget_ListPopupWindow_class {
    private static final Field lY = Field.of(ListPopupWindow.class, "mPopup", "Landroid/widget/PopupWindow;");
    private static final Field lZ = Field.of(ListPopupWindow.class, "mDropDownHorizontalOffset", Field.INT_SIGNATURE_PRIMITIVE);

    public void setPopupWindow(ListPopupWindow listPopupWindow, PopupWindow popupWindow) {
        lY.set((Object) listPopupWindow, (Object) popupWindow);
    }

    public void buildProxy() {
        attachConstructor("(Landroid/content/Context;Landroid/util/AttributeSet;II)V");
        attachMethod("show", "()V");
    }

    protected void handle() {
        handle_init_(0, null, null, null, 0, 0);
        handleShow(0, null);
    }

    protected void handle_init_(long j, ListPopupWindow listPopupWindow, Context context, AttributeSet attributeSet, int i, int i2) {
        Context context2 = context;
        if (!DeviceHelper.IS_TABLET || AttributeResolver.resolve(context2, R.attr.windowActionBar) < 0 || AttributeResolver.resolveBoolean(context2, com.miui.internal.R.attr.hidePopupArrow, false)) {
            ListPopupWindow listPopupWindow2 = listPopupWindow;
            AttributeSet attributeSet2 = attributeSet;
            int i3 = i;
            int i4 = i2;
            original_init_(j, listPopupWindow, context, attributeSet, i, i2);
            return;
        }
        original_init_(j, listPopupWindow, context2, attributeSet, 0, 0);
        try {
            PopupWindow arrowPopupWindow = new ArrowPopupWindow(context2, attributeSet, i, i2);
            arrowPopupWindow.setInputMethodMode(1);
            setPopupWindow(listPopupWindow, arrowPopupWindow);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("ListPopupWindow constructor", e);
        }
    }

    protected void handleShow(long j, ListPopupWindow listPopupWindow) {
        Object obj;
        int i = lZ.getInt(listPopupWindow);
        View anchorView = listPopupWindow.getAnchorView();
        if (i == 0 || anchorView == null || !(anchorView instanceof Spinner)) {
            obj = null;
        } else {
            obj = 1;
            lZ.set((Object) listPopupWindow, i - anchorView.getPaddingLeft());
        }
        originalShow(j, listPopupWindow);
        if (obj != null) {
            lZ.set((Object) listPopupWindow, i);
        }
    }

    protected void original_init_(long j, ListPopupWindow listPopupWindow, Context context, AttributeSet attributeSet, int i, int i2) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.original_init_(long, ListPopupWindow, Context, AttributeSet, int, int)");
    }

    protected void originalShow(long j, ListPopupWindow listPopupWindow) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Android_Widget_ListPopupWindow_class.originalShow(long, ListPopupWindow)");
    }
}
