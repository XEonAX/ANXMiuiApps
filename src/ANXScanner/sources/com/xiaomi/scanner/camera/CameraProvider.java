package com.xiaomi.scanner.camera;

import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraDeviceInfo.Characteristics;
import com.android.ex.camera2.portability.CameraExceptionHandler;

public interface CameraProvider {
    CameraProxy getCameraDevice();

    Characteristics getCharacteristics(int i);

    int getCurrentCameraId();

    int getFirstBackCameraId();

    int getFirstFrontCameraId();

    int getNumberOfCameras();

    boolean isBackFacingCamera(int i);

    boolean isFrontFacingCamera(int i);

    void releaseCamera(int i);

    void requestCamera(int i);

    void setCameraExceptionHandler(CameraExceptionHandler cameraExceptionHandler);

    boolean waitingForCamera();
}
