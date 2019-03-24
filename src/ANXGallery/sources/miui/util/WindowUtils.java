package miui.util;

import android.view.Window;
import com.miui.internal.variable.Android_View_Window_class.Factory;

public class WindowUtils {
    private WindowUtils() {
    }

    public static void setTranslucentStatus(Window window, int i) {
        Factory.getInstance().get().setTranslucentStatus(window, i);
    }
}
