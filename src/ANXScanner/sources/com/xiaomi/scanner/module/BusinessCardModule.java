package com.xiaomi.scanner.module;

import android.content.Intent;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.camera.Exif;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.BusinessCardModuleUI;
import com.xiaomi.scanner.util.DeleteFileTask;
import com.xiaomi.scanner.util.HttpUtils;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ToastUtils;
import java.util.List;

public class BusinessCardModule extends BaseModule {
    private static final Tag TAG = new Tag("BusinessCardModule");
    private BusinessCardModuleUI mModuleUI;

    public BusinessCardModule(AppController appController, int moduleId) {
        this.mModuleId = moduleId;
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        this.mModuleUI = new BusinessCardModuleUI(this.mActivity);
        trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_TAB_CLICK);
    }

    public boolean isCaptureNeeded() {
        return true;
    }

    public boolean onBackPressed() {
        if (this.mModuleUI.onBackPressed()) {
            return true;
        }
        return super.onBackPressed();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 1:
                case 2:
                    boolean isCropped = requestCode == 2;
                    executeMainTask(isCropped ? getCroppedImagePath() : Utils.getFilePathFromUri(data.getData()), isCropped);
                    if (isCropped) {
                        trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_CROP_CONFIRM_CLICK);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private void executeMainTask(String path, boolean isCropped) {
        if (TextUtils.isEmpty(path)) {
            Log.w(TAG, "executeMainTask fail null path");
        } else if (!isCropped) {
            requestCropImage(path);
        } else if (!executeTask(3, path, null)) {
            cancelWorkTask(true);
        }
    }

    public boolean onPictureTaken(byte[] data, CameraProxy camera) {
        if (!super.onPictureTaken(data, camera)) {
            return false;
        }
        if (executeTask(1, null, this.mActivity.getAppUI().getPreviewBitmap())) {
            return true;
        }
        cancelWorkTask(true);
        return true;
    }

    public void onShutterButtonClick() {
        super.onShutterButtonClick();
        trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_TAKE_PHOTO);
    }

    public Object executeDoInBackground(Object... params) {
        switch (Integer.parseInt(params[0].toString())) {
            case 1:
                if (!(params[2] instanceof Bitmap)) {
                    return null;
                }
                return this.mModuleUI.getCropBitmap(params[2]);
            case 3:
                String filePath = params[1];
                if (isTaskCancelled()) {
                    return null;
                }
                return PictureDecoder.decodeSafely(filePath, Exif.getOrientation(filePath), false);
            case 1000:
                trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_REQ_SERVER);
                return HttpUtils.syncBusinessFromServer((Bitmap) params[1]);
            default:
                return null;
        }
    }

    public void executeOnPostExecute(int workType, Object object) {
        if (object == null || isTaskCancelled()) {
            cancelWorkTask(true);
            return;
        }
        switch (workType) {
            case 1000:
                if (this.mModuleUI != null) {
                    this.mModuleUI.showBusinessResult((List) object);
                }
                cancelWorkTask(false);
                return;
            default:
                Bitmap bitmap = (Bitmap) object;
                this.mModuleUI.showImageAndLoading(bitmap);
                clearTask();
                if (!executeTask(1000, bitmap, null)) {
                    cancelWorkTask(false);
                }
                deleteCropImage();
                return;
        }
    }

    public boolean isNetworkRequired() {
        return true;
    }

    public boolean isZoomNeeded() {
        return true;
    }

    private void requestCropImage(String imagePath) {
        Intent intent = getCropImageIntent(imagePath, getCroppedImagePath(), this.mActivity.getString(R.string.barcode_into_rectangle), this.mActivity.getString(R.string.recognize), 1, 1);
        if (intent != null) {
            trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_CROP_VIEW_SHOW);
            this.mActivity.startActivityForResult(intent, 2);
            ToastUtils.showCenterToast((int) R.string.drag_crop_to_business_card);
        }
    }

    private void deleteCropImage() {
        String path = getCroppedImagePath();
        if (!TextUtils.isEmpty(path)) {
            ScannerThreadPool.poolExecute(new DeleteFileTask(path));
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mModuleUI != null) {
            this.mModuleUI.onPause();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mModuleUI != null) {
            this.mModuleUI.onDestroy();
        }
    }

    public void selectPhotoClick() {
        super.selectPhotoClick();
        trackBCEvent(UsageStatistics.KEY_BUSINESS_CARD_SELECT_PHOTO);
    }

    private void trackBCEvent(String key) {
        if (this.mActivity != null) {
            UsageStatistics.trackBCEvent(this.mActivity.isOnlyBusinessCardScan(), key);
        }
    }
}
