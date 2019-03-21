package com.miui.filtersdk.beauty;

import java.util.HashMap;
import java.util.Map;

public abstract class IntelligentBeautyProcessor extends BeautyProcessor {
    private float mExtraSpan = 0.0f;
    protected float[][] mLevelParameters;

    public abstract void clearBeautyParameters();

    public void setExtraSpan(float extraSpan) {
        this.mExtraSpan = extraSpan;
    }

    public final Map<BeautyParameterType, Float> getIntelligentLevelParams(int level) {
        Map<BeautyParameterType, Float> paramsMap = new HashMap();
        BeautyParameterType[] types = getSupportedBeautyParamTypes();
        for (int i = 0; i < types.length; i++) {
            paramsMap.put(types[i], Float.valueOf(this.mLevelParameters[level][i]));
        }
        return paramsMap;
    }
}
