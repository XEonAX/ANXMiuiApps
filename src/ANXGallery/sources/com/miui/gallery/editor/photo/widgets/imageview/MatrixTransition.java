package com.miui.gallery.editor.photo.widgets.imageview;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Matrix;
import com.miui.gallery.editor.photo.app.MatrixEvaluator;

public class MatrixTransition {
    private AnimatorListener mAnimatorListener = new AnimatorListener() {
        public void onAnimationStart(Animator animation) {
            if (MatrixTransition.this.mMatrixUpdateListener != null) {
                MatrixTransition.this.mMatrixUpdateListener.onAnimationStart();
            }
        }

        public void onAnimationEnd(Animator animation) {
            MatrixTransition.this.mCurrentMatrix = null;
            if (MatrixTransition.this.mMatrixUpdateListener != null) {
                MatrixTransition.this.mMatrixUpdateListener.onAnimationEnd();
            }
        }

        public void onAnimationCancel(Animator animation) {
            MatrixTransition.this.mCurrentMatrix = null;
            if (MatrixTransition.this.mMatrixUpdateListener != null) {
                MatrixTransition.this.mMatrixUpdateListener.onAnimationEnd();
            }
        }

        public void onAnimationRepeat(Animator animation) {
        }
    };
    private AnimatorUpdateListener mAnimatorUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            int length = animation.getValues().length;
            for (int i = 0; i < length; i++) {
                MatrixTransition.this.mCurrentMatrix[i].set((Matrix) animation.getAnimatedValue("property_matrix" + i));
            }
            if (MatrixTransition.this.mMatrixUpdateListener != null) {
                MatrixTransition.this.mMatrixUpdateListener.onMatrixUpdate();
            }
        }
    };
    private Matrix[] mCurrentMatrix;
    private MatrixUpdateListener mMatrixUpdateListener;
    private ValueAnimator mValueAnimator = new ValueAnimator();

    public interface MatrixUpdateListener {
        void onAnimationEnd();

        void onAnimationStart();

        void onMatrixUpdate();
    }

    public MatrixTransition() {
        this.mValueAnimator.setDuration(300);
        this.mValueAnimator.addUpdateListener(this.mAnimatorUpdateListener);
        this.mValueAnimator.addListener(this.mAnimatorListener);
    }

    public void animMatrix(Matrix... values) {
        if (values.length % 2 != 0) {
            throw new RuntimeException("values length should be a even number !");
        }
        this.mValueAnimator.cancel();
        int size = values.length / 2;
        this.mCurrentMatrix = new Matrix[size];
        PropertyValuesHolder[] propertyValuesHolders = new PropertyValuesHolder[size];
        for (int i = 0; i < values.length; i += 2) {
            Matrix start = values[i];
            Matrix end = values[i + 1];
            int subIndex = i / 2;
            this.mCurrentMatrix[subIndex] = start;
            propertyValuesHolders[subIndex] = PropertyValuesHolder.ofObject("property_matrix" + subIndex, new MatrixEvaluator(), new Object[]{new Matrix(start), end});
        }
        this.mValueAnimator.setValues(propertyValuesHolders);
        this.mValueAnimator.start();
    }

    public void setMatrixUpdateListener(MatrixUpdateListener matrixUpdateListener) {
        this.mMatrixUpdateListener = matrixUpdateListener;
    }
}
