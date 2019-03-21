package com.miui.gallery.editor.photo.app;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.transition.ChangeBounds;
import android.transition.TransitionValues;
import android.util.Property;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.miui.gallery.util.BaseMiscUtil;

class ImageTransition extends ChangeBounds {
    private static Property<ImageView, Matrix> PROPERTY_MATRIX = new Property<ImageView, Matrix>(Matrix.class, "matrix") {
        public Matrix get(ImageView object) {
            return object.getImageMatrix();
        }

        public void set(ImageView object, Matrix value) {
            object.setImageMatrix(value);
        }
    };
    private boolean mEnter;
    private int mImageHeight;
    private int mImageWidth;
    private Matrix mMatrix = new Matrix();

    private static class ConfigCropType implements AnimatorListener {
        private ScaleType mScaleType;

        private ConfigCropType() {
        }

        /* synthetic */ ConfigCropType(AnonymousClass1 x0) {
            this();
        }

        public void onAnimationStart(Animator animation) {
            ImageView view = (ImageView) ((ObjectAnimator) animation).getTarget();
            this.mScaleType = view.getScaleType();
            view.setScaleType(ScaleType.MATRIX);
        }

        public void onAnimationEnd(Animator animation) {
            ((ImageView) ((ObjectAnimator) animation).getTarget()).setScaleType(this.mScaleType);
        }

        public void onAnimationCancel(Animator animation) {
            ((ImageView) ((ObjectAnimator) animation).getTarget()).setScaleType(this.mScaleType);
        }

        public void onAnimationRepeat(Animator animation) {
        }
    }

    public ImageTransition(boolean enter, Matrix matrix, int imageWidth, int imageHeight) {
        this.mEnter = enter;
        this.mMatrix.set(matrix);
        this.mImageWidth = imageWidth;
        this.mImageHeight = imageHeight;
    }

    public void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        if (this.mEnter) {
            captureInitialMatrix(transitionValues);
        } else {
            captureMatrix(transitionValues);
        }
    }

    public void captureEndValues(TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        if (this.mEnter) {
            captureMatrix(transitionValues);
        } else {
            captureInitialMatrix(transitionValues);
        }
    }

    private void captureInitialMatrix(TransitionValues values) {
        RectF originBounds = new RectF();
        originBounds.set(0.0f, 0.0f, (float) this.mImageWidth, (float) this.mImageHeight);
        RectF imgBounds = new RectF();
        ImageView view = values.view;
        imgBounds.set(0.0f, 0.0f, (float) view.getDrawable().getIntrinsicWidth(), (float) view.getDrawable().getIntrinsicHeight());
        Matrix matrix = new Matrix();
        matrix.setRectToRect(imgBounds, originBounds, ScaleToFit.FILL);
        matrix.postConcat(this.mMatrix);
        values.values.put("image-matrix", matrix);
    }

    private void captureMatrix(TransitionValues values) {
        ImageView view = values.view;
        Matrix matrix = new Matrix();
        RectF viewBounds = new RectF();
        viewBounds.set(0.0f, 0.0f, (float) view.getWidth(), (float) view.getHeight());
        RectF imgBounds = new RectF();
        imgBounds.set(0.0f, 0.0f, (float) view.getDrawable().getIntrinsicWidth(), (float) view.getDrawable().getIntrinsicHeight());
        matrix.setRectToRect(imgBounds, viewBounds, ScaleToFit.CENTER);
        values.values.put("image-matrix", matrix);
    }

    public String[] getTransitionProperties() {
        String[] boundsProperties = super.getTransitionProperties();
        String[] properties = new String[(boundsProperties.length + 1)];
        System.arraycopy(boundsProperties, 0, properties, 0, boundsProperties.length);
        properties[boundsProperties.length] = "image-matrix";
        return properties;
    }

    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        Animator animator;
        Animator bounds = super.createAnimator(sceneRoot, startValues, endValues);
        boolean scaleChanged = false;
        if (!this.mEnter) {
            Drawable drawable = ((ImageView) startValues.view).getDrawable();
            scaleChanged = !BaseMiscUtil.floatNear((1.0f * ((float) this.mImageWidth)) / ((float) this.mImageHeight), (1.0f * ((float) drawable.getIntrinsicWidth())) / ((float) drawable.getIntrinsicHeight()), 0.01f);
        }
        if (scaleChanged) {
            animator = ObjectAnimator.ofFloat(startValues.view, "transitionAlpha", new float[]{0.0f});
        } else {
            Animator imageMatrix = new ObjectAnimator();
            Property property = PROPERTY_MATRIX;
            TypeEvaluator matrixEvaluator = new MatrixEvaluator();
            Matrix[] matrixArr = new Matrix[]{(Matrix) startValues.values.get("image-matrix"), (Matrix) endValues.values.get("image-matrix")};
            imageMatrix.setValues(new PropertyValuesHolder[]{PropertyValuesHolder.ofObject(property, matrixEvaluator, matrixArr)});
            imageMatrix.setTarget(endValues.view);
            imageMatrix.addListener(new ConfigCropType());
            animator = imageMatrix;
        }
        if (bounds == null) {
            return animator;
        }
        AnimatorSet set = new AnimatorSet();
        set.playTogether(new Animator[]{bounds, animator});
        return set;
    }
}
