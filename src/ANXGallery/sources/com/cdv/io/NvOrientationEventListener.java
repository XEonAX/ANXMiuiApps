package com.cdv.io;

import android.content.Context;
import android.view.OrientationEventListener;

public class NvOrientationEventListener {
    private static final String TAG = "OrientationEventListener";
    private int m_cameraId = -1;
    private OrientationEventListener m_orientationEventListener;

    private static native void notifyOrientation(int i, int i2);

    private NvOrientationEventListener(int i, Context context) {
        this.m_cameraId = i;
        this.m_orientationEventListener = new OrientationEventListener(context, 3) {
            public void onOrientationChanged(int i) {
                NvOrientationEventListener.notifyOrientation(NvOrientationEventListener.this.m_cameraId, i);
            }
        };
    }

    public void enableListener() {
        if (this.m_orientationEventListener.canDetectOrientation()) {
            this.m_orientationEventListener.enable();
        }
    }

    public void disableListener() {
        if (this.m_orientationEventListener.canDetectOrientation()) {
            this.m_orientationEventListener.disable();
        }
    }
}
