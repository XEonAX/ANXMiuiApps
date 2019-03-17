package com.xiaomi.scanner.module;

import android.content.Intent;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.bean.PlantResult;
import com.xiaomi.scanner.camera.Exif;
import com.xiaomi.scanner.dialog.CustomProgressDialog;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.PlantModuleUI;
import com.xiaomi.scanner.util.HttpUtils;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ToastUtils;

public class PlantModule extends BaseModule {
    private PlantModuleUI mUI;
    private CustomProgressDialog progressDialog;

    public PlantModule(int moduleId) {
        this.mModuleId = moduleId;
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        this.mUI = new PlantModuleUI(activity);
        UsageStatistics.trackEvent(UsageStatistics.KEY_PLANT_CLICK);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 1:
                    if (!executeTask(3, Utils.getFilePathFromUri(data.getData()), null)) {
                        cancelWorkTask(true);
                    }
                    UsageStatistics.trackEvent(UsageStatistics.KEY_PLANT_ALBUM_CONFIRM);
                    return;
                default:
                    return;
            }
        } else if (requestCode == 1) {
            UsageStatistics.trackEvent(UsageStatistics.KEY_PLANT_ALBUM_CANCEL);
        }
    }

    public void selectPhotoClick() {
        super.selectPhotoClick();
        UsageStatistics.trackEvent(UsageStatistics.KEY_PLANT_ALBUM_CLICK);
    }

    public boolean onPictureTaken(byte[] originalJpegData, CameraProxy camera) {
        if (!super.onPictureTaken(originalJpegData, camera)) {
            return false;
        }
        if (executeTask(1, originalJpegData, null)) {
            return true;
        }
        cancelWorkTask(true);
        return true;
    }

    public Object executeDoInBackground(Object... params) {
        switch (Integer.parseInt(params[0].toString())) {
            case 1:
                byte[] data = (byte[]) params[1];
                if (data == null) {
                    return null;
                }
                return PictureDecoder.decode(this.mAppContext, data, 1, Exif.getOrientation(data), false);
            case 3:
                String filePath = params[1];
                if (isTaskCancelled()) {
                    return null;
                }
                return PictureDecoder.decodeSafely(filePath, Exif.getOrientation(filePath), false);
            case 1000:
                Bitmap bitmap = params[1];
                return HttpUtils.syncIdentifyPlantFromServer(PictureDecoder.scale(bitmap, bitmap.getWidth() / 2, bitmap.getHeight() / 2));
            default:
                return null;
        }
    }

    protected void cancelWorkTask(boolean resetPreview) {
        super.cancelWorkTask(resetPreview);
        dismissProgress();
    }

    public void executeOnPostExecute(int workType, Object object) {
        if (object == null || isTaskCancelled()) {
            cancelWorkTask(true);
            return;
        }
        switch (workType) {
            case 1000:
                dismissProgress();
                showPlantView((PlantResult) object);
                cancelWorkTask(true);
                return;
            default:
                if (this.progressDialog != null) {
                    this.progressDialog.cancel();
                }
                this.progressDialog = CustomProgressDialog.showProgress(this.mActivity, R.drawable.plant_logo, R.string.plant_loading);
                Bitmap bitmap = (Bitmap) object;
                clearTask();
                if (executeTask(1000, bitmap, null)) {
                    UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_PLANT_REQ, workType == 3 ? "select_image" : "take_photo");
                    return;
                } else {
                    cancelWorkTask(false);
                    return;
                }
        }
    }

    private void dismissProgress() {
        if (this.progressDialog != null) {
            this.progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    private void showPlantView(PlantResult object) {
        if (this.mUI == null || object == null || TextUtils.isEmpty(object.resultPage) || !object.isSuccess()) {
            UsageStatistics.trackEvent(UsageStatistics.KEY_PLANT_RESULT_FAIL);
            ToastUtils.showCenterToast((int) R.string.plant_fail);
            return;
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_PLANT_RESULT_SUCCESS);
        this.mUI.showResult(object.resultPage);
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mUI != null) {
            this.mUI.onDestroy();
        }
    }

    public boolean onBackPressed() {
        if (this.mUI.onBackPressed()) {
            return true;
        }
        return super.onBackPressed();
    }

    public boolean isNetworkRequired() {
        return true;
    }

    public boolean isCaptureNeeded() {
        return true;
    }
}
