package com.taobao.ma.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Build;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.alibaba.fastjson.asm.Opcodes;
import com.taobao.ma.camera.constants.PreferencesKey;
import com.taobao.ma.camera.util.CameraConfigurationUtils;
import java.util.List;
import java.util.Locale;
import java.util.Map;

final class CameraConfigurationManager {
    private static final String TAG = "CameraConfiguration";
    private int cameraDisplayOrientation = 90;
    private Point cameraResolution;
    private Map<String, Integer> compatibleRotation;
    private final Context context;
    private Point pictureResolution;
    private Point screenResolution;

    CameraConfigurationManager(Context context) {
        this.context = context;
    }

    void initFromCameraParameters(Camera camera) {
        Parameters parameters = camera.getParameters();
        Display display = ((WindowManager) this.context.getSystemService("window")).getDefaultDisplay();
        Point theScreenResolution = new Point();
        display.getSize(theScreenResolution);
        this.screenResolution = theScreenResolution;
        Log.i(TAG, "Screen resolution: " + this.screenResolution);
        this.cameraResolution = CameraConfigurationUtils.findBestPreviewSizeValue(parameters, this.screenResolution);
        String model = Build.MODEL;
        if ((model.contains("HTC") && model.contains("One")) || model.contains("GT-N7100") || model.contains("GT-I9300")) {
            this.cameraResolution = new Point(1280, 720);
        } else if (model.equals("u8800")) {
            this.cameraResolution = new Point(720, 480);
        } else if (model.equals("MI PAD")) {
            this.cameraResolution = new Point(2048, 1536);
        }
        Log.i(TAG, "Camera resolution: " + this.cameraResolution);
        this.pictureResolution = CameraConfigurationUtils.findBestPictureSizeValue(parameters, this.cameraDisplayOrientation);
    }

