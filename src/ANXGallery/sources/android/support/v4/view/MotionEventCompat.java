package android.support.v4.view;

import android.view.MotionEvent;

public final class MotionEventCompat {
    public static boolean isFromSource(MotionEvent event, int source) {
        return (event.getSource() & source) == source;
    }
}
