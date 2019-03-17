package com.xiaomi.scanner.translation;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.camera.Exif;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.BaseModule;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationListener;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationResult;
import com.xiaomi.scanner.translation.adapter.TranslationAdapterFactory;
import com.xiaomi.scanner.translation.bean.ScanDataBean;
import com.xiaomi.scanner.translation.bean.ScanDataBean.ScanType;
import com.xiaomi.scanner.util.PictureDecoder;

public class TranslationModule extends BaseModule {
    private static final long DELAY_NEXT_PREVIEW_TIME = 500;
    private static final long DETECT_PREVIEW_INTERVAL_MS = 300;
    private static final int MSG_DEFINITION_DONE = 2;
    private static final int MSG_OCR_DONE = 1;
    private static final int MSG_REQUEST_FRAME = 3;
    private static final Tag TAG = new Tag("TranslationModule");
    private boolean mIsPause;
    private Handler mMainHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (TranslationModule.this.mIsPause) {
                Log.d(TranslationModule.TAG, "drop msg " + msg.what);
                return;
            }
            switch (msg.what) {
                case 1:
                    TranslationModule.this.mUI.setOcrResult((TranslationResult) msg.obj);
                    return;
                case 2:
                    TranslationModule.this.mUI.setWordResult((TranslationResult) msg.obj);
                    return;
                case 3:
                    if (TranslationModule.this.mActivity.isFrameValid()) {
                        TranslationModule.this.mActivity.requestPreviewFrame();
                        return;
                    } else {
                        sendEmptyMessageDelayed(3, 100);
                        return;
                    }
                default:
                    Log.d(TranslationModule.TAG, "unhandled msg " + msg.what);
                    return;
            }
        }
    };
    private final SettingsManager mSettingsManager;
    private boolean mSkipPreviewCallback;
    private TranslationAdapter mTranslationAdapter;
    private TranslationListener mTranslationListener = new TranslationListener() {
        public void onOcrDone(TranslationResult result, ScanType type) {
            if (!TranslationModule.this.mIsPause && type == ScanType.TRANSLATE_AREA) {
                TranslationModule.this.mMainHandler.obtainMessage(1, result).sendToTarget();
            }
        }

        public void onTranslationDone() {
            if (!TranslationModule.this.mUI.isWordDetect()) {
                TranslationModule.this.mTranslationAdapter.stopScan();
            } else if (!TranslationModule.this.mIsPause) {
                TranslationModule.this.mMainHandler.sendEmptyMessageDelayed(3, TranslationModule.DELAY_NEXT_PREVIEW_TIME);
            }
        }

        public void onDefinitionDone(TranslationResult result) {
            if (!TranslationModule.this.mIsPause && !result.isAborted()) {
                TranslationModule.this.mMainHandler.obtainMessage(2, result).sendToTarget();
            }
        }

        public void onOcrFail() {
            Log.d(TranslationModule.TAG, "onOcrFail");
            if (!TranslationModule.this.mUI.isWordDetect()) {
                TranslationModule.this.mTranslationAdapter.stopScan();
            }
        }
    };
    private TranslationModuleUI mUI;

    public TranslationModule(AppController app, int moduleId) {
        this.mSettingsManager = app.getSettingsManager();
        this.mModuleId = moduleId;
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        this.mTranslationAdapter = TranslationAdapterFactory.getAdapter(this.mAppContext, this.mSettingsManager, this.mTranslationListener);
        this.mUI = new TranslationModuleUI(this.mActivity, this.mActivity.getModuleLayoutRoot(), this.mTranslationAdapter, this);
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_TAB);
    }

    public void selectPhotoClick() {
        super.selectPhotoClick();
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_LONG_WORD_SELECT_IMAGE);
    }

    public void updateWordTranslateUI(boolean lock) {
        super.updateWordTranslateUI(lock);
        if (this.mUI != null) {
            this.mUI.updateWordLock(lock);
        }
    }

    public boolean isCaptureNeeded() {
        return this.mUI == null || !this.mUI.isWordDetect();
    }

    public boolean shouldConsumeCameraKey() {
        return this.mUI == null || (!this.mUI.isWordDetect() && this.mUI.isPreview());
    }

    public boolean isPickerNeeded() {
        return this.mUI == null || !this.mUI.isWordDetect();
    }

    public boolean isNetworkRequired() {
        return true;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1 && requestCode == 1 && !executeTask(3, data.getData(), null)) {
            cancelWorkTask(true);
        }
    }

    public void onResume() {
        super.onResume();
        Log.v(TAG, "onResume");
        this.mIsPause = false;
        this.mUI.onResume();
        switchScanType();
        TranslateModel.getInstance().setCallback(this.mUI);
    }

    public void onPause() {
        Log.v(TAG, "onPause");
        this.mIsPause = true;
        this.mTranslationAdapter.stopScan();
        this.mUI.onPause();
        this.mMainHandler.removeCallbacksAndMessages(null);
        cancelWorkTask(false);
        TranslateModel.getInstance().setCallback(null);
    }

    public void onDestroy() {
        Log.v(TAG, "onDestroy");
        super.onDestroy();
        this.mTranslationAdapter.clear();
        this.mUI.onDestroy();
    }

    public boolean onBackPressed() {
        if (this.mUI.onBackPressed()) {
            return true;
        }
        return false;
    }

    public boolean onPreviewFrame(byte[] data, CameraProxy camera) {
        if (!super.onPreviewFrame(data, camera) || this.mSkipPreviewCallback || this.mMainHandler.hasMessages(3)) {
            return false;
        }
        if (this.mUI.isWordDetect()) {
            this.mTranslationAdapter.scan(new ScanDataBean(this.mActivity.getAppUI().getPreviewBitmap(), ScanType.TRANSLATE_POINT, this.mUI.getWordRect()));
        }
        return true;
    }

    public boolean onPictureTaken(byte[] data, CameraProxy camera) {
        if (!super.onPictureTaken(data, camera)) {
            return false;
        }
        if (this.mUI.isWordDetect()) {
            return true;
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_TRANSLATE_LONG_WORD_TAKE_PICK);
        this.mMainHandler.removeCallbacksAndMessages(null);
        if (executeTask(1, null, this.mActivity.getAppUI().getPreviewBitmap())) {
            return true;
        }
        cancelWorkTask(true);
        return true;
    }

    public Object executeDoInBackground(Object... params) {
        switch (Integer.parseInt(params[0].toString())) {
            case 1:
                if (params[2] instanceof Bitmap) {
                    return PictureDecoder.decodeWithMaxHeight(params[2], Utils.getRealHeight());
                }
                Log.w(TAG, "null data");
                return null;
            case 3:
                String filePath = Utils.getFilePathFromUri((Uri) params[1]);
                if (isTaskCancelled()) {
                    return null;
                }
                return PictureDecoder.decodeSafelyWithSameScale(filePath, Exif.getOrientation(filePath), Utils.getRealHeight());
            default:
                Log.w(TAG, "illegal data = " + params[0]);
                return null;
        }
    }

    public void executeOnPostExecute(int workType, Object object) {
        if (object == null || isTaskCancelled()) {
            Log.w(TAG, "cancel task");
            clearTask();
            this.mActivity.getCaptureModule().startPreview();
            return;
        }
        clearTask();
        if (!this.mIsPause && !this.mUI.isWordDetect()) {
            this.mMainHandler.removeCallbacksAndMessages(null);
            Bitmap bitmap = (Bitmap) object;
            this.mUI.showTranslateView(bitmap);
            TranslateModel.getInstance().sendTranslate(bitmap, workType, this.mUI.getTakePhotoOrientation(false));
        }
    }

    public boolean isZoomNeeded() {
        if (this.mUI == null) {
            return true;
        }
        return this.mUI.isWordDetect();
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    public void switchScanType() {
        Log.v(TAG, "switchScanType");
        if (this.mActivity.isPaused() || !this.mUI.isWordDetect()) {
            this.mActivity.getCaptureModule().requestUpdateZoom(false);
            this.mTranslationAdapter.stopScan();
            finishCurrentTranslation();
            this.mMainHandler.removeMessages(3);
            this.mSkipPreviewCallback = true;
            return;
        }
        this.mActivity.getCaptureModule().requestUpdateZoom(true);
        this.mTranslationAdapter.initScan();
        this.mMainHandler.sendEmptyMessageDelayed(3, DETECT_PREVIEW_INTERVAL_MS);
        this.mSkipPreviewCallback = false;
    }

    public void finishCurrentTranslation() {
        this.mTranslationAdapter.finishCurrentTranslation();
        this.mMainHandler.removeMessages(1);
        this.mMainHandler.removeMessages(2);
    }

    public void onConnectivityChanged() {
        this.mUI.updatePrompt();
    }

    public void onOrientationChange(int orientation) {
        super.onOrientationChange(orientation);
        if (this.mUI != null) {
            this.mUI.updateTranslateOrientation(orientation);
        }
    }
}
