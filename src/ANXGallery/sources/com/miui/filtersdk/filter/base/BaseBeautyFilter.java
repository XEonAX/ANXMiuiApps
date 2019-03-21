package com.miui.filtersdk.filter.base;

import com.miui.filtersdk.beauty.BeautyProcessor;

public abstract class BaseBeautyFilter extends GPUImageFilter {
    protected BeautyProcessor mBeautyProcessor;

    public void setBeautyProcessor(BeautyProcessor processor) {
        this.mBeautyProcessor = processor;
    }
}
