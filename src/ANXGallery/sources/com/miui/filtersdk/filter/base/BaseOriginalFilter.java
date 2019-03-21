package com.miui.filtersdk.filter.base;

public class BaseOriginalFilter extends GPUImageFilter {
    protected int mDegree;

    public BaseOriginalFilter(String vertexShader, String fragmentShader) {
        super(vertexShader, fragmentShader);
    }

    public boolean isDegreeAdjustSupported() {
        return false;
    }

    public void setDegree(int degree) {
        if (isDegreeAdjustSupported()) {
            if (degree < 0) {
                degree = 0;
            }
            if (degree > 100) {
                degree = 100;
            }
            this.mDegree = degree;
            return;
        }
        throw new AssertionError("Degree adjustment of the filter is not supported!");
    }
}
