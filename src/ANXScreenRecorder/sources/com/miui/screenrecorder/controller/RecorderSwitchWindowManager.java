package com.miui.screenrecorder.controller;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.miui.screenrecorder.tools.DisplayUtils;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.miui.screenrecorder.view.RecorderSwitchHintWindow;
import com.miui.screenrecorder.view.RecorderSwitchWindow;
import com.miui.screenrecorder.view.RecorderSwitchWindow.OnClickListener;

public class RecorderSwitchWindowManager implements RecorderControl {
    private static RecorderSwitchWindowManager mRecorderWindowManager;
    private final String TAG = "RecorderWindowManager";
    private View mCheckLeftTopView;
    private View mCheckRightBottomView;
    private Context mContext;
    private RecorderSwitchHintWindow mRecorderHint;
    private RecorderSwitchWindow mRecorderWindow;
    private int mScreenHeight;
    private int mScreenWidth;
    private WindowManager mWindowManager;

    private RecorderSwitchWindowManager(Context context) {
        this.mContext = context;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        this.mScreenWidth = displayMetrics.widthPixels;
        this.mScreenHeight = displayMetrics.heightPixels;
    }

    public static RecorderSwitchWindowManager getInstance(Context context) {
        if (mRecorderWindowManager == null) {
            mRecorderWindowManager = new RecorderSwitchWindowManager(context);
        }
        return mRecorderWindowManager;
    }

    public void createRecorderSwitchWindow(OnClickListener listener) {
        if (this.mRecorderWindow == null) {
            this.mCheckLeftTopView = createDetectView(51);
            this.mCheckRightBottomView = createDetectView(85);
            this.mRecorderWindow = new RecorderSwitchWindow(this.mContext);
            getWindowManager().addView(this.mRecorderWindow, this.mRecorderWindow.getFloatWindowParams());
            Log.v("RecorderWindowManager", "mRecorderWindow is added");
            this.mRecorderWindow.setOnClickListener(listener);
            initHint();
            return;
        }
        Log.e("RecorderWindowManager", "mRecorderWindow is existed");
        try {
            getWindowManager().addView(this.mRecorderWindow, this.mRecorderWindow.getFloatWindowParams());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void removeRecorderSwitchWindow() {
        if (this.mRecorderWindow != null) {
            if (this.mCheckLeftTopView != null) {
                getWindowManager().removeView(this.mCheckLeftTopView);
                this.mCheckLeftTopView = null;
            }
            if (this.mCheckRightBottomView != null) {
                getWindowManager().removeView(this.mCheckRightBottomView);
                this.mCheckRightBottomView = null;
            }
            getWindowManager().removeView(this.mRecorderWindow);
            this.mRecorderWindow = null;
            removeRecorderHintWindow();
        }
    }

    private void removeRecorderHintWindow() {
        if (this.mRecorderHint != null) {
            this.mRecorderHint.onDestroy();
            getWindowManager().removeView(this.mRecorderHint);
            this.mRecorderHint = null;
        }
    }

    private View createDetectView(int gravity) {
        View view = new View(this.mContext);
        LayoutParams params = new LayoutParams();
        params.flags = 56;
        params.gravity = gravity;
        params.height = 0;
        params.width = 0;
        if (VERSION.SDK_INT >= 26) {
            params.type = 2038;
        } else {
            params.type = 2006;
        }
        getWindowManager().addView(view, params);
        return view;
    }

    private WindowManager getWindowManager() {
        if (this.mWindowManager == null) {
            this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        }
        return this.mWindowManager;
    }

    private void initHint() {
        if (ScreenRecorderUtils.isShowRecordHint()) {
            ScreenRecorderUtils.setIsShowRecordHint(false);
            if (this.mRecorderHint == null && this.mRecorderWindow != null) {
                this.mRecorderHint = new RecorderSwitchHintWindow(this.mContext, this.mRecorderWindow);
                getWindowManager().addView(this.mRecorderHint, this.mRecorderHint.getFloatWindowParams());
                this.mRecorderWindow.postDelayed(new Runnable() {
                    public void run() {
                        RecorderSwitchWindowManager.this.removeRecorderHintWindow();
                    }
                }, 5000);
            }
        }
    }

    public void notifyViewChanged(int recorderViewStatus, boolean isRefresh) {
        if (this.mRecorderWindow != null) {
            this.mRecorderWindow.notifyViewChanged(recorderViewStatus, isRefresh);
            if (recorderViewStatus != 0 && !ScreenRecorderUtils.isShowRecordHint()) {
                removeRecorderHintWindow();
            }
        }
    }

    public boolean isFullScreen() {
        if (this.mCheckLeftTopView == null) {
            return false;
        }
        int[] location = new int[2];
        this.mCheckLeftTopView.getLocationOnScreen(location);
        if (location[1] == 0) {
            return true;
        }
        return false;
    }

    public int getNaviBarHeight() {
        if (isNaviBarVisible()) {
            return DisplayUtils.getNavigationBarHeight(this.mContext);
        }
        return 0;
    }

    public boolean isNaviBarVisible() {
        boolean isShow = true;
        if (this.mCheckRightBottomView == null || this.mCheckLeftTopView == null) {
            return 1;
        }
        int[] location = new int[2];
        switch (DisplayUtils.getScreenRotateState(getWindowManager().getDefaultDisplay())) {
            case 0:
                this.mCheckRightBottomView.getLocationOnScreen(location);
                if (location[1] == this.mScreenHeight) {
                    isShow = false;
                    break;
                }
                break;
            case 1:
                this.mCheckRightBottomView.getLocationOnScreen(location);
                if (location[1] == 0) {
                    isShow = false;
                    break;
                }
                break;
            case 2:
                this.mCheckRightBottomView.getLocationOnScreen(location);
                if (location[0] == this.mScreenHeight) {
                    isShow = false;
                    break;
                }
                break;
            case 3:
                this.mCheckLeftTopView.getLocationOnScreen(location);
                if (location[0] == 0) {
                    isShow = false;
                    break;
                }
                break;
        }
        return isShow;
    }
}
