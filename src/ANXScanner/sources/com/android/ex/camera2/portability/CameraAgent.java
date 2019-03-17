package com.android.ex.camera2.portability;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Face;
import android.hardware.Camera.OnZoomChangeListener;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import com.android.ex.camera2.portability.CameraDeviceInfo.Characteristics;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;

public abstract class CameraAgent {
    public static final long CAMERA_OPERATION_TIMEOUT_MS = 3500;
    private static final Tag TAG = new Tag("CamAgnt");

    public static abstract class CameraProxy {
        public abstract boolean applySettings(CameraSettings cameraSettings);

        public abstract void autoFocus(Handler handler, CameraAFCallback cameraAFCallback);

        public abstract String dumpDeviceSettings();

        public abstract CameraAgent getAgent();

        @Deprecated
        public abstract Camera getCamera();

        public abstract Handler getCameraHandler();

        public abstract int getCameraId();

        public abstract CameraStateHolder getCameraState();

        public abstract CameraCapabilities getCapabilities();

        public abstract Characteristics getCharacteristics();

        public abstract DispatchThread getDispatchThread();

        @Deprecated
        public abstract Parameters getParameters();

        public abstract CameraSettings getSettings();

        @TargetApi(16)
        public abstract void setAutoFocusMoveCallback(Handler handler, CameraAFMoveCallback cameraAFMoveCallback);

        public abstract void setFaceDetectionCallback(Handler handler, CameraFaceDetectionCallback cameraFaceDetectionCallback);

        public abstract void setOneShotPreviewCallback(Handler handler, CameraPreviewDataCallback cameraPreviewDataCallback);

        @Deprecated
        public abstract void setParameters(Parameters parameters);

        public abstract void setPreviewDataCallback(Handler handler, CameraPreviewDataCallback cameraPreviewDataCallback);

        public abstract void setPreviewDataCallbackWithBuffer(Handler handler, CameraPreviewDataCallback cameraPreviewDataCallback);

        public abstract void setZoomChangeListener(OnZoomChangeListener onZoomChangeListener);

        public abstract void takePicture(Handler handler, CameraShutterCallback cameraShutterCallback, CameraPictureCallback cameraPictureCallback, CameraPictureCallback cameraPictureCallback2, CameraPictureCallback cameraPictureCallback3);

        public void reconnect(final Handler handler, final CameraOpenCallback cb) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(3, CameraProxy.this.getCameraId(), 0, CameraOpenCallbackForward.getNewInstance(handler, cb)).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void unlock() {
            if (!getCameraState().isInvalid()) {
                final WaitDoneBundle bundle = new WaitDoneBundle();
                try {
                    getDispatchThread().runJobSync(new Runnable() {
                        public void run() {
                            CameraProxy.this.getCameraHandler().sendEmptyMessage(4);
                            CameraProxy.this.getCameraHandler().post(bundle.mUnlockRunnable);
                        }
                    }, bundle.mWaitLock, CameraAgent.CAMERA_OPERATION_TIMEOUT_MS, "camera unlock");
                } catch (RuntimeException ex) {
                    getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
                }
            }
        }

