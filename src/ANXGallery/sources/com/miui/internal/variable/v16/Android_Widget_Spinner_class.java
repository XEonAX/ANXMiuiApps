package com.miui.internal.variable.v16;

import android.widget.ListPopupWindow;
import android.widget.Spinner;
import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;
import miui.widget.ArrowPopupWindow;

public class Android_Widget_Spinner_class extends com.miui.internal.variable.Android_Widget_Spinner_class {
    private static final Field lY = Field.of(Spinner.class, "mPopup", "Landroid/widget/Spinner$SpinnerPopup;");
    private static final Field ma = Field.of(ListPopupWindow.class, "mPopup", "Landroid/widget/PopupWindow;");

    protected ArrowPopupWindow getArrowPopupWindow(Spinner spinner) {
        try {
            Object obj = lY.get(spinner);
            if (obj instanceof ListPopupWindow) {
                obj = ma.get(obj);
                if (obj instanceof ArrowPopupWindow) {
                    return (ArrowPopupWindow) obj;
                }
            }
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("mPopup", e);
        }
        return null;
    }
}
