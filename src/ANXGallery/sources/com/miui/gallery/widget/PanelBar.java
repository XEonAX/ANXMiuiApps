package com.miui.gallery.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;

public class PanelBar extends FrameLayout {
    public PanelBar(Context context) {
        this(context, null);
    }

    public PanelBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PanelBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        refreshVisibility();
    }

    private void refreshVisibility() {
        if (getChildCount() > 0) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    public void replaceItem(PanelItem panelItem, boolean anim) {
        Animator animator;
        final View oldItem = getChildAt(getChildCount() - 1);
        if (oldItem != null) {
            animator = loadAnimator(false);
            startViewTransition(oldItem);
            animator.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    PanelBar.this.endViewTransition(oldItem);
                }
            });
            animator.setTarget(oldItem);
            animator.start();
            if (!anim) {
                animator.end();
                endViewTransition(oldItem);
            }
            removeView(oldItem);
        }
        removeAllViews();
        if (!(panelItem == null || panelItem.getView() == null)) {
            animator = loadAnimator(true);
            animator.setTarget(panelItem.getView());
            animator.start();
            if (!anim) {
                animator.end();
            }
            ViewParent parent = panelItem.getView().getParent();
            if (parent != null) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(panelItem.getView());
                    if (panelItem.getView().getParent() != null) {
                        ((ViewGroup) parent).endViewTransition(panelItem.getView());
                    }
                } else {
                    return;
                }
            }
            addView(panelItem.getView());
        }
        refreshVisibility();
    }

    public void removeItem(boolean anim) {
        final View oldItem = getChildAt(getChildCount() - 1);
        if (oldItem != null) {
            Animator animator = loadAnimator(false);
            startViewTransition(oldItem);
            animator.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animation) {
                    PanelBar.this.endViewTransition(oldItem);
                }
            });
            animator.setTarget(oldItem);
            animator.start();
            if (!anim) {
                animator.end();
                endViewTransition(oldItem);
            }
            removeView(oldItem);
        }
        removeAllViews();
        refreshVisibility();
    }

    private Animator loadAnimator(boolean enter) {
        Animator animator;
        if (enter) {
            animator = ObjectAnimator.ofFloat(null, "alpha", new float[]{0.0f, 1.0f});
        } else {
            animator = ObjectAnimator.ofFloat(null, "alpha", new float[]{1.0f, 0.0f});
        }
        animator.setDuration(500);
        return animator;
    }
}
