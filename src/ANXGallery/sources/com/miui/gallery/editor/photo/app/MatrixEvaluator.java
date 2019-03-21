package com.miui.gallery.editor.photo.app;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

public class MatrixEvaluator implements TypeEvaluator<Matrix> {
    private float[] mTempEndValues = new float[9];
    private Matrix mTempMatrix = new Matrix();
    private float[] mTempStartValues = new float[9];

    public Matrix evaluate(float fraction, Matrix startValue, Matrix endValue) {
        startValue.getValues(this.mTempStartValues);
        endValue.getValues(this.mTempEndValues);
        for (int i = 0; i < 9; i++) {
            this.mTempEndValues[i] = this.mTempStartValues[i] + (fraction * (this.mTempEndValues[i] - this.mTempStartValues[i]));
        }
        this.mTempMatrix.setValues(this.mTempEndValues);
        return this.mTempMatrix;
    }
}
