package com.miui.gallery.editor.photo.core.imports.obsoletes;

import android.graphics.PointF;
import android.view.MotionEvent;

public class TranslateDetector {
    private OnTranslateListener mGestureListener;
    private PointF mStartPoint = new PointF();
    private PointF mStartPointOne = new PointF();
    private State mState = State.IDLE;

    public interface OnTranslateListener {
        void onTranslate(float f, float f2);

        boolean onTranslateBegin();

        void onTranslateEnd();
    }

    private enum State {
        IN_PROGRESS,
        IDLE
    }

    public TranslateDetector(OnTranslateListener gestureListener) {
        this.mGestureListener = gestureListener;
    }

    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getActionMasked();
        int index = event.getActionIndex();
        if (action == 0) {
            this.mStartPoint.set(event.getX(0), event.getY(0));
            if (this.mGestureListener.onTranslateBegin()) {
                this.mState = State.IN_PROGRESS;
                return true;
            }
            this.mState = State.IDLE;
            return true;
        } else if (this.mState != State.IN_PROGRESS) {
            return false;
        } else {
            if (action == 2) {
                if (index != 0) {
                    return true;
                }
                float dx = event.getX() - this.mStartPoint.x;
                float dy = event.getY() - this.mStartPoint.y;
                if (event.getPointerCount() > 1) {
                    dx = ((event.getX(1) + dx) - this.mStartPointOne.x) / 2.0f;
                    dy = ((event.getY(1) + dy) - this.mStartPointOne.y) / 2.0f;
                    this.mStartPointOne.set(event.getX(1), event.getY(1));
                }
                this.mGestureListener.onTranslate(dx, dy);
                this.mStartPoint.set(event.getX(), event.getY());
                return true;
            } else if (action == 5) {
                if (index == 0) {
                    this.mStartPoint.set(event.getX(0), event.getY(0));
                    return true;
                } else if (index != 1) {
                    return true;
                } else {
                    this.mStartPointOne.set(event.getX(1), event.getY(1));
                    return true;
                }
            } else if (action != 6) {
                this.mState = State.IDLE;
                this.mGestureListener.onTranslateEnd();
                return true;
            } else if (index != 0) {
                return true;
            } else {
                this.mStartPoint.set(event.getX(1), event.getY(1));
                return true;
            }
        }
    }
}
