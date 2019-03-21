package com.miui.gallery.editor.photo.widgets.overscroll;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.miui.gallery.editor.photo.widgets.overscroll.IOverScrollInterface.IOverScrollDecoratorAdapter;

public abstract class OverScrollBounceEffectDecoratorBase implements OnTouchListener {
    protected final BounceBackState mBounceBackState;
    protected IDecoratorState mCurrentState;
    protected final IdleState mIdleState;
    protected final OverScrollingState mOverScrollingState;
    protected final OverScrollStartAttributes mStartAttr = new OverScrollStartAttributes();
    protected float mVelocity;
    protected final IOverScrollDecoratorAdapter mViewAdapter;

    protected static abstract class AnimationAttributes {
        public float mAbsOffset;
        public float mMaxOffset;
        public Property<View, Float> mProperty;

        protected abstract void init(View view);

        protected AnimationAttributes() {
        }
    }

    protected static abstract class MotionAttributes {
        public float mAbsOffset;
        public float mDeltaOffset;
        public boolean mDir;

        protected abstract boolean init(View view, MotionEvent motionEvent);

        protected MotionAttributes() {
        }
    }

    protected interface IDecoratorState {
        void handleEntryTransition(IDecoratorState iDecoratorState);

        boolean handleMoveTouchEvent(MotionEvent motionEvent);

        boolean handleUpOrCancelTouchEvent(MotionEvent motionEvent);
    }

    protected class BounceBackState implements AnimatorListener, AnimatorUpdateListener, IDecoratorState {
        protected final AnimationAttributes mAnimAttributes;
        protected final Interpolator mBounceBackInterpolator = new DecelerateInterpolator();
        protected final float mDecelerateFactor;
        protected final float mDoubleDecelerateFactor;

        public BounceBackState(float decelerateFactor) {
            this.mDecelerateFactor = decelerateFactor;
            this.mDoubleDecelerateFactor = 2.0f * decelerateFactor;
            this.mAnimAttributes = OverScrollBounceEffectDecoratorBase.this.createAnimationAttributes();
        }

        public void handleEntryTransition(IDecoratorState fromState) {
            Animator bounceBackAnim = createAnimator();
            bounceBackAnim.addListener(this);
            bounceBackAnim.start();
        }

        public boolean handleMoveTouchEvent(MotionEvent event) {
            return true;
        }

        public boolean handleUpOrCancelTouchEvent(MotionEvent event) {
            return true;
        }

        public void onAnimationEnd(Animator animation) {
            OverScrollBounceEffectDecoratorBase.this.issueStateTransition(OverScrollBounceEffectDecoratorBase.this.mIdleState);
        }

        public void onAnimationUpdate(ValueAnimator animation) {
        }

        public void onAnimationStart(Animator animation) {
        }

        public void onAnimationCancel(Animator animation) {
        }

        public void onAnimationRepeat(Animator animation) {
        }

        protected Animator createAnimator() {
            View view = OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView();
            this.mAnimAttributes.init(view);
            if (OverScrollBounceEffectDecoratorBase.this.mVelocity == 0.0f || ((OverScrollBounceEffectDecoratorBase.this.mVelocity < 0.0f && OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir) || (OverScrollBounceEffectDecoratorBase.this.mVelocity > 0.0f && !OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir))) {
                return createBounceBackAnimator(this.mAnimAttributes.mAbsOffset);
            }
            float slowdownDuration = (-OverScrollBounceEffectDecoratorBase.this.mVelocity) / this.mDecelerateFactor;
            if (slowdownDuration < 0.0f) {
                slowdownDuration = 0.0f;
            }
            float slowdownEndOffset = this.mAnimAttributes.mAbsOffset + (((-OverScrollBounceEffectDecoratorBase.this.mVelocity) * OverScrollBounceEffectDecoratorBase.this.mVelocity) / this.mDoubleDecelerateFactor);
            ObjectAnimator slowdownAnim = createSlowdownAnimator(view, (int) slowdownDuration, slowdownEndOffset);
            ObjectAnimator bounceBackAnim = createBounceBackAnimator(slowdownEndOffset);
            Animator wholeAnim = new AnimatorSet();
            wholeAnim.playSequentially(new Animator[]{slowdownAnim, bounceBackAnim});
            return wholeAnim;
        }

        protected ObjectAnimator createSlowdownAnimator(View view, int slowdownDuration, float slowdownEndOffset) {
            ObjectAnimator slowdownAnim = ObjectAnimator.ofFloat(view, this.mAnimAttributes.mProperty, new float[]{slowdownEndOffset});
            slowdownAnim.setDuration((long) slowdownDuration);
            slowdownAnim.setInterpolator(this.mBounceBackInterpolator);
            slowdownAnim.addUpdateListener(this);
            return slowdownAnim;
        }

        protected ObjectAnimator createBounceBackAnimator(float startOffset) {
            float bounceBackDuration = (Math.abs(startOffset) / this.mAnimAttributes.mMaxOffset) * 800.0f;
            ObjectAnimator bounceBackAnim = ObjectAnimator.ofFloat(OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView(), this.mAnimAttributes.mProperty, new float[]{OverScrollBounceEffectDecoratorBase.this.mStartAttr.mAbsOffset});
            bounceBackAnim.setDuration((long) Math.max((int) bounceBackDuration, 200));
            bounceBackAnim.setInterpolator(this.mBounceBackInterpolator);
            bounceBackAnim.addUpdateListener(this);
            return bounceBackAnim;
        }
    }

    protected class IdleState implements IDecoratorState {
        final MotionAttributes mMoveAttr;

        public IdleState() {
            this.mMoveAttr = OverScrollBounceEffectDecoratorBase.this.createMotionAttributes();
        }

