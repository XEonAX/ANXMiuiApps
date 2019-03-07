package com.miui.screenrecorder.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import com.miui.screenrecorder.R;

public class ScreenRecorderHintWindow {
    private static ScreenRecorderHintWindow mHintWindow;
    private Context mContext;
    private TextView mHintText;
    private LayoutParams mParams;
    private View mView;
    private WindowManager mWindowManager;

    private ScreenRecorderHintWindow(Context context) {
        init(context);
    }

    public static ScreenRecorderHintWindow getInstance(Context context) {
        if (mHintWindow == null) {
            mHintWindow = new ScreenRecorderHintWindow(context.getApplicationContext());
        }
        return mHintWindow;
    }

    private void init(Context context) {
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        this.mParams = new LayoutParams();
        this.mParams.type = 2003;
        this.mParams.format = -3;
        this.mParams.flags = 40;
        this.mParams.width = -2;
        this.mParams.height = -2;
        this.mParams.gravity = 81;
        this.mParams.y = 100;
        this.mView = LayoutInflater.from(context).inflate(R.layout.hint_window_view, null);
        this.mHintText = (TextView) this.mView.findViewById(R.id.hint_text);
    }

    public void showView(String text) {
        if (this.mView.getParent() == null) {
            this.mWindowManager.addView(this.mView, this.mParams);
        }
        this.mHintText.setText(text);
    }

    public void hideView() {
        if (this.mView != null && this.mView.getParent() != null) {
            this.mWindowManager.removeView(this.mView);
        }
    }
}
