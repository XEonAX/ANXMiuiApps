package com.miui.gallery.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.widget.RightTopCornerTextView;
import com.miui.gallery.widget.RotateRingView;
import com.nexstreaming.nexeditorsdk.nexClip;
import com.nexstreaming.nexeditorsdk.nexProject;
import miui.view.animation.CubicEaseInOutInterpolator;
import miui.view.animation.SineEaseOutInterpolator;

public class SpaceRotateProgressBar extends FrameLayout {
    protected TextView mDescriptionText;
    protected TextView mDetailDescriptionText;
    protected ImageView mEmptyValueView;
    protected ObjectAnimator mNumberAnimator;
    protected ObjectAnimator mRingAlphaAnimator;
    protected ObjectAnimator mRingHeadAnimator;
    protected ObjectAnimator mRingRotateAnimator;
    protected RotateRingView mRotateRing;
    private int mSpaceNumber;
    protected RightTopCornerTextView mSpaceNumberView;

    public SpaceRotateProgressBar(Context context) {
        this(context, null);
    }

    public SpaceRotateProgressBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SpaceRotateProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        View view = LayoutInflater.from(context).inflate(R.layout.space_rotate_progress_bar, this);
        this.mDescriptionText = (TextView) view.findViewById(R.id.value_description);
        this.mDetailDescriptionText = (TextView) view.findViewById(R.id.value_detail_description);
        this.mSpaceNumberView = (RightTopCornerTextView) view.findViewById(R.id.used_value);
        this.mRotateRing = (RotateRingView) view.findViewById(R.id.rotate_ring);
        this.mEmptyValueView = (ImageView) view.findViewById(R.id.value_empty_view);
    }

    protected final void startRotateRingAnim(boolean keepIfRunning) {
        if (this.mRingRotateAnimator != null && this.mRingRotateAnimator.isRunning()) {
            if (!keepIfRunning) {
                this.mRingRotateAnimator.cancel();
            } else {
                return;
            }
        }
        this.mRotateRing.setStartRotateStable();
        this.mRingRotateAnimator = ObjectAnimator.ofInt(this.mRotateRing, "progress", new int[]{this.mRotateRing.getProgress(), this.mRotateRing.getProgress() + 359});
        this.mRingRotateAnimator.setDuration(Math.round(1333.3333333333333d));
        this.mRingRotateAnimator.setRepeatCount(-1);
        this.mRingRotateAnimator.setRepeatMode(-1);
        this.mRingRotateAnimator.setInterpolator(new LinearInterpolator());
        this.mRingRotateAnimator.start();
    }

    protected final void changeNumberWithAnim(int endNumber, AnimatorListenerAdapter listenerAdapter) {
        cancelAnimIfRunning(this.mNumberAnimator);
        this.mNumberAnimator = ObjectAnimator.ofInt(this, "spaceNumber", new int[]{getSpaceNumber(), endNumber});
        this.mNumberAnimator.setDuration((long) getChangeDuration(endNumber));
        this.mNumberAnimator.setInterpolator(new LinearInterpolator());
        if (listenerAdapter != null) {
            this.mNumberAnimator.addListener(listenerAdapter);
        }
        this.mNumberAnimator.start();
    }

    protected int getChangeDuration(int endNumber) {
        if (Math.abs(endNumber - getSpaceNumber()) < 500000) {
            return nexProject.kAutoThemeTransitionDuration;
        }
        return 3000;
    }

    protected final void changeNumberEndStageAnim(int endNumber, AnimatorListenerAdapter listenerAdapter) {
        int stopAngle = nexClip.kClip_Rotate_180;
        if (this.mRingRotateAnimator == null || !this.mRingRotateAnimator.isRunning()) {
            stopAngle = 0;
        } else {
            this.mRingRotateAnimator.cancel();
        }
        this.mRingRotateAnimator = ObjectAnimator.ofInt(this.mRotateRing, "progress", new int[]{this.mRotateRing.getProgress(), this.mRotateRing.getProgress() + stopAngle});
        cancelAnimIfRunning(this.mNumberAnimator);
        this.mNumberAnimator = ObjectAnimator.ofInt(this, "spaceNumber", new int[]{getSpaceNumber(), endNumber});
        AnimatorSet animSet = new AnimatorSet();
        animSet.play(this.mNumberAnimator).with(this.mRingRotateAnimator);
        animSet.setDuration(1000);
        animSet.setInterpolator(new DecelerateInterpolator());
        if (listenerAdapter != null) {
            animSet.addListener(listenerAdapter);
        }
        animSet.start();
        disappearRingHeadAnim(1000);
    }

    protected final void disappearRingHeadAnim(long timeDuration) {
        if (this.mRotateRing.getHeadMaxAlpha() > this.mRotateRing.getHeadMinAlpha()) {
            cancelAnimIfRunning(this.mRingHeadAnimator);
            this.mRingHeadAnimator = ObjectAnimator.ofInt(this.mRotateRing, "headMaxAlpha", new int[]{maxAlpha, minAlpha});
            this.mRingHeadAnimator.setDuration(timeDuration);
            this.mRingHeadAnimator.setInterpolator(new SineEaseOutInterpolator());
            this.mRingHeadAnimator.start();
        }
    }

    protected final void disappearRingCircleAnim() {
        cancelAnimIfRunning(this.mRingAlphaAnimator);
        this.mRingAlphaAnimator = ObjectAnimator.ofFloat(this.mRotateRing, "alpha", new float[]{1.0f, 0.0f});
        this.mRingAlphaAnimator.setDuration(500);
        this.mRingAlphaAnimator.setInterpolator(new CubicEaseInOutInterpolator());
        this.mRingAlphaAnimator.start();
    }

    protected final void appearRingCircleAnim() {
        cancelAnimIfRunning(this.mRingAlphaAnimator);
        this.mRingAlphaAnimator = ObjectAnimator.ofFloat(this.mRotateRing, "alpha", new float[]{0.0f, 1.0f});
        this.mRingAlphaAnimator.setDuration(500);
        this.mRingAlphaAnimator.setInterpolator(new CubicEaseInOutInterpolator());
        this.mRingAlphaAnimator.start();
    }

    public void cancelAllAnim() {
        cancelAnimIfRunning(this.mNumberAnimator);
        cancelAnimIfRunning(this.mRingRotateAnimator);
        cancelAnimIfRunning(this.mRingHeadAnimator);
        cancelAnimIfRunning(this.mRingAlphaAnimator);
    }

    protected void cancelAnimIfRunning(Animator anim) {
        if (anim != null) {
            anim.removeAllListeners();
            if (anim.isRunning()) {
                anim.cancel();
            }
        }
    }

    protected final void changeNumberWithNoAnim(int number) {
        setSpaceNumber(number);
    }

    public void setDescription(String description) {
        this.mDescriptionText.setText(description);
    }

    public void setDetailDescription(String description) {
        if (TextUtils.isEmpty(description)) {
            this.mDetailDescriptionText.setVisibility(8);
            return;
        }
        this.mDetailDescriptionText.setVisibility(0);
        this.mDetailDescriptionText.setText(description);
    }

    public void setSpaceNumber(int number) {
        this.mSpaceNumber = number;
        if (number < 100) {
            number = 100;
        }
        String numberText = String.format("%.1f", new Object[]{Float.valueOf(((float) (number - (number % 100))) / 1000.0f)});
        int cornerTextResId = R.string.megabyteShort;
        if (number > 900) {
            number /= 1000;
            if (number > 0) {
                numberText = String.format("%d", new Object[]{Integer.valueOf(number)});
                cornerTextResId = R.string.megabyteShort;
            }
        }
        if (number > 900) {
            numberText = String.format("%.1f", new Object[]{Float.valueOf(((float) number) / 1000.0f)});
            cornerTextResId = R.string.gigabyteShort;
        }
        this.mSpaceNumberView.setText(numberText);
        this.mSpaceNumberView.setCornerText(getResources().getString(cornerTextResId));
    }

    public int getSpaceNumber() {
        return this.mSpaceNumber;
    }

    public boolean isRotating() {
        return this.mRingRotateAnimator != null && this.mRingRotateAnimator.isRunning();
    }
}
