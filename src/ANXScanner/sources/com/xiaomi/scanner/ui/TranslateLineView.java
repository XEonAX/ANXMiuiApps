package com.xiaomi.scanner.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.alibaba.fastjson.asm.Opcodes;
import com.xiaomi.scanner.R;

public class TranslateLineView extends FrameLayout {
    private int mCurrentDeviceDegree;
    private int mLastDegree;
    private int textHeight;
    private LayoutParams textLayoutParams;
    private TextView textView;
    private int textWidth;

    private static class LineView extends View {
        private float height;
        private int lineColor;
        private Paint paint;
        private float width;

        public LineView(Context context) {
            this(context, null, -1);
        }

        public LineView(Context context, @Nullable AttributeSet attrs) {
            this(context, attrs, -1);
        }

        public LineView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
            super(context, attrs, defStyleAttr);
            this.paint = new Paint();
            this.paint.setStrokeWidth(0.0f);
            this.lineColor = getResources().getColor(R.color.white_65_transparent);
        }

        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            this.width = (float) MeasureSpec.getSize(widthMeasureSpec);
            this.height = (float) MeasureSpec.getSize(heightMeasureSpec);
        }

        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.paint.setColor(this.lineColor);
            this.paint.setTextSize(1.0f);
            canvas.drawLine(0.0f, this.height / 3.0f, this.width, this.height / 3.0f, this.paint);
            canvas.drawLine(0.0f, (this.height / 3.0f) * 2.0f, this.width, (this.height / 3.0f) * 2.0f, this.paint);
            canvas.drawLine(this.width / 3.0f, 0.0f, this.width / 3.0f, this.height, this.paint);
            canvas.drawLine((this.width / 3.0f) * 2.0f, 0.0f, (this.width / 3.0f) * 2.0f, this.height, this.paint);
        }
    }

    public TranslateLineView(Context context) {
        this(context, null, -1);
    }

    public TranslateLineView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public TranslateLineView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        addView(new LineView(context));
        this.textView = getTextView();
        addView(this.textView, new LayoutParams(-2, -2));
        this.textLayoutParams = (LayoutParams) this.textView.getLayoutParams();
        this.textView.post(new Runnable() {
            public void run() {
                TranslateLineView.this.textHeight = TranslateLineView.this.textView.getMeasuredHeight();
                TranslateLineView.this.textWidth = TranslateLineView.this.textView.getMeasuredWidth();
                TranslateLineView.this.textLayoutParams.leftMargin = (TranslateLineView.this.getMeasuredWidth() - TranslateLineView.this.textWidth) / 2;
                TranslateLineView.this.textLayoutParams.topMargin = (int) (((float) (TranslateLineView.this.getMeasuredHeight() / 3)) - (((float) TranslateLineView.this.textHeight) * 1.3f));
                TranslateLineView.this.textLayoutParams.width = TranslateLineView.this.textWidth;
                TranslateLineView.this.textView.setLayoutParams(TranslateLineView.this.textLayoutParams);
                TranslateLineView.this.textView.setVisibility(0);
                TranslateLineView.this.textView.setPivotY((float) (TranslateLineView.this.textHeight / 2));
                TranslateLineView.this.textView.setPivotX((float) (TranslateLineView.this.textWidth / 2));
                if (TranslateLineView.this.mLastDegree == 0 && TranslateLineView.this.mCurrentDeviceDegree != 0) {
                    TranslateLineView.this.updateOrientation(TranslateLineView.this.mCurrentDeviceDegree);
                }
            }
        });
    }

    private TextView getTextView() {
        TextView textView = new TextView(getContext());
        textView.setText(R.string.translate_parallel_2_lines);
        textView.setTextColor(getResources().getColor(R.color.white));
        textView.setTextSize(13.0f);
        textView.setMaxLines(1);
        textView.setVisibility(4);
        return textView;
    }

    public int getRotateDegree() {
        switch (this.mLastDegree) {
            case 90:
            case 270:
                return (360 - this.mLastDegree) % 360;
            default:
                return this.mLastDegree;
        }
    }

    public int getDegree() {
        return this.mLastDegree;
    }

    public void updateOrientation(int orientation) {
        this.mCurrentDeviceDegree = orientation;
        if (getVisibility() == 0 && this.textWidth != 0) {
            animTextView(orientation);
            this.mLastDegree = orientation;
        }
    }

    private int getDegreeFromOrientation(int orientation) {
        switch (orientation) {
            case 90:
                return -90;
            case Opcodes.GETFIELD /*180*/:
                return Opcodes.GETFIELD;
            case 270:
                return 90;
            default:
                return 0;
        }
    }

    private PointF getNewAnimDegree(int degree, int lastDegree) {
        PointF point = new PointF();
        int newStart = getDegreeFromOrientation(lastDegree);
        int newEnd = getDegreeFromOrientation(degree);
        if (newEnd == -90 && newStart == Opcodes.GETFIELD) {
            newEnd = 270;
        } else if (newEnd == Opcodes.GETFIELD && newStart == -90) {
            newEnd = -180;
        }
        point.set((float) newStart, (float) newEnd);
        return point;
    }

    private PointF getNewAnimPosition(int degree) {
        PointF point = new PointF();
        switch (degree) {
            case 0:
                point.set((float) ((getMeasuredWidth() - this.textWidth) / 2), ((float) (getMeasuredHeight() / 3)) - (((float) this.textHeight) * 1.3f));
                break;
            case 90:
                point.set((((float) (getMeasuredWidth() / 3)) - (((float) this.textHeight) * 1.3f)) + ((float) ((this.textHeight - this.textWidth) / 2)), (float) ((getMeasuredHeight() / 2) - (this.textHeight / 2)));
                break;
            case Opcodes.GETFIELD /*180*/:
                point.set((float) ((getMeasuredWidth() - this.textWidth) / 2), ((float) ((getMeasuredHeight() / 3) * 2)) + (((float) this.textHeight) * 0.3f));
                break;
            case 270:
                point.set((((float) ((getMeasuredWidth() / 3) * 2)) + (((float) this.textHeight) * 0.3f)) + ((float) ((this.textHeight - this.textWidth) / 2)), (float) ((getMeasuredHeight() / 2) - (this.textHeight / 2)));
                break;
            default:
                point.set((float) ((getMeasuredWidth() - this.textWidth) / 2), ((float) (getMeasuredHeight() / 3)) - (((float) this.textHeight) * 1.3f));
                break;
        }
        return point;
    }

    private void animTextView(int orientation) {
        final PointF newAnimDegree = getNewAnimDegree(orientation, this.mLastDegree);
        final PointF newStartTran = getNewAnimPosition(this.mLastDegree);
        final PointF newEndTran = getNewAnimPosition(orientation);
        ValueAnimator animator = ValueAnimator.ofInt(new int[]{(int) newAnimDegree.x, (int) newAnimDegree.y});
        animator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                TranslateLineView.this.textView.setRotation(newAnimDegree.x + ((newAnimDegree.y - newAnimDegree.x) * animation.getAnimatedFraction()));
                TranslateLineView.this.textLayoutParams.leftMargin = (int) (newStartTran.x + ((newEndTran.x - newStartTran.x) * animation.getAnimatedFraction()));
                TranslateLineView.this.textLayoutParams.topMargin = (int) (newStartTran.y + ((newEndTran.y - newStartTran.y) * animation.getAnimatedFraction()));
                TranslateLineView.this.textView.setLayoutParams(TranslateLineView.this.textLayoutParams);
            }
        });
        animator.setInterpolator(new DecelerateInterpolator());
        animator.setDuration(300);
        animator.start();
    }
}
