package com.taobao.ma.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.util.Log;
import android.view.SurfaceHolder;
import com.taobao.ma.camera.AutoFocusManager.OnAutoFocusListener;
import com.taobao.ma.camera.open.OpenCameraInterface;
import com.taobao.ma.camera.util.PlanarYUVLuminanceSource;
import com.taobao.ma.common.log.MaLogger;
import java.io.IOException;
import java.util.Map;

public final class CameraManager {
    private static final int MAX_FRAME_HEIGHT = 675;
    private static final int MAX_FRAME_WIDTH = 1200;
    private static final int MIN_FRAME_HEIGHT = 240;
    private static final int MIN_FRAME_WIDTH = 240;
    private static final String TAG = CameraManager.class.getSimpleName();
    private long autoFocusInterval = 2000;
    private AutoFocusManager autoFocusManager;
    private Camera camera;
    private final CameraConfigurationManager configManager;
    private final Context context;
    private long firstFocusDelay = 0;
    private OnAutoFocusListener focusListener = null;
    private Rect framingRect;
    private Rect framingRectInPreview;
    private boolean initialized;
    private boolean previewing;
    private int requestedCameraId = -1;
    private int requestedFramingRectHeight;
    private int requestedFramingRectWidth;

    public CameraManager(Context context) {
        this.context = context;
        this.configManager = new CameraConfigurationManager(context);
    }

    public synchronized void openDriver(SurfaceHolder holder) throws IOException {
        Camera theCamera = this.camera;
        if (theCamera == null) {
            theCamera = OpenCameraInterface.open(this.requestedCameraId);
            if (theCamera == null) {
                throw new IOException();
            }
            this.camera = theCamera;
        }
        theCamera.setPreviewDisplay(holder);
        if (!this.initialized) {
            this.initialized = true;
            this.configManager.initFromCameraParameters(theCamera);
            if (this.requestedFramingRectWidth > 0 && this.requestedFramingRectHeight > 0) {
                setManualFramingRect(this.requestedFramingRectWidth, this.requestedFramingRectHeight);
                this.requestedFramingRectWidth = 0;
                this.requestedFramingRectHeight = 0;
            }
        }
        Parameters parameters = theCamera.getParameters();
        String parametersFlattened = parameters == null ? null : parameters.flatten();
        try {
            this.configManager.setDesiredCameraParameters(theCamera, false);
        } catch (RuntimeException e) {
            Log.w(TAG, "Camera rejected parameters. Setting only minimal safe-mode parameters");
            Log.i(TAG, "Resetting to saved camera params: " + parametersFlattened);
            if (parametersFlattened != null) {
                parameters = theCamera.getParameters();
                parameters.unflatten(parametersFlattened);
                try {
                    theCamera.setParameters(parameters);
                    this.configManager.setDesiredCameraParameters(theCamera, true);
                } catch (RuntimeException e2) {
                    Log.w(TAG, "Camera rejected even safe-mode parameters! No configuration");
                }
            }
        }
        return;
    }

    public synchronized boolean isOpen() {
        return this.camera != null;
    }

    public synchronized void closeDriver() {
        if (this.camera != null) {
            this.camera.release();
            this.camera = null;
            this.framingRect = null;
            this.framingRectInPreview = null;
        }
    }

    public synchronized void startPreview() {
        long timeStart = System.currentTimeMillis();
        Camera theCamera = this.camera;
        if (!(theCamera == null || this.previewing)) {
            theCamera.startPreview();
            Log.i(TAG, "SQY: startPreview.theCamera.startPreview Costs" + (System.currentTimeMillis() - timeStart));
            this.previewing = true;
            this.autoFocusManager = new AutoFocusManager(this.context, this.camera);
            this.autoFocusManager.setAutoFocusInterval(this.autoFocusInterval);
            this.autoFocusManager.startAutoFocus(this.firstFocusDelay);
            this.autoFocusManager.setFocusListener(this.focusListener);
            Log.i(TAG, "SQY: startPreview new AutoFocusManager Costs" + (System.currentTimeMillis() - timeStart));
        }
    }

    public synchronized void stopPreview() {
        if (this.autoFocusManager != null) {
            this.autoFocusManager.stop();
            this.autoFocusManager.setFocusListener(null);
            this.autoFocusManager = null;
        }
        if (this.camera != null && this.previewing) {
            this.camera.stopPreview();
            this.previewing = false;
        }
    }

