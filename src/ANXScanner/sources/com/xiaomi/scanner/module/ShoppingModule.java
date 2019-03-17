package com.xiaomi.scanner.module;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.net.Uri;
import android.view.KeyEvent;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.DeleteFileTask;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.Util;
import java.io.File;

public class ShoppingModule extends BaseModule {
    private static final int MSG_UPLOAD_END = 23;
    private static final int MSG_UPLOAD_ERROR = 22;
    private static final Tag TAG = new Tag("ShoppingModule");
    private AppUI mAppUi;
    private String mCacheTempImageFile;
    private boolean mIsPause;
    OnKeyListener mOnKeyListener = new OnKeyListener() {
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            if (keyCode == 4 && event.getAction() == 1) {
                Log.d(ShoppingModule.TAG, "mOnKeyListener BackPressed");
                if (!ShoppingModule.this.mIsPause) {
                    ShoppingModule.this.cancelWorkTask(true);
                }
            }
            return false;
        }
    };

    public ShoppingModule(AppController app, int moduleId) {
        this.mAppUi = app.getAppUI();
        this.mModuleId = moduleId;
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        this.mAppUi.setTitle(R.string.shopping_title);
        initShoppingSdk();
        UsageStatistics.trackEvent(UsageStatistics.KEY_SHOPPING_TAG_CLICK);
    }

    public boolean isSdkReady() {
        return PailitaoManager.isReady();
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    public void onStart() {
        Log.t(TAG, "onStart");
    }

    public void onResume() {
        super.onResume();
        this.mIsPause = false;
    }

    public void onPause() {
        this.mIsPause = true;
        cancelWorkTask(false);
    }

    public void onStop() {
        Log.t(TAG, "onStop");
    }

    public void onDestroy() {
        super.onDestroy();
        deleteCapturedFile();
    }

    public boolean isCaptureNeeded() {
        return true;
    }

    public boolean isNetworkRequired() {
        return true;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 1:
                    if (executeTask(3, data.getData(), getSavePath())) {
                        this.mAppUi.showProgressView((int) R.string.shopping_searching, (int) R.string.shopping_vendor_info);
                        return;
                    } else {
                        cancelWorkTask(true);
                        return;
                    }
                default:
                    Log.w(TAG, "onActivityResult: unexpected request " + requestCode);
                    return;
            }
        }
    }

    public Object executeDoInBackground(Object... params) {
        switch (Integer.parseInt(params[0].toString())) {
            case 1:
                byte[] data = (byte[]) params[1];
                if (data == null) {
                    Log.w(TAG, "null data");
                    return Boolean.valueOf(false);
                }
                UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_SHOPPING_SERVER_REQ, "take_photo");
                this.mCacheTempImageFile = PictureDecoder.saveJpeg(this.mActivity.getImagePath(), data, DeviceUtil.isImageNeedRotate(), "Temp");
                return this.mCacheTempImageFile;
            case 3:
                UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_SHOPPING_SERVER_REQ, "select_image");
                Object filePath = Utils.getFilePathFromUri((Uri) params[1]);
                if (!DeviceUtil.isImageNeedRotate()) {
                    return filePath;
                }
                this.mCacheTempImageFile = PictureDecoder.rectifyBitmap(filePath, false, params[2].toString());
                return this.mCacheTempImageFile;
            default:
                Log.w(TAG, "illegal data = " + params[0]);
                return null;
        }
    }

    public void executeOnPostExecute(Object object) {
        this.mAppUi.dismissProgress();
        if (isTaskCancelled() || object == null) {
            Log.w(TAG, "drop this search, object=" + object);
            clearTask();
            this.mActivity.getCaptureModule().startPreview();
            return;
        }
        clearTask();
        PailitaoManager.searchImage(this.mActivity, object.toString());
    }

    protected void cancelWorkTask(boolean resetPreview) {
        super.cancelWorkTask(resetPreview);
        this.mAppUi.dismissProgress();
    }

    public boolean onPictureTaken(byte[] data, CameraProxy camera) {
        if (!super.onPictureTaken(data, camera)) {
            return false;
        }
        if (executeTask(1, data, null)) {
            this.mAppUi.showProgressView((int) R.string.shopping_searching, (int) R.string.shopping_vendor_info);
            return true;
        }
        cancelWorkTask(true);
        return true;
    }

    private void deleteCapturedFile() {
        ScannerThreadPool.poolExecute(new DeleteFileTask(this.mCacheTempImageFile));
        this.mCacheTempImageFile = null;
    }

    private String getSavePath() {
        if (this.mActivity != null) {
            return this.mActivity.getImagePath() + File.separator + "Temp" + Util.JPEG_POSTFIX;
        }
        Log.w(TAG, "null mActivity");
        return null;
    }
}
