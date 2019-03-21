package uk.co.senab.photoview.gestures;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import java.util.Locale;

public class RotateGestureDetector {
    private static boolean DEBUG = Log.isLoggable("RotateGestureDetector", 3);
    private boolean isInProgress;
    private float mDegrees;
    private double mDistanceDiffLimit = 50.0d;
    private int mFirstPointerID;
    private float mFirstPointerLastX;
    private float mFirstPointerLastY;
    private float mFocusX;
    private float mFocusY;
    private boolean mIsBeingRotated = false;
    private boolean mIsClockwise;
    private OnRotationGestureListener mListener;
    private int mMaxVelocity;
    private int mMinVelocity;
    private double mPointersLastDistance;
    private float mRotateSlop = 10.0f;
    private int mSecondPointerID;
    private float mSecondPointerLastX;
    private float mSecondPointerLastY;
    private VelocityTracker mTracker;

    public interface OnRotationGestureListener {
        boolean onRotate(RotateGestureDetector rotateGestureDetector);

        boolean onRotateBegin(RotateGestureDetector rotateGestureDetector);

        void onRotateEnd(RotateGestureDetector rotateGestureDetector, boolean z, float f);
    }

    public float getRotateDegrees() {
        return this.mDegrees;
    }

    public float getFocusX() {
        return this.mFocusX;
    }

    public float getFocusY() {
        return this.mFocusY;
    }

    public RotateGestureDetector(Context context, OnRotationGestureListener listener) {
        this.mListener = listener;
        this.mFirstPointerID = -1;
        this.mSecondPointerID = -1;
        ViewConfiguration configuration = ViewConfiguration.get(context);
        this.mMinVelocity = configuration.getScaledMinimumFlingVelocity();
        this.mMaxVelocity = configuration.getScaledMaximumFlingVelocity();
    }

    private void ensureTracker() {
        if (this.mTracker == null) {
            this.mTracker = VelocityTracker.obtain();
        }
    }

    private void releaseTracker() {
        if (this.mTracker != null) {
            this.mTracker.recycle();
            this.mTracker = null;
        }
    }

    private boolean checkPointerIndex(MotionEvent event, int pointerIndex) {
        return pointerIndex > -1 && pointerIndex < event.getPointerCount();
    }

    public boolean onTouchEvent(MotionEvent event) {
        ensureTracker();
        this.mTracker.addMovement(event);
        switch (event.getActionMasked()) {
            case 0:
                this.mFirstPointerLastX = event.getX();
                this.mFirstPointerLastY = event.getY();
                this.mFirstPointerID = event.getPointerId(0);
                this.mDegrees = 0.0f;
                callRotateEnd();
                break;
            case 1:
                callRotateEnd();
                this.mFirstPointerID = -1;
                break;
            case 2:
                if (!(this.mFirstPointerID == -1 || this.mSecondPointerID == -1)) {
                    int p1Index = event.findPointerIndex(this.mFirstPointerID);
                    int p2Index = event.findPointerIndex(this.mSecondPointerID);
                    if (!checkPointerIndex(event, p1Index) || !checkPointerIndex(event, p2Index)) {
                        Log.w("RotateGestureDetector", String.format("illegal pointer index, count[%s], pointer1[%s], pointer2[%s]", new Object[]{Integer.valueOf(event.getPointerCount()), Integer.valueOf(p1Index), Integer.valueOf(p2Index)}));
                        break;
                    }
                    float p1X = event.getX(p1Index);
                    float p1Y = event.getY(p1Index);
                    float p2X = event.getX(p2Index);
                    float p2Y = event.getY(p2Index);
                    if (!this.mIsBeingRotated) {
                        double pointerDistance = calculateDistance((double) p1X, (double) p1Y, (double) p2X, (double) p2Y);
                        if (DEBUG) {
                            Log.d("RotateGestureDetector", String.format(Locale.US, "distance old %s, distance new %s", new Object[]{Double.valueOf(this.mPointersLastDistance), Double.valueOf(pointerDistance)}));
                        }
                        if (Math.abs(this.mPointersLastDistance - pointerDistance) > this.mDistanceDiffLimit) {
                            this.mFirstPointerLastX = p1X;
                            this.mFirstPointerLastY = p1Y;
                            this.mSecondPointerLastX = p2X;
                            this.mSecondPointerLastY = p2Y;
                            this.mPointersLastDistance = calculateDistance((double) this.mFirstPointerLastX, (double) this.mFirstPointerLastY, (double) this.mSecondPointerLastX, (double) this.mSecondPointerLastY);
                        } else {
                            if (Math.abs(calculateDegrees(this.mFirstPointerLastX, this.mFirstPointerLastY, this.mSecondPointerLastX, this.mSecondPointerLastY, p1X, p1Y, p2X, p2Y)) > this.mRotateSlop) {
                                this.mIsBeingRotated = true;
                                this.mFirstPointerLastX = p1X;
                                this.mFirstPointerLastY = p1Y;
                                this.mSecondPointerLastX = p2X;
                                this.mSecondPointerLastY = p2Y;
                                if (this.mListener != null) {
                                    this.isInProgress = this.mListener.onRotateBegin(this);
                                }
                            }
                        }
                    }
                    if (this.mIsBeingRotated) {
                        this.mDegrees = calculateDegrees(this.mFirstPointerLastX, this.mFirstPointerLastY, this.mSecondPointerLastX, this.mSecondPointerLastY, p1X, p1Y, p2X, p2Y);
                        this.mFocusX = (p1X + p2X) / 2.0f;
                        this.mFocusY = (p1Y + p2Y) / 2.0f;
                        if (DEBUG) {
                            Log.d("RotateGestureDetector", String.format("degrees %s, focusX %s, focusY %s", new Object[]{Float.valueOf(this.mDegrees), Float.valueOf(this.mFocusX), Float.valueOf(this.mFocusY)}));
                        }
                        if (Math.abs(this.mDegrees) > 2.0f) {
                            this.mIsClockwise = this.mDegrees > 0.0f;
                        }
                        boolean updatePre = true;
                        if (this.mListener != null) {
                            updatePre = this.mListener.onRotate(this);
                        }
                        if (updatePre) {
                            this.mFirstPointerLastX = p1X;
                            this.mFirstPointerLastY = p1Y;
                            this.mSecondPointerLastX = p2X;
                            this.mSecondPointerLastY = p2Y;
                            break;
                        }
                    }
                }
                break;
            case 3:
                callRotateEnd();
                this.mFirstPointerID = -1;
                this.mSecondPointerID = -1;
                break;
            case 5:
                int pointIndex = event.getActionIndex();
                this.mSecondPointerLastX = event.getX(pointIndex);
                this.mSecondPointerLastY = event.getY(pointIndex);
                this.mSecondPointerID = event.getPointerId(pointIndex);
                this.mDegrees = 0.0f;
                callRotateEnd();
                this.mPointersLastDistance = calculateDistance((double) this.mSecondPointerLastX, (double) this.mSecondPointerLastY, (double) this.mFirstPointerLastX, (double) this.mFirstPointerLastY);
                break;
            case 6:
                callRotateEnd();
                this.mSecondPointerID = -1;
                break;
        }
        return true;
    }

