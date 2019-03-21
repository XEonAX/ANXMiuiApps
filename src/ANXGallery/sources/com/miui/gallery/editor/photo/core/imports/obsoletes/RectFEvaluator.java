package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.animation.TypeEvaluator;
import android.graphics.RectF;

public class RectFEvaluator implements TypeEvaluator<RectF> {
    private RectF mRect = new RectF();

    public RectF evaluate(float fraction, RectF startValue, RectF endValue) {
        this.mRect.set(startValue.left + ((endValue.left - startValue.left) * fraction), startValue.top + ((endValue.top - startValue.top) * fraction), startValue.right + ((endValue.right - startValue.right) * fraction), startValue.bottom + ((endValue.bottom - startValue.bottom) * fraction));
        return this.mRect;
    }
}
