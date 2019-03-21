package com.miui.gallery.editor.photo.app;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.res.Resources;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;

class MenuTransition extends Transition {
    private boolean mEnter;
    private int mExitAlphaDuration;
    private int mExitTranslateDuration;
    private float mTranslate;

    public MenuTransition(float translate, boolean enter, Resources res) {
        this.mTranslate = translate;
        this.mEnter = enter;
        this.mExitTranslateDuration = res.getInteger(R.integer.photo_editor_exit_transition_duration);
        this.mExitAlphaDuration = res.getInteger(R.integer.photo_editor_exit_transition_menu_alpha_duration);
    }

    public boolean isTransitionRequired(TransitionValues startValues, TransitionValues endValues) {
        return true;
    }

    public void captureStartValues(TransitionValues transitionValues) {
    }

    public void captureEndValues(TransitionValues transitionValues) {
    }

    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        if (startValues == null || endValues == null) {
            return null;
        }
        if (this.mEnter) {
            return createEnterAnimator(endValues);
        }
        return createExitAnimator(startValues);
    }

    private Animator createEnterAnimator(TransitionValues values) {
        ObjectAnimator animator = new ObjectAnimator();
        PropertyValuesHolder translate = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{this.mTranslate, 0.0f});
        PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
        animator.setValues(new PropertyValuesHolder[]{translate, alpha});
        animator.setTarget(values.view);
        return animator;
    }

    private Animator createExitAnimator(TransitionValues values) {
        ObjectAnimator translateAnim = new ObjectAnimator();
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[1];
        propertyValuesHolderArr[0] = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, this.mTranslate});
        translateAnim.setValues(propertyValuesHolderArr);
        translateAnim.setDuration((long) this.mExitTranslateDuration);
        translateAnim.setTarget(values.view);
        ObjectAnimator alphaAnim = new ObjectAnimator();
        alphaAnim.setValues(new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f})});
        alphaAnim.setDuration((long) this.mExitAlphaDuration);
        alphaAnim.setTarget(values.view);
        AnimatorSet animSet = new AnimatorSet();
        animSet.playTogether(new Animator[]{translateAnim, alphaAnim});
        return animSet;
    }
}
