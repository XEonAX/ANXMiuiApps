package com.miui.screenrecorder.data;

public class KeyEvent {
    public static final int KEYCODE_APP_SWITCH = 187;
    public static final int KEYCODE_BACK = 4;
    public static final int KEYCODE_HOME = 3;
    public static final int KEYCODE_MENU = 82;
    public static final int KEYCODE_POWER = 26;
    public static final int KEYCODE_UNKNOWN = -1;
    public static final int KEYCODE_VOLUME_DOWN = 25;
    public static final int KEYCODE_VOLUME_UP = 24;
    private boolean mIsKeyDown;
    private int mKeycode;

    public KeyEvent(int keycode, boolean isKeyDown) {
        this.mKeycode = keycode;
        this.mIsKeyDown = isKeyDown;
    }

    public int getKeycode() {
        return this.mKeycode;
    }

    public boolean IsKeyDown() {
        return this.mIsKeyDown;
    }
}
