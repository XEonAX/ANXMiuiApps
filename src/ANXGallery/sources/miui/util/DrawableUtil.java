package miui.util;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.miui.internal.graphics.drawable.PlaceholderDrawable;

public class DrawableUtil {
    private DrawableUtil() {
    }

    public static boolean isPlaceholder(Drawable drawable) {
        return (drawable instanceof PlaceholderDrawable) || ((drawable instanceof ColorDrawable) && ((ColorDrawable) drawable).getColor() == 0);
    }
}
