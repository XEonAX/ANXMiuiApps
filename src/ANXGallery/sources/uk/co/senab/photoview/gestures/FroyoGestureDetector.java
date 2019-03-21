package uk.co.senab.photoview.gestures;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.VelocityTracker;
import com.miui.gallery.util.BaseMiscUtil;
import uk.co.senab.photoview.log.LogManager;

@TargetApi(8)
public class FroyoGestureDetector extends EclairGestureDetector {
    private static boolean DEBUG = Log.isLoggable("FroyoGestureDetector", 3);
    protected final ScaleGestureDetector mDetector;
    private float mMultiPointerDiff = 10.0f;
    private int mPrimaryPointerId = -1;
    private float mSecondLastTouchX;
    private float mSecondLastTouchY;
    private int mSecondPointerId = -1;

    public FroyoGestureDetector(Context context) {
        super(context);
        this.mDetector = new ScaleGestureDetector(context, new OnScaleGestureListener() {
            public boolean onScale(ScaleGestureDetector detector) {
                float scaleFactor = detector.getScaleFactor();
                if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                    return false;
                }
                FroyoGestureDetector.this.mListener.onScale(scaleFactor, detector.getFocusX(), detector.getFocusY());
                return true;
            }

            public boolean onScaleBegin(ScaleGestureDetector detector) {
                return true;
            }

            public void onScaleEnd(ScaleGestureDetector detector) {
            }
        });
    }

    public boolean isScaling() {
        return this.mDetector.isInProgress();
    }

    public boolean onTouchEvent(MotionEvent ev) {
        this.mDetector.onTouchEvent(ev);
        return handleDragEvent(ev);
    }

    private boolean checkPointerIndex(MotionEvent event, int pointerIndex) {
        return pointerIndex > -1 && pointerIndex < event.getPointerCount();
    }

    float getActiveX(MotionEvent ev) {
        int pointerIndex = ev.findPointerIndex(this.mPrimaryPointerId);
        if (checkPointerIndex(ev, pointerIndex)) {
            return ev.getX(pointerIndex);
        }
        return ev.getX();
    }

    float getActiveY(MotionEvent ev) {
        int pointerIndex = ev.findPointerIndex(this.mPrimaryPointerId);
        if (checkPointerIndex(ev, pointerIndex)) {
            return ev.getY(pointerIndex);
        }
        return ev.getY();
    }

    private double calculateDistance(double dx, double dy) {
        return Math.sqrt((dx * dx) + (dy * dy));
    }

    private boolean handleDragEvent(MotionEvent ev) {
        int index;
        switch (ev.getActionMasked()) {
            case 0:
                this.mVelocityTracker = VelocityTracker.obtain();
                if (this.mVelocityTracker != null) {
                    this.mVelocityTracker.addMovement(ev);
                } else {
                    LogManager.getLogger().d("FroyoGestureDetector", "Velocity tracker is null");
                }
                index = ev.getActionIndex();
                this.mPrimaryPointerId = ev.getPointerId(index);
                this.mLastTouchX = ev.getX(index);
                this.mLastTouchY = ev.getY(index);
                this.mIsDragging = false;
                if (DEBUG) {
                    LogManager.getLogger().d("FroyoGestureDetector", String.format("ACTION_DOWN pointer id %s", new Object[]{Integer.valueOf(this.mPrimaryPointerId)}));
                    break;
                }
                break;
            case 1:
                if (this.mIsDragging && this.mVelocityTracker != null) {
                    this.mLastTouchX = getActiveX(ev);
                    this.mLastTouchY = getActiveY(ev);
                    this.mVelocityTracker.addMovement(ev);
                    this.mVelocityTracker.computeCurrentVelocity(1000);
                    float vX = this.mVelocityTracker.getXVelocity(this.mPrimaryPointerId);
                    float vY = this.mVelocityTracker.getYVelocity(this.mPrimaryPointerId);
                    if (Math.max(Math.abs(vX), Math.abs(vY)) >= this.mMinimumVelocity) {
                        this.mListener.onFling(this.mLastTouchX, this.mLastTouchY, -vX, -vY);
                    }
                }
                if (this.mVelocityTracker != null) {
                    this.mVelocityTracker.recycle();
                    this.mVelocityTracker = null;
                }
                this.mIsDragging = false;
                break;
            case 2:
                float x = getActiveX(ev);
                float y = getActiveY(ev);
                float dx = x - this.mLastTouchX;
                float dy = y - this.mLastTouchY;
                if (!this.mIsDragging) {
                    boolean isOnePointer = true;
                    if (this.mSecondPointerId != -1) {
                        int secondIndex = ev.findPointerIndex(this.mSecondPointerId);
                        if (checkPointerIndex(ev, secondIndex)) {
                            isOnePointer = false;
                            float secondX = ev.getX(secondIndex);
                            float secondY = ev.getY(secondIndex);
                            float secondDx = secondX - this.mSecondLastTouchX;
                            float secondDy = secondY - this.mSecondLastTouchY;
                            if (DEBUG) {
                                LogManager.getLogger().d("FroyoGestureDetector", String.format("dx %s, dy %s, secondDx %s. secondDy %s", new Object[]{Float.valueOf(dx), Float.valueOf(dy), Float.valueOf(secondDx), Float.valueOf(secondDy)}));
                            }
                            if (BaseMiscUtil.floatNear(dx, secondDx, this.mMultiPointerDiff)) {
                                if (BaseMiscUtil.floatNear(dy, secondDy, this.mMultiPointerDiff)) {
                                    boolean z;
                                    if (calculateDistance((double) dx, (double) dy) >= ((double) this.mTouchSlop)) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    this.mIsDragging = z;
                                }
                            }
                            this.mLastTouchX = x;
                            this.mLastTouchY = y;
                            this.mSecondLastTouchX = secondX;
                            this.mSecondLastTouchY = secondY;
                        } else {
                            this.mSecondPointerId = -1;
                        }
                    }
                    if (isOnePointer) {
                        this.mIsDragging = calculateDistance((double) dx, (double) dy) >= ((double) this.mTouchSlop);
                    }
                }
                if (this.mIsDragging) {
                    this.mListener.onDrag(dx, dy);
                    this.mLastTouchX = x;
                    this.mLastTouchY = y;
                    if (this.mVelocityTracker != null) {
                        this.mVelocityTracker.addMovement(ev);
                        break;
                    }
                }
                break;
            case 3:
                if (this.mVelocityTracker != null) {
                    this.mVelocityTracker.recycle();
                    this.mVelocityTracker = null;
                }
                this.mIsDragging = false;
                break;
            case 5:
                index = ev.getActionIndex();
                this.mSecondPointerId = ev.getPointerId(index);
                this.mSecondLastTouchX = ev.getX(index);
                this.mSecondLastTouchY = ev.getY(index);
                if (DEBUG) {
                    LogManager.getLogger().d("FroyoGestureDetector", String.format("ACTION_POINTER_DOWN pointer id %s", new Object[]{Integer.valueOf(this.mSecondPointerId)}));
                    break;
                }
                break;
            case 6:
                int invalidPointerIndex = ev.getActionIndex();
                int invalidPointerId = ev.getPointerId(invalidPointerIndex);
                if (invalidPointerId == this.mPrimaryPointerId) {
                    if (this.mSecondPointerId != -1) {
                        this.mPrimaryPointerId = this.mSecondPointerId;
                    } else {
                        this.mPrimaryPointerId = ev.getPointerId(invalidPointerIndex == 0 ? 1 : 0);
                    }
                    if (!checkPointerIndex(ev, ev.findPointerIndex(this.mPrimaryPointerId))) {
                        LogManager.getLogger().e("FroyoGestureDetector", String.format("new primary id %s, new index %s, count %s", new Object[]{Integer.valueOf(this.mPrimaryPointerId), Integer.valueOf(ev.findPointerIndex(this.mPrimaryPointerId)), Integer.valueOf(ev.getPointerCount())}));
                    }
                    this.mLastTouchX = getActiveX(ev);
                    this.mLastTouchY = getActiveY(ev);
                    if (this.mVelocityTracker != null) {
                        this.mVelocityTracker.clear();
                    }
                }
                if (!this.mIsDragging && (this.mSecondPointerId == this.mPrimaryPointerId || this.mSecondPointerId == invalidPointerId)) {
                    this.mSecondPointerId = -1;
                    int pointCount = ev.getPointerCount();
                    if (pointCount > 1) {
                        int i = 0;
                        while (i < pointCount) {
                            int pointerId = ev.getPointerId(i);
                            if (this.mPrimaryPointerId == pointerId || pointerId == invalidPointerId) {
                                i++;
                            } else {
                                this.mSecondPointerId = pointerId;
                            }
                        }
                    }
                }
                if (DEBUG) {
                    LogManager.getLogger().d("FroyoGestureDetector", String.format("pointer info after ACTION_POINTER_UP, primary %s, second %s, count %s", new Object[]{Integer.valueOf(this.mPrimaryPointerId), Integer.valueOf(this.mSecondPointerId), Integer.valueOf(ev.getPointerCount())}));
                    break;
                }
                break;
        }
        return true;
    }
}
