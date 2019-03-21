package com.meicam.sdk;

import android.graphics.PointF;
import android.graphics.RectF;
import java.util.List;

public class NvsTimelineCaption extends NvsFx {
    public static final int DEFAULT_CATEGORY = 0;
    public static final int ROLE_IN_THEME_GENERAL = 0;
    public static final int ROLE_IN_THEME_TITLE = 1;
    public static final int ROLE_IN_THEME_TRAILER = 2;
    public static final int TEXT_ALIGNMENT_CENTER = 1;
    public static final int TEXT_ALIGNMENT_LEFT = 0;
    public static final int TEXT_ALIGNMENT_RIGHT = 2;
    public static final int THEME_CATEGORY = 2;
    public static final int USER_CATEGORY = 1;

    private native boolean nativeApplyCaptionStyle(long j, String str);

    private native long nativeChangeInPoint(long j, long j2);

    private native long nativeChangeOutPoint(long j, long j2);

    private native PointF nativeGetAnchorPoint(long j);

    private native boolean nativeGetBold(long j);

    private native List<PointF> nativeGetBoundingRectangleVertices(long j);

    private native String nativeGetCaptionStylePackageId(long j);

    private native PointF nativeGetCaptionTranslation(long j);

    private native int nativeGetCategory(long j);

    private native float nativeGetCenterAzimuthAngle(long j);

    private native float nativeGetCenterPolarAngle(long j);

    private native boolean nativeGetClipAffinityEnabled(long j);

    private native boolean nativeGetDrawOutline(long j);

    private native boolean nativeGetDrawShadow(long j);

    private native String nativeGetFontFilePath(long j);

    private native float nativeGetFontSize(long j);

    private native long nativeGetInPoint(long j);

    private native boolean nativeGetItalic(long j);

    private native float nativeGetLetterSpacing(long j);

    private native float nativeGetOrthoAngleRange(long j);

    private native long nativeGetOutPoint(long j);

    private native NvsColor nativeGetOutlineColor(long j);

    private native float nativeGetOutlineWidth(long j);

    private native float nativeGetPanoramicRotationAngle(long j);

    private native float nativeGetPanoramicScaleX(long j);

    private native float nativeGetPanoramicScaleY(long j);

    private native float nativeGetPolarAngleRange(long j);

    private native int nativeGetRoleInTheme(long j);

    private native float nativeGetRotationZ(long j);

    private native float nativeGetScaleX(long j);

    private native float nativeGetScaleY(long j);

    private native NvsColor nativeGetShadowColor(long j);

    private native PointF nativeGetShadowOffset(long j);

    private native String nativeGetText(long j);

    private native int nativeGetTextAlignment(long j);

    private native RectF nativeGetTextBoundingRect(long j);

    private native NvsColor nativeGetTextColor(long j);

    private native float nativeGetZValue(long j);

    private native boolean nativeIsPanoramic(long j);

    private native void nativeMovePosition(long j, long j2);

    private native void nativeRotateCaption(long j, float f, PointF pointF);

    private native void nativeScaleCaption(long j, float f, PointF pointF);

    private native void nativeSetAnchorPoint(long j, PointF pointF);

    private native void nativeSetBold(long j, boolean z);

    private native void nativeSetCaptionTranslation(long j, PointF pointF);

    private native void nativeSetCenterAzimuthAngle(long j, float f);

    private native void nativeSetCenterPolarAngle(long j, float f);

    private native void nativeSetClipAffinityEnabled(long j, boolean z);

    private native void nativeSetDrawOutline(long j, boolean z);

    private native void nativeSetDrawShadow(long j, boolean z);

    private native void nativeSetFontByFilePath(long j, String str);

    private native void nativeSetFontSize(long j, float f);

    private native void nativeSetItalic(long j, boolean z);

    private native void nativeSetLetterSpacing(long j, float f);

    private native void nativeSetOutlineColor(long j, NvsColor nvsColor);

    private native void nativeSetOutlineWidth(long j, float f);

    private native void nativeSetPanoramicRotationAngle(long j, float f);

    private native void nativeSetPanoramicScaleX(long j, float f);

    private native void nativeSetPanoramicScaleY(long j, float f);

    private native void nativeSetPolarAngleRange(long j, float f);

    private native void nativeSetRotationZ(long j, float f);

    private native void nativeSetScaleX(long j, float f);

    private native void nativeSetScaleY(long j, float f);

    private native void nativeSetShadowColor(long j, NvsColor nvsColor);

    private native void nativeSetShadowOffset(long j, PointF pointF);

    private native void nativeSetText(long j, String str);

    private native void nativeSetTextAlignment(long j, int i);

    private native void nativeSetTextColor(long j, NvsColor nvsColor);

    private native void nativeSetZValue(long j, float f);

    private native void nativeTranslateCaption(long j, PointF pointF);

    public void setClipAffinityEnabled(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetClipAffinityEnabled(this.m_internalObject, z);
    }

