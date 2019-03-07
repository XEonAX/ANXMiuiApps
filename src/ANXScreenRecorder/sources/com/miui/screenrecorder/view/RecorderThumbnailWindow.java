package com.miui.screenrecorder.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.provider.MiuiSettings.System;
import android.provider.Settings.Global;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.compat.MiuiSettingsCompat;
import com.miui.screenrecorder.compat.WindowManagerCompat;
import com.miui.screenrecorder.tools.DisplayUtils;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MediaFileUtils;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.MiStatKey;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import java.lang.reflect.Method;

public class RecorderThumbnailWindow {
    private static final int SHAKE_ANIMATOR_DURATION = 600;
    private static final int SLIDE_OUT_VELOCITY_THRESHOLD_DP = -170;
    public static final String TAG = "RecorderThumbnailWindow";
    private static final float THUMBNAIL_SCALE = 0.185f;
    private static final int THUMBNAIL_SUSPENDING_TIME = 3600;
    private Context mContext;
    private Display mDisplay;
    private DisplayMetrics mDisplayMetrics;
    private String mFilePath;
    private Handler mHandler = new Handler();
    private boolean mIsInOutAnimating;
    private boolean mIsQuited;
    private boolean mIsThumbnailMoving;
    private Runnable mQuitThumbnailRunnable = new Runnable() {
        public void run() {
            MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_THUMBNAIL_WINDOW, MiStatKey.EVENT_THUMBNAIL_WINDOW_REMOVE_TIMEOUT);
            RecorderThumbnailWindow.this.quitThumbnailWindow(true);
        }
    };
    private Ringtone mRingtone;
    private Bitmap mScreenBitmap;
    private AnimatorSet mScreenshotAnimation;
    private View mScreenshotLayout;
    private View mScreenshotMaskPenal;
    private ImageView mScreenshotView;
    private int mShotMarginTop;
    private LayoutParams mThumbnailLayoutParams;
    private int mThumbnailMarginRight;
    private int mThumbnailMarginTop;
    private View mThumbnailRootView;
    private ValueAnimator mThumbnailShakeAnimator;
    private ImageView mThumbnailView;
    private float mTouchDownY;
    private VelocityTracker mVTracker = VelocityTracker.obtain();
    private LayoutParams mWindowLayoutParams;
    private WindowManager mWindowManager;

    public RecorderThumbnailWindow(Context context, String filePath) {
        this.mContext = context;
        this.mFilePath = filePath;
        init();
    }

    private void initWindow() {
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        this.mDisplay = this.mWindowManager.getDefaultDisplay();
        this.mDisplayMetrics = new DisplayMetrics();
        this.mDisplay.getRealMetrics(this.mDisplayMetrics);
        this.mWindowLayoutParams = new LayoutParams(-1, -1, 0, 0, WindowManagerCompat.LayoutParams.TYPE_SECURE_SYSTEM_OVERLAY, 17302784, -3);
        this.mWindowLayoutParams.setTitle("ScreenRecorderAnimation");
    }

    private void initScreenshotView(LayoutInflater layoutInflater) {
        this.mScreenshotLayout = layoutInflater.inflate(R.layout.global_screenshot, null);
        this.mScreenshotView = (ImageView) this.mScreenshotLayout.findViewById(R.id.global_screenshot);
        this.mScreenshotMaskPenal = this.mScreenshotLayout.findViewById(R.id.global_screenshot_mask);
        this.mScreenshotLayout.setFocusable(true);
        this.mScreenshotLayout.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                return true;
            }
        });
    }

    private void initThumbnailView(LayoutInflater layoutInflater) {
        this.mThumbnailRootView = layoutInflater.inflate(R.layout.global_screenshot_thumbnail, null);
        this.mThumbnailView = (ImageView) this.mThumbnailRootView.findViewById(R.id.imageView);
        this.mThumbnailView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                RecorderThumbnailWindow.this.onThumbnailViewTouch(event);
                return true;
            }
        });
        this.mShotMarginTop = this.mContext.getResources().getDimensionPixelSize(R.dimen.screenshot_thumbnail_padding_top);
        this.mThumbnailMarginRight = this.mContext.getResources().getDimensionPixelSize(R.dimen.screenshot_thumbnail_padding_right);
        if (!DisplayUtils.hasNotchScreen() || VERSION.SDK_INT < 28) {
            this.mThumbnailMarginTop = this.mShotMarginTop;
        } else {
            this.mThumbnailMarginTop = this.mShotMarginTop + DisplayUtils.getStatusBarHeight(this.mContext);
        }
        this.mThumbnailLayoutParams = new LayoutParams(0, 0, this.mThumbnailMarginRight, this.mThumbnailMarginTop, 2014, 17303304, -3);
        this.mThumbnailLayoutParams.gravity = 53;
        this.mThumbnailLayoutParams.setTitle("ScreenrecorderThumbnail");
        int maxShakeOffset = (int) ((this.mContext.getResources().getDisplayMetrics().density * 3.0f) + 0.5f);
        this.mThumbnailShakeAnimator = ValueAnimator.ofInt(new int[]{0, maxShakeOffset});
        this.mThumbnailShakeAnimator.setDuration(600);
        this.mThumbnailShakeAnimator.setInterpolator(new DecelerateInterpolator());
        this.mThumbnailShakeAnimator.setRepeatCount(-1);
        this.mThumbnailShakeAnimator.setRepeatMode(2);
        this.mThumbnailShakeAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                RecorderThumbnailWindow.this.moveThumbnailWindowY(((Integer) animation.getAnimatedValue()).intValue() + RecorderThumbnailWindow.this.mThumbnailMarginTop);
            }
        });
    }

    private void init() {
        initWindow();
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        initScreenshotView(layoutInflater);
        initThumbnailView(layoutInflater);
        this.mRingtone = RingtoneManager.getRingtone(this.mContext, Uri.parse("android.resource://" + this.mContext.getPackageName() + "/" + R.raw.screenshot));
        if (this.mRingtone != null) {
            this.mRingtone.setStreamType(5);
        }
    }

    private void onThumbnailViewTouch(MotionEvent event) {
        if (!this.mIsInOutAnimating) {
            event.setLocation(event.getRawX(), event.getRawY());
            this.mVTracker.addMovement(event);
            switch (event.getAction()) {
                case 0:
                    this.mTouchDownY = event.getRawY();
                    this.mHandler.removeCallbacks(this.mQuitThumbnailRunnable);
                    this.mThumbnailShakeAnimator.cancel();
                    return;
                case 1:
                case 3:
                    if (this.mIsThumbnailMoving) {
                        this.mVTracker.computeCurrentVelocity(1000);
                        if (this.mVTracker.getYVelocity() < ((float) ((int) (this.mContext.getResources().getDisplayMetrics().density * -170.0f)))) {
                            MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_THUMBNAIL_WINDOW, MiStatKey.EVENT_THUMBNAIL_WINDOW_REMOVE_MANUAL);
                            quitThumbnailWindow(true);
                        } else {
                            ValueAnimator animator = ValueAnimator.ofInt(new int[]{this.mThumbnailLayoutParams.y, this.mThumbnailMarginTop});
                            animator.setDuration(100);
                            animator.addUpdateListener(new AnimatorUpdateListener() {
                                public void onAnimationUpdate(ValueAnimator animation) {
                                    RecorderThumbnailWindow.this.moveThumbnailWindowY(((Integer) animation.getAnimatedValue()).intValue());
                                }
                            });
                            animator.addListener(new AnimatorListenerAdapter() {
                                public void onAnimationEnd(Animator animation) {
                                    if (RecorderThumbnailWindow.this.mThumbnailRootView.getWindowToken() != null) {
                                        RecorderThumbnailWindow.this.mThumbnailShakeAnimator.start();
                                    }
                                }
                            });
                            animator.setInterpolator(new AccelerateInterpolator());
                            animator.start();
                            this.mHandler.postDelayed(this.mQuitThumbnailRunnable, 3600);
                        }
                    } else if (!onThumbnailViewClick()) {
                        this.mHandler.postDelayed(this.mQuitThumbnailRunnable, 3600);
                        this.mThumbnailShakeAnimator.start();
                    }
                    this.mIsThumbnailMoving = false;
                    this.mVTracker.clear();
                    return;
                case 2:
                    int offsetY = (int) (event.getRawY() - this.mTouchDownY);
                    if (!this.mIsThumbnailMoving && Math.abs(offsetY) > ViewConfiguration.get(this.mContext).getScaledTouchSlop()) {
                        this.mIsThumbnailMoving = true;
                    }
                    int realUseOffsetY = offsetY;
                    if (offsetY > 0) {
                        realUseOffsetY = (int) Math.pow((double) realUseOffsetY, 0.7d);
                    }
                    moveThumbnailWindowY(((Integer) this.mThumbnailShakeAnimator.getAnimatedValue()).intValue() + (this.mThumbnailMarginTop + realUseOffsetY));
                    return;
                default:
                    return;
            }
        }
    }

    private void moveThumbnailWindowY(int y) {
        if (this.mThumbnailRootView.getWindowToken() != null) {
            this.mThumbnailLayoutParams.y = y;
            this.mWindowManager.updateViewLayout(this.mThumbnailRootView, this.mThumbnailLayoutParams);
        }
    }

    private boolean onThumbnailViewClick() {
        MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_THUMBNAIL_WINDOW, MiStatKey.EVENT_THUMBNAIL_WINDOW_CLICK);
        this.mThumbnailView.setEnabled(false);
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                RecorderThumbnailWindow.this.quitThumbnailWindow(false);
            }
        }, 70);
        ScreenRecorderUtils.playVideo(this.mContext, MediaFileUtils.convertTmpFileName(this.mFilePath));
        return true;
    }

    private void quitThumbnailWindow(boolean isAnimating) {
        if (this.mThumbnailView.getWindowToken() != null && !this.mIsQuited) {
            this.mIsQuited = true;
            this.mHandler.removeCallbacks(this.mQuitThumbnailRunnable);
            this.mThumbnailShakeAnimator.cancel();
            if (isAnimating) {
                this.mIsInOutAnimating = true;
                final int initWindowY = this.mThumbnailLayoutParams.y;
                ValueAnimator animator = ValueAnimator.ofInt(new int[]{0, this.mThumbnailView.getHeight() + this.mThumbnailMarginTop});
                animator.setDuration(150);
                animator.setInterpolator(new LinearInterpolator());
                animator.addUpdateListener(new AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimator animation) {
                        RecorderThumbnailWindow.this.moveThumbnailWindowY(initWindowY - ((Integer) animation.getAnimatedValue()).intValue());
                    }
                });
                animator.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationEnd(Animator animation) {
                        if (RecorderThumbnailWindow.this.mThumbnailRootView.getWindowToken() != null) {
                            RecorderThumbnailWindow.this.mWindowManager.removeView(RecorderThumbnailWindow.this.mThumbnailRootView);
                            RecorderThumbnailWindow.this.mIsInOutAnimating = false;
                        }
                    }
                });
                animator.start();
                return;
            }
            this.mWindowManager.removeView(this.mThumbnailRootView);
        }
    }

    public void showWindow() {
        if (!TextUtils.isEmpty(this.mFilePath) && getRecorderBitmap()) {
            MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_THUMBNAIL_WINDOW, MiStatKey.EVENT_THUMBNAIL_WINDOW_SHOW);
            showThumbnailWindow();
        }
    }

    private void showThumbnailWindow() {
        if (this.mScreenBitmap != null) {
            if (this.mThumbnailRootView.getWindowToken() != null) {
                quitThumbnailWindow(false);
            }
            int thumbnailHeight = (int) ((((float) this.mScreenBitmap.getHeight()) * THUMBNAIL_SCALE) + 0.5f);
            this.mThumbnailView.getLayoutParams().width = (int) ((((float) this.mScreenBitmap.getWidth()) * THUMBNAIL_SCALE) + 0.5f);
            this.mThumbnailView.getLayoutParams().height = thumbnailHeight;
            this.mThumbnailRootView.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            this.mThumbnailRootView.layout(0, 0, this.mThumbnailRootView.getMeasuredWidth(), this.mThumbnailRootView.getMeasuredHeight());
            this.mThumbnailLayoutParams.y = this.mThumbnailMarginTop;
            this.mThumbnailLayoutParams.width = this.mThumbnailRootView.getWidth();
            this.mThumbnailLayoutParams.height = this.mThumbnailRootView.getHeight();
            this.mIsQuited = false;
            try {
                this.mWindowManager.addView(this.mThumbnailRootView, this.mThumbnailLayoutParams);
            } catch (IllegalStateException e) {
                e.printStackTrace();
                this.mWindowManager.removeView(this.mThumbnailRootView);
                this.mWindowManager.addView(this.mThumbnailRootView, this.mThumbnailLayoutParams);
            }
            this.mHandler.postDelayed(this.mQuitThumbnailRunnable, 3600);
            this.mThumbnailView.setImageBitmap(this.mScreenBitmap);
            this.mThumbnailView.setEnabled(true);
        }
    }

    private boolean getRecorderBitmap() {
        try {
            Method method = Class.forName("miui.util.ScreenshotUtils").getMethod("getScreenshot", new Class[]{Context.class});
            if (VERSION.SDK_INT >= 28) {
                Bitmap bitmap = (Bitmap) method.invoke(null, new Object[]{this.mContext});
                this.mScreenBitmap = bitmap.copy(Config.RGB_565, true);
                bitmap.recycle();
            } else {
                this.mScreenBitmap = (Bitmap) method.invoke(null, new Object[]{this.mContext});
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "error in getRecorderBitmap", e);
        }
        if (this.mScreenBitmap == null) {
            return false;
        }
        this.mScreenBitmap.setHasAlpha(false);
        this.mScreenBitmap.prepareToDraw();
        this.mDisplay.getRealMetrics(this.mDisplayMetrics);
        startAnimation();
        return true;
    }

    private void startAnimation() {
        this.mScreenshotView.setImageBitmap(this.mScreenBitmap);
        this.mScreenshotLayout.requestFocus();
        this.mScreenshotView.setScaleX(1.0f);
        this.mScreenshotView.setScaleY(1.0f);
        if (this.mScreenshotAnimation != null) {
            this.mScreenshotAnimation.end();
        }
        this.mWindowManager.addView(this.mScreenshotLayout, this.mWindowLayoutParams);
        this.mScreenshotAnimation = new AnimatorSet();
        this.mScreenshotAnimation.playSequentially(new Animator[]{createFinishAnimation()});
        this.mScreenshotAnimation.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                if (RecorderThumbnailWindow.this.isShowThumbnail()) {
                    RecorderThumbnailWindow.this.startGotoThumbnailAnimation();
                } else {
                    RecorderThumbnailWindow.this.mWindowManager.removeView(RecorderThumbnailWindow.this.mScreenshotLayout);
                }
            }
        });
        this.mScreenshotLayout.post(new Runnable() {
            public void run() {
                if (RecorderThumbnailWindow.this.mRingtone != null && RecorderThumbnailWindow.this.hasScreenshotSoundEnabled(RecorderThumbnailWindow.this.mContext)) {
                    RecorderThumbnailWindow.this.mRingtone.play();
                }
                RecorderThumbnailWindow.this.mScreenshotView.setLayerType(2, null);
                RecorderThumbnailWindow.this.mScreenshotView.buildLayer();
                RecorderThumbnailWindow.this.mScreenshotAnimation.start();
            }
        });
    }

    private boolean hasScreenshotSoundEnabled(Context context) {
        return System.getBooleanForUser(context.getContentResolver(), MiuiSettingsCompat.System.HAS_SCREENSHOT_SOUND, true, 0);
    }

    private boolean isShowThumbnail() {
        return Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0;
    }

    private void startGotoThumbnailAnimation() {
        showThumbnailWindow();
        this.mScreenshotView.post(new Runnable() {
            public void run() {
                int[] marginPos = new int[2];
                RecorderThumbnailWindow.this.mScreenshotView.getLocationOnScreen(marginPos);
                float screenW = (float) RecorderThumbnailWindow.this.mScreenBitmap.getWidth();
                float pivotX = RecorderThumbnailWindow.calcPivot(0.0f, (float) RecorderThumbnailWindow.this.mScreenshotView.getWidth(), (((screenW - ((float) RecorderThumbnailWindow.this.mThumbnailMarginRight)) - ((float) RecorderThumbnailWindow.this.mThumbnailLayoutParams.width)) + ((float) RecorderThumbnailWindow.this.mThumbnailView.getLeft())) - ((float) marginPos[0]), (float) RecorderThumbnailWindow.this.mThumbnailView.getWidth());
                float pivotY = RecorderThumbnailWindow.calcPivot(0.0f, (float) RecorderThumbnailWindow.this.mScreenshotView.getHeight(), (float) (RecorderThumbnailWindow.this.mShotMarginTop + RecorderThumbnailWindow.this.mThumbnailView.getTop()), (float) RecorderThumbnailWindow.this.mThumbnailView.getHeight());
                RecorderThumbnailWindow.this.mScreenshotView.setPivotX(pivotX);
                RecorderThumbnailWindow.this.mScreenshotView.setPivotY(pivotY);
                float shotScale = (RecorderThumbnailWindow.THUMBNAIL_SCALE * screenW) / ((float) RecorderThumbnailWindow.this.mScreenshotView.getWidth());
                RecorderThumbnailWindow.this.mIsInOutAnimating = true;
                RecorderThumbnailWindow.this.mScreenshotView.animate().setDuration(300).scaleX(shotScale).scaleY(shotScale).withEndAction(new Runnable() {
                    public void run() {
                        RecorderThumbnailWindow.this.mScreenshotView.post(new Runnable() {
                            public void run() {
                                RecorderThumbnailWindow.this.mWindowManager.removeView(RecorderThumbnailWindow.this.mScreenshotLayout);
                                RecorderThumbnailWindow.this.mThumbnailShakeAnimator.start();
                                RecorderThumbnailWindow.this.mIsInOutAnimating = false;
                            }
                        });
                    }
                }).start();
            }
        });
    }

    private static float calcPivot(float bigStart, float bigSize, float shortStart, float shortSize) {
        return (((shortStart - bigStart) * shortSize) / (bigSize - shortSize)) + shortStart;
    }

    private Animator createFinishAnimation() {
        Animator anim = ValueAnimator.ofFloat(new float[]{0.0f, 0.0f});
        anim.setDuration(0);
        anim.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                RecorderThumbnailWindow.this.mScreenshotMaskPenal.setVisibility(8);
            }
        });
        return anim;
    }
}
