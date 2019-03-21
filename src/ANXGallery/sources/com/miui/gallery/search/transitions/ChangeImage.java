package com.miui.gallery.search.transitions;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.drawable.Drawable;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public class ChangeImage extends Transition {
    private void captureValues(TransitionValues values, boolean start) {
        if (values.view instanceof ImageView) {
            values.values.put("customtransition:change_image:drawable", ((ImageView) values.view).getDrawable());
        } else {
            values.values.put("customtransition:change_image:drawable", values.view.getBackground());
        }
        values.values.put("customtransition:change_image:start", Boolean.valueOf(start));
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
        final Drawable startDrawable = (Drawable) startValues.values.get("customtransition:change_image:drawable");
        final Drawable endDrawable = (Drawable) endValues.values.get("customtransition:change_image:drawable");
        Animator animator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        animator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                Object value = animation.getAnimatedValue();
                if (value == null) {
                    return;
                }
                if (view instanceof ImageView) {
                    if (((double) ((Float) value).floatValue()) > 0.5d) {
                        ((ImageView) view).setImageDrawable(endDrawable);
                    } else {
                        ((ImageView) view).setImageDrawable(startDrawable);
                    }
                } else if (((double) ((Float) value).floatValue()) > 0.5d) {
                    view.setBackground(endDrawable);
                } else {
                    view.setBackground(startDrawable);
                }
            }
        });
        return animator;
    }
}
