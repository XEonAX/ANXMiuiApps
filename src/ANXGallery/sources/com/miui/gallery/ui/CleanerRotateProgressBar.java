package com.miui.gallery.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import com.miui.gallery.R;
import com.miui.gallery.threadpool.ThreadManager;
import miui.view.animation.CubicEaseInOutInterpolator;

public class CleanerRotateProgressBar extends SpaceRotateProgressBar {
    private boolean mHasShowEmptyAnim;

    public CleanerRotateProgressBar(Context context) {
        this(context, null);
    }

    public CleanerRotateProgressBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CleanerRotateProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mHasShowEmptyAnim = false;
        setDescription(getContext().getString(R.string.cleaner_space_description));
    }

    public void hideRingCircle(boolean anim) {
        if (anim) {
            disappearRingCircleAnim();
        } else {
            this.mRotateRing.setAlpha(0.0f);
        }
        setDetailDescription(getContext().getString(R.string.cleaner_space_detail_description));
    }

    public void showRingCircle(boolean anim) {
        if (anim) {
            appearRingCircleAnim();
        } else {
            this.mRotateRing.setAlpha(1.0f);
        }
        setDetailDescription(null);
    }

    public void setNumber(long spaceNumber) {
        setNumber(spaceNumber, false);
    }

    public void setNumber(long spaceNumber, boolean anim) {
        if (anim) {
            setNumber(spaceNumber, false, null);
            return;
        }
        cancelAllAnim();
        changeNumberWithNoAnim((int) (spaceNumber / 1000));
    }

    public void setNumber(long spaceNumber, boolean isEnd, final Runnable callback) {
        AnimatorListenerAdapter listenerAdapter;
        startRotateRingAnim(true);
        final int number = (int) (spaceNumber / 1000);
        if (callback != null) {
            listenerAdapter = new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    callback.run();
                }
            };
        } else {
            listenerAdapter = null;
        }
        if (isEnd) {
            changeNumberWithAnim(getSpaceNumber() + (((number - getSpaceNumber()) * 7) / 10), new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    CleanerRotateProgressBar.this.changeNumberEndStageAnim(number, listenerAdapter);
                }
            });
        } else {
            changeNumberWithAnim(number, listenerAdapter);
        }
    }

    public void showEmptyAnim() {
        showEmptyAnim(0);
    }

    public void showEmptyAnim(long delay) {
        if (!this.mHasShowEmptyAnim) {
            ThreadManager.getMainHandler().postDelayed(new Runnable() {
                public void run() {
                    CleanerRotateProgressBar.this.mHasShowEmptyAnim = true;
                    CleanerRotateProgressBar.this.cancelAllAnim();
                    ObjectAnimator alphaAnimator = ObjectAnimator.ofFloat(CleanerRotateProgressBar.this.mSpaceNumberView, "alpha", new float[]{1.0f, 0.0f});
                    alphaAnimator.setDuration(250);
                    alphaAnimator.setInterpolator(new CubicEaseInOutInterpolator());
                    alphaAnimator.addListener(new AnimatorListenerAdapter() {
                        public void onAnimationStart(Animator animation) {
                            CleanerRotateProgressBar.this.showRingCircle(true);
                            CleanerRotateProgressBar.this.setDescription(CleanerRotateProgressBar.this.getContext().getString(R.string.cleaner_empty_value_description));
                        }

                        public void onAnimationEnd(Animator animation) {
                            CleanerRotateProgressBar.this.mSpaceNumberView.setVisibility(4);
                            CleanerRotateProgressBar.this.mEmptyValueView.setVisibility(0);
                            ((AnimationDrawable) CleanerRotateProgressBar.this.mEmptyValueView.getDrawable()).start();
                        }
                    });
                    alphaAnimator.start();
                }
            }, delay);
        } else if (this.mEmptyValueView != null) {
            this.mEmptyValueView.setImageDrawable(getContext().getResources().getDrawable(R.drawable.tree_frame_20));
            showRingCircle(false);
        }
    }
}
