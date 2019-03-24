package miui.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.R;
import com.miui.internal.widget.ActionBarMovableLayout;
import com.miui.internal.widget.ActionBarOverlayLayout;
import miui.app.ActionBar.OnScrollListener;

public class ActionBarUtils {
    private ActionBarUtils() {
    }

    public static ViewGroup getActionBarOverlayLayout(View view) {
        while (view != null) {
            if (view instanceof ActionBarOverlayLayout) {
                return (ActionBarOverlayLayout) view;
            }
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
            } else {
                view = null;
            }
        }
        return null;
    }

    public static void setOnScrollListener(Activity activity, OnScrollListener onScrollListener) {
        ((ActionBarMovableLayout) activity.findViewById(R.id.action_bar_overlay_layout)).setOnScrollListener(onScrollListener);
    }
}
