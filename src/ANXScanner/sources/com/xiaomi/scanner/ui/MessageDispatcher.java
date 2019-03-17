package com.xiaomi.scanner.ui;

public interface MessageDispatcher {
    public static final int MSG_VIEW_CLICK = 0;
    public static final int RECEIVER_ACTIVITY = 1;
    public static final int RECEIVER_MODULE = 2;
    public static final int RECEIVER_UI = 3;

    boolean dispatchMessage(int i, int i2, int i3, Object obj, Object obj2);
}
