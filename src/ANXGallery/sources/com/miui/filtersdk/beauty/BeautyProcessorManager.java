package com.miui.filtersdk.beauty;

public class BeautyProcessorManager {
    public static final BeautyProcessorManager INSTANCE = new BeautyProcessorManager();

    private BeautyProcessorManager() {
    }

    public IntelligentBeautyProcessor getBeautyProcessor() {
        return new ArcsoftBeautyProcessor();
    }
}
