package com.android.ex.camera2.portability;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.AutoFocusMoveCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.Face;
import android.hardware.Camera.FaceDetectionListener;
import android.hardware.Camera.OnZoomChangeListener;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.ShutterCallback;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.android.ex.camera2.portability.CameraAgent.CameraAFCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraAFMoveCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraFaceDetectionCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraPictureCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraPreviewDataCallback;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraAgent.CameraShutterCallback;
import com.android.ex.camera2.portability.CameraAgent.WaitDoneBundle;
import com.android.ex.camera2.portability.CameraCapabilities.Feature;
import com.android.ex.camera2.portability.CameraCapabilities.FlashMode;
import com.android.ex.camera2.portability.CameraCapabilities.SceneMode;
import com.android.ex.camera2.portability.CameraCapabilities.Stringifier;
import com.android.ex.camera2.portability.CameraDeviceInfo.Characteristics;
import com.android.ex.camera2.portability.CameraSettings.GpsData;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.StringTokenizer;

class AndroidCameraAgentImpl extends CameraAgent {
    private static final Tag TAG = new Tag("AndCamAgntImp");
    private static final CameraExceptionHandler sDefaultExceptionHandler = new CameraExceptionHandler(null) {
        public void onCameraError(int errorCode) {
            Log.w(AndroidCameraAgentImpl.TAG, "onCameraError called with no handler set: " + errorCode);
        }

        public void onCameraException(RuntimeException ex, String commandHistory, int action, int state) {
            Log.w(AndroidCameraAgentImpl.TAG, "onCameraException called with no handler set", ex);
        }

        public void onDispatchThreadException(RuntimeException ex) {
            Log.w(AndroidCameraAgentImpl.TAG, "onDispatchThreadException called with no handler set", ex);
        }
    };
    private final CameraHandler mCameraHandler;
    private final HandlerThread mCameraHandlerThread = new HandlerThread("Camera Handler Thread");
    private final CameraStateHolder mCameraState;
    private AndroidCameraCapabilities mCapabilities;
    private Characteristics mCharacteristics;
    private final DispatchThread mDispatchThread;
    private CameraExceptionHandler mExceptionHandler = sDefaultExceptionHandler;

    private static class AFCallbackForward implements AutoFocusCallback {
        private final CameraAFCallback mCallback;
        private final CameraProxy mCamera;
        private final Handler mHandler;

        public static AFCallbackForward getNewInstance(Handler handler, CameraProxy camera, CameraAFCallback cb) {
            if (handler == null || camera == null || cb == null) {
                return null;
            }
            return new AFCallbackForward(handler, camera, cb);
        }

        private AFCallbackForward(Handler h, CameraProxy camera, CameraAFCallback cb) {
            this.mHandler = h;
            this.mCamera = camera;
            this.mCallback = cb;
        }

