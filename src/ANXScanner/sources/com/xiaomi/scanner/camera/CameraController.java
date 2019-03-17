package com.xiaomi.scanner.camera;

import android.os.Handler;
import com.android.ex.camera2.portability.CameraAgent;
import com.android.ex.camera2.portability.CameraAgent.CameraOpenCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraPreviewDataCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraDeviceInfo;
import com.android.ex.camera2.portability.CameraDeviceInfo.Characteristics;
import com.android.ex.camera2.portability.CameraExceptionHandler;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.util.CameraUtil;
import mtopsdk.common.util.SymbolExpUtil;

public class CameraController implements CameraOpenCallback, CameraProvider {
    static final /* synthetic */ boolean $assertionsDisabled = (!CameraController.class.desiredAssertionStatus());
    private static final int EMPTY_CAMERA_ID = -1;
    private static final Tag TAG = new Tag("CameraController");
    private final Handler mCallbackHandler;
    private CameraOpenCallback mCallbackReceiver;
    private CameraAgent mCameraAgent;
    private CameraProxy mCameraProxy;
    private int mCurrentCameraId = -1;
    private CameraDeviceInfo mInfo;
    private int mRequestingCameraId = -1;

    public CameraController(CameraOpenCallback callbackReceiver, Handler handler, CameraAgent cameraManager) {
        this.mCallbackReceiver = callbackReceiver;
        this.mCallbackHandler = handler;
        this.mCameraAgent = cameraManager;
        this.mInfo = this.mCameraAgent.getCameraDeviceInfo();
        if (this.mInfo == null && this.mCallbackReceiver != null) {
            this.mCallbackReceiver.onDeviceOpenFailure(-1, "GETTING_CAMERA_INFO");
        }
    }

    public void setCameraExceptionHandler(CameraExceptionHandler exceptionHandler) {
        this.mCameraAgent.setCameraExceptionHandler(exceptionHandler);
    }

    public Characteristics getCharacteristics(int cameraId) {
        Characteristics characteristics = null;
        if (this.mInfo == null) {
            return characteristics;
        }
        try {
            return this.mInfo.getCharacteristics(cameraId);
        } catch (Throwable e) {
            Log.e(TAG, "getCharacteristics error " + e);
            return characteristics;
        }
    }

    public CameraProxy getCameraDevice() {
        return this.mCameraProxy;
    }

    public int getCurrentCameraId() {
        return this.mCurrentCameraId;
    }

    public int getNumberOfCameras() {
        if (this.mInfo == null) {
            return 0;
        }
        return this.mInfo.getNumberOfCameras();
    }

    public int getFirstBackCameraId() {
        if (this.mInfo == null) {
            return -1;
        }
        return this.mInfo.getFirstBackCameraId();
    }

    public int getFirstFrontCameraId() {
        if (this.mInfo == null) {
            return -1;
        }
        return this.mInfo.getFirstFrontCameraId();
    }

    public boolean isFrontFacingCamera(int id) {
        if (this.mInfo == null) {
            return false;
        }
        if (id < this.mInfo.getNumberOfCameras() && this.mInfo.getCharacteristics(id) != null) {
            return this.mInfo.getCharacteristics(id).isFacingFront();
        }
        Log.e(TAG, "Camera info not available:" + id);
        return false;
    }

    public boolean isBackFacingCamera(int id) {
        if (this.mInfo == null) {
            return false;
        }
        if (id < this.mInfo.getNumberOfCameras() && this.mInfo.getCharacteristics(id) != null) {
            return this.mInfo.getCharacteristics(id).isFacingBack();
        }
        Log.e(TAG, "Camera info not available:" + id);
        return false;
    }

    public void onCameraOpened(CameraProxy camera) {
        Log.v(TAG, "onCameraOpened: id=" + camera.getCameraId());
        if (this.mRequestingCameraId == camera.getCameraId()) {
            this.mCameraProxy = camera;
            this.mRequestingCameraId = -1;
            if (this.mCallbackReceiver != null) {
                this.mCallbackReceiver.onCameraOpened(camera);
            }
        }
    }

