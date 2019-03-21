package com.miui.gallery.editor.photo.core.imports.miuibeauty;

import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.gallery.editor.photo.core.RenderData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class MiuiBeautyRenderData extends RenderData {
    public List<BeautyParams> mBeautyParamsList = new ArrayList();

    public class BeautyParams {
        public int mBrightEyeRatio;
        public int mDeblemish;
        public int mDepouchRatio;
        public int mEyeLarge;
        public int mFaceThin;
        public int mIrisShineRatio;
        public int mLipBeautyRatio;
        public int mNoseThin;
        public int mRelightingRatio;
        public int mRuddyRatio;
        public int mSmooth;
        public int mWhite;

        public BeautyParams(Map<BeautyParameterType, Float> params) {
            for (Entry<BeautyParameterType, Float> entry : params.entrySet()) {
                int degree = Math.round(((Float) entry.getValue()).floatValue());
                switch ((BeautyParameterType) entry.getKey()) {
                    case ENLARGE_EYE_RATIO:
                        this.mEyeLarge = degree;
                        break;
                    case SHRINK_FACE_RATIO:
                        this.mFaceThin = degree;
                        break;
                    case WHITEN_STRENGTH:
                        this.mWhite = degree;
                        break;
                    case SMOOTH_STRENGTH:
                        this.mSmooth = degree;
                        break;
                    case RUDDY_STRENGTH:
                        this.mRuddyRatio = degree;
                        break;
                    case BRIGHT_EYE_RATIO:
                        this.mBrightEyeRatio = degree;
                        break;
                    case DEBLEMISH:
                        this.mDeblemish = degree;
                        break;
                    case DEPOUCH_RATIO:
                        this.mDepouchRatio = degree;
                        break;
                    case RELIGHTING_RATIO:
                        this.mRelightingRatio = degree;
                        break;
                    case LIP_BEAUTY_RATIO:
                        this.mLipBeautyRatio = degree;
                        break;
                    case IRIS_SHINE_RATIO:
                        this.mIrisShineRatio = degree;
                        break;
                    case SHRINK_NOSE_RATIO:
                        this.mNoseThin = degree;
                        break;
                    default:
                        break;
                }
            }
        }
    }

    public MiuiBeautyRenderData(Map<BeautyParameterType, Float> params) {
        if (params != null) {
            this.mBeautyParamsList.add(new BeautyParams(params));
        }
    }

    public void addParams(Map<BeautyParameterType, Float> params) {
        this.mBeautyParamsList.add(new BeautyParams(params));
    }
}