    public boolean getClipAffinityEnabled() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetClipAffinityEnabled(this.m_internalObject);
    }

    public long getInPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetInPoint(this.m_internalObject);
    }

    public long getOutPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOutPoint(this.m_internalObject);
    }

    public long changeInPoint(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeInPoint(this.m_internalObject, j);
    }

    public long changeOutPoint(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeChangeOutPoint(this.m_internalObject, j);
    }

    public void movePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        nativeMovePosition(this.m_internalObject, j);
    }

    public int getRoleInTheme() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetRoleInTheme(this.m_internalObject);
    }

    public int getCategory() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCategory(this.m_internalObject);
    }

    public String getCaptionStylePackageId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptionStylePackageId(this.m_internalObject);
    }

    public boolean applyCaptionStyle(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeApplyCaptionStyle(this.m_internalObject, str);
    }

    public void setText(String str) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetText(this.m_internalObject, str);
    }

    public String getText() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetText(this.m_internalObject);
    }

    public void setTextAlignment(int i) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetTextAlignment(this.m_internalObject, i);
    }

    public int getTextAlignment() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTextAlignment(this.m_internalObject);
    }

    public void setBold(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetBold(this.m_internalObject, z);
    }

    public boolean getBold() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBold(this.m_internalObject);
    }

    public void setItalic(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetItalic(this.m_internalObject, z);
    }

    public boolean getItalic() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetItalic(this.m_internalObject);
    }

    public void setLetterSpacing(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetLetterSpacing(this.m_internalObject, f);
    }

    public float getLetterSpacing() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetLetterSpacing(this.m_internalObject);
    }

    public void setTextColor(NvsColor nvsColor) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetTextColor(this.m_internalObject, nvsColor);
    }

    public NvsColor getTextColor() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTextColor(this.m_internalObject);
    }

    public void setDrawOutline(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetDrawOutline(this.m_internalObject, z);
    }

    public boolean getDrawOutline() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDrawOutline(this.m_internalObject);
    }

    public void setOutlineColor(NvsColor nvsColor) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetOutlineColor(this.m_internalObject, nvsColor);
    }

    public NvsColor getOutlineColor() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOutlineColor(this.m_internalObject);
    }

    public void setOutlineWidth(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetOutlineWidth(this.m_internalObject, f);
    }

    public float getOutlineWidth() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOutlineWidth(this.m_internalObject);
    }

    public void setDrawShadow(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetDrawShadow(this.m_internalObject, z);
    }

    public boolean getDrawShadow() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDrawShadow(this.m_internalObject);
    }

    public void setShadowColor(NvsColor nvsColor) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetShadowColor(this.m_internalObject, nvsColor);
    }

    public NvsColor getShadowColor() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetShadowColor(this.m_internalObject);
    }

    public void setShadowOffset(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetShadowOffset(this.m_internalObject, pointF);
    }

    public PointF getShadowOffset() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetShadowOffset(this.m_internalObject);
    }

    public void setFontSize(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetFontSize(this.m_internalObject, f);
    }

    public float getFontSize() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFontSize(this.m_internalObject);
    }

    public void setFontByFilePath(String str) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetFontByFilePath(this.m_internalObject, str);
    }

    public String getFontFilePath() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFontFilePath(this.m_internalObject);
    }

    public void setCaptionTranslation(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetCaptionTranslation(this.m_internalObject, pointF);
    }

    public PointF getCaptionTranslation() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptionTranslation(this.m_internalObject);
    }

    public void translateCaption(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeTranslateCaption(this.m_internalObject, pointF);
    }

    public void setAnchorPoint(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetAnchorPoint(this.m_internalObject, pointF);
    }

    public PointF getAnchorPoint() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAnchorPoint(this.m_internalObject);
    }

    public void setScaleX(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetScaleX(this.m_internalObject, f);
    }

    public float getScaleX() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetScaleX(this.m_internalObject);
    }

    public void setScaleY(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetScaleY(this.m_internalObject, f);
    }

    public float getScaleY() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetScaleY(this.m_internalObject);
    }

    public void scaleCaption(float f, PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeScaleCaption(this.m_internalObject, f, pointF);
    }

    public void setRotationZ(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetRotationZ(this.m_internalObject, f);
    }

    public float getRotationZ() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetRotationZ(this.m_internalObject);
    }

    public void rotateCaption(float f, PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        nativeRotateCaption(this.m_internalObject, f, pointF);
    }

    public void rotateCaption(float f) {
        NvsUtils.checkFunctionInMainThread();
        RectF textBoundingRect = getTextBoundingRect();
        rotateCaption(f, new PointF((textBoundingRect.left + textBoundingRect.right) / 2.0f, (textBoundingRect.bottom + textBoundingRect.top) / 2.0f));
    }

    public RectF getTextBoundingRect() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTextBoundingRect(this.m_internalObject);
    }

    public List<PointF> getBoundingRectangleVertices() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetBoundingRectangleVertices(this.m_internalObject);
    }

    public boolean isPanoramic() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsPanoramic(this.m_internalObject);
    }

    public void setCenterPolarAngle(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetCenterPolarAngle(this.m_internalObject, f);
    }

    public float getCenterPolarAngle() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCenterPolarAngle(this.m_internalObject);
    }

    public void setCenterAzimuthAngle(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetCenterAzimuthAngle(this.m_internalObject, f);
    }

    public float getCenterAzimuthAngle() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCenterAzimuthAngle(this.m_internalObject);
    }

    public void setPolarAngleRange(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetPolarAngleRange(this.m_internalObject, f);
    }

    public float getPolarAngleRange() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPolarAngleRange(this.m_internalObject);
    }

    public float getOrthoAngleRange() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetOrthoAngleRange(this.m_internalObject);
    }

    public void setPanoramicScaleX(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetPanoramicScaleX(this.m_internalObject, f);
    }

    public float getPanoramicScaleX() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPanoramicScaleX(this.m_internalObject);
    }

    public void setPanoramicScaleY(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetPanoramicScaleY(this.m_internalObject, f);
    }

    public float getPanoramicScaleY() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPanoramicScaleY(this.m_internalObject);
    }

    public void setPanoramicRotation(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetPanoramicRotationAngle(this.m_internalObject, f);
    }

    public float getPanoramicRotation() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPanoramicRotationAngle(this.m_internalObject);
    }

    public void setZValue(float f) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetZValue(this.m_internalObject, f);
    }

    public float getZValue() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetZValue(this.m_internalObject);
    }
}