        public void onAutoFocus(final boolean b, Camera camera) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    AFCallbackForward.this.mCallback.onAutoFocus(b, AFCallbackForward.this.mCamera);
                }
            });
        }
    }

    @TargetApi(16)
    private static class AFMoveCallbackForward implements AutoFocusMoveCallback {
        private final CameraAFMoveCallback mCallback;
        private final CameraProxy mCamera;
        private final Handler mHandler;

        public static AFMoveCallbackForward getNewInstance(Handler handler, CameraProxy camera, CameraAFMoveCallback cb) {
            if (handler == null || camera == null || cb == null) {
                return null;
            }
            return new AFMoveCallbackForward(handler, camera, cb);
        }

        private AFMoveCallbackForward(Handler h, CameraProxy camera, CameraAFMoveCallback cb) {
            this.mHandler = h;
            this.mCamera = camera;
            this.mCallback = cb;
        }

        public void onAutoFocusMoving(final boolean moving, Camera camera) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    AFMoveCallbackForward.this.mCallback.onAutoFocusMoving(moving, AFMoveCallbackForward.this.mCamera);
                }
            });
        }
    }

    private static class AndroidCameraDeviceInfo implements CameraDeviceInfo {
        private final CameraInfo[] mCameraInfos;
        private final int mFirstBackCameraId;
        private final int mFirstFrontCameraId;
        private final int mNumberOfCameras;

        private static class AndroidCharacteristics extends Characteristics {
            private CameraInfo mCameraInfo;

            AndroidCharacteristics(CameraInfo cameraInfo) {
                this.mCameraInfo = cameraInfo;
            }

            public boolean isFacingBack() {
                return this.mCameraInfo.facing == 0;
            }

            public boolean isFacingFront() {
                return this.mCameraInfo.facing == 1;
            }

            public int getSensorOrientation() {
                return this.mCameraInfo.orientation;
            }

            public boolean canDisableShutterSound() {
                return this.mCameraInfo.canDisableShutterSound;
            }
        }

        private AndroidCameraDeviceInfo(CameraInfo[] info, int numberOfCameras, int firstBackCameraId, int firstFrontCameraId) {
            this.mCameraInfos = info;
            this.mNumberOfCameras = numberOfCameras;
            this.mFirstBackCameraId = firstBackCameraId;
            this.mFirstFrontCameraId = firstFrontCameraId;
        }

        public static AndroidCameraDeviceInfo create() {
            try {
                int i;
                int numberOfCameras = Camera.getNumberOfCameras();
                CameraInfo[] cameraInfos = new CameraInfo[numberOfCameras];
                for (i = 0; i < numberOfCameras; i++) {
                    cameraInfos[i] = new CameraInfo();
                    Camera.getCameraInfo(i, cameraInfos[i]);
                }
                int firstFront = -1;
                int firstBack = -1;
                for (i = numberOfCameras - 1; i >= 0; i--) {
                    if (cameraInfos[i].facing == 0) {
                        firstBack = i;
                    } else if (cameraInfos[i].facing == 1) {
                        firstFront = i;
                    }
                }
                return new AndroidCameraDeviceInfo(cameraInfos, numberOfCameras, firstBack, firstFront);
            } catch (RuntimeException ex) {
                Log.e(AndroidCameraAgentImpl.TAG, "Exception while creating CameraDeviceInfo", ex);
                return null;
            }
        }

        public Characteristics getCharacteristics(int cameraId) {
            CameraInfo info = this.mCameraInfos[cameraId];
            if (info != null) {
                return new AndroidCharacteristics(info);
            }
            return null;
        }

        public int getNumberOfCameras() {
            return this.mNumberOfCameras;
        }

        public int getFirstBackCameraId() {
            return this.mFirstBackCameraId;
        }

        public int getFirstFrontCameraId() {
            return this.mFirstFrontCameraId;
        }
    }

    private class AndroidCameraProxyImpl extends CameraProxy {
        private final Camera mCamera;
        private final CameraAgent mCameraAgent;
        private final int mCameraId;
        private final AndroidCameraCapabilities mCapabilities;
        private final Characteristics mCharacteristics;

        /* synthetic */ AndroidCameraProxyImpl(AndroidCameraAgentImpl x0, CameraAgent x1, int x2, Camera x3, Characteristics x4, AndroidCameraCapabilities x5, AnonymousClass1 x6) {
            this(x1, x2, x3, x4, x5);
        }

        private AndroidCameraProxyImpl(CameraAgent cameraAgent, int cameraId, Camera camera, Characteristics characteristics, AndroidCameraCapabilities capabilities) {
            this.mCameraAgent = cameraAgent;
            this.mCamera = camera;
            this.mCameraId = cameraId;
            this.mCharacteristics = characteristics;
            this.mCapabilities = capabilities;
        }

        @Deprecated
        public Camera getCamera() {
            if (getCameraState().isInvalid()) {
                return null;
            }
            return this.mCamera;
        }

        public int getCameraId() {
            return this.mCameraId;
        }

        public Characteristics getCharacteristics() {
            return this.mCharacteristics;
        }

        public CameraCapabilities getCapabilities() {
            return new AndroidCameraCapabilities(this.mCapabilities);
        }

        public CameraAgent getAgent() {
            return this.mCameraAgent;
        }

        public void setPreviewDataCallback(final Handler handler, final CameraPreviewDataCallback cb) {
            AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                public void run() {
                    AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(107, PreviewCallbackForward.getNewInstance(handler, AndroidCameraProxyImpl.this, cb)).sendToTarget();
                }
            });
        }

        public void setOneShotPreviewCallback(final Handler handler, final CameraPreviewDataCallback cb) {
            AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                public void run() {
                    AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(108, PreviewCallbackForward.getNewInstance(handler, AndroidCameraProxyImpl.this, cb)).sendToTarget();
                }
            });
        }

        public void setPreviewDataCallbackWithBuffer(final Handler handler, final CameraPreviewDataCallback cb) {
            AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                public void run() {
                    AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(104, PreviewCallbackForward.getNewInstance(handler, AndroidCameraProxyImpl.this, cb)).sendToTarget();
                }
            });
        }

        public void autoFocus(final Handler handler, final CameraAFCallback cb) {
            final AutoFocusCallback afCallback = new AutoFocusCallback() {
                public void onAutoFocus(final boolean b, Camera camera) {
                    if (AndroidCameraAgentImpl.this.mCameraState.getState() != 16) {
                        Log.w(AndroidCameraAgentImpl.TAG, "onAutoFocus callback returning when not focusing");
                    } else {
                        AndroidCameraAgentImpl.this.mCameraState.setState(2);
                    }
                    handler.post(new Runnable() {
                        public void run() {
                            cb.onAutoFocus(b, AndroidCameraProxyImpl.this);
                        }
                    });
                }
            };
            AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                public void run() {
                    if (!AndroidCameraProxyImpl.this.getCameraState().isInvalid()) {
                        AndroidCameraAgentImpl.this.mCameraState.waitForStates(2);
                        AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(301, afCallback).sendToTarget();
                    }
                }
            });
        }

        @TargetApi(16)
        public void setAutoFocusMoveCallback(final Handler handler, final CameraAFMoveCallback cb) {
            try {
                AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                    public void run() {
                        AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(303, AFMoveCallbackForward.getNewInstance(handler, AndroidCameraProxyImpl.this, cb)).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                this.mCameraAgent.getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void takePicture(final Handler handler, CameraShutterCallback shutter, CameraPictureCallback raw, CameraPictureCallback post, final CameraPictureCallback jpeg) {
            final PictureCallback jpegCallback = new PictureCallback() {
                public void onPictureTaken(final byte[] data, Camera camera) {
                    if (AndroidCameraAgentImpl.this.mCameraState.getState() != 8) {
                        Log.w(AndroidCameraAgentImpl.TAG, "picture callback returning when not capturing");
                    } else {
                        AndroidCameraAgentImpl.this.mCameraState.setState(2);
                    }
                    handler.post(new Runnable() {
                        public void run() {
                            jpeg.onPictureTaken(data, AndroidCameraProxyImpl.this);
                        }
                    });
                }
            };
            try {
                final Handler handler2 = handler;
                final CameraShutterCallback cameraShutterCallback = shutter;
                final CameraPictureCallback cameraPictureCallback = raw;
                final CameraPictureCallback cameraPictureCallback2 = post;
                AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                    public void run() {
                        if (!AndroidCameraProxyImpl.this.getCameraState().isInvalid()) {
                            AndroidCameraAgentImpl.this.mCameraState.waitForStates(6);
                            AndroidCameraAgentImpl.this.mCameraHandler.requestTakePicture(ShutterCallbackForward.getNewInstance(handler2, AndroidCameraProxyImpl.this, cameraShutterCallback), PictureCallbackForward.getNewInstance(handler2, AndroidCameraProxyImpl.this, cameraPictureCallback), PictureCallbackForward.getNewInstance(handler2, AndroidCameraProxyImpl.this, cameraPictureCallback2), jpegCallback);
                        }
                    }
                });
            } catch (RuntimeException ex) {
                this.mCameraAgent.getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void setZoomChangeListener(final OnZoomChangeListener listener) {
            try {
                AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                    public void run() {
                        AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(304, listener).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                this.mCameraAgent.getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        public void setFaceDetectionCallback(final Handler handler, final CameraFaceDetectionCallback cb) {
            try {
                AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                    public void run() {
                        AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(CameraActions.SET_FACE_DETECTION_LISTENER, FaceDetectionCallbackForward.getNewInstance(handler, AndroidCameraProxyImpl.this, cb)).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                this.mCameraAgent.getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        @Deprecated
        public void setParameters(Parameters params) {
            if (params == null) {
                Log.v(AndroidCameraAgentImpl.TAG, "null parameters in setParameters()");
                return;
            }
            final String flattenedParameters = params.flatten();
            try {
                AndroidCameraAgentImpl.this.mDispatchThread.runJob(new Runnable() {
                    public void run() {
                        AndroidCameraAgentImpl.this.mCameraState.waitForStates(6);
                        AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(201, flattenedParameters).sendToTarget();
                    }
                });
            } catch (RuntimeException ex) {
                this.mCameraAgent.getCameraExceptionHandler().onDispatchThreadException(ex);
            }
        }

        @Deprecated
        public Parameters getParameters() {
            final WaitDoneBundle bundle = new WaitDoneBundle();
            final Parameters[] parametersHolder = new Parameters[1];
            try {
                AndroidCameraAgentImpl.this.mDispatchThread.runJobSync(new Runnable() {
                    public void run() {
                        AndroidCameraAgentImpl.this.mCameraHandler.obtainMessage(202, parametersHolder).sendToTarget();
                        AndroidCameraAgentImpl.this.mCameraHandler.post(bundle.mUnlockRunnable);
                    }
                }, bundle.mWaitLock, CameraAgent.CAMERA_OPERATION_TIMEOUT_MS, "get parameters");
            } catch (RuntimeException ex) {
                this.mCameraAgent.getCameraExceptionHandler().onDispatchThreadException(ex);
            }
            return parametersHolder[0];
        }

        public CameraSettings getSettings() {
            return new AndroidCameraSettings(this.mCapabilities, getParameters());
        }

        public boolean applySettings(CameraSettings settings) {
            return applySettingsHelper(settings, 6);
        }

        public String dumpDeviceSettings() {
            if (getParameters() == null) {
                return "[no parameters retrieved]";
            }
            StringTokenizer tokenizer = new StringTokenizer(getParameters().flatten(), ";");
            String dumpedSettings = new String();
            while (tokenizer.hasMoreElements()) {
                dumpedSettings = dumpedSettings + tokenizer.nextToken() + 10;
            }
            return dumpedSettings;
        }

        public Handler getCameraHandler() {
            return AndroidCameraAgentImpl.this.getCameraHandler();
        }

        public DispatchThread getDispatchThread() {
            return AndroidCameraAgentImpl.this.getDispatchThread();
        }

        public CameraStateHolder getCameraState() {
            return AndroidCameraAgentImpl.this.mCameraState;
        }
    }

    private static class AndroidCameraStateHolder extends CameraStateHolder {
        public static final int CAMERA_CAPTURING = 8;
        public static final int CAMERA_FOCUSING = 16;
        public static final int CAMERA_IDLE = 2;
        public static final int CAMERA_UNLOCKED = 4;
        public static final int CAMERA_UNOPENED = 1;

        public AndroidCameraStateHolder() {
            this(1);
        }

        public AndroidCameraStateHolder(int state) {
            super(state);
        }
    }

    private class CameraHandler extends HistoryHandler implements ErrorCallback {
        private CameraAgent mAgent;
        private Camera mCamera;
        private int mCameraId = -1;
        private int mCancelAfPending = 0;
        private ParametersCache mParameterCache;

        private class CaptureCallbacks {
            public final PictureCallback mJpeg;
            public final PictureCallback mPostView;
            public final PictureCallback mRaw;
            public final ShutterCallback mShutter;

            CaptureCallbacks(ShutterCallback shutter, PictureCallback raw, PictureCallback postView, PictureCallback jpeg) {
                this.mShutter = shutter;
                this.mRaw = raw;
                this.mPostView = postView;
                this.mJpeg = jpeg;
            }
        }

        CameraHandler(CameraAgent agent, Looper looper) {
            super(looper);
            this.mAgent = agent;
        }

        private void startFaceDetection() {
            this.mCamera.startFaceDetection();
        }

        private void stopFaceDetection() {
            this.mCamera.stopFaceDetection();
        }

        private void setFaceDetectionListener(FaceDetectionListener listener) {
            this.mCamera.setFaceDetectionListener(listener);
        }

        private void setPreviewTexture(Object surfaceTexture) {
            try {
                this.mCamera.setPreviewTexture((SurfaceTexture) surfaceTexture);
            } catch (IOException e) {
                Log.e(AndroidCameraAgentImpl.TAG, "Could not set preview texture", e);
            }
        }

        @TargetApi(17)
        private void enableShutterSound(boolean enable) {
            this.mCamera.enableShutterSound(enable);
        }

        @TargetApi(16)
        private void setAutoFocusMoveCallback(Camera camera, Object cb) {
            try {
                camera.setAutoFocusMoveCallback((AutoFocusMoveCallback) cb);
            } catch (RuntimeException ex) {
                Log.w(AndroidCameraAgentImpl.TAG, ex.getMessage());
            }
        }

        public void requestTakePicture(ShutterCallback shutter, PictureCallback raw, PictureCallback postView, PictureCallback jpeg) {
            obtainMessage(601, new CaptureCallbacks(shutter, raw, postView, jpeg)).sendToTarget();
        }

        public void onError(int errorCode, Camera camera) {
            AndroidCameraAgentImpl.this.mExceptionHandler.onCameraError(errorCode);
            if (errorCode == 100) {
                AndroidCameraAgentImpl.this.mExceptionHandler.onCameraException(new RuntimeException("Media server died."), generateHistoryString(this.mCameraId), getCurrentMessage().intValue(), AndroidCameraAgentImpl.this.mCameraState.getState());
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.android.ex.camera2.portability.AndroidCameraAgentImpl.CameraHandler.handleMessage(android.os.Message):void, dom blocks: [B:5:0x0069, B:13:0x00b3, B:59:0x02d2]
            	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:89)
            	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
            	at java.util.ArrayList.forEach(Unknown Source)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
            	at java.util.ArrayList.forEach(Unknown Source)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
            	at jadx.core.ProcessClass.process(ProcessClass.java:32)
            	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
            	at jadx.api.JavaClass.decompile(JavaClass.java:62)
            	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
            */
        public void handleMessage(android.os.Message r28) {
            /*
            r27 = this;
            super.handleMessage(r28);
            r0 = r27;
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;
            r4 = r4.getCameraState();
            r4 = r4.isInvalid();
            if (r4 == 0) goto L_0x003a;
        L_0x0011:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;
            r5 = new java.lang.StringBuilder;
            r5.<init>();
            r7 = "Skip handleMessage - action = '";
            r5 = r5.append(r7);
            r0 = r28;
            r7 = r0.what;
            r7 = com.android.ex.camera2.portability.CameraActions.stringify(r7);
            r5 = r5.append(r7);
            r7 = "'";
            r5 = r5.append(r7);
            r5 = r5.toString();
            com.android.ex.camera2.portability.debug.Log.v(r4, r5);
        L_0x0039:
            return;
        L_0x003a:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;
            r5 = new java.lang.StringBuilder;
            r5.<init>();
            r7 = "handleMessage - action = '";
            r5 = r5.append(r7);
            r0 = r28;
            r7 = r0.what;
            r7 = com.android.ex.camera2.portability.CameraActions.stringify(r7);
            r5 = r5.append(r7);
            r7 = "'";
            r5 = r5.append(r7);
            r5 = r5.toString();
            com.android.ex.camera2.portability.debug.Log.v(r4, r5);
            r0 = r28;
            r15 = r0.what;
            switch(r15) {
                case 1: goto L_0x008b;
                case 2: goto L_0x020a;
                case 3: goto L_0x023a;
                case 4: goto L_0x029d;
                case 5: goto L_0x02b2;
                case 101: goto L_0x02c7;
                case 102: goto L_0x02ea;
                case 103: goto L_0x0300;
                case 104: goto L_0x0309;
                case 105: goto L_0x0327;
                case 106: goto L_0x02d2;
                case 107: goto L_0x04b9;
                case 108: goto L_0x0318;
                case 201: goto L_0x047c;
                case 202: goto L_0x04a1;
                case 203: goto L_0x04d9;
                case 204: goto L_0x0451;
                case 301: goto L_0x0338;
                case 302: goto L_0x0380;
                case 303: goto L_0x03ab;
                case 304: goto L_0x042b;
                case 305: goto L_0x039f;
                case 461: goto L_0x043a;
                case 462: goto L_0x0447;
                case 463: goto L_0x044c;
                case 501: goto L_0x04c8;
                case 502: goto L_0x03ba;
                case 503: goto L_0x0408;
                case 601: goto L_0x04e2;
                default: goto L_0x0069;
            };
        L_0x0069:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = new java.lang.StringBuilder;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.<init>();	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = "Invalid CameraProxy message=";	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r0.what;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.toString();	 Catch:{ RuntimeException -> 0x00b2 }
            com.android.ex.camera2.portability.debug.Log.e(r4, r5);	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0087:
            com.android.ex.camera2.portability.CameraAgent.WaitDoneBundle.unblockSyncWaiters(r28);
            goto L_0x0039;
        L_0x008b:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r23 = r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r23 = (com.android.ex.camera2.portability.CameraAgent.CameraOpenCallback) r23;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r6 = r0.arg1;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.getState();	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 1;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r4 == r5) goto L_0x0150;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x00a6:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.generateHistoryString(r6);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r23;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.onDeviceOpenedAlready(r6, r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;
        L_0x00b2:
            r21 = move-exception;
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ all -> 0x01f6 }
            r4 = r4.mCameraState;	 Catch:{ all -> 0x01f6 }
            r16 = r4.getState();	 Catch:{ all -> 0x01f6 }
            r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x01f6 }
            r4.<init>();	 Catch:{ all -> 0x01f6 }
            r5 = "CameraAction[";	 Catch:{ all -> 0x01f6 }
            r4 = r4.append(r5);	 Catch:{ all -> 0x01f6 }
            r5 = com.android.ex.camera2.portability.CameraActions.stringify(r15);	 Catch:{ all -> 0x01f6 }
            r4 = r4.append(r5);	 Catch:{ all -> 0x01f6 }
            r5 = "] at CameraState[";	 Catch:{ all -> 0x01f6 }
            r4 = r4.append(r5);	 Catch:{ all -> 0x01f6 }
            r0 = r16;	 Catch:{ all -> 0x01f6 }
            r4 = r4.append(r0);	 Catch:{ all -> 0x01f6 }
            r5 = "]";	 Catch:{ all -> 0x01f6 }
            r4 = r4.append(r5);	 Catch:{ all -> 0x01f6 }
            r20 = r4.toString();	 Catch:{ all -> 0x01f6 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ all -> 0x01f6 }
            r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x01f6 }
            r5.<init>();	 Catch:{ all -> 0x01f6 }
            r7 = "RuntimeException during ";	 Catch:{ all -> 0x01f6 }
            r5 = r5.append(r7);	 Catch:{ all -> 0x01f6 }
            r0 = r20;	 Catch:{ all -> 0x01f6 }
            r5 = r5.append(r0);	 Catch:{ all -> 0x01f6 }
            r5 = r5.toString();	 Catch:{ all -> 0x01f6 }
            r0 = r21;	 Catch:{ all -> 0x01f6 }
            com.android.ex.camera2.portability.debug.Log.e(r4, r5, r0);	 Catch:{ all -> 0x01f6 }
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r4 = r0.mCamera;	 Catch:{ all -> 0x01f6 }
            if (r4 == 0) goto L_0x0121;	 Catch:{ all -> 0x01f6 }
        L_0x010c:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ all -> 0x01f6 }
            r5 = "Release camera since mCamera is not null.";	 Catch:{ all -> 0x01f6 }
            com.android.ex.camera2.portability.debug.Log.i(r4, r5);	 Catch:{ all -> 0x01f6 }
            r0 = r27;	 Catch:{ Exception -> 0x0510 }
            r4 = r0.mCamera;	 Catch:{ Exception -> 0x0510 }
            r4.release();	 Catch:{ Exception -> 0x0510 }
            r4 = 0;
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r0.mCamera = r4;	 Catch:{ all -> 0x01f6 }
        L_0x0121:
            r0 = r28;	 Catch:{ all -> 0x01f6 }
            r4 = r0.what;	 Catch:{ all -> 0x01f6 }
            r5 = 1;	 Catch:{ all -> 0x01f6 }
            if (r4 != r5) goto L_0x052a;	 Catch:{ all -> 0x01f6 }
        L_0x0128:
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r4 = r0.mCamera;	 Catch:{ all -> 0x01f6 }
            if (r4 != 0) goto L_0x052a;	 Catch:{ all -> 0x01f6 }
        L_0x012e:
            r0 = r28;	 Catch:{ all -> 0x01f6 }
            r6 = r0.arg1;	 Catch:{ all -> 0x01f6 }
            r0 = r28;	 Catch:{ all -> 0x01f6 }
            r4 = r0.obj;	 Catch:{ all -> 0x01f6 }
            if (r4 == 0) goto L_0x014b;	 Catch:{ all -> 0x01f6 }
        L_0x0138:
            r0 = r28;	 Catch:{ all -> 0x01f6 }
            r4 = r0.obj;	 Catch:{ all -> 0x01f6 }
            r4 = (com.android.ex.camera2.portability.CameraAgent.CameraOpenCallback) r4;	 Catch:{ all -> 0x01f6 }
            r0 = r28;	 Catch:{ all -> 0x01f6 }
            r5 = r0.arg1;	 Catch:{ all -> 0x01f6 }
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r7 = r0.generateHistoryString(r6);	 Catch:{ all -> 0x01f6 }
            r4.onDeviceOpenFailure(r5, r7);	 Catch:{ all -> 0x01f6 }
        L_0x014b:
            com.android.ex.camera2.portability.CameraAgent.WaitDoneBundle.unblockSyncWaiters(r28);
            goto L_0x0039;
        L_0x0150:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = new java.lang.StringBuilder;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.<init>();	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = "Opening camera ";	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r6);	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = " with camera1 API";	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.toString();	 Catch:{ RuntimeException -> 0x00b2 }
            com.android.ex.camera2.portability.debug.Log.i(r4, r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.openCamera(r6);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mCamera = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r4 == 0) goto L_0x01fb;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0182:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mCameraId = r6;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = new com.android.ex.camera2.portability.AndroidCameraAgentImpl$ParametersCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.<init>(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mParameterCache = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.AndroidCameraDeviceInfo.create();	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.getCharacteristics(r6);	 Catch:{ RuntimeException -> 0x00b2 }
            r4.mCharacteristics = r5;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = new com.android.ex.camera2.portability.AndroidCameraCapabilities;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r7.getBlocking();	 Catch:{ RuntimeException -> 0x00b2 }
            r5.<init>(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r4.mCapabilities = r5;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setErrorCallback(r0);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 2;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            if (r23 == 0) goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x01cd:
            r3 = new com.android.ex.camera2.portability.AndroidCameraAgentImpl$AndroidCameraProxyImpl;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mAgent;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r8 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r8 = r8.mCharacteristics;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r9 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r9 = r9.mCapabilities;	 Catch:{ RuntimeException -> 0x00b2 }
            r10 = 0;	 Catch:{ RuntimeException -> 0x00b2 }
            r3.<init>(r4, r5, r6, r7, r8, r9, r10);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r23;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.onCameraOpened(r3);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;
        L_0x01f6:
            r4 = move-exception;
            com.android.ex.camera2.portability.CameraAgent.WaitDoneBundle.unblockSyncWaiters(r28);
            throw r4;
        L_0x01fb:
            if (r23 == 0) goto L_0x0087;
        L_0x01fd:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.generateHistoryString(r6);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r23;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.onDeviceOpenFailure(r6, r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x020a:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r4 == 0) goto L_0x022f;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0210:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.release();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 1;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = 0;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mCamera = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = -1;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mCameraId = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x022f:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = "Releasing camera without any camera opened.";	 Catch:{ RuntimeException -> 0x00b2 }
            com.android.ex.camera2.portability.debug.Log.w(r4, r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x023a:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r18 = r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r18 = (com.android.ex.camera2.portability.CameraAgent.CameraOpenCallbackForward) r18;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r6 = r0.arg1;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ IOException -> 0x0285 }
            r4 = r0.mCamera;	 Catch:{ IOException -> 0x0285 }
            r4.reconnect();	 Catch:{ IOException -> 0x0285 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 2;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            if (r18 == 0) goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x025b:
            r7 = new com.android.ex.camera2.portability.AndroidCameraAgentImpl$AndroidCameraProxyImpl;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r8 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r9 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r11 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r12 = r4.mCharacteristics;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r13 = r4.mCapabilities;	 Catch:{ RuntimeException -> 0x00b2 }
            r14 = 0;	 Catch:{ RuntimeException -> 0x00b2 }
            r10 = r6;	 Catch:{ RuntimeException -> 0x00b2 }
            r7.<init>(r8, r9, r10, r11, r12, r13, r14);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r18;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.onCameraOpened(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0285:
            r21 = move-exception;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r18 == 0) goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0288:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mAgent;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCameraId;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.generateHistoryString(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r18;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.onReconnectionFailure(r4, r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x029d:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.unlock();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 4;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x02b2:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.lock();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 2;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x02c7:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.setPreviewTexture(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;
        L_0x02d2:
            r0 = r27;	 Catch:{ IOException -> 0x02e1 }
            r5 = r0.mCamera;	 Catch:{ IOException -> 0x02e1 }
            r0 = r28;	 Catch:{ IOException -> 0x02e1 }
            r4 = r0.obj;	 Catch:{ IOException -> 0x02e1 }
            r4 = (android.view.SurfaceHolder) r4;	 Catch:{ IOException -> 0x02e1 }
            r5.setPreviewDisplay(r4);	 Catch:{ IOException -> 0x02e1 }
            goto L_0x0087;
        L_0x02e1:
            r19 = move-exception;
            r4 = new java.lang.RuntimeException;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r19;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.<init>(r0);	 Catch:{ RuntimeException -> 0x00b2 }
            throw r4;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x02ea:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r18 = r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r18 = (com.android.ex.camera2.portability.CameraAgent.CameraStartPreviewCallbackForward) r18;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.startPreview();	 Catch:{ RuntimeException -> 0x00b2 }
            if (r18 == 0) goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x02fb:
            r18.onPreviewStarted();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0300:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.stopPreview();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0309:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.PreviewCallback) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.setPreviewCallbackWithBuffer(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0318:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.PreviewCallback) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.setOneShotPreviewCallback(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0327:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (byte[]) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (byte[]) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.addCallbackBuffer(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0338:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCancelAfPending;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r4 <= 0) goto L_0x0364;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x033e:
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = new java.lang.StringBuilder;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.<init>();	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = "handleMessage - Ignored AUTO_FOCUS because there was ";	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r0.mCancelAfPending;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = " pending CANCEL_AUTO_FOCUS messages";	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.append(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.toString();	 Catch:{ RuntimeException -> 0x00b2 }
            com.android.ex.camera2.portability.debug.Log.v(r4, r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0364:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 16;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.AutoFocusCallback) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.autoFocus(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0380:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCancelAfPending;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4 + 1;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mCancelAfPending = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.cancelAutoFocus();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 2;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x039f:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCancelAfPending;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4 + -1;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.mCancelAfPending = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x03ab:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.setAutoFocusMoveCallback(r4, r5);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x03ba:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.mCharacteristics;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r0.arg1;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r5.getPreviewOrientation(r7);	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setDisplayOrientation(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r24 = r4.getBlocking();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.arg2;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r4 <= 0) goto L_0x0406;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x03df:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCharacteristics;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.arg1;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.getJpegOrientation(r5);	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x03ef:
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.setRotation(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setParameters(r0);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.invalidate();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0406:
            r4 = 0;	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x03ef;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0408:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r24 = r4.getBlocking();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.arg1;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.setRotation(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setParameters(r0);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.invalidate();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x042b:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.OnZoomChangeListener) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.setZoomChangeListener(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x043a:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.FaceDetectionListener) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.setFaceDetectionListener(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0447:
            r27.startFaceDetection();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x044c:
            r27.stopFaceDetection();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x0451:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r24 = r4.getBlocking();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r26 = r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r26 = (com.android.ex.camera2.portability.CameraSettings) r26;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r1 = r26;	 Catch:{ RuntimeException -> 0x00b2 }
            r2 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.applySettingsToParameters(r1, r2);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setParameters(r0);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.invalidate();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x047c:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r24 = r4.getBlocking();	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (java.lang.String) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.unflatten(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setParameters(r0);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.invalidate();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04a1:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.Parameters[]) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = (android.hardware.Camera.Parameters[]) r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r25 = r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r24 = r4.getBlocking();	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = 0;	 Catch:{ RuntimeException -> 0x00b2 }
            r25[r4] = r24;	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04b9:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = (android.hardware.Camera.PreviewCallback) r4;	 Catch:{ RuntimeException -> 0x00b2 }
            r5.setPreviewCallback(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04c8:
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.arg1;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 1;	 Catch:{ RuntimeException -> 0x00b2 }
            if (r4 != r5) goto L_0x04d7;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04cf:
            r4 = 1;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04d0:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r0.enableShutterSound(r4);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04d7:
            r4 = 0;	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x04d0;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04d9:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mParameterCache;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.invalidate();	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;	 Catch:{ RuntimeException -> 0x00b2 }
        L_0x04e2:
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.this;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r4.mCameraState;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = 8;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.setState(r5);	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r28;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r0.obj;	 Catch:{ RuntimeException -> 0x00b2 }
            r17 = r0;	 Catch:{ RuntimeException -> 0x00b2 }
            r17 = (com.android.ex.camera2.portability.AndroidCameraAgentImpl.CameraHandler.CaptureCallbacks) r17;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r27;	 Catch:{ RuntimeException -> 0x00b2 }
            r4 = r0.mCamera;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r17;	 Catch:{ RuntimeException -> 0x00b2 }
            r5 = r0.mShutter;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r17;	 Catch:{ RuntimeException -> 0x00b2 }
            r7 = r0.mRaw;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r17;	 Catch:{ RuntimeException -> 0x00b2 }
            r8 = r0.mPostView;	 Catch:{ RuntimeException -> 0x00b2 }
            r0 = r17;	 Catch:{ RuntimeException -> 0x00b2 }
            r9 = r0.mJpeg;	 Catch:{ RuntimeException -> 0x00b2 }
            r4.takePicture(r5, r7, r8, r9);	 Catch:{ RuntimeException -> 0x00b2 }
            goto L_0x0087;
        L_0x0510:
            r19 = move-exception;
            r4 = com.android.ex.camera2.portability.AndroidCameraAgentImpl.TAG;	 Catch:{ all -> 0x0523 }
            r5 = "Fail when calling Camera.release().";	 Catch:{ all -> 0x0523 }
            r0 = r19;	 Catch:{ all -> 0x0523 }
            com.android.ex.camera2.portability.debug.Log.e(r4, r5, r0);	 Catch:{ all -> 0x0523 }
            r4 = 0;
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r0.mCamera = r4;	 Catch:{ all -> 0x01f6 }
            goto L_0x0121;	 Catch:{ all -> 0x01f6 }
        L_0x0523:
            r4 = move-exception;	 Catch:{ all -> 0x01f6 }
            r5 = 0;	 Catch:{ all -> 0x01f6 }
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r0.mCamera = r5;	 Catch:{ all -> 0x01f6 }
            throw r4;	 Catch:{ all -> 0x01f6 }
        L_0x052a:
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r4 = r0.mAgent;	 Catch:{ all -> 0x01f6 }
            r22 = r4.getCameraExceptionHandler();	 Catch:{ all -> 0x01f6 }
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r4 = r0.mCameraId;	 Catch:{ all -> 0x01f6 }
            r0 = r27;	 Catch:{ all -> 0x01f6 }
            r4 = r0.generateHistoryString(r4);	 Catch:{ all -> 0x01f6 }
            r0 = r22;	 Catch:{ all -> 0x01f6 }
            r1 = r21;	 Catch:{ all -> 0x01f6 }
            r2 = r16;	 Catch:{ all -> 0x01f6 }
            r0.onCameraException(r1, r4, r15, r2);	 Catch:{ all -> 0x01f6 }
            goto L_0x014b;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.ex.camera2.portability.AndroidCameraAgentImpl.CameraHandler.handleMessage(android.os.Message):void");
        }

        private void applySettingsToParameters(CameraSettings settings, Parameters parameters) {
            Stringifier stringifier = AndroidCameraAgentImpl.this.mCapabilities.getStringifier();
            Size photoSize = settings.getCurrentPhotoSize();
            parameters.setPictureSize(photoSize.width(), photoSize.height());
            Size previewSize = settings.getCurrentPreviewSize();
            parameters.setPreviewSize(previewSize.width(), previewSize.height());
            if (settings.getPreviewFrameRate() == -1) {
                parameters.setPreviewFpsRange(settings.getPreviewFpsRangeMin(), settings.getPreviewFpsRangeMax());
            } else {
                parameters.setPreviewFrameRate(settings.getPreviewFrameRate());
            }
            parameters.setPreviewFormat(settings.getCurrentPreviewFormat());
            parameters.setJpegQuality(settings.getPhotoJpegCompressionQuality());
            if (AndroidCameraAgentImpl.this.mCapabilities.supports(Feature.ZOOM)) {
                parameters.setZoom(zoomRatioToIndex(settings.getCurrentZoomRatio(), parameters.getZoomRatios()));
            }
            parameters.setExposureCompensation(settings.getExposureCompensationIndex());
            if (AndroidCameraAgentImpl.this.mCapabilities.supports(Feature.AUTO_EXPOSURE_LOCK)) {
                parameters.setAutoExposureLock(settings.isAutoExposureLocked());
            }
            parameters.setFocusMode(stringifier.stringify(settings.getCurrentFocusMode()));
            if (AndroidCameraAgentImpl.this.mCapabilities.supports(Feature.AUTO_WHITE_BALANCE_LOCK)) {
                parameters.setAutoWhiteBalanceLock(settings.isAutoWhiteBalanceLocked());
            }
            if (settings.getWhiteBalance() != null) {
                parameters.setWhiteBalance(stringifier.stringify(settings.getWhiteBalance()));
            }
            if (AndroidCameraAgentImpl.this.mCapabilities.supports(Feature.FOCUS_AREA)) {
                if (settings.getFocusAreas().size() != 0) {
                    parameters.setFocusAreas(settings.getFocusAreas());
                } else {
                    parameters.setFocusAreas(null);
                }
            }
            if (AndroidCameraAgentImpl.this.mCapabilities.supports(Feature.METERING_AREA)) {
                if (settings.getMeteringAreas().size() != 0) {
                    parameters.setMeteringAreas(settings.getMeteringAreas());
                } else {
                    parameters.setMeteringAreas(null);
                }
            }
            if (settings.getCurrentFlashMode() != FlashMode.NO_FLASH) {
                parameters.setFlashMode(stringifier.stringify(settings.getCurrentFlashMode()));
            }
            if (!(settings.getCurrentSceneMode() == SceneMode.NO_SCENE_MODE || settings.getCurrentSceneMode() == null)) {
                parameters.setSceneMode(stringifier.stringify(settings.getCurrentSceneMode()));
            }
            parameters.setRecordingHint(settings.isRecordingHintEnabled());
            Size jpegThumbSize = settings.getExifThumbnailSize();
            if (jpegThumbSize != null) {
                parameters.setJpegThumbnailSize(jpegThumbSize.width(), jpegThumbSize.height());
            }
            parameters.setPictureFormat(settings.getCurrentPhotoFormat());
            GpsData gpsData = settings.getGpsData();
            if (gpsData == null) {
                parameters.removeGpsData();
                return;
            }
            parameters.setGpsTimestamp(gpsData.timeStamp);
            if (gpsData.processingMethod != null) {
                parameters.setGpsAltitude(gpsData.altitude);
                parameters.setGpsLatitude(gpsData.latitude);
                parameters.setGpsLongitude(gpsData.longitude);
                parameters.setGpsProcessingMethod(gpsData.processingMethod);
            }
        }

        private int zoomRatioToIndex(float ratio, List<Integer> percentages) {
            int index = Collections.binarySearch(percentages, Integer.valueOf((int) (100.0f * ratio)));
            if (index >= 0) {
                return index;
            }
            index = -(index + 1);
            if (index == percentages.size()) {
                index--;
            }
            return index;
        }
    }

    private static class FaceDetectionCallbackForward implements FaceDetectionListener {
        private final CameraFaceDetectionCallback mCallback;
        private final CameraProxy mCamera;
        private final Handler mHandler;

        public static FaceDetectionCallbackForward getNewInstance(Handler handler, CameraProxy camera, CameraFaceDetectionCallback cb) {
            if (handler == null || camera == null || cb == null) {
                return null;
            }
            return new FaceDetectionCallbackForward(handler, camera, cb);
        }

        private FaceDetectionCallbackForward(Handler h, CameraProxy camera, CameraFaceDetectionCallback cb) {
            this.mHandler = h;
            this.mCamera = camera;
            this.mCallback = cb;
        }

        public void onFaceDetection(final Face[] faces, Camera camera) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    FaceDetectionCallbackForward.this.mCallback.onFaceDetection(faces, FaceDetectionCallbackForward.this.mCamera);
                }
            });
        }
    }

    private static class ParametersCache {
        private Camera mCamera;
        private Parameters mParameters;

        public ParametersCache(Camera camera) {
            this.mCamera = camera;
        }

        public synchronized void invalidate() {
            this.mParameters = null;
        }

        public synchronized Parameters getBlocking() {
            if (this.mParameters == null) {
                this.mParameters = this.mCamera.getParameters();
                if (this.mParameters == null) {
                    Log.e(AndroidCameraAgentImpl.TAG, "Camera object returned null parameters!");
                    throw new IllegalStateException("camera.getParameters returned null");
                }
            }
            return this.mParameters;
        }
    }

    private static class PictureCallbackForward implements PictureCallback {
        private final CameraPictureCallback mCallback;
        private final CameraProxy mCamera;
        private final Handler mHandler;

        public static PictureCallbackForward getNewInstance(Handler handler, CameraProxy camera, CameraPictureCallback cb) {
            if (handler == null || camera == null || cb == null) {
                return null;
            }
            return new PictureCallbackForward(handler, camera, cb);
        }

        private PictureCallbackForward(Handler h, CameraProxy camera, CameraPictureCallback cb) {
            this.mHandler = h;
            this.mCamera = camera;
            this.mCallback = cb;
        }

        public void onPictureTaken(final byte[] data, Camera camera) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    PictureCallbackForward.this.mCallback.onPictureTaken(data, PictureCallbackForward.this.mCamera);
                }
            });
        }
    }

    private static class PreviewCallbackForward implements PreviewCallback {
        private final CameraPreviewDataCallback mCallback;
        private final CameraProxy mCamera;
        private final Handler mHandler;

        public static PreviewCallbackForward getNewInstance(Handler handler, CameraProxy camera, CameraPreviewDataCallback cb) {
            if (handler == null || camera == null || cb == null) {
                return null;
            }
            return new PreviewCallbackForward(handler, camera, cb);
        }

        private PreviewCallbackForward(Handler h, CameraProxy camera, CameraPreviewDataCallback cb) {
            this.mHandler = h;
            this.mCamera = camera;
            this.mCallback = cb;
        }

        public void onPreviewFrame(final byte[] data, Camera camera) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    PreviewCallbackForward.this.mCallback.onPreviewFrame(data, PreviewCallbackForward.this.mCamera);
                }
            });
        }
    }

    private static class ShutterCallbackForward implements ShutterCallback {
        private final CameraShutterCallback mCallback;
        private final CameraProxy mCamera;
        private final Handler mHandler;

        public static ShutterCallbackForward getNewInstance(Handler handler, CameraProxy camera, CameraShutterCallback cb) {
            if (handler == null || camera == null || cb == null) {
                return null;
            }
            return new ShutterCallbackForward(handler, camera, cb);
        }

        private ShutterCallbackForward(Handler h, CameraProxy camera, CameraShutterCallback cb) {
            this.mHandler = h;
            this.mCamera = camera;
            this.mCallback = cb;
        }

        public void onShutter() {
            this.mHandler.post(new Runnable() {
                public void run() {
                    ShutterCallbackForward.this.mCallback.onShutter(ShutterCallbackForward.this.mCamera);
                }
            });
        }
    }

    AndroidCameraAgentImpl() {
        this.mCameraHandlerThread.start();
        this.mCameraHandler = new CameraHandler(this, this.mCameraHandlerThread.getLooper());
        this.mExceptionHandler = new CameraExceptionHandler(this.mCameraHandler);
        this.mCameraState = new AndroidCameraStateHolder();
        this.mDispatchThread = new DispatchThread(this.mCameraHandler, this.mCameraHandlerThread);
        this.mDispatchThread.start();
    }

    public void recycle() {
        closeCamera(null, true);
        this.mDispatchThread.end();
        this.mCameraState.invalidate();
    }

    public CameraDeviceInfo getCameraDeviceInfo() {
        return AndroidCameraDeviceInfo.create();
    }

    protected Handler getCameraHandler() {
        return this.mCameraHandler;
    }

    protected DispatchThread getDispatchThread() {
        return this.mDispatchThread;
    }

    protected CameraStateHolder getCameraState() {
        return this.mCameraState;
    }

    protected CameraExceptionHandler getCameraExceptionHandler() {
        return this.mExceptionHandler;
    }

    public void setCameraExceptionHandler(CameraExceptionHandler exceptionHandler) {
        if (exceptionHandler == null) {
            exceptionHandler = sDefaultExceptionHandler;
        }
        this.mExceptionHandler = exceptionHandler;
    }

    public Camera openCamera(int cameraId) {
        Camera camera;
        try {
            Class<?> ownerClazz = Class.forName("android.hardware.Camera");
            Method method = ownerClazz.getMethod("openLegacy", new Class[]{Integer.TYPE, Integer.TYPE});
            if (method != null) {
                int hal_api_1;
                Field field = ownerClazz.getField("CAMERA_HAL_API_VERSION_1_0");
                if (field != null) {
                    hal_api_1 = field.getInt("CAMERA_HAL_API_VERSION_1_0");
                } else {
                    hal_api_1 = 256;
                }
                Log.i(TAG, "hal_api_1=" + hal_api_1);
                camera = (Camera) method.invoke(null, new Object[]{Integer.valueOf(cameraId), Integer.valueOf(hal_api_1)});
            } else {
                Log.w(TAG, "null openLegacy method");
                camera = null;
            }
        } catch (Exception e) {
            Log.v(TAG, "openLegacy failed due to " + e.getMessage() + ", using open instead");
            camera = null;
        }
        if (camera != null) {
            return camera;
        }
        Log.i(TAG, "camera is null, use default method");
        return Camera.open(cameraId);
    }
}
