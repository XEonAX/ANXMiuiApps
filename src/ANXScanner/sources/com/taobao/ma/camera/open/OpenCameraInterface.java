package com.taobao.ma.camera.open;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.util.Log;

public final class OpenCameraInterface {
    public static final int NO_REQUESTED_CAMERA = -1;
    private static final String TAG = OpenCameraInterface.class.getName();

    private OpenCameraInterface() {
    }

    public static Camera open(int cameraId) {
        int numCameras = Camera.getNumberOfCameras();
        if (numCameras == 0) {
            Log.w(TAG, "No cameras!");
            return null;
        }
        boolean explicitRequest;
        if (cameraId >= 0) {
            explicitRequest = true;
        } else {
            explicitRequest = false;
        }
        if (!explicitRequest) {
            int index = 0;
            while (index < numCameras) {
                CameraInfo cameraInfo = new CameraInfo();
                Camera.getCameraInfo(index, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                index++;
            }
            cameraId = index;
        }
        if (cameraId < numCameras) {
            Log.i(TAG, "Opening camera #" + cameraId);
            return Camera.open(cameraId);
        } else if (explicitRequest) {
            Log.w(TAG, "Requested camera does not exist: " + cameraId);
            return null;
        } else {
            Log.i(TAG, "No camera facing back; returning camera #0");
            return Camera.open(0);
        }
    }
}