    public synchronized void setTorch(boolean newSetting) {
        try {
            if (!(newSetting == this.configManager.getTorchState(this.camera) || this.camera == null)) {
                if (this.autoFocusManager != null) {
                    this.autoFocusManager.stop();
                }
                this.configManager.setTorch(this.camera, newSetting);
                if (this.autoFocusManager != null) {
                    this.autoFocusManager.restart();
                }
            }
        } catch (Exception e) {
            MaLogger.i("maybe light hardware broken ");
        }
        return;
    }

    public synchronized void requestPreviewFrame(PreviewCallback previewCallback) {
        Camera theCamera = this.camera;
        if (theCamera != null && this.previewing) {
            theCamera.setPreviewCallback(previewCallback);
        }
    }

    public synchronized Rect getFramingRect() {
        Rect rect = null;
        synchronized (this) {
            if (this.framingRect == null) {
                if (this.camera != null) {
                    Point screenResolution = this.configManager.getScreenResolution();
                    if (screenResolution != null) {
                        int width = findDesiredDimensionInRange(screenResolution.x, 240, 1200);
                        int height = findDesiredDimensionInRange(screenResolution.y, 240, MAX_FRAME_HEIGHT);
                        int leftOffset = (screenResolution.x - width) / 2;
                        int topOffset = (screenResolution.y - height) / 2;
                        this.framingRect = new Rect(leftOffset, topOffset, leftOffset + width, topOffset + height);
                        Log.d(TAG, "Calculated framing rect: " + this.framingRect);
                    }
                }
            }
            rect = this.framingRect;
        }
        return rect;
    }

    private static int findDesiredDimensionInRange(int resolution, int hardMin, int hardMax) {
        int dim = (resolution * 5) / 8;
        if (dim < hardMin) {
            return hardMin;
        }
        if (dim > hardMax) {
            return hardMax;
        }
        return dim;
    }

    public synchronized Rect getFramingRectInPreview() {
        Rect rect = null;
        synchronized (this) {
            if (this.framingRectInPreview == null) {
                Rect framingRect = getFramingRect();
                if (framingRect != null) {
                    Rect rect2 = new Rect(framingRect);
                    Point cameraResolution = this.configManager.getCameraResolution();
                    Point screenResolution = this.configManager.getScreenResolution();
                    if (!(cameraResolution == null || screenResolution == null)) {
                        rect2.left = (rect2.left * cameraResolution.x) / screenResolution.x;
                        rect2.right = (rect2.right * cameraResolution.x) / screenResolution.x;
                        rect2.top = (rect2.top * cameraResolution.y) / screenResolution.y;
                        rect2.bottom = (rect2.bottom * cameraResolution.y) / screenResolution.y;
                        this.framingRectInPreview = rect2;
                    }
                }
            }
            rect = this.framingRectInPreview;
        }
        return rect;
    }

    public synchronized void setManualCameraId(int cameraId) {
        this.requestedCameraId = cameraId;
    }

    public synchronized void setManualFramingRect(int width, int height) {
        if (this.initialized) {
            Point screenResolution = this.configManager.getScreenResolution();
            if (width > screenResolution.x) {
                width = screenResolution.x;
            }
            if (height > screenResolution.y) {
                height = screenResolution.y;
            }
            int leftOffset = (screenResolution.x - width) / 2;
            int topOffset = (screenResolution.y - height) / 2;
            this.framingRect = new Rect(leftOffset, topOffset, leftOffset + width, topOffset + height);
            Log.d(TAG, "Calculated manual framing rect: " + this.framingRect);
            this.framingRectInPreview = null;
        } else {
            this.requestedFramingRectWidth = width;
            this.requestedFramingRectHeight = height;
        }
    }

    public PlanarYUVLuminanceSource buildLuminanceSource(byte[] data, int width, int height) {
        Rect rect = getFramingRectInPreview();
        if (rect == null) {
            return null;
        }
        return new PlanarYUVLuminanceSource(data, width, height, rect.left, rect.top, rect.width(), rect.height(), false);
    }

    public int getZoomParameter() {
        return this.camera.getParameters().getZoom();
    }

    public int getMaxZoom() {
        return this.camera.getParameters().getMaxZoom();
    }

    public void setZoomParameter(int zooooooooom) {
        Parameters p = this.camera.getParameters();
        p.setZoom(zooooooooom);
        this.camera.setParameters(p);
    }

    public Camera getCamera() {
        return this.camera;
    }

    public void setFirstFocusDelay(long delay) {
        this.firstFocusDelay = delay;
    }

    public void setAutoFocusInterval(long interval) {
        this.autoFocusInterval = interval;
    }

    public void setFocusListener(OnAutoFocusListener listener) {
        this.focusListener = listener;
    }

    public void setCompatibleRotation(Map<String, Integer> compatibleRotation) {
        this.configManager.setCompatibleRotation(compatibleRotation);
    }
}
