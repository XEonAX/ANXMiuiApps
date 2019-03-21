package com.miui.gallery.search.transitions;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;

public class FadeOutInTransform extends Transition {
    private void captureValues(TransitionValues values, boolean start) {
        values.values.put("customtransition:fade_transform:alpha", Float.valueOf(values.view.getAlpha()));
        values.values.put("customtransition:fade_transform:start", Boolean.valueOf(start));
    }

    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues, true);
    }

    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues, false);
    }

    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        if (startValues == null || endValues == null) {
            return null;
        }
        final View view = endValues.view;
        final float startAlpha = ((Float) startValues.values.get("customtransition:fade_transform:alpha")).floatValue();
        float total = ((Float) endValues.values.get("customtransition:fade_transform:alpha")).floatValue() + startAlpha;
        Animator animator = ValueAnimator.ofFloat(new float[]{0.0f, total});
        animator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                Object value = animation.getAnimatedValue();
                if (value != null) {
                    view.setAlpha(Math.abs(((Float) value).floatValue() - startAlpha));
                }
            }
        });
        return animator;
    }
}
