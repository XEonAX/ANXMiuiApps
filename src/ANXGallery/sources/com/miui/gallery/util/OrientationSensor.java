package com.miui.gallery.util;

import android.app.Activity;
import android.view.OrientationEventListener;
import com.nexstreaming.nexeditorsdk.nexClip;

public class OrientationSensor extends OrientationEventListener {
    private boolean mEnabled = false;
    private OnOrientationChangedListener mListener;
    private int mOrientation = -1;

    public interface OnOrientationChangedListener {
        void onOrientationChanged(int i, int i2);
    }

    public OrientationSensor(Activity activity) {
        super(activity.getApplicationContext());
        this.mOrientation = restoreFromSurfaceRotation(activity.getWindowManager().getDefaultDisplay().getRotation());
    }

    public void setOrientationChangedListener(OnOrientationChangedListener listener) {
        this.mListener = listener;
    }

    public void enable() {
        super.enable();
        this.mEnabled = true;
    }

    public void disable() {
        super.disable();
        this.mEnabled = false;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void onOrientationChanged(int orientation) {
        int iOrientation = roundOrientation(orientation, this.mOrientation);
        if (iOrientation == this.mOrientation) {
            return;
        }
        if (iOrientation % nexClip.kClip_Rotate_180 != 0 || this.mOrientation % nexClip.kClip_Rotate_180 != 0) {
            if (this.mListener != null) {
                this.mListener.onOrientationChanged(this.mOrientation, iOrientation);
            }
            this.mOrientation = iOrientation;
        }
    }

    private int roundOrientation(int orientation, int orientationHistory) {
        boolean changeOrientation;
        if (orientationHistory == -1) {
            changeOrientation = true;
        } else {
            int dist = Math.abs(orientation - orientationHistory);
            changeOrientation = Math.min(dist, 360 - dist) >= 50;
        }
        if (changeOrientation) {
            return (((orientation + 45) / 90) * 90) % 360;
        }
        return orientationHistory;
    }

    public static int transfer2SurfaceRotation(int rotation) {
        switch (rotation) {
            case 0:
                return 0;
            case 90:
                return 3;
            case nexClip.kClip_Rotate_180 /*180*/:
                return 2;
            case nexClip.kClip_Rotate_270 /*270*/:
                return 1;
            default:
                return -1;
        }
    }

    public static int restoreFromSurfaceRotation(int rotation) {
        switch (rotation) {
            case 0:
                return 0;
            case 1:
                return nexClip.kClip_Rotate_270;
            case 2:
                return nexClip.kClip_Rotate_180;
            case 3:
                return 90;
            default:
                return -1;
        }
    }
}
