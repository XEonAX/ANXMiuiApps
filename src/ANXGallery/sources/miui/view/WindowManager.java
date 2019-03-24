package miui.view;

public class WindowManager {

    public static class LayoutParams extends android.view.WindowManager.LayoutParams {
        public static final int FLAG_WINDOW_LAYOUT_MODE_BOTTOM = 1;
        public static final int FLAG_WINDOW_LAYOUT_MODE_NORMAL = 0;
        public static final int FLAG_WINDOW_TRANSLUCENT_STATUS_DARK = 2;
        public static final int FLAG_WINDOW_TRANSLUCENT_STATUS_LIGHT = 1;
        public static final int FLAG_WINDOW_TRANSLUCENT_STATUS_NONE = 0;
    }

    protected WindowManager() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }
}