    public void onCameraDisabled(int cameraId) {
        if (this.mCallbackReceiver != null) {
            this.mCallbackReceiver.onCameraDisabled(cameraId);
        }
    }

    public void onDeviceOpenFailure(int cameraId, String info) {
        this.mCameraProxy = null;
        this.mCurrentCameraId = -1;
        this.mRequestingCameraId = -1;
        if (this.mCameraAgent != null) {
            this.mCameraAgent.setCameraExceptionHandler(null);
        }
        if (this.mCallbackReceiver != null) {
            this.mCallbackReceiver.onDeviceOpenFailure(cameraId, info);
        }
    }

    public void onDeviceOpenedAlready(int cameraId, String info) {
        if (this.mCallbackReceiver != null) {
            this.mCallbackReceiver.onDeviceOpenedAlready(cameraId, info);
        }
    }

    public void onReconnectionFailure(CameraAgent mgr, String info) {
        if (this.mCallbackReceiver != null) {
            this.mCallbackReceiver.onReconnectionFailure(mgr, info);
        }
    }

    public void requestCamera(int id) {
        Log.v(TAG, "requestCamera " + id);
        if (this.mRequestingCameraId == -1 && this.mRequestingCameraId != id) {
            if (this.mInfo == null) {
                Log.w(TAG, "null info");
                return;
            }
            this.mRequestingCameraId = id;
            this.mCurrentCameraId = id;
            if ($assertionsDisabled || this.mCameraProxy == null) {
                checkAndOpenCamera(this.mCameraAgent, id, this.mCallbackHandler, this);
                return;
            }
            throw new AssertionError();
        }
    }

    public boolean waitingForCamera() {
        return this.mRequestingCameraId != -1;
    }

    public void releaseCamera(int id) {
        if (this.mCameraProxy == null) {
            if (this.mRequestingCameraId == -1) {
                Log.w(TAG, "Trying to release the camera before requesting. cameraId=" + id);
            }
            this.mRequestingCameraId = -1;
            return;
        }
        int currentId = this.mCameraProxy.getCameraId();
        if (currentId != id) {
            if (this.mRequestingCameraId == id) {
                Log.w(TAG, "Releasing camera which was requested but not yet opened (current:requested): " + currentId + SymbolExpUtil.SYMBOL_COLON + id);
            } else {
                throw new IllegalStateException("Trying to release a camera neither openednor requested (current:requested:for-release): " + currentId + SymbolExpUtil.SYMBOL_COLON + this.mRequestingCameraId + SymbolExpUtil.SYMBOL_COLON + id);
            }
        }
        this.mCurrentCameraId = -1;
        this.mRequestingCameraId = -1;
    }

    public void removeCallbackReceiver() {
        this.mCallbackReceiver = null;
    }

    public void closeCamera() {
        Log.v(TAG, "closing camera");
        this.mCameraAgent.closeCamera(this.mCameraProxy, false);
        this.mCameraProxy = null;
        this.mRequestingCameraId = -1;
        this.mCurrentCameraId = -1;
    }

    private static void checkAndOpenCamera(CameraAgent cameraManager, final int cameraId, Handler handler, final CameraOpenCallback cb) {
        Log.v(TAG, "checkAndOpenCamera");
        try {
            CameraUtil.throwIfCameraDisabled();
            cameraManager.openCamera(handler, cameraId, cb);
        } catch (CameraDisabledException e) {
            handler.post(new Runnable() {
                public void run() {
                    cb.onCameraDisabled(cameraId);
                }
            });
        }
    }

    public void setOneShotPreviewCallback(Handler handler, CameraPreviewDataCallback cb) {
        this.mCameraProxy.setOneShotPreviewCallback(handler, cb);
    }
}
