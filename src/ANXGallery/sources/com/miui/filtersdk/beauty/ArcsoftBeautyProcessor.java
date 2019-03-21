package com.miui.filtersdk.beauty;

import android.graphics.Bitmap;
import com.miui.filtersdk.BeautyArcsoftJni;
import java.util.Map;
import java.util.Map.Entry;

public class ArcsoftBeautyProcessor extends IntelligentBeautyProcessor {
    private int[] mBeautyParameters = new int[11];
    private int mBrightEyeRatio;
    private int mDeblemish;
    private int mDepouchRatio;
    private int mEnlargeEyeRatio;
    private int mIrisShineRatio;
    private int mLipBeautyRatio;
    private int mRelightingRatio;
    private int mRuddyRatio;
    private int mShrinkFaceRatio;
    private int mShrinkNooseRatio;
    private int mSmoothStrength;
    private int mWhiteStrength;

    ArcsoftBeautyProcessor() {
        for (int i = 0; i < 11; i++) {
            this.mBeautyParameters[i] = 0;
        }
        setExtraSpan(50.0f);
        this.mLevelParameters = new float[][]{new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f}, new float[]{10.0f, 20.0f, 10.0f, 30.0f, 15.0f, 10.0f, 1.0f, 70.0f, 0.0f, 25.0f, 10.0f, 0.0f}, new float[]{10.0f, 28.0f, 10.0f, 30.0f, 15.0f, 10.0f, 1.0f, 70.0f, 0.0f, 25.0f, 10.0f, 0.0f}, new float[]{10.0f, 35.0f, 10.0f, 30.0f, 15.0f, 10.0f, 1.0f, 70.0f, 0.0f, 25.0f, 10.0f, 0.0f}, new float[]{10.0f, 42.0f, 10.0f, 30.0f, 15.0f, 15.0f, 1.0f, 70.0f, 0.0f, 25.0f, 10.0f, 0.0f}, new float[]{10.0f, 50.0f, 10.0f, 30.0f, 15.0f, 15.0f, 1.0f, 70.0f, 0.0f, 25.0f, 10.0f, 0.0f}};
    }

    public BeautyParameterType[] getSupportedBeautyParamTypes() {
        return new BeautyParameterType[]{BeautyParameterType.WHITEN_STRENGTH, BeautyParameterType.SMOOTH_STRENGTH, BeautyParameterType.ENLARGE_EYE_RATIO, BeautyParameterType.SHRINK_FACE_RATIO, BeautyParameterType.BRIGHT_EYE_RATIO, BeautyParameterType.IRIS_SHINE_RATIO, BeautyParameterType.DEBLEMISH, BeautyParameterType.DEPOUCH_RATIO, BeautyParameterType.RELIGHTING_RATIO, BeautyParameterType.LIP_BEAUTY_RATIO, BeautyParameterType.RUDDY_STRENGTH, BeautyParameterType.SHRINK_NOSE_RATIO};
    }

    public float[] getSupportedParamRange(BeautyParameterType type) {
        switch (type) {
            case ENLARGE_EYE_RATIO:
                return new float[]{0.0f, 40.0f};
            case SHRINK_FACE_RATIO:
                return new float[]{0.0f, 100.0f};
            case WHITEN_STRENGTH:
                return new float[]{0.0f, 70.0f};
            case SMOOTH_STRENGTH:
                return new float[]{0.0f, 70.0f};
            case BRIGHT_EYE_RATIO:
                return new float[]{0.0f, 40.0f};
            case RUDDY_STRENGTH:
                return new float[]{0.0f, 80.0f};
            case RELIGHTING_RATIO:
                return new float[]{0.0f, 60.0f};
            case LIP_BEAUTY_RATIO:
                return new float[]{0.0f, 100.0f};
            case DEPOUCH_RATIO:
                return new float[]{0.0f, 100.0f};
            case IRIS_SHINE_RATIO:
                return new float[]{0.0f, 40.0f};
            case SHRINK_NOSE_RATIO:
                return new float[]{0.0f, 100.0f};
            case DEBLEMISH:
                return new float[]{0.0f, 1.0f};
            default:
                return new float[0];
        }
    }

    public void setBeautyParamsDegree(Map<BeautyParameterType, Float> params) {
        for (Entry<BeautyParameterType, Float> entry : params.entrySet()) {
            setBeautyParamDegree((BeautyParameterType) entry.getKey(), (Float) entry.getValue());
        }
    }

    public void setBeautyParamDegree(BeautyParameterType type, Float degree) {
        switch (type) {
            case ENLARGE_EYE_RATIO:
                this.mEnlargeEyeRatio = Math.round(degree.floatValue());
                return;
            case SHRINK_FACE_RATIO:
                this.mShrinkFaceRatio = Math.round(degree.floatValue());
                return;
            case WHITEN_STRENGTH:
                this.mWhiteStrength = Math.round(degree.floatValue());
                return;
            case SMOOTH_STRENGTH:
                this.mSmoothStrength = Math.round(degree.floatValue());
                return;
            case BRIGHT_EYE_RATIO:
                this.mBrightEyeRatio = Math.round(degree.floatValue());
                return;
            case RUDDY_STRENGTH:
                this.mRuddyRatio = Math.round(degree.floatValue());
                return;
            case RELIGHTING_RATIO:
                this.mRelightingRatio = Math.round(degree.floatValue());
                return;
            case LIP_BEAUTY_RATIO:
                this.mLipBeautyRatio = Math.round(degree.floatValue());
                return;
            case DEPOUCH_RATIO:
                this.mDepouchRatio = Math.round(degree.floatValue());
                return;
            case IRIS_SHINE_RATIO:
                this.mIrisShineRatio = Math.round(degree.floatValue());
                return;
            case SHRINK_NOSE_RATIO:
                this.mShrinkNooseRatio = Math.round(degree.floatValue());
                return;
            case DEBLEMISH:
                this.mDeblemish = Math.round(degree.floatValue());
                return;
            default:
                return;
        }
    }

    public void beautify(byte[] inputImage, int inFormat, int outputWidth, int outputHeight, byte[] outputImage, int outFormat) {
        if (!isParametersEmpty()) {
            BeautyArcsoftJni.beautifyProcess(inputImage, outputWidth, outputHeight, this.mWhiteStrength, this.mSmoothStrength, this.mEnlargeEyeRatio, this.mShrinkFaceRatio, this.mBrightEyeRatio, this.mDeblemish, this.mDepouchRatio, this.mIrisShineRatio, this.mLipBeautyRatio, this.mRelightingRatio, this.mRuddyRatio, this.mShrinkNooseRatio);
        }
    }

    public void beautify(Bitmap bitmap, int width, int height) {
        if (!isParametersEmpty()) {
            BeautyArcsoftJni.beautifyProcessBitmap(bitmap, width, height, this.mWhiteStrength, this.mSmoothStrength, this.mEnlargeEyeRatio, this.mShrinkFaceRatio, this.mBrightEyeRatio, this.mDeblemish, this.mDepouchRatio, this.mIrisShineRatio, this.mLipBeautyRatio, this.mRelightingRatio, this.mRuddyRatio, this.mShrinkNooseRatio);
        }
    }

    public void init(int width, int height) {
    }

    private boolean isParametersEmpty() {
        return this.mBrightEyeRatio == 0 && this.mSmoothStrength == 0 && this.mWhiteStrength == 0 && this.mShrinkFaceRatio == 0 && this.mEnlargeEyeRatio == 0 && this.mDeblemish == 0 && this.mDepouchRatio == 0 && this.mIrisShineRatio == 0 && this.mLipBeautyRatio == 0 && this.mRelightingRatio == 0 && this.mRuddyRatio == 0 && this.mShrinkNooseRatio == 0;
    }

    public void clearBeautyParameters() {
        this.mBrightEyeRatio = 0;
        this.mSmoothStrength = 0;
        this.mWhiteStrength = 0;
        this.mShrinkFaceRatio = 0;
        this.mEnlargeEyeRatio = 0;
        this.mIrisShineRatio = 0;
        this.mDeblemish = 0;
        this.mDepouchRatio = 0;
        this.mRelightingRatio = 0;
        this.mLipBeautyRatio = 0;
        this.mRuddyRatio = 0;
        this.mShrinkNooseRatio = 0;
    }
}
