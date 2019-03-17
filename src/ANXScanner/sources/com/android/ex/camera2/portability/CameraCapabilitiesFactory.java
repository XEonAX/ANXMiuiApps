package com.android.ex.camera2.portability;

import android.hardware.Camera.Parameters;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;

public class CameraCapabilitiesFactory {
    private static Tag TAG = new Tag("CamCapabsFact");

    public static CameraCapabilities createFrom(Parameters p) {
        if (p != null) {
            return new AndroidCameraCapabilities(p);
        }
        Log.w(TAG, "Null parameter passed in.");
        return null;
    }
}