    void setDesiredCameraParameters(Camera camera, boolean safeMode) {
        Parameters parameters = camera.getParameters();
        if (parameters == null) {
            Log.w(TAG, "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        Log.i(TAG, "Initial camera parameters: " + parameters.flatten());
        if (safeMode) {
            Log.w(TAG, "In camera config safe mode -- most settings will not be honored");
        }
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.context);
        initializeTorch(parameters, prefs, safeMode);
        CameraConfigurationUtils.setFocus(parameters, prefs.getBoolean(PreferencesKey.KEY_AUTO_FOCUS, true), prefs.getBoolean(PreferencesKey.KEY_DISABLE_CONTINUOUS_FOCUS, true), safeMode);
        if (!safeMode) {
            if (prefs.getBoolean(PreferencesKey.KEY_INVERT_SCAN, false)) {
                CameraConfigurationUtils.setInvertColor(parameters);
            }
            if (!prefs.getBoolean(PreferencesKey.KEY_DISABLE_BARCODE_SCENE_MODE, true)) {
                CameraConfigurationUtils.setBarcodeSceneMode(parameters);
            }
            if (!prefs.getBoolean(PreferencesKey.KEY_DISABLE_METERING, true)) {
                CameraConfigurationUtils.setVideoStabilization(parameters);
                CameraConfigurationUtils.setFocusArea(parameters);
                CameraConfigurationUtils.setMetering(parameters);
            }
        }
        try {
            if (Build.MODEL != null) {
                if (Build.MODEL.contains("M9") && Build.BRAND.contains("Meizu")) {
                    this.cameraDisplayOrientation += 90;
                } else {
                    String devName = Build.MODEL.toLowerCase(Locale.US).replace(" ", "");
                    if (devName.contains("nexus5x")) {
                        this.cameraDisplayOrientation += Opcodes.GETFIELD;
                    }
                    if (this.compatibleRotation != null && this.compatibleRotation.containsKey(devName)) {
                        Integer it = (Integer) this.compatibleRotation.get(devName);
                        if (it != null) {
                            this.cameraDisplayOrientation += it.intValue();
                        }
                    }
                    this.cameraDisplayOrientation %= 360;
                }
            }
            camera.setDisplayOrientation(this.cameraDisplayOrientation);
        } catch (Exception e) {
            parameters.setRotation(90);
            Log.w(TAG, "method error" + e.getLocalizedMessage());
        } catch (NoSuchMethodError e2) {
            parameters.setRotation(90);
            Log.w(TAG, "method error" + e2.getLocalizedMessage());
        }
        int mPictureFmt = getBestSupportImageFormat(parameters);
        int bestPreviewFmt = getBestSupportPreviewImageFormat(parameters);
        if (bestPreviewFmt >= 0) {
            parameters.setPreviewFormat(bestPreviewFmt);
        }
        if (Build.MODEL.contains("HTC") && Build.MODEL.contains("801e") && Build.MODEL.contains("One")) {
            parameters.setZoom(30);
        } else if (Build.MODEL.contains("GT-I9300")) {
            parameters.setZoom(20);
        }
        Log.i(TAG, "SQY: before set Camera parameters , now ScreenSize is " + this.screenResolution + ", previewSize to set  is " + this.cameraResolution);
        parameters.setPictureFormat(mPictureFmt);
        parameters.setPictureSize(this.pictureResolution.x, this.pictureResolution.y);
        parameters.setPreviewSize(this.cameraResolution.x, this.cameraResolution.y);
        Log.i(TAG, "Final camera parameters: " + parameters.flatten());
        camera.setParameters(parameters);
        Size afterSize = camera.getParameters().getPreviewSize();
        if (afterSize == null) {
            return;
        }
        if (this.cameraResolution.x != afterSize.width || this.cameraResolution.y != afterSize.height) {
            Log.w(TAG, "Camera said it supported preview size " + this.cameraResolution.x + 'x' + this.cameraResolution.y + ", but after setting it, preview size is " + afterSize.width + 'x' + afterSize.height);
            this.cameraResolution.x = afterSize.width;
            this.cameraResolution.y = afterSize.height;
        }
    }

    private int getBestSupportImageFormat(Parameters parameters) {
        List<Integer> list = parameters.getSupportedPictureFormats();
        if (list.contains(Integer.valueOf(256))) {
            return 256;
        }
        if (list.contains(Integer.valueOf(4))) {
            return 4;
        }
        if (list.contains(Integer.valueOf(17))) {
            return 17;
        }
        return 0;
    }

    private int getBestSupportPreviewImageFormat(Parameters parameters) {
        List<Integer> list = parameters.getSupportedPreviewFormats();
        if (list.contains(Integer.valueOf(17))) {
            return 17;
        }
        if (list.contains(Integer.valueOf(842094169))) {
            return 842094169;
        }
        return -1;
    }

    Point getCameraResolution() {
        return this.cameraResolution;
    }

    Point getScreenResolution() {
        return this.screenResolution;
    }

    boolean getTorchState(Camera camera) {
        if (camera == null) {
            return false;
        }
        Parameters parameters = camera.getParameters();
        if (parameters == null) {
            return false;
        }
        String flashMode = parameters.getFlashMode();
        if (flashMode == null) {
            return false;
        }
        if ("on".equals(flashMode) || "torch".equals(flashMode)) {
            return true;
        }
        return false;
    }

    void setTorch(Camera camera, boolean newSetting) {
        Parameters parameters = camera.getParameters();
        doSetTorch(parameters, newSetting, false);
        camera.setParameters(parameters);
    }

    private void initializeTorch(Parameters parameters, SharedPreferences prefs, boolean safeMode) {
        doSetTorch(parameters, FrontLightMode.readPref(prefs) == FrontLightMode.ON, safeMode);
    }

    private void doSetTorch(Parameters parameters, boolean newSetting, boolean safeMode) {
        CameraConfigurationUtils.setTorch(parameters, newSetting);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.context);
        if (!safeMode && !prefs.getBoolean(PreferencesKey.KEY_DISABLE_EXPOSURE, true)) {
            CameraConfigurationUtils.setBestExposure(parameters, newSetting);
        }
    }

    public void setCompatibleRotation(Map<String, Integer> compatibleRotation) {
        this.compatibleRotation = compatibleRotation;
    }
}
