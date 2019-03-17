package com.xiaomi.scanner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;

public class ShutterButton extends ImageView {
    private List<OnShutterButtonListener> mListeners = new ArrayList();
    private boolean mOldPressed;

    public interface OnShutterButtonListener {
        void onShutterButtonClick();

        void onShutterButtonFocus(boolean z);
    }

    public ShutterButton(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void addOnShutterButtonListener(OnShutterButtonListener listener) {
        if (!this.mListeners.contains(listener)) {
            this.mListeners.add(listener);
        }
    }

    public void removeOnShutterButtonListener(OnShutterButtonListener listener) {
        if (this.mListeners.contains(listener)) {
            this.mListeners.remove(listener);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        final boolean pressed = isPressed();
        if (pressed != this.mOldPressed) {
            if (pressed) {
                callShutterButtonFocus(pressed);
            } else {
                post(new Runnable() {
                    public void run() {
                        ShutterButton.this.callShutterButtonFocus(pressed);
                    }
                });
            }
            this.mOldPressed = pressed;
        }
    }

    private void callShutterButtonFocus(boolean pressed) {
        for (OnShutterButtonListener listener : this.mListeners) {
            listener.onShutterButtonFocus(pressed);
        }
    }

    public boolean performClick() {
        boolean result = super.performClick();
        if (getVisibility() == 0) {
            for (OnShutterButtonListener listener : this.mListeners) {
                listener.onShutterButtonClick();
            }
        }
        return result;
    }

    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        setAlpha(enabled ? 1.0f : 0.3f);
    }
}
