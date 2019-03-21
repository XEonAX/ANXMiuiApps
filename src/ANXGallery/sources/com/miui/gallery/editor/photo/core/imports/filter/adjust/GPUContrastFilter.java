package com.miui.gallery.editor.photo.core.imports.filter.adjust;

import com.miui.gallery.editor.photo.core.imports.filter.render.IFilterEmptyValidate;

public class GPUContrastFilter extends GPURGBLutFilter implements IFilterEmptyValidate {
    public GPUContrastFilter(int degree) {
        super(degree);
        if (this.mDegree > 50) {
            this.mPercent = ((((float) (this.mDegree - 50)) * 1.0f) / 50.0f) + 0.0f;
        } else {
            this.mPercent = ((((float) (50 - this.mDegree)) * 1.0f) / 50.0f) + 0.0f;
        }
    }

    protected String getLUTPath() {
        return this.mDegree > 50 ? "filter/adjust/adjust_high_contrast.png" : "filter/adjust/adjust_low_contrast.png";
    }

    public boolean isEmpty() {
        return this.mDegree == 50;
    }
}