        public void lock() {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().sendEmptyMessage(5);
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void setPreviewTexture(final SurfaceTexture surfaceTexture) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(101, surfaceTexture).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void setPreviewTextureSync(final SurfaceTexture surfaceTexture) {
            if (!getCameraState().isInvalid()) {
                final WaitDoneBundle bundle = new WaitDoneBundle();
                try {
                    getDispatchThread().runJobSync(new Runnable() {
                        public void run() {
                            CameraProxy.this.getCameraHandler().obtainMessage(101, surfaceTexture).sendToTarget();
                            CameraProxy.this.getCameraHandler().post(bundle.mUnlockRunnable);
                        }
                    }, bundle.mWaitLock, CameraAgent.CAMERA_OPERATION_TIMEOUT_MS, "set preview texture");
                } catch (RuntimeException ex) {
                    getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
                }
            }
        }

        public void setPreviewDisplay(final SurfaceHolder surfaceHolder) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(106, surfaceHolder).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void startPreview() {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(102, null).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void startPreviewWithCallback(final Handler h, final CameraStartPreviewCallback cb) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(102, CameraStartPreviewCallbackForward.getNewInstance(h, cb)).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void stopPreview() {
            if (!getCameraState().isInvalid()) {
                final WaitDoneBundle bundle = new WaitDoneBundle();
                try {
                    getDispatchThread().runJobSync(new Runnable() {
                        public void run() {
                            CameraProxy.this.getCameraHandler().obtainMessage(103, bundle).sendToTarget();
                        }
                    }, bundle.mWaitLock, CameraAgent.CAMERA_OPERATION_TIMEOUT_MS, "stop preview");
                } catch (RuntimeException ex) {
                    getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
                }
            }
        }

        public void addCallbackBuffer(final byte[] callbackBuffer) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(105, callbackBuffer).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void cancelAutoFocus() {
            getCameraHandler().sendMessageAtFrontOfQueue(getCameraHandler().obtainMessage(302));
            getCameraHandler().sendEmptyMessage(305);
        }

        public void setDisplayOrientation(int degrees) {
            setDisplayOrientation(degrees, true);
        }

        public void setDisplayOrientation(final int degrees, final boolean capture) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(502, degrees, capture ? 1 : 0).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void setJpegOrientation(final int degrees) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().obtainMessage(503, degrees, 0).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void startFaceDetection() {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().sendEmptyMessage(CameraActions.START_FACE_DETECTION);
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void stopFaceDetection() {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().sendEmptyMessage(CameraActions.STOP_FACE_DETECTION);
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        protected boolean applySettingsHelper(CameraSettings settings, final int statesToAwait) {
            if (settings == null) {
                Log.v(CameraAgent.TAG, "null argument in applySettings()");
                return false;
            } else if (getCapabilities().supports(settings)) {
                final CameraSettings copyOfSettings = settings.copy();
                try {
                    getDispatchThread().runJob(new Runnable() {
                        public void run() {
                            CameraStateHolder cameraState = CameraProxy.this.getCameraState();
                            if (!cameraState.isInvalid()) {
                                cameraState.waitForStates(statesToAwait);
                                CameraProxy.this.getCameraHandler().obtainMessage(204, copyOfSettings).sendToTarget();
                            }
                        }
                    });
                } catch (RuntimeException ex) {
                    getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
                }
                return true;
            } else {
                Log.w(CameraAgent.TAG, "Unsupported settings in applySettings()");
                return false;
            }
        }

        public void refreshSettings() {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        CameraProxy.this.getCameraHandler().sendEmptyMessage(203);
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void enableShutterSound(final boolean enable) {
            try {
                getDispatchThread().runJob(new Runnable() {
                    public void run() {
                        int i;
                        Handler cameraHandler = CameraProxy.this.getCameraHandler();
                        if (enable) {
                            i = 1;
                        } else {
                            i = 0;
                        }
                        cameraHandler.obtainMessage(501, i, 0).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                getAgent().getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }
    }

    public interface CameraAFCallback {
        void onAutoFocus(boolean z, CameraProxy cameraProxy);
    }

    public interface CameraAFMoveCallback {
        void onAutoFocusMoving(boolean z, CameraProxy cameraProxy);
    }

    public interface CameraErrorCallback {
        void onError(int i, CameraProxy cameraProxy);
    }

    public interface CameraFaceDetectionCallback {
        void onFaceDetection(Face[] faceArr, CameraProxy cameraProxy);
    }

    public interface CameraOpenCallback {
        void onCameraDisabled(int i);

        void onCameraOpened(CameraProxy cameraProxy);

        void onDeviceOpenFailure(int i, String str);

        void onDeviceOpenedAlready(int i, String str);

        void onReconnectionFailure(CameraAgent cameraAgent, String str);
    }

    public static class CameraOpenCallbackForward implements CameraOpenCallback {
        private final CameraOpenCallback mCallback;
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        public static CameraOpenCallbackForward getNewInstance(Handler handler, CameraOpenCallback cb) {
            if (handler == null || cb == null) {
                return null;
            }
            return new CameraOpenCallbackForward(handler, cb);
        }

        private CameraOpenCallbackForward(Handler h, CameraOpenCallback cb) {
            this.mCallback = cb;
        }

        public void onCameraOpened(final CameraProxy camera) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CameraOpenCallbackForward.this.mCallback.onCameraOpened(camera);
                }
            });
        }

        public void onCameraDisabled(final int cameraId) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CameraOpenCallbackForward.this.mCallback.onCameraDisabled(cameraId);
                }
            });
        }

        public void onDeviceOpenFailure(final int cameraId, final String info) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CameraOpenCallbackForward.this.mCallback.onDeviceOpenFailure(cameraId, info);
                }
            });
        }

        public void onDeviceOpenedAlready(final int cameraId, final String info) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CameraOpenCallbackForward.this.mCallback.onDeviceOpenedAlready(cameraId, info);
                }
            });
        }

        public void onReconnectionFailure(final CameraAgent mgr, final String info) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CameraOpenCallbackForward.this.mCallback.onReconnectionFailure(mgr, info);
                }
            });
        }
    }

    public interface CameraPictureCallback {
        void onPictureTaken(byte[] bArr, CameraProxy cameraProxy);
    }

    public interface CameraPreviewDataCallback {
        void onPreviewFrame(byte[] bArr, CameraProxy cameraProxy);
    }

    public interface CameraShutterCallback {
        void onShutter(CameraProxy cameraProxy);
    }

    public interface CameraStartPreviewCallback {
        void onPreviewStarted();
    }

    public static class CameraStartPreviewCallbackForward implements CameraStartPreviewCallback {
        private final CameraStartPreviewCallback mCallback;
        private final Handler mHandler;

        public static CameraStartPreviewCallbackForward getNewInstance(Handler handler, CameraStartPreviewCallback cb) {
            if (handler == null || cb == null) {
                return null;
            }
            return new CameraStartPreviewCallbackForward(handler, cb);
        }

        private CameraStartPreviewCallbackForward(Handler h, CameraStartPreviewCallback cb) {
            this.mHandler = h;
            this.mCallback = cb;
        }

        public void onPreviewStarted() {
            this.mHandler.post(new Runnable() {
                public void run() {
                    CameraStartPreviewCallbackForward.this.mCallback.onPreviewStarted();
                }
            });
        }
    }

    public static class WaitDoneBundle {
        public final Runnable mUnlockRunnable = new Runnable() {
            public void run() {
                synchronized (WaitDoneBundle.this.mWaitLock) {
                    WaitDoneBundle.this.mWaitLock.notifyAll();
                }
            }
        };
        public final Object mWaitLock = new Object();

        WaitDoneBundle() {
        }

        static void unblockSyncWaiters(Message msg) {
            if (msg != null && (msg.obj instanceof WaitDoneBundle)) {
                msg.obj.mUnlockRunnable.run();
            }
        }
    }

    public abstract CameraDeviceInfo getCameraDeviceInfo();

    protected abstract CameraExceptionHandler getCameraExceptionHandler();

    protected abstract Handler getCameraHandler();

    protected abstract CameraStateHolder getCameraState();

    protected abstract DispatchThread getDispatchThread();

    public abstract void recycle();

    public abstract void setCameraExceptionHandler(CameraExceptionHandler cameraExceptionHandler);

    public void openCamera(final Handler handler, final int cameraId, final CameraOpenCallback callback) {
        try {
            getDispatchThread().runJob(new Runnable() {
                public void run() {
                    CameraAgent.this.getCameraHandler().obtainMessage(1, cameraId, 0, CameraOpenCallbackForward.getNewInstance(handler, callback)).sendToTarget();
                }
            });
        } catch (RuntimeException ex) {
            getCameraExceptionHandler().onDispatchThreadException(ex);
        }
    }

    public void closeCamera(CameraProxy camera, boolean synced) {
        if (synced) {
            try {
                if (!getCameraState().isInvalid()) {
                    final WaitDoneBundle bundle = new WaitDoneBundle();
                    getDispatchThread().runJobSync(new Runnable() {
                        public void run() {
                            CameraAgent.this.getCameraHandler().obtainMessage(2).sendToTarget();
                            CameraAgent.this.getCameraHandler().post(bundle.mUnlockRunnable);
                        }
                    }, bundle.mWaitLock, CAMERA_OPERATION_TIMEOUT_MS, "camera release");
                    return;
                }
                return;
            } catch (RuntimeException ex) {
                getCameraExceptionHandler().onDispatchThreadException(ex);
                return;
            }
        }
        getDispatchThread().runJob(new Runnable() {
            public void run() {
                CameraAgent.this.getCameraHandler().removeCallbacksAndMessages(null);
                CameraAgent.this.getCameraHandler().obtainMessage(2).sendToTarget();
            }
        });
    }
}
