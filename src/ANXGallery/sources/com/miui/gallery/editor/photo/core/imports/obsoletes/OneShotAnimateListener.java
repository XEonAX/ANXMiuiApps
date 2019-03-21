package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

public abstract class OneShotAnimateListener implements AnimatorListener {
    public void onAnimationStart(Animator animation) {
    }

    public void onAnimationEnd(Animator animation) {
        animation.removeListener(this);
    }

    public void onAnimationCancel(Animator animation) {
        animation.removeListener(this);
    }

    public void onAnimationRepeat(Animator animation) {
    }
}
