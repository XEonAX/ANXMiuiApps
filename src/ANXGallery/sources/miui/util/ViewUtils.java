package miui.util;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.miui.internal.variable.Android_View_ViewGroup_class;
import com.miui.internal.variable.Android_View_View_class;
import com.miui.internal.variable.Android_View_View_class.Factory;

public class ViewUtils {
    static final String TAG = "ViewUtils";
    private static final Android_View_View_class jC = Factory.getInstance().get();
    private static final Android_View_ViewGroup_class jD = Android_View_ViewGroup_class.Factory.getInstance().get();

    private ViewUtils() {
    }

    public static void getContentRect(View view, Rect rect) {
        rect.left = view.getScrollX() + view.getPaddingLeft();
        rect.top = view.getScrollY() + view.getPaddingTop();
        rect.right = (view.getWidth() - view.getPaddingRight()) - rect.left;
        rect.bottom = (view.getHeight() - view.getPaddingBottom()) - rect.top;
    }

    public static boolean intersectsWith(View view, Rect rect) {
        return rect != null && view.getLeft() < rect.right && view.getTop() < rect.bottom && view.getRight() > rect.left && view.getBottom() > rect.top;
    }

    public static boolean containsPoint(View view, int i, int i2) {
        return i > view.getLeft() && i < view.getRight() && i2 > view.getTop() && i2 < view.getBottom();
    }

    public static int getBackgroundHeight(View view) {
        Drawable background = view.getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return -1;
    }

    public static int getBackgroundWidth(View view) {
        Drawable background = view.getBackground();
        if (background != null) {
            return background.getIntrinsicWidth();
        }
        return -1;
    }

    public static int getHorizontalState(View view) {
        return jC.getHorizontalState(view);
    }

    public static int getVerticalState(View view) {
        return jC.getVerticalState(view);
    }

    public static void setHorizontalState(View view, int i) {
        jC.setHorizontalState(view, i);
    }

    public static void setVerticalState(View view, int i) {
        jC.setVerticalState(view, i);
    }

    public static boolean getTagChildrenSequenceState(ViewGroup viewGroup) {
        return jD.getTagChildrenSequenceState(viewGroup);
    }

    public static void setTagChildrenSequenceState(ViewGroup viewGroup, boolean z) {
        jD.setTagChildrenSequenceState(viewGroup, z);
    }

    public static boolean isLayoutRtl(View view) {
        return view.getLayoutDirection() == 1;
    }

    public static void layoutChildView(ViewGroup viewGroup, View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean isLayoutRtl = isLayoutRtl(viewGroup);
        int width = viewGroup.getWidth();
        if (isLayoutRtl) {
            i5 = width - i3;
        } else {
            i5 = i;
        }
        if (isLayoutRtl) {
            i3 = width - i;
        }
        view.layout(i5, i2, i3, i4);
    }

    public static boolean isNightMode(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }
}
