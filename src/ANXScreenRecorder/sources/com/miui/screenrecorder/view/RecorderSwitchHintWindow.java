package com.miui.screenrecorder.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.controller.RecorderSwitchWindowManager;
import com.miui.screenrecorder.tools.DisplayUtils;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.miui.screenrecorder.view.RecorderSwitchWindow.OnLayoutParamListener;
import com.xiaomi.stat.c.b;
import java.util.Locale;

public class RecorderSwitchHintWindow extends LinearLayout {
    private static final int HINT_TEXT_WIDTH_DP = 44;
    private int displayHeight;
    private int displayWidth;
    private TextView hint_text;
    private RecorderSwitchWindow mAnchor;
    private Context mContext;
    public LayoutParams mFloatWindowParams;
    private Locale mLocale;
    private int mOrientation;
    private int mStubWidth = 0;
    private int maxAnchorDisplayY;
    private int minDisplayY;
    private int stubWidth = 0;
    private View stub_view;
    public int viewHeight;
    public int viewWidth;
    private WindowManager windowManager;

    public RecorderSwitchHintWindow(Context context, RecorderSwitchWindow anchor) {
        super(context);
        this.mContext = context;
        this.mAnchor = anchor;
        this.mOrientation = getResources().getConfiguration().orientation;
        this.mLocale = ScreenRecorderUtils.getLocaleFromConfig(getResources().getConfiguration());
        this.windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        this.displayWidth = displayMetrics.widthPixels;
        this.displayHeight = displayMetrics.heightPixels;
        this.minDisplayY = DisplayUtils.getStatusBarHeight(this.mContext);
        this.maxAnchorDisplayY = (this.displayHeight - this.mAnchor.viewHeight) - getNaviBarHeight();
        View view = LayoutInflater.from(context).inflate(R.layout.layout_hint_text, this);
        this.hint_text = (TextView) view.findViewById(R.id.hint_text);
        this.stub_view = view.findViewById(R.id.stub_view);
        this.mFloatWindowParams = new LayoutParams();
        this.mFloatWindowParams.type = b.m;
        this.mFloatWindowParams.flags = 4392;
        this.mFloatWindowParams.format = -3;
        this.mFloatWindowParams.gravity = 51;
        notifyViewChanged();
        this.mAnchor.setOnLayoutParamListener(new OnLayoutParamListener() {
            public void onLayoutParamChanged() {
                RecorderSwitchHintWindow.this.updateLayoutParams();
                RecorderSwitchHintWindow.this.windowManager.updateViewLayout(RecorderSwitchHintWindow.this, RecorderSwitchHintWindow.this.mFloatWindowParams);
            }

            public int getSubWindowHeight() {
                return RecorderSwitchHintWindow.this.viewHeight;
            }

            public int getSubWindowStubWidth() {
                return RecorderSwitchHintWindow.this.stubWidth;
            }

            public void onConfigChanged(int orientation) {
                if (RecorderSwitchHintWindow.this.mOrientation != orientation) {
                    RecorderSwitchHintWindow.this.mOrientation = orientation;
                    int tmp = RecorderSwitchHintWindow.this.displayHeight;
                    RecorderSwitchHintWindow.this.displayHeight = RecorderSwitchHintWindow.this.displayWidth;
                    RecorderSwitchHintWindow.this.displayWidth = tmp;
                    if (RecorderSwitchHintWindow.this.mOrientation == 2) {
                        RecorderSwitchHintWindow.this.maxAnchorDisplayY = RecorderSwitchHintWindow.this.displayHeight - RecorderSwitchHintWindow.this.mAnchor.viewHeight;
                    } else if (RecorderSwitchHintWindow.this.mOrientation == 1) {
                        RecorderSwitchHintWindow.this.maxAnchorDisplayY = (RecorderSwitchHintWindow.this.displayHeight - RecorderSwitchHintWindow.this.mAnchor.viewHeight) - RecorderSwitchHintWindow.this.getNaviBarHeight();
                    }
                    RecorderSwitchHintWindow.this.calculateLayoutParams();
                    RecorderSwitchHintWindow.this.windowManager.updateViewLayout(RecorderSwitchHintWindow.this, RecorderSwitchHintWindow.this.mFloatWindowParams);
                }
            }
        });
    }

    public LayoutParams getFloatWindowParams() {
        return this.mFloatWindowParams;
    }

    public void onDestroy() {
        this.mAnchor.setOnLayoutParamListener(null);
        this.mAnchor = null;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return true;
    }

    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    public void notifyViewChanged() {
        this.viewHeight = ((LinearLayout.LayoutParams) this.hint_text.getLayoutParams()).height;
        refreshView();
    }

    private void refreshView() {
        this.hint_text.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        this.viewWidth = this.hint_text.getMeasuredWidth();
        this.stubWidth = (this.hint_text.getMeasuredWidth() / 2) - (DisplayUtils.dip2px(this.mContext, 44.0f) / 2);
        this.mStubWidth = (this.stubWidth + this.mAnchor.viewWidth) - this.hint_text.getMeasuredWidth();
        this.viewWidth = this.hint_text.getMeasuredWidth() + this.mStubWidth;
        this.stub_view.setLayoutParams(new LinearLayout.LayoutParams(this.mStubWidth, -2));
        this.stub_view.setVisibility(0);
        updateLayoutParams();
    }

    private void updateLayoutParams() {
        calculateLayoutParams();
        setLayoutParams(this.mFloatWindowParams);
    }

    private void calculateLayoutParams() {
        this.mFloatWindowParams.width = this.viewWidth;
        this.mFloatWindowParams.height = this.viewHeight;
        if (this.mAnchor != null) {
            int[] parentLoc = new int[2];
            this.mAnchor.getLocationOnScreen(parentLoc);
            int parentX = this.mAnchor.getFloatWindowParams().x;
            LogUtil.d("parentLoc x=" + parentLoc[0]);
            this.mFloatWindowParams.x = parentX - this.stubWidth;
            int parentY = this.mAnchor.getFloatWindowParams().y;
            if (parentY > this.maxAnchorDisplayY) {
                parentY = this.maxAnchorDisplayY;
            }
            int newY = parentY - this.viewHeight;
            if (isFullScreen()) {
                this.minDisplayY = 0;
            } else {
                this.minDisplayY = DisplayUtils.getStatusBarHeight(this.mContext);
            }
            if (newY < this.minDisplayY) {
                this.mFloatWindowParams.y = this.minDisplayY;
                return;
            }
            this.mFloatWindowParams.y = newY;
        }
    }

    private boolean isFullScreen() {
        return RecorderSwitchWindowManager.getInstance(ScreenRecorderApplication.getContext()).isFullScreen();
    }

    private int getNaviBarHeight() {
        return RecorderSwitchWindowManager.getInstance(ScreenRecorderApplication.getContext()).getNaviBarHeight();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        Locale locale = ScreenRecorderUtils.getLocaleFromConfig(newConfig);
        if (!this.mLocale.getDisplayLanguage().equals(locale.getDisplayLanguage())) {
            this.mLocale = locale;
            if (this.hint_text.getVisibility() == 0) {
                this.hint_text.setText(getResources().getString(R.string.bubble_text));
                refreshView();
                this.windowManager.updateViewLayout(this, this.mFloatWindowParams);
            }
        }
    }
}
