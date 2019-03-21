package com.miui.gallery.editor.photo.app.doodle;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.miui.gallery.R;
import java.util.List;
import miui.view.animation.SineEaseOutInterpolator;

public class PaintSelectView extends View {
    private Rect mBasePaintRect = new Rect();
    private Context mContext;
    private int mCurrentPaintIndex = 1;
    private List<DoodlePaintItem> mDoodlePaintItemList;
    private GesListener mGesListener = new GesListener(this, null);
    private GestureDetector mGestureDetector;
    private Handler mHandler = new Handler();
    private DecelerateInterpolator mInterpolator = new DecelerateInterpolator();
    private boolean mIsSelectMode = false;
    private int mItemOffset;
    private ValueAnimator mPaintAnimator;
    private PaintAnimatorListener mPaintAnimatorListener = new PaintAnimatorListener(this, null);
    private int mPaintBottomOffset;
    private int mPaintDrawableWidth;
    private int mPaintRightOffset;
    private PaintSizeChangeListener mPaintSizeChangeListener;

    public interface PaintSizeChangeListener {
        void onPaintSizeChange(float f);
    }

    private class GesListener implements OnGestureListener {
        private int mIndex;

        private GesListener() {
            this.mIndex = -1;
        }

        /* synthetic */ GesListener(PaintSelectView x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onDown(MotionEvent e) {
            this.mIndex = PaintSelectView.this.findTouchIndex(e.getX(), e.getY());
            if (this.mIndex != -1) {
                return true;
            }
            PaintSelectView.this.expansionPaint(false);
            return false;
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            if (this.mIndex == -1) {
                return false;
            }
            if (PaintSelectView.this.mIsSelectMode) {
                PaintSelectView.this.setSelectIndex(this.mIndex);
                return true;
            }
            PaintSelectView.this.expansionPaint(true);
            return true;
        }

        public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
            return false;
        }

        public void onLongPress(MotionEvent e) {
        }

