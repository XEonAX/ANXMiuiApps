package com.miui.gallery.editor.photo.core.imports.miuibeauty;

import android.graphics.Bitmap;
import com.miui.arcsoftbeauty.ArcsoftBeautyJni;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyRenderData.BeautyParams;

public class MiuiBeautyEngine extends RenderEngine {
    public Bitmap render(Bitmap bitmap, RenderData data) {
        if (!(data instanceof MiuiBeautyRenderData)) {
            return null;
        }
        bitmap = preProcessBitmap(bitmap);
        MiuiBeautyRenderData renderData = (MiuiBeautyRenderData) data;
        if (renderData.mBeautyParamsList != null && renderData.mBeautyParamsList.size() > 0) {
            int length = renderData.mBeautyParamsList.size();
            int[] whiteParams = new int[length];
            int[] smoothParams = new int[length];
            int[] eyeLargeParams = new int[length];
            int[] faceThinParams = new int[length];
            int[] eyeBrightParams = new int[length];
            int[] deblemishParams = new int[length];
            int[] depouchParams = new int[length];
            int[] relightingParams = new int[length];
            int[] irisShineParams = new int[length];
            int[] lipBeautyParams = new int[length];
            int[] ruddyParams = new int[length];
            int[] noseThinParams = new int[length];
            for (int i = 0; i < length; i++) {
                BeautyParams params = (BeautyParams) renderData.mBeautyParamsList.get(i);
                whiteParams[i] = params.mWhite;
                smoothParams[i] = params.mSmooth;
                eyeLargeParams[i] = params.mEyeLarge;
                faceThinParams[i] = params.mFaceThin;
                eyeBrightParams[i] = params.mBrightEyeRatio;
                deblemishParams[i] = params.mDeblemish;
                depouchParams[i] = params.mDepouchRatio;
                relightingParams[i] = params.mRelightingRatio;
                irisShineParams[i] = params.mIrisShineRatio;
                lipBeautyParams[i] = params.mLipBeautyRatio;
                ruddyParams[i] = params.mRuddyRatio;
                noseThinParams[i] = params.mNoseThin;
            }
            ArcsoftBeautyJni.beautifyProcessBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), whiteParams, smoothParams, eyeLargeParams, faceThinParams, eyeBrightParams, deblemishParams, depouchParams, irisShineParams, lipBeautyParams, relightingParams, ruddyParams, noseThinParams);
        }
        return bitmap;
    }

    public static Bitmap preProcessBitmap(Bitmap bitmap) {
        if (bitmap.getWidth() % 2 == 0) {
            return bitmap;
        }
        int newWidth = bitmap.getWidth();
        if (newWidth == 1) {
            return null;
        }
        int newHeight = bitmap.getHeight();
        if (newWidth % 2 != 0) {
            newWidth--;
            newHeight = (bitmap.getHeight() * newWidth) / bitmap.getWidth();
        }
        return Bitmap.createBitmap(bitmap, 0, 0, newWidth, newHeight);
    }

    public static Bitmap preProcessBitmapForPreview(Bitmap bitmap) {
        if (bitmap.getWidth() % 4 == 0) {
            return bitmap;
        }
        int newWidth = bitmap.getWidth();
        if (newWidth == 1) {
            return null;
        }
        if (newWidth < 4) {
            newWidth = 4;
        }
        while (newWidth % 4 != 0) {
            newWidth--;
        }
        return Bitmap.createScaledBitmap(bitmap, newWidth, (bitmap.getHeight() * newWidth) / bitmap.getWidth(), true);
    }
}
