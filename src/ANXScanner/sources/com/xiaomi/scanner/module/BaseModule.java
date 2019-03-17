package com.xiaomi.scanner.module;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.BuildConfig;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.app.ScannerApplicationDelegate;
import com.xiaomi.scanner.camera.CaptureModule;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AppUtil;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class BaseModule implements ModuleController {
    private static final String CROPPED_IMAGE_NAME = "cropResult.jpg";
    private static final Tag TAG = new Tag("BaseModule");
    public static final int WORK_TYPE_CHOOSE_PICTURE = 3;
    protected static final int WORK_TYPE_PREVIEW = 2;
    protected static final int WORK_TYPE_SERVER_REQ = 1000;
    public static final int WORK_TYPE_TAKE_PICTURE = 1;
    protected ScanActivity mActivity;
    protected Context mAppContext;
    private String mCroppedImagePath;
    protected ScannerApplicationDelegate mDelegate;
    protected String mExtraShareImagePath;
    protected boolean mIsBackToThirdApp;
    protected int mModuleId;
    protected boolean mNeedFinishActivity;
    private WorkTask mWorkTask;

    protected static class WorkTask extends AsyncTask<Object, Void, Object> {
        private WeakReference<ModuleController> weakController;
        private int workType;

        WorkTask(ModuleController module) {
            this.weakController = new WeakReference(module);
        }

        protected Object doInBackground(Object... params) {
            if (isCancelled()) {
                Log.i(BaseModule.TAG, "WorkTask isCancelled");
                return null;
            }
            ModuleController moduleController = (ModuleController) this.weakController.get();
            if (moduleController == null) {
                Log.i(BaseModule.TAG, "WorkTask isCancelled");
                return null;
            }
            this.workType = ((Integer) params[0]).intValue();
            return moduleController.executeDoInBackground(params);
        }

        protected void onPostExecute(Object s) {
            ModuleController moduleController = (ModuleController) this.weakController.get();
            if (moduleController != null) {
                moduleController.executeOnPostExecute(this.workType, s);
                moduleController.executeOnPostExecute(s);
            }
        }
    }

    public void init(ScanActivity activity) {
        this.mActivity = activity;
        this.mDelegate = (ScannerApplicationDelegate) ((ScannerApp) this.mActivity.getApplication()).getApplicationDelegate();
        ScannerApplicationDelegate scannerApplicationDelegate = this.mDelegate;
        this.mAppContext = ScannerApplicationDelegate.getAndroidContext();
        this.mNeedFinishActivity = false;
        Bundle bundle = this.mActivity.getIntentData();
        if (bundle != null) {
            this.mExtraShareImagePath = bundle.getString(AppUtil.EXTRA_INTENT_MODULE_IMAGE_PATH);
            this.mIsBackToThirdApp = bundle.getBoolean(AppUtil.EXTRA_INTENT_IS_BACKTO_THIRDAPP);
            this.mActivity.clearIntentData();
            return;
        }
        this.mExtraShareImagePath = null;
        this.mIsBackToThirdApp = false;
    }

    public void onStart() {
    }

    public void onResume() {
        if (this.mActivity != null) {
            CaptureModule captureModule = this.mActivity.getCaptureModule();
            if (captureModule != null && captureModule.isPreviewStop()) {
                captureModule.startPreview();
            }
        }
    }

    public void onPause() {
    }

    public void onStop() {
    }

    public void onDestroy() {
        cancelWorkTask(false);
    }

    public boolean onBackPressed() {
        return false;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return false;
    }

    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return false;
    }

    public void onSingleTapUp(View view, int x, int y) {
    }

    public void requestPreviewFrame() {
    }

    public boolean onPreviewFrame(byte[] data, CameraProxy camera) {
        if (isPause()) {
            Log.v(TAG, "onPreviewFrame: drop data. pause state");
            return false;
        } else if (data != null) {
            return true;
        } else {
            Log.w(TAG, "onPreviewFrame: reset data, current null data");
            requestPreviewFrame();
            return false;
        }
    }

    public boolean isPickerNeeded() {
        return true;
    }

    public boolean isZoomNeeded() {
        return false;
    }

    public boolean isCaptureNeeded() {
        return false;
    }

    public boolean shouldConsumeCameraKey() {
        return isCaptureNeeded();
    }

    public boolean isUsePreviewFrameAsPicture() {
        return false;
    }

    public boolean isNetworkRequired() {
        return false;
    }

    public boolean handleMessage(int what, int sender, Object extra1, Object extra2) {
        return false;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public boolean onPictureTaken(byte[] originalJpegData, CameraProxy camera) {
        if (!isPause() && originalJpegData != null) {
            return true;
        }
        Log.w(TAG, "onPictureTaken drop this data, originalJpegData=" + originalJpegData);
        if (this.mActivity != null) {
            this.mActivity.getCaptureModule().startPreview();
        }
        return false;
    }

    public int getModuleId() {
        return this.mModuleId;
    }

    public String getCroppedImagePath() {
        if (this.mCroppedImagePath == null) {
            String parentPath = this.mActivity.getImagePath();
            if (parentPath != null) {
                this.mCroppedImagePath = parentPath + File.separator + CROPPED_IMAGE_NAME;
            }
        }
        return this.mCroppedImagePath;
    }

    public void onConnectivityChanged() {
    }

    public boolean isSdkReady() {
        return true;
    }

    public void doPrething() {
        this.mNeedFinishActivity = false;
    }

    public void onCTAAndPermissionAgree() {
    }

    public boolean isPause() {
        return false;
    }

    public void onOrientationChange(int orientation) {
    }

    public Object executeDoInBackground(Object... params) {
        return null;
    }

    public void executeOnPostExecute(int workType, Object object) {
    }

    public void executeOnPostExecute(Object object) {
    }

    protected boolean executeTask(int type, Object extra1, Object extra2) {
        if (!isTaskCreated()) {
            return false;
        }
        this.mWorkTask = new WorkTask(this);
        this.mWorkTask.execute(new Object[]{Integer.valueOf(type), extra1, extra2});
        return true;
    }

    protected void cancelWorkTask(boolean resetPreview) {
        if (!isTaskCancelled()) {
            Log.i(TAG, "cancle task");
            this.mWorkTask.cancel(true);
            this.mWorkTask = null;
        }
        if (resetPreview) {
            this.mActivity.getCaptureModule().startPreview();
        }
    }

    protected boolean isTaskCancelled() {
        if (this.mWorkTask == null || this.mWorkTask.isCancelled()) {
            return true;
        }
        return false;
    }

    protected boolean isTaskCreated() {
        return this.mWorkTask == null;
    }

    protected void clearTask() {
        this.mWorkTask = null;
    }

    protected Intent getCropImageIntent(Uri imagePath, String cropResultPath, String title, String action, int aspectX, int aspectY) {
        return getCropImageIntent(Utils.getFilePathFromUri(imagePath), cropResultPath, title, action, aspectX, aspectY);
    }

    protected Intent getCropImageIntent(String imagePath, String cropResultPath, String title, String action, int aspectX, int aspectY) {
        if (TextUtils.isEmpty(imagePath) || TextUtils.isEmpty(cropResultPath)) {
            Log.w(TAG, "getFilePathFromUri: null path!");
            return null;
        }
        File croppedFile = new File(cropResultPath);
        File dir = croppedFile.getParentFile();
        if (!dir.exists()) {
            dir.mkdirs();
        }
        try {
            Uri imageUri = FileProvider.getUriForFile(this.mActivity, BuildConfig.FILES_AUTHORITY, new File(imagePath));
            if (dir.exists() && dir.isDirectory()) {
                Intent intent = new Intent("com.android.camera.action.CROP");
                intent.setPackage("com.miui.gallery");
                intent.setDataAndType(imageUri, "image/*");
                intent.putExtra("crop", "true");
                intent.putExtra("scale", true);
                intent.putExtra("return-data", false);
                intent.putExtra("output", Uri.fromFile(croppedFile));
                intent.putExtra("outputFormat", CompressFormat.JPEG.toString());
                if (aspectX > -1) {
                    intent.putExtra("aspectX", aspectX);
                }
                if (aspectY > -1) {
                    intent.putExtra("aspectY", aspectY);
                }
                if (title != null) {
                    intent.putExtra("tips", title);
                }
                if (action != null) {
                    intent.putExtra("actionString", action);
                }
                intent.putExtra("fixed_aspect_ratio", false);
                intent.putExtra("noFaceDetection", true);
                intent.setFlags(1);
                return intent;
            }
            Log.e(TAG, "dir.exists() = " + dir.exists() + " dir.isDirectory() = " + dir.isDirectory());
            return null;
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "IllegalArgumentException", e);
            return null;
        }
    }

    public void onShutterButtonFocus(boolean pressed) {
    }

    public void onShutterButtonClick() {
    }

    protected void recordExtraCount(Intent intent, String caller, String callCount) {
        String miref;
        Uri uri = intent.getData();
        if (uri != null) {
            miref = uri.getQueryParameter(AppUtil.EXTRA_INTENT_MODULE_APP);
        } else {
            miref = intent.getStringExtra(AppUtil.EXTRA_INTENT_MODULE_APP);
        }
        recordExtraCount(miref, caller, callCount);
    }

    protected void recordExtraCount(String appName, String caller, String callCount) {
        if (!TextUtils.isEmpty(appName)) {
            Map param = new HashMap();
            param.put(caller, appName);
            UsageStatistics.trackEvent(callCount, param);
        }
    }

    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
    }

    public void applyWindowInsets(int insetBottom) {
    }

    protected void initShoppingSdk() {
        PailitaoManager.initialize(this.mActivity.getApplication());
    }

    public void onCameraClosed() {
    }

    public void onActivityDestroy() {
    }

    public void selectPhotoClick() {
    }

    public void updateWordTranslateUI(boolean lock) {
    }
}