        public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
            return false;
        }
    }

    private class PaintAnimatorListener implements AnimatorListener, AnimatorUpdateListener {
        private PaintAnimatorListener() {
        }

        /* synthetic */ PaintAnimatorListener(PaintSelectView x0, AnonymousClass1 x1) {
            this();
        }

        public void onAnimationStart(Animator animation) {
        }

        public void onAnimationEnd(Animator animation) {
        }

        public void onAnimationCancel(Animator animation) {
        }

        public void onAnimationRepeat(Animator animation) {
        }

        public void onAnimationUpdate(ValueAnimator animation) {
            for (int i = 0; i < PaintSelectView.this.mDoodlePaintItemList.size(); i++) {
                DoodlePaintItem doodlePaintItem = (DoodlePaintItem) PaintSelectView.this.mDoodlePaintItemList.get(i);
                float animatedValue = ((Float) animation.getAnimatedValue(String.valueOf(i))).floatValue();
                float alpha = ((Float) animation.getAnimatedValue("progress")).floatValue();
                doodlePaintItem.offset((int) (animatedValue - ((float) doodlePaintItem.centerX())), 0);
                doodlePaintItem.setAlpha(alpha);
            }
            PaintSelectView.this.invalidate();
        }
    }

    public PaintSelectView(Context context) {
        super(context);
        init(context);
    }

    public PaintSelectView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public PaintSelectView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        initPaint();
        this.mGestureDetector = new GestureDetector(this.mContext, this.mGesListener);
        this.mGestureDetector.setIsLongpressEnabled(false);
    }

    private void initPaint() {
        this.mDoodlePaintItemList = DoodlePaintItem.getList(getResources());
        this.mPaintDrawableWidth = ((DoodlePaintItem) this.mDoodlePaintItemList.get(0)).getIntrinsicWidth();
        this.mPaintRightOffset = this.mContext.getResources().getDimensionPixelSize(R.dimen.doodle_paint_select_right_offset);
        this.mPaintBottomOffset = this.mContext.getResources().getDimensionPixelSize(R.dimen.doodle_paint_select_bottom_offset);
        ((DoodlePaintItem) this.mDoodlePaintItemList.get(this.mCurrentPaintIndex)).setSelect(true);
        this.mItemOffset = this.mContext.getResources().getDimensionPixelSize(R.dimen.doodle_paint_item_offset);
    }

    private void setPaintLocation(int width, int height) {
        this.mBasePaintRect.set(width - this.mPaintDrawableWidth, height - this.mPaintDrawableWidth, width, height);
        this.mBasePaintRect.offset(-this.mPaintRightOffset, -this.mPaintBottomOffset);
        for (int i = 0; i < this.mDoodlePaintItemList.size(); i++) {
            ((DoodlePaintItem) this.mDoodlePaintItemList.get(i)).setBounds(this.mBasePaintRect);
        }
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        setPaintLocation(w, h);
    }

    protected void onDraw(Canvas canvas) {
        drawPaint(canvas);
    }

    private void drawPaint(Canvas canvas) {
        for (int i = 0; i < this.mDoodlePaintItemList.size(); i++) {
            if (i != this.mCurrentPaintIndex) {
                ((DoodlePaintItem) this.mDoodlePaintItemList.get(i)).draw(canvas);
            }
        }
        ((DoodlePaintItem) this.mDoodlePaintItemList.get(this.mCurrentPaintIndex)).draw(canvas);
    }

    private void setSelectIndex(int index) {
        ((DoodlePaintItem) this.mDoodlePaintItemList.get(this.mCurrentPaintIndex)).setSelect(false);
        this.mCurrentPaintIndex = index;
        DoodlePaintItem doodlePaintItem = (DoodlePaintItem) this.mDoodlePaintItemList.get(this.mCurrentPaintIndex);
        doodlePaintItem.setSelect(true);
        if (this.mPaintSizeChangeListener != null) {
            this.mPaintSizeChangeListener.onPaintSizeChange(doodlePaintItem.paintType.paintSize);
            this.mHandler.removeCallbacksAndMessages(null);
        }
        invalidate();
        doSelectAnimator(doodlePaintItem);
    }

    private void doSelectAnimator(final DoodlePaintItem doodlePaintItem) {
        ValueAnimator valueAnimator = getDoodlePaintItemSizeAnim(doodlePaintItem, 1.0f, 1.1f);
        valueAnimator.addListener(new AnimatorListener() {
            public void onAnimationStart(Animator animation) {
            }

            public void onAnimationEnd(Animator animation) {
                PaintSelectView.this.getDoodlePaintItemSizeAnim(doodlePaintItem, 1.1f, 1.0f).start();
            }

            public void onAnimationCancel(Animator animation) {
            }

            public void onAnimationRepeat(Animator animation) {
            }
        });
        valueAnimator.start();
    }

    private ValueAnimator getDoodlePaintItemSizeAnim(final DoodlePaintItem doodlePaintItem, float... scale) {
        ValueAnimator outAnim = ValueAnimator.ofFloat(scale);
        outAnim.setInterpolator(new SineEaseOutInterpolator());
        outAnim.setDuration(150);
        outAnim.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                doodlePaintItem.setScale(((Float) animation.getAnimatedValue()).floatValue());
                PaintSelectView.this.invalidate();
            }
        });
        return outAnim;
    }

    private int findTouchIndex(float x, float y) {
        for (int i = 0; i < this.mDoodlePaintItemList.size(); i++) {
            if (((DoodlePaintItem) this.mDoodlePaintItemList.get(i)).isContain(x, y)) {
                return i;
            }
        }
        return -1;
    }

    public boolean onTouchEvent(MotionEvent event) {
        return this.mGestureDetector.onTouchEvent(event);
    }

    public void expansionPaint(final boolean expansion, long delayed) {
        this.mHandler.postDelayed(new Runnable() {
            public void run() {
                PaintSelectView.this.expansionPaint(expansion);
            }
        }, delayed);
    }

    public void expansionPaint(boolean expansion) {
        this.mIsSelectMode = expansion;
        if (this.mPaintAnimator != null) {
            this.mPaintAnimator.cancel();
        } else {
            this.mPaintAnimator = new ValueAnimator();
        }
        PropertyValuesHolder[] propertyValuesHolders = new PropertyValuesHolder[(this.mDoodlePaintItemList.size() + 1)];
        for (int i = 0; i < this.mDoodlePaintItemList.size(); i++) {
            int expect;
            int current = ((DoodlePaintItem) this.mDoodlePaintItemList.get(i)).centerX();
            if (expansion) {
                expect = this.mBasePaintRect.centerX() - ((this.mPaintDrawableWidth + this.mItemOffset) * i);
            } else {
                expect = this.mBasePaintRect.centerX();
            }
            propertyValuesHolders[i] = PropertyValuesHolder.ofFloat(String.valueOf(i), new float[]{(float) current, (float) expect});
        }
        if (expansion) {
            propertyValuesHolders[propertyValuesHolders.length - 1] = PropertyValuesHolder.ofFloat("progress", new float[]{0.0f, 1.0f});
        } else {
            propertyValuesHolders[propertyValuesHolders.length - 1] = PropertyValuesHolder.ofFloat("progress", new float[]{1.0f, 0.0f});
        }
        this.mPaintAnimator.setValues(propertyValuesHolders);
        this.mPaintAnimator.addUpdateListener(this.mPaintAnimatorListener);
        this.mPaintAnimator.addListener(this.mPaintAnimatorListener);
        this.mPaintAnimator.setInterpolator(this.mInterpolator);
        this.mPaintAnimator.setDuration(300);
        this.mPaintAnimator.start();
    }

    public void setPaintSizeChangeListener(PaintSizeChangeListener paintSizeChangeListener) {
        this.mPaintSizeChangeListener = paintSizeChangeListener;
        if (this.mPaintSizeChangeListener != null) {
            this.mPaintSizeChangeListener.onPaintSizeChange(((DoodlePaintItem) this.mDoodlePaintItemList.get(this.mCurrentPaintIndex)).paintType.paintSize);
        }
    }

    public void setPaintColor(int color) {
        for (DoodlePaintItem doodlePaintItem : this.mDoodlePaintItemList) {
            doodlePaintItem.setCurrentColor(color);
        }
        invalidate();
    }
}