    public boolean isInProgress() {
        return this.isInProgress;
    }

    private void callRotateEnd() {
        if (this.isInProgress) {
            float velocity;
            this.isInProgress = false;
            this.mTracker.computeCurrentVelocity(1000, (float) this.mMaxVelocity);
            float x1 = this.mTracker.getXVelocity(this.mFirstPointerID);
            float x2 = this.mTracker.getXVelocity(this.mSecondPointerID);
            float y1 = this.mTracker.getYVelocity(this.mFirstPointerID);
            float deltaX = x2 - x1;
            float deltaY = this.mTracker.getYVelocity(this.mSecondPointerID) - y1;
            if (Math.abs(deltaX) > Math.abs(deltaY)) {
                velocity = deltaX;
            } else {
                velocity = deltaY;
            }
            velocity /= 2.0f;
            if (DEBUG) {
                Log.i("RotateGestureDetector", String.format("x1 %s, x1 %s, y1 %s, y2 %s, deltaX %s, deltaY %s, clockwise %s", new Object[]{Float.valueOf(x1), Float.valueOf(x1), Float.valueOf(y1), Float.valueOf(y2), Float.valueOf(deltaX), Float.valueOf(deltaY), Boolean.valueOf(this.mIsClockwise)}));
            }
            if (this.mListener != null) {
                this.mListener.onRotateEnd(this, this.mIsClockwise, velocity);
            }
        }
        this.mIsBeingRotated = false;
        releaseTracker();
    }

    private float calculateDegrees(float from, float to) {
        float delta = clipAngle(to) - clipAngle(from);
        if (delta < -180.0f) {
            return delta + 360.0f;
        }
        if (delta > 180.0f) {
            return delta - 360.0f;
        }
        return delta;
    }

    private float clipAngle(float angle) {
        return angle % 360.0f;
    }

    private double calculateDistance(double x1, double y1, double x2, double y2) {
        return Math.sqrt(Math.pow(x1 - x2, 2.0d) + Math.pow(y1 - y2, 2.0d));
    }

    private float calculateDegrees(float p1StartX, float p1StartY, float p2StartX, float p2StartY, float p1EndX, float p1EndY, float p2EndX, float p2EndY) {
        return calculateDegrees((float) Math.toDegrees((double) ((float) Math.atan2((double) (p2StartY - p1StartY), (double) (p2StartX - p1StartX)))), (float) Math.toDegrees((double) ((float) Math.atan2((double) (p2EndY - p1EndY), (double) (p2EndX - p1EndX)))));
    }
}