        public boolean handleMoveTouchEvent(MotionEvent event) {
            if (!this.mMoveAttr.init(OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView(), event)) {
                return false;
            }
            if ((!OverScrollBounceEffectDecoratorBase.this.mViewAdapter.isInAbsoluteStart() || !this.mMoveAttr.mDir) && (!OverScrollBounceEffectDecoratorBase.this.mViewAdapter.isInAbsoluteEnd() || this.mMoveAttr.mDir)) {
                return false;
            }
            OverScrollBounceEffectDecoratorBase.this.mStartAttr.mPointerId = event.getPointerId(0);
            OverScrollBounceEffectDecoratorBase.this.mStartAttr.mAbsOffset = this.mMoveAttr.mAbsOffset;
            OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir = this.mMoveAttr.mDir;
            OverScrollBounceEffectDecoratorBase.this.issueStateTransition(OverScrollBounceEffectDecoratorBase.this.mOverScrollingState);
            return OverScrollBounceEffectDecoratorBase.this.mOverScrollingState.handleMoveTouchEvent(event);
        }

        public boolean handleUpOrCancelTouchEvent(MotionEvent event) {
            return false;
        }

        public void handleEntryTransition(IDecoratorState fromState) {
        }
    }

    protected static class OverScrollStartAttributes {
        protected float mAbsOffset;
        protected boolean mDir;
        protected int mPointerId;

        protected OverScrollStartAttributes() {
        }
    }

    protected class OverScrollingState implements IDecoratorState {
        int mCurrDragState;
        final MotionAttributes mMoveAttr;
        protected final float mTouchDragRatioBck;
        protected final float mTouchDragRatioFwd;

        public OverScrollingState(float touchDragRatioFwd, float touchDragRatioBck) {
            this.mMoveAttr = OverScrollBounceEffectDecoratorBase.this.createMotionAttributes();
            this.mTouchDragRatioFwd = touchDragRatioFwd;
            this.mTouchDragRatioBck = touchDragRatioBck;
        }

        public boolean handleMoveTouchEvent(MotionEvent event) {
            if (OverScrollBounceEffectDecoratorBase.this.mStartAttr.mPointerId != event.getPointerId(0)) {
                OverScrollBounceEffectDecoratorBase.this.issueStateTransition(OverScrollBounceEffectDecoratorBase.this.mBounceBackState);
            } else {
                View view = OverScrollBounceEffectDecoratorBase.this.mViewAdapter.getView();
                if (this.mMoveAttr.init(view, event)) {
                    float deltaOffset = this.mMoveAttr.mDeltaOffset / (this.mMoveAttr.mDir == OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir ? this.mTouchDragRatioFwd : this.mTouchDragRatioBck);
                    float newOffset = this.mMoveAttr.mAbsOffset + deltaOffset;
                    if ((!OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir || this.mMoveAttr.mDir || newOffset > OverScrollBounceEffectDecoratorBase.this.mStartAttr.mAbsOffset) && (OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir || !this.mMoveAttr.mDir || newOffset < OverScrollBounceEffectDecoratorBase.this.mStartAttr.mAbsOffset)) {
                        if (view.getParent() != null) {
                            view.getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        long dt = event.getEventTime() - event.getHistoricalEventTime(0);
                        if (dt > 0) {
                            OverScrollBounceEffectDecoratorBase.this.mVelocity = deltaOffset / ((float) dt);
                        }
                        OverScrollBounceEffectDecoratorBase.this.translateView(view, newOffset);
                    } else {
                        OverScrollBounceEffectDecoratorBase.this.translateViewAndEvent(view, OverScrollBounceEffectDecoratorBase.this.mStartAttr.mAbsOffset, event);
                        OverScrollBounceEffectDecoratorBase.this.issueStateTransition(OverScrollBounceEffectDecoratorBase.this.mIdleState);
                    }
                }
            }
            return true;
        }

        public boolean handleUpOrCancelTouchEvent(MotionEvent event) {
            OverScrollBounceEffectDecoratorBase.this.issueStateTransition(OverScrollBounceEffectDecoratorBase.this.mBounceBackState);
            return false;
        }

        public void handleEntryTransition(IDecoratorState fromState) {
            this.mCurrDragState = OverScrollBounceEffectDecoratorBase.this.mStartAttr.mDir ? 1 : 2;
        }
    }

    protected abstract AnimationAttributes createAnimationAttributes();

    protected abstract MotionAttributes createMotionAttributes();

    protected abstract void translateView(View view, float f);

    protected abstract void translateViewAndEvent(View view, float f, MotionEvent motionEvent);

    public OverScrollBounceEffectDecoratorBase(IOverScrollDecoratorAdapter viewAdapter, float decelerateFactor, float touchDragRatioFwd, float touchDragRatioBck) {
        this.mViewAdapter = viewAdapter;
        this.mBounceBackState = new BounceBackState(decelerateFactor);
        this.mOverScrollingState = new OverScrollingState(touchDragRatioFwd, touchDragRatioBck);
        this.mIdleState = new IdleState();
        this.mCurrentState = this.mIdleState;
        attach();
    }

    public boolean onTouch(View v, MotionEvent event) {
        switch (event.getAction()) {
            case 1:
            case 3:
                return this.mCurrentState.handleUpOrCancelTouchEvent(event);
            case 2:
                return this.mCurrentState.handleMoveTouchEvent(event);
            default:
                return false;
        }
    }

    public View getView() {
        return this.mViewAdapter.getView();
    }

    protected void issueStateTransition(IDecoratorState state) {
        IDecoratorState oldState = this.mCurrentState;
        this.mCurrentState = state;
        this.mCurrentState.handleEntryTransition(oldState);
    }

    protected void attach() {
        getView().setOnTouchListener(this);
        getView().setOverScrollMode(2);
    }
}
