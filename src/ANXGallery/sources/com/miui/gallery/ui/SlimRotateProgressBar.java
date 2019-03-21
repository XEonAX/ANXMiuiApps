package com.miui.gallery.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import com.nexstreaming.nexeditorsdk.nexProject;
import miui.view.animation.CubicEaseInInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class SlimRotateProgressBar extends SpaceRotateProgressBar {
    public SlimRotateProgressBar(Context context) {
        this(context, null);
    }

    public SlimRotateProgressBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlimRotateProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
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
        int number = (int) (spaceNumber / 1000);
        this.mRotateRing.setHeadMaxAlpha(this.mRotateRing.getHeadMinAlpha());
        changeNumberWithNoAnim(number);
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
                    SlimRotateProgressBar.this.changeNumberEndStageAnim(number, listenerAdapter);
                }
            });
        } else {
            changeNumberWithAnim(number, listenerAdapter);
        }
    }

    public void pause() {
        int stopAngle = 50;
        if (this.mRingRotateAnimator == null || !this.mRingRotateAnimator.isRunning()) {
            stopAngle = 0;
        } else {
            this.mRingRotateAnimator.cancel();
        }
        cancelAnimIfRunning(this.mNumberAnimator);
        this.mRingRotateAnimator = ObjectAnimator.ofInt(this.mRotateRing, "progress", new int[]{this.mRotateRing.getProgress(), this.mRotateRing.getProgress() + stopAngle});
        this.mRingRotateAnimator.setDuration(250);
        this.mRingRotateAnimator.setInterpolator(new CubicEaseOutInterpolator());
        this.mRingRotateAnimator.start();
    }

    public void resume() {
        if (this.mRingRotateAnimator != null && this.mRingRotateAnimator.isRunning()) {
            this.mRingRotateAnimator.cancel();
        }
        this.mRotateRing.setStartRotateStable();
        this.mRingRotateAnimator = ObjectAnimator.ofInt(this.mRotateRing, "progress", new int[]{this.mRotateRing.getProgress(), this.mRotateRing.getProgress() + 50});
        this.mRingRotateAnimator.setDuration(200);
        this.mRingRotateAnimator.setInterpolator(new CubicEaseInInterpolator());
        this.mRingRotateAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                SlimRotateProgressBar.this.startRotateRingAnim(false);
            }
        });
        this.mRingRotateAnimator.start();
    }

    protected int getChangeDuration(int endNumber) {
        int interval = Math.abs(endNumber - getSpaceNumber());
        if (interval < 15000) {
            return 500;
        }
        if (interval < 500000) {
            return nexProject.kAutoThemeTransitionDuration;
        }
        return 3000;
    }
}
