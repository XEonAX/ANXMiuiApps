package com.miui.gallery.widget.recyclerview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.SimpleItemAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import com.miui.gallery.threadpool.ThreadManager;
import java.util.ArrayList;
import java.util.Iterator;
import miui.view.animation.CubicEaseInOutInterpolator;

public class CleanerItemAnimator extends SimpleItemAnimator {
    private Interpolator mInterpolator = new CubicEaseInOutInterpolator();
    private ArrayList<ViewHolder> mMoveAnimations = new ArrayList();
    private ArrayList<ViewHolder> mPendingMoveHolders = new ArrayList();
    private ArrayList<ViewHolder> mPendingRemoveHolders = new ArrayList();
    private ArrayList<ViewHolder> mRemoveAnimations = new ArrayList();

    public void runPendingAnimations() {
        boolean isRemove;
        boolean isMove;
        Iterator it;
        if (this.mPendingRemoveHolders.isEmpty()) {
            isRemove = false;
        } else {
            isRemove = true;
        }
        if (this.mPendingMoveHolders.isEmpty()) {
            isMove = false;
        } else {
            isMove = true;
        }
        if (isRemove) {
            it = this.mPendingRemoveHolders.iterator();
            while (it.hasNext()) {
                animateRemoveImpl((ViewHolder) it.next());
            }
            this.mPendingRemoveHolders.clear();
        }
        if (isMove) {
            it = this.mPendingMoveHolders.iterator();
            while (it.hasNext()) {
                animateMoveImpl((ViewHolder) it.next());
            }
            this.mPendingMoveHolders.clear();
        }
    }

    private void animateMoveImpl(final ViewHolder holder) {
        this.mMoveAnimations.add(holder);
        ThreadManager.getMainHandler().postDelayed(new Runnable() {
            public void run() {
                ObjectAnimator animator = ObjectAnimator.ofFloat(holder.itemView, "translationY", new float[]{holder.itemView.getTranslationY(), 0.0f});
                animator.setDuration(500);
                animator.setInterpolator(CleanerItemAnimator.this.mInterpolator);
                animator.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationStart(Animator animation) {
                        CleanerItemAnimator.this.dispatchMoveStarting(holder);
                    }

                    public void onAnimationEnd(Animator animation) {
                        CleanerItemAnimator.this.dispatchMoveFinished(holder);
                        CleanerItemAnimator.this.mMoveAnimations.remove(holder);
                        if (!CleanerItemAnimator.this.isRunning()) {
                            CleanerItemAnimator.this.dispatchAnimationsFinished();
                        }
                    }
                });
                animator.start();
            }
        }, 300);
    }

    private void animateRemoveImpl(final ViewHolder holder) {
        this.mRemoveAnimations.add(holder);
        ThreadManager.getMainHandler().postDelayed(new Runnable() {
            public void run() {
                final View item = holder.itemView;
                ObjectAnimator animator = ObjectAnimator.ofFloat(item, "alpha", new float[]{1.0f, 0.0f});
                animator.setDuration(350);
                animator.setInterpolator(CleanerItemAnimator.this.mInterpolator);
                animator.addListener(new AnimatorListenerAdapter() {
                    public void onAnimationStart(Animator animation) {
                        CleanerItemAnimator.this.dispatchRemoveStarting(holder);
                    }

                    public void onAnimationEnd(Animator animation) {
                        CleanerItemAnimator.this.mRemoveAnimations.remove(holder);
                        item.setVisibility(8);
                        CleanerItemAnimator.this.dispatchRemoveFinished(holder);
                        if (!CleanerItemAnimator.this.isRunning()) {
                            CleanerItemAnimator.this.dispatchAnimationsFinished();
                        }
                    }
                });
                animator.start();
            }
        }, 300);
    }

    public boolean animateRemove(ViewHolder holder) {
        this.mPendingRemoveHolders.add(holder);
        return true;
    }

    public boolean animateMove(ViewHolder holder, int fromX, int fromY, int toX, int toY) {
        View view = holder.itemView;
        view.setTranslationY((float) (-(toY - ((int) (((float) fromY) + view.getTranslationY())))));
        this.mPendingMoveHolders.add(holder);
        return true;
    }

    public boolean isRunning() {
        return (this.mPendingMoveHolders.isEmpty() && this.mPendingRemoveHolders.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mMoveAnimations.isEmpty()) ? false : true;
    }

    public boolean animateAdd(ViewHolder holder) {
        return false;
    }

    public boolean animateChange(ViewHolder oldHolder, ViewHolder newHolder, int fromX, int fromY, int toX, int toY) {
        if (oldHolder == newHolder) {
            return animateMove(oldHolder, fromX, fromY, toX, toY);
        }
        return false;
    }

    public void endAnimation(ViewHolder item) {
    }

    public void endAnimations() {
    }
}
