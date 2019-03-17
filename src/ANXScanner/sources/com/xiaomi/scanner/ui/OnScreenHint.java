package com.xiaomi.scanner.ui;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log.Tag;

public class OnScreenHint {
    static final Tag TAG = new Tag("OnScreenHint");
    View mNextView;
    private final LayoutParams mParams = new LayoutParams();
    View mView;
    private final WindowManager mWM;

    private OnScreenHint(Activity activity) {
        this.mWM = (WindowManager) activity.getSystemService("window");
        this.mParams.height = -2;
        this.mParams.width = -2;
        this.mParams.flags = 24;
        this.mParams.format = -3;
        this.mParams.windowAnimations = R.style.Animation_OnScreenHint;
        this.mParams.type = 1000;
        this.mParams.setTitle("OnScreenHint");
    }

    public void show() {
        if (this.mNextView == null) {
            throw new RuntimeException("View is not initialized");
        }
        handleShow();
    }

    public void cancel() {
        handleHide();
    }

    public static OnScreenHint makeText(Activity activity, CharSequence text) {
        OnScreenHint result = new OnScreenHint(activity);
        View v = ((LayoutInflater) activity.getSystemService("layout_inflater")).inflate(R.layout.on_screen_hint, null);
        ((TextView) v.findViewById(R.id.message)).setText(text);
        result.mNextView = v;
        return result;
    }

    public void setText(CharSequence s) {
        if (this.mNextView == null) {
            throw new RuntimeException("This OnScreenHint was not created with OnScreenHint.makeText()");
        }
        TextView tv = (TextView) this.mNextView.findViewById(R.id.message);
        if (tv == null) {
            throw new RuntimeException("This OnScreenHint was not created with OnScreenHint.makeText()");
        }
        tv.setText(s);
    }

    private synchronized void handleShow() {
        if (this.mView != this.mNextView) {
            handleHide();
            this.mView = this.mNextView;
            if (this.mView.getParent() != null) {
                this.mWM.removeView(this.mView);
            }
            this.mWM.addView(this.mView, this.mParams);
        }
    }

    private synchronized void handleHide() {
        if (this.mView != null) {
            if (this.mView.getParent() != null) {
                this.mWM.removeView(this.mView);
            }
            this.mView = null;
        }
    }
}
