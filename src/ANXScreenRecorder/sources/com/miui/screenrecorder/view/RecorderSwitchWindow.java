package com.miui.screenrecorder.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Chronometer;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.controller.RecorderSwitchWindowManager;
import com.miui.screenrecorder.data.MiuiScreenRecorderGlobalData;
import com.miui.screenrecorder.tools.DisplayUtils;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.xiaomi.stat.c.b;
import java.util.Locale;
import miui.view.animation.CubicEaseOutInterpolator;

public class RecorderSwitchWindow extends LinearLayout {
    public int closeXPos;
    private int displayHeight;
    private int displayWidth;
    private boolean isWindowSleep = false;
    private OnLayoutParamListener layoutListener;
    private OnClickListener listener;
    private ValueAnimator mAnimator;
    private CountDownTimer mClickTimer = new CountDownTimer(2000, 2000) {
        public void onTick(long millisUntilFinished) {
        }

        public void onFinish() {
            if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                RecorderSwitchWindow.this.isWindowSleep = true;
                RecorderSwitchWindow.this.setWindowAlpha(0.5f);
            }
        }
    };
    private Context mContext;
    private String mCurrentArea = "portrait_6";
    private int mCurrentStatus = -1;
    public LayoutParams mFloatWindowParams;
    private Locale mLocale;
    private int mOrientation;
    private Chronometer mTimer;
    private int minDisplayY = 0;
    private ImageView record_switch;
    private TextView start_text;
    private int subWindowStubWidth = 0;
    private ImageView time_close;
    public int viewHeight;
    public int viewWidth;
    private WindowManager windowManager;
    private float xDownInScreen;
    private float xInView;
    private float xMoved;
    private float yDownInScreen;
    private float yInView;
    private float yMoved;

    public interface OnClickListener {
        void onLeftBtnClick();

        void onRightBtnClick();
    }

    public interface OnLayoutParamListener {
        int getSubWindowHeight();

        int getSubWindowStubWidth();

        void onConfigChanged(int i);

        void onLayoutParamChanged();
    }

    public RecorderSwitchWindow(Context context) {
        super(context);
        this.mContext = context;
        this.mOrientation = getResources().getConfiguration().orientation;
        this.mLocale = ScreenRecorderUtils.getLocaleFromConfig(getResources().getConfiguration());
        this.windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        this.displayWidth = displayMetrics.widthPixels;
        this.displayHeight = displayMetrics.heightPixels;
        View view = LayoutInflater.from(context).inflate(R.layout.layout_float_view, this);
        this.minDisplayY = DisplayUtils.getStatusBarHeight(this.mContext);
        this.record_switch = (ImageView) view.findViewById(R.id.screen_record_switch);
        this.time_close = (ImageView) view.findViewById(R.id.time_close);
        this.mTimer = (Chronometer) view.findViewById(R.id.recorder_timer);
        this.start_text = (TextView) view.findViewById(R.id.start_text);
        this.mFloatWindowParams = new LayoutParams();
        this.mFloatWindowParams.type = b.m;
        this.mFloatWindowParams.flags = 4392;
        this.mFloatWindowParams.format = -3;
        this.mFloatWindowParams.gravity = 51;
        notifyViewChanged(0, false);
        startClickTimerIfNeed();
        this.record_switch.post(new Runnable() {
            public void run() {
                RecorderSwitchWindow.this.record_switch.sendAccessibilityEvent(128);
                ViewCompat.setImportantForAccessibility(RecorderSwitchWindow.this.start_text, 2);
            }
        });
    }

    public LayoutParams getFloatWindowParams() {
        return this.mFloatWindowParams;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return true;
    }

    public boolean onTouchEvent(MotionEvent event) {
        float xInScreen = event.getRawX();
        float yInScreen = event.getRawY();
        switch (event.getAction()) {
            case 0:
                changeSleepStatus();
                this.xInView = event.getX();
                this.yInView = event.getY();
                this.xDownInScreen = xInScreen;
                this.yDownInScreen = yInScreen;
                this.xMoved = 0.0f;
                this.yMoved = 0.0f;
                break;
            case 1:
                setWindowAlpha(1.0f);
                if (this.xMoved > 40.0f || this.yMoved > 40.0f) {
                    this.isWindowSleep = false;
                    int[] location = new int[2];
                    getLocationOnScreen(location);
                    keepEdge(location[0], true);
                } else {
                    if (!MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
                        this.isWindowSleep = false;
                    }
                    if (ScreenRecorderUtils.isTalkBackOn()) {
                        if (this.listener != null) {
                            if (this.xInView <= ((float) this.record_switch.getWidth())) {
                                this.listener.onLeftBtnClick();
                            } else if (this.xInView >= ((float) this.closeXPos)) {
                                this.listener.onRightBtnClick();
                            }
                        }
                    } else if (this.isWindowSleep) {
                        this.isWindowSleep = false;
                    } else if (this.listener != null) {
                        if (this.xInView <= ((float) this.record_switch.getWidth())) {
                            this.listener.onLeftBtnClick();
                        } else if (this.xInView >= ((float) this.closeXPos)) {
                            this.listener.onRightBtnClick();
                        }
                    }
                }
                this.xMoved = 0.0f;
                this.yMoved = 0.0f;
                changeSleepStatus();
                break;
            case 2:
                changeSleepStatus();
                int newX = (int) (xInScreen - this.xInView);
                int newY = (int) (yInScreen - this.yInView);
                this.mFloatWindowParams.x = getRealX(newX);
                this.mFloatWindowParams.y = getRealY(newY);
                this.windowManager.updateViewLayout(this, this.mFloatWindowParams);
                onLayoutParamChanged();
                this.xMoved += Math.abs(xInScreen - this.xDownInScreen);
                this.yMoved += Math.abs(yInScreen - this.yDownInScreen);
                break;
        }
        return true;
    }

    public void setOnClickListener(OnClickListener listener) {
        if (listener != null) {
            this.listener = listener;
        }
    }

    public void setOnLayoutParamListener(OnLayoutParamListener listener) {
        this.layoutListener = listener;
    }

    public void notifyViewChanged(int recorderViewStatus, boolean isRefresh) {
        int i = 1;
        if (this.mCurrentStatus != recorderViewStatus) {
            this.mCurrentStatus = recorderViewStatus;
            changeViewStatus(recorderViewStatus);
        }
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) this.record_switch.getLayoutParams();
        int width1 = (lp.width + lp.leftMargin) + lp.rightMargin;
        int height = (lp.height + lp.bottomMargin) + lp.topMargin;
        int i2 = recorderViewStatus == 0 ? 1 : 0;
        if (recorderViewStatus != 1) {
            i = 0;
        }
        if ((i | i2) != 0) {
            lp = (LinearLayout.LayoutParams) this.time_close.getLayoutParams();
            int width2 = (lp.width + lp.leftMargin) + lp.rightMargin;
            lp = (LinearLayout.LayoutParams) this.start_text.getLayoutParams();
            this.start_text.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            int width3 = (this.start_text.getMeasuredWidth() + lp.leftMargin) + lp.rightMargin;
            this.viewWidth = (width1 + width2) + width3;
            if (recorderViewStatus == 0) {
                this.viewHeight = height;
            }
            this.closeXPos = width1 + width3;
        } else {
            this.viewWidth = width1 + ((LinearLayout.LayoutParams) this.mTimer.getLayoutParams()).width;
        }
        updateLayoutParams(recorderViewStatus, isRefresh);
    }

    private void updateLayoutParams(int recorderViewStatus, boolean isRefresh) {
        this.mFloatWindowParams.width = this.viewWidth;
        this.mFloatWindowParams.height = this.viewHeight;
        if (recorderViewStatus == 0) {
            this.mFloatWindowParams.x = (this.displayWidth - this.viewWidth) - 54;
            this.mFloatWindowParams.y = ((this.displayHeight - this.viewHeight) - 54) - getNaviBarHeight();
            setLayoutParams(this.mFloatWindowParams);
            setOrientation(0);
            onLayoutParamChanged();
            this.mCurrentStatus = 1;
        } else {
            keepEdge(this.mFloatWindowParams.x, false);
            onLayoutParamChanged();
            if (recorderViewStatus != 2) {
                setWindowAlpha(1.0f);
            }
        }
        if (isRefresh) {
            startClickTimerIfNeed();
        }
    }

    private void onLayoutParamChanged() {
        if (this.layoutListener != null) {
            this.layoutListener.onLayoutParamChanged();
        }
    }

    private int getRealX(int currentX) {
        int fixOffsetX = 0;
        int screenState = DisplayUtils.getScreenRotateState(this.windowManager.getDefaultDisplay());
        if (this.layoutListener != null) {
            this.subWindowStubWidth = this.layoutListener.getSubWindowStubWidth();
            int newSubX = this.subWindowStubWidth;
            int newX = currentX;
            switch (screenState) {
                case 2:
                    if (DisplayUtils.hasNotchScreen()) {
                        fixOffsetX = DisplayUtils.getStatusBarHeight(this.mContext);
                        newSubX += fixOffsetX;
                        break;
                    }
                    break;
                case 3:
                    fixOffsetX = getNaviBarHeight();
                    newX -= fixOffsetX;
                    break;
            }
            if ((currentX - fixOffsetX) - this.subWindowStubWidth >= 0) {
                return newX;
            }
            return newSubX;
        }
        switch (screenState) {
            case 3:
                fixOffsetX = getNaviBarHeight();
                break;
        }
        this.subWindowStubWidth = 0;
        return currentX - fixOffsetX;
    }

    private int getRealY(int currentY) {
        if (this.layoutListener != null) {
            int subWindowHeight = this.layoutListener.getSubWindowHeight();
            int fixOffsetY = DisplayUtils.getStatusBarHeight(this.mContext);
            switch (DisplayUtils.getScreenRotateState(this.windowManager.getDefaultDisplay())) {
                case 2:
                case 3:
                    if (!isFullScreen()) {
                        fixOffsetY = DisplayUtils.getStatusBarHeight(this.mContext);
                        break;
                    }
                    fixOffsetY = 0;
                    break;
            }
            if ((currentY - fixOffsetY) - subWindowHeight >= 0) {
                return currentY;
            }
            return subWindowHeight + fixOffsetY;
        }
        if (isFullScreen()) {
            this.minDisplayY = 0;
        } else {
            this.minDisplayY = DisplayUtils.getStatusBarHeight(this.mContext);
        }
        if (currentY < this.minDisplayY) {
            currentY = this.minDisplayY;
        }
        return currentY;
    }

    private boolean isFullScreen() {
        return RecorderSwitchWindowManager.getInstance(ScreenRecorderApplication.getContext()).isFullScreen();
    }

    private int getNaviBarHeight() {
        return RecorderSwitchWindowManager.getInstance(ScreenRecorderApplication.getContext()).getNaviBarHeight();
    }

    private void keepEdge(int startX, boolean useAnim) {
        int end;
        int dWidth = 0;
        int deviceOri = this.mContext.getResources().getConfiguration().orientation;
        if (deviceOri == 2) {
            dWidth = Math.max(this.displayWidth, this.displayHeight);
        } else if (deviceOri == 1) {
            dWidth = Math.min(this.displayWidth, this.displayHeight);
        }
        int screenState = DisplayUtils.getScreenRotateState(this.windowManager.getDefaultDisplay());
        if (this.mFloatWindowParams.x + (this.mFloatWindowParams.width / 2) >= dWidth / 2) {
            end = getYtoRight(screenState, dWidth);
        } else {
            startX = this.mFloatWindowParams.x;
            end = getYtoLeft(screenState);
        }
        end = getRealX(end);
        if (useAnim) {
            SwitchWindowAnimator(startX, end);
            return;
        }
        this.mFloatWindowParams.x = end;
        this.windowManager.updateViewLayout(this, this.mFloatWindowParams);
    }

    private int getYtoRight(int screenState, int dWidth) {
        switch (screenState) {
            case 2:
                return ((dWidth - this.mFloatWindowParams.width) - getNaviBarHeight()) - 20;
            case 3:
                if (!DisplayUtils.hasNotchScreen()) {
                    return (dWidth - this.mFloatWindowParams.width) - 20;
                }
                if (getNaviBarHeight() == 0) {
                    return ((dWidth - this.mFloatWindowParams.width) - DisplayUtils.getStatusBarHeight(this.mContext)) - 20;
                }
                return ((dWidth - this.mFloatWindowParams.width) - (DisplayUtils.getStatusBarHeight(this.mContext) * 2)) - 20;
            default:
                return (dWidth - this.mFloatWindowParams.width) - 20;
        }
    }

    private int getYtoLeft(int screenState) {
        switch (screenState) {
            case 2:
                if (DisplayUtils.hasNotchScreen()) {
                    return (this.subWindowStubWidth + 20) + DisplayUtils.getStatusBarHeight(this.mContext);
                }
                return this.subWindowStubWidth + 20;
            case 3:
                return this.subWindowStubWidth + 20;
            default:
                return this.subWindowStubWidth + 20;
        }
    }

    private void changeViewStatus(int recorderViewStatus) {
        if (recorderViewStatus == 2) {
            this.mTimer.setBase(SystemClock.elapsedRealtime());
            this.mTimer.start();
            this.mTimer.setVisibility(0);
            this.time_close.setVisibility(8);
            this.start_text.setVisibility(8);
            this.record_switch.setBackgroundResource(R.drawable.stop);
            this.record_switch.setContentDescription(getResources().getString(R.string.stop_recording));
            return;
        }
        this.mTimer.stop();
        this.mTimer.setVisibility(8);
        this.time_close.setBackgroundResource(R.drawable.close);
        this.time_close.setVisibility(0);
        this.record_switch.setBackgroundResource(R.drawable.start);
        this.record_switch.setContentDescription(getResources().getString(R.string.start_recording));
        this.start_text.setVisibility(0);
    }

    public void changeSleepStatus() {
        setWindowAlpha(1.0f);
        startClickTimerIfNeed();
    }

    private void startClickTimerIfNeed() {
        if (MiuiScreenRecorderGlobalData.getInstance().getRecording()) {
            this.mClickTimer.cancel();
            this.mClickTimer.start();
        }
    }

    private void setWindowAlpha(float alpha) {
        super.setAlpha(alpha);
        this.mFloatWindowParams.alpha = alpha;
        this.windowManager.updateViewLayout(this, this.mFloatWindowParams);
    }

    protected void onDetachedFromWindow() {
        cancelAnimator();
        super.onDetachedFromWindow();
        this.mClickTimer.cancel();
    }

    private void SwitchWindowAnimator(int start, int end) {
        cancelAnimator();
        initSwitchWindowAnimator(start, end);
        this.mAnimator.start();
    }

    private void initSwitchWindowAnimator(final int start, final int end) {
        this.mAnimator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.mAnimator.setDuration(300);
        this.mAnimator.setTarget(this);
        this.mAnimator.setInterpolator(new CubicEaseOutInterpolator());
        this.mAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                Float value = (Float) animation.getAnimatedValue();
                if (end == RecorderSwitchWindow.this.subWindowStubWidth + 20 || end == (RecorderSwitchWindow.this.subWindowStubWidth + 20) + DisplayUtils.getStatusBarHeight(RecorderSwitchWindow.this.mContext)) {
                    RecorderSwitchWindow.this.mFloatWindowParams.x = (int) (((float) start) - (((float) (start - end)) * value.floatValue()));
                } else {
                    RecorderSwitchWindow.this.mFloatWindowParams.x = (int) (((float) start) + (((float) (end - start)) * value.floatValue()));
                }
                RecorderSwitchWindow.this.windowManager.updateViewLayout(RecorderSwitchWindow.this, RecorderSwitchWindow.this.mFloatWindowParams);
                RecorderSwitchWindow.this.onLayoutParamChanged();
            }
        });
        this.mAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                RecorderSwitchWindow.this.mCurrentArea = RecorderSwitchWindowHelper.dianWindowStay(RecorderSwitchWindow.this.mContext, RecorderSwitchWindow.this.mFloatWindowParams.x, RecorderSwitchWindow.this.mFloatWindowParams.y, RecorderSwitchWindow.this.displayWidth, RecorderSwitchWindow.this.displayHeight, RecorderSwitchWindow.this.mCurrentArea);
            }
        });
    }

    private void cancelAnimator() {
        if (this.mAnimator != null && this.mAnimator.isStarted()) {
            this.mAnimator.cancel();
        }
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        int orientation = newConfig.orientation;
        if (this.mOrientation != orientation) {
            this.mOrientation = orientation;
            int tmp = this.mFloatWindowParams.x;
            this.mFloatWindowParams.x = this.mFloatWindowParams.y;
            this.mFloatWindowParams.y = tmp;
            this.mFloatWindowParams.y = getRealY(this.mFloatWindowParams.y);
            keepEdge(this.mFloatWindowParams.x, true);
            if (this.layoutListener != null) {
                this.layoutListener.onConfigChanged(orientation);
            }
            if ("meri".equals(Build.DEVICE)) {
                post(new Runnable() {
                    public void run() {
                        RecorderSwitchWindow.this.invalidate();
                    }
                });
            }
        }
        Locale locale = ScreenRecorderUtils.getLocaleFromConfig(newConfig);
        if (!this.mLocale.equals(locale)) {
            this.mLocale = locale;
            this.start_text.setText(getResources().getString(R.string.start));
            if (this.mTimer != null) {
                this.mTimer.setTextLocale(locale);
            }
            notifyViewChanged(this.mCurrentStatus, false);
        }
    }
}
