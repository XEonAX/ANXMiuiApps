package com.miui.gallery.collage.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import com.miui.gallery.collage.render.PosterElementRender;
import com.miui.gallery.collage.render.PosterElementRender.TextEditorHolder;
import com.miui.gallery.collage.utils.TextEditDialog;

public class PosterLayout extends ViewGroup {
    public static final float[] DEFAULT_LAYOUT_PARAMS = new float[]{0.0f, 0.0f, 1.0f, 1.0f};
    private TextEditorHolder mActiveTextEditorHolder;
    private Context mContext;
    private GesListener mGesListener = new GesListener();
    private GestureDetector mGestureDetector;
    private Paint mPaint;
    private PosterElementRender mPosterElementRender;
    private Rect mRectTemp = new Rect();
    private ValueAnimator mTextAnimator;
    private TextEditDialog mTextEditDialog = new TextEditDialog();
    private CustomTextWatch mTextWatch = new CustomTextWatch();

    private class AnimListener implements AnimatorListener, AnimatorUpdateListener {
        private AnimListener() {
        }

        public void onAnimationUpdate(ValueAnimator animation) {
            PosterLayout.this.setTextAnimProgress(((Float) animation.getAnimatedValue()).floatValue());
            PosterLayout.this.invalidate();
        }

        public void onAnimationStart(Animator animation) {
        }

        public void onAnimationEnd(Animator animation) {
        }

        public void onAnimationCancel(Animator animation) {
            PosterLayout.this.setTextAnimProgress(0.0f);
            PosterLayout.this.invalidate();
        }

        public void onAnimationRepeat(Animator animation) {
        }
    }

    private class CustomTextWatch implements TextWatcher {
        private CustomTextWatch() {
        }

        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (PosterLayout.this.mActiveTextEditorHolder != null) {
                PosterLayout.this.mActiveTextEditorHolder.setTextAndCount(s.toString(), PosterLayout.this.mRectTemp);
                PosterLayout.this.invalidate();
            }
        }

        public void afterTextChanged(Editable s) {
        }
    }

    private class GesListener implements OnGestureListener {
        private GesListener() {
        }

        public boolean onDown(MotionEvent e) {
            return true;
        }

        public void onShowPress(MotionEvent e) {
        }

        public boolean onSingleTapUp(MotionEvent e) {
            PosterLayout.this.mActiveTextEditorHolder = PosterLayout.this.findTextHolderByTouchEvent(e.getX(), e.getY());
            if (PosterLayout.this.mActiveTextEditorHolder != null) {
                PosterLayout.this.showDialog(PosterLayout.this.mActiveTextEditorHolder.getCurrentText(), !PosterLayout.this.mActiveTextEditorHolder.hasModify(), PosterLayout.this.mActiveTextEditorHolder.getMaxSize());
            }
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

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        private float mBottom;
        private float mLeft;
        private float mRight;
        private float mTop;

        public LayoutParams(float... pos) {
            super(0, 0);
            this.mLeft = pos[0];
            this.mTop = pos[1];
            this.mRight = pos[2];
            this.mBottom = pos[3];
        }
    }

    public PosterLayout(Context context) {
        super(context);
        init(context);
    }

    public PosterLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public PosterLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        setWillNotDraw(false);
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Style.FILL);
        this.mGestureDetector = new GestureDetector(this.mContext, this.mGesListener);
        this.mTextEditDialog.setTextWatch(this.mTextWatch);
    }

    protected void onDraw(Canvas canvas) {
        if (this.mPosterElementRender != null) {
            canvas.drawColor(this.mPosterElementRender.getBackground());
            drawElement(canvas);
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    private void drawElement(Canvas canvas) {
        if (this.mPosterElementRender != null) {
            this.mPosterElementRender.draw(canvas);
        }
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int width = getWidth();
        int height = getHeight();
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
                child.layout((int) (((float) width) * layoutParams.mLeft), (int) (((float) height) * layoutParams.mTop), (int) (((float) width) * layoutParams.mRight), (int) (((float) height) * layoutParams.mBottom));
            }
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        measureChildren(widthMeasureSpec, heightMeasureSpec);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(DEFAULT_LAYOUT_PARAMS);
    }

    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(DEFAULT_LAYOUT_PARAMS);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams;
    }

    public void setRenderData(PosterElementRender posterElementRender) {
        if (this.mTextAnimator != null) {
            this.mTextAnimator.cancel();
        }
        this.mPosterElementRender = posterElementRender;
        if (this.mPosterElementRender != null) {
            notifyTextEdit();
        }
        invalidate();
    }

    private void notifyTextEdit() {
        if (this.mTextAnimator != null) {
            this.mTextAnimator.cancel();
        } else {
            AnimListener animListener = new AnimListener();
            this.mTextAnimator = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f, 1.0f, 0.0f});
            this.mTextAnimator.setDuration(3000);
            this.mTextAnimator.setRepeatCount(0);
            this.mTextAnimator.setInterpolator(new LinearInterpolator());
            this.mTextAnimator.addUpdateListener(animListener);
            this.mTextAnimator.addListener(animListener);
        }
        TextEditorHolder[] textEditorHolders = this.mPosterElementRender.getTextEditorHolders();
        if (textEditorHolders != null && textEditorHolders.length > 0) {
            this.mTextAnimator.start();
        }
    }

    private void setTextAnimProgress(float progress) {
        if (this.mPosterElementRender != null) {
            TextEditorHolder[] textEditorHolders = this.mPosterElementRender.getTextEditorHolders();
            if (textEditorHolders != null && textEditorHolders.length > 0) {
                for (TextEditorHolder textEditorHolder : textEditorHolders) {
                    textEditorHolder.setCurrentTextProgress(progress);
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent event) {
        return this.mGestureDetector.onTouchEvent(event);
    }

    private void showDialog(String currentText, boolean selection, int maxLength) {
        if ((this.mContext instanceof Activity) && !this.mTextEditDialog.isShowing()) {
            this.mTextEditDialog.setWillEditText(currentText, selection);
            this.mTextEditDialog.setMaxEditLength(maxLength);
            this.mTextEditDialog.showAllowingStateLoss(((Activity) this.mContext).getFragmentManager(), "PosterLayout");
        }
    }

    TextEditorHolder findTextHolderByTouchEvent(float x, float y) {
        if (this.mPosterElementRender == null) {
            return null;
        }
        TextEditorHolder[] textEditorHolders = this.mPosterElementRender.getTextEditorHolders();
        if (textEditorHolders != null && textEditorHolders.length > 0) {
            for (TextEditorHolder textEditorHolder : textEditorHolders) {
                if (textEditorHolder.contains(x, y)) {
                    return textEditorHolder;
                }
            }
        }
        return null;
    }
}
