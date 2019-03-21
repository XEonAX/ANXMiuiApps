package com.nexstreaming.nexeditorsdk;

import android.graphics.Rect;
import android.util.Log;
import java.util.List;

public class nexDrawInfo {
    private static String TAG = "nexDrawInfo";
    private int mBrightness;
    private int mClipID;
    private int mContrast;
    private int mCustomLUT_A;
    private int mCustomLUT_B;
    private int mCustomLUT_Power;
    private String mEffectID;
    private Rect mEndRect = new Rect();
    private int mEndTime;
    private Rect mFaceRect = new Rect();
    private int mID;
    private int mIsTransition;
    private int mLUT;
    private float mRatio = 1.7777778f;
    private float mRealScale = 1.0f;
    private int mRotateState;
    private int mSaturation;
    private Rect mStartRect = new Rect();
    private int mStartTime;
    private int mSubEffectID;
    private int mTintcolor;
    private String mTitle;
    private int mTopEffectID;
    private String mUserLUT;
    private int mUserRotateState;
    private int mUserTranslateX;
    private int mUserTranslateY;
    List<d> subTemplateDrawInfos;

    public int getID() {
        return this.mID;
    }

    public void setID(int i) {
        this.mID = i;
    }

    public int getClipID() {
        return this.mClipID;
    }

    public void setClipID(int i) {
        this.mClipID = i;
    }

    public String getEffectID() {
        return this.mEffectID;
    }

    public int getSubEffectID() {
        return this.mSubEffectID;
    }

    public void setSubEffectID(int i) {
        this.mSubEffectID = i;
    }

    public int getTopEffectID() {
        return this.mTopEffectID;
    }

    public void setTopEffectID(int i) {
        this.mTopEffectID = i;
    }

    public void setEffectID(String str) {
        this.mEffectID = str;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public int getIsTransition() {
        return this.mIsTransition;
    }

    public void setIsTransition(int i) {
        this.mIsTransition = i;
    }

    public int getStartTime() {
        return this.mStartTime;
    }

    public void setStartTime(int i) {
        this.mStartTime = i;
    }

    public int getEndTime() {
        return this.mEndTime;
    }

    public void setEndTime(int i) {
        this.mEndTime = i;
    }

    public int getRotateState() {
        return this.mRotateState;
    }

    public void setRotateState(int i) {
        this.mRotateState = i;
    }

    public int getUserRotateState() {
        return this.mUserRotateState;
    }

    public void setUserRotateState(int i) {
        this.mUserRotateState = i;
    }

    public int getUserTranslateX() {
        return this.mUserTranslateX;
    }

    public int getUserTranslateY() {
        return this.mUserTranslateY;
    }

    public void setUserTranslate(int i, int i2) {
        this.mUserTranslateX = i;
        this.mUserTranslateY = i2;
    }

    public float getRealScale() {
        return this.mRealScale;
    }

    public void setRealScale(float f) {
        this.mRealScale = f;
    }

    public int getBrightness() {
        return this.mBrightness;
    }

    public void setBrightness(int i) {
        this.mBrightness = i;
    }

    public int getContrast() {
        return this.mContrast;
    }

    public void setContrast(int i) {
        this.mContrast = i;
    }

    public int getSaturation() {
        return this.mSaturation;
    }

    public void setSaturation(int i) {
        this.mSaturation = i;
    }

    public int getTintcolor() {
        return this.mTintcolor;
    }

    public void setTintcolor(int i) {
        this.mTintcolor = i;
    }

    public int getLUT() {
        return this.mLUT;
    }

    public int getCustomLUTA() {
        return this.mCustomLUT_A;
    }

    public int getCustomLUTB() {
        return this.mCustomLUT_B;
    }

    public int getCustomLUTPower() {
        return this.mCustomLUT_Power;
    }

    public void setLUT(int i) {
        this.mLUT = i;
    }

    public String getUserLUT() {
        return this.mUserLUT;
    }

    public void setUserLUT(String str) {
        this.mUserLUT = str;
    }

    public void setCustomLUTA(int i) {
        this.mCustomLUT_A = i;
    }

    public void setCustomLUTB(int i) {
        this.mCustomLUT_B = i;
    }

    public void setCustomLUTPower(int i) {
        this.mCustomLUT_Power = i;
    }

    public Rect getStartRect() {
        return this.mStartRect;
    }

    public void setStartRect(Rect rect) {
        this.mStartRect.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public Rect getEndRect() {
        return this.mEndRect;
    }

    public void setEndRect(Rect rect) {
        this.mEndRect.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public Rect getFaceRect() {
        return this.mFaceRect;
    }

    public void setFaceRect(Rect rect) {
        this.mFaceRect.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public float getRatio() {
        return this.mRatio;
    }

    public void setRatio(float f) {
        this.mRatio = f;
    }

    public List<d> getSubTemplateDrawInfos() {
        return this.subTemplateDrawInfos;
    }

    public void setSubTemplateDrawInfos(List<d> list) {
        this.subTemplateDrawInfos = list;
    }

    public void print() {
        Log.d(TAG, String.format("nexDrawInfo id : %d", new Object[]{Integer.valueOf(this.mID)}));
        Log.d(TAG, String.format("nexDrawInfo clip : %d", new Object[]{Integer.valueOf(this.mClipID)}));
        Log.d(TAG, String.format("nexDrawInfo subID : %d", new Object[]{Integer.valueOf(this.mSubEffectID)}));
        Log.d(TAG, String.format("nexDrawInfo start : %d", new Object[]{Integer.valueOf(this.mStartTime)}));
        Log.d(TAG, String.format("nexDrawInfo end : %d", new Object[]{Integer.valueOf(this.mEndTime)}));
        String str = TAG;
        String str2 = "nexDrawInfo effect : %s";
        Object[] objArr = new Object[1];
        objArr[0] = this.mEffectID == null ? "" : this.mEffectID;
        Log.d(str, String.format(str2, objArr));
        Log.d(TAG, String.format("nexDrawInfo istransition : %d", new Object[]{Integer.valueOf(this.mIsTransition)}));
        Log.d(TAG, String.format("nexDrawInfo color : %d %d %d", new Object[]{Integer.valueOf(this.mBrightness), Integer.valueOf(this.mContrast), Integer.valueOf(this.mSaturation)}));
        Log.d(TAG, String.format("nexDrawInfo lut : %d", new Object[]{Integer.valueOf(this.mLUT)}));
        Log.d(TAG, String.format("nexDrawInfo start rect : %d %d %d %d", new Object[]{Integer.valueOf(this.mStartRect.left), Integer.valueOf(this.mStartRect.top), Integer.valueOf(this.mStartRect.right), Integer.valueOf(this.mStartRect.bottom)}));
        Log.d(TAG, String.format("nexDrawInfo end rect : %d %d %d %d", new Object[]{Integer.valueOf(this.mEndRect.left), Integer.valueOf(this.mEndRect.top), Integer.valueOf(this.mEndRect.right), Integer.valueOf(this.mEndRect.bottom)}));
        Log.d(TAG, String.format("nexDrawInfo face rect : %d %d %d %d", new Object[]{Integer.valueOf(this.mEndRect.left), Integer.valueOf(this.mEndRect.top), Integer.valueOf(this.mEndRect.right), Integer.valueOf(this.mEndRect.bottom)}));
        Log.d(TAG, String.format("nexDrawInfo ratio : %f", new Object[]{Float.valueOf(this.mRatio)}));
        Log.d(TAG, "---------------------------------------------------");
    }
}
