package miui.util.async;

import miui.util.async.Task.Priority;

/* synthetic */ class TaskQueue$1 {
    static final /* synthetic */ int[] Kj = new int[Priority.values().length];

    static {
        try {
            Kj[Priority.Low.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            Kj[Priority.Normal.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            Kj[Priority.High.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            Kj[Priority.RealTime.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
