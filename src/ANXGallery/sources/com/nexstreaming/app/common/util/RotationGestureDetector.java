package com.nexstreaming.app.common.util;

import android.view.MotionEvent;

public class RotationGestureDetector {
    private float mFocusX;
    private float mFocusY;
    private boolean mInProgress = false;
    private double mInitialTheta;
    private final OnRotationGestureListener mListener;
    private int mPrimaryPointerId;
    private int mSecondaryPointerId;

    public interface OnRotationGestureListener {
        boolean onBeginRotate(float f, float f2);

        void onEndRotate(boolean z);

        void onRotate(float f, float f2, float f3);
    }

    public boolean isInProgress() {
        return this.mInProgress;
    }

    public RotationGestureDetector(OnRotationGestureListener onRotationGestureListener) {
        this.mListener = onRotationGestureListener;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        int findPointerIndex2;
        float x;
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.mPrimaryPointerId = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.mInProgress) {
                    this.mListener.onEndRotate(false);
                    this.mInProgress = false;
                    break;
                }
                break;
            case 2:
                if (this.mInProgress) {
                    findPointerIndex = motionEvent.findPointerIndex(this.mPrimaryPointerId);
                    findPointerIndex2 = motionEvent.findPointerIndex(this.mSecondaryPointerId);
                    if (findPointerIndex >= 0 && findPointerIndex2 >= 0) {
                        x = motionEvent.getX(findPointerIndex);
                        this.mListener.onRotate(this.mFocusX, this.mFocusY, (float) (((Math.atan2((double) (motionEvent.getY(findPointerIndex) - motionEvent.getY(findPointerIndex2)), (double) (x - motionEvent.getX(findPointerIndex2))) - this.mInitialTheta) * 180.0d) / 3.141592653589793d));
                        break;
                    }
                    this.mListener.onEndRotate(false);
                    this.mInProgress = false;
                    break;
                }
                break;
            case 3:
                if (this.mInProgress) {
                    this.mListener.onEndRotate(true);
                    this.mInProgress = false;
                    break;
                }
                break;
            case 5:
                if (!this.mInProgress) {
                    this.mSecondaryPointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    if (this.mSecondaryPointerId != this.mPrimaryPointerId) {
                        findPointerIndex = motionEvent.findPointerIndex(this.mPrimaryPointerId);
                        findPointerIndex2 = motionEvent.findPointerIndex(this.mSecondaryPointerId);
                        if (findPointerIndex >= 0 && findPointerIndex2 >= 0) {
                            x = motionEvent.getX(findPointerIndex);
                            float y = motionEvent.getY(findPointerIndex);
                            float x2 = motionEvent.getX(findPointerIndex2);
                            float y2 = motionEvent.getY(findPointerIndex2);
                            this.mFocusX = (x + x2) / 2.0f;
                            this.mFocusY = (y + y2) / 2.0f;
                            this.mInitialTheta = Math.atan2((double) (y - y2), (double) (x - x2));
                            if (this.mListener.onBeginRotate(this.mFocusX, this.mFocusY)) {
                                this.mInProgress = true;
                                break;
                            }
                        }
                        this.mListener.onEndRotate(false);
                        this.mInProgress = false;
                        break;
                    }
                }
                break;
            case 6:
                findPointerIndex = motionEvent.getPointerId(motionEvent.getActionIndex());
                if (this.mInProgress && (this.mSecondaryPointerId == findPointerIndex || this.mPrimaryPointerId == findPointerIndex)) {
                    this.mListener.onEndRotate(false);
                    this.mInProgress = false;
                    break;
                }
        }
        return true;
    }
}
