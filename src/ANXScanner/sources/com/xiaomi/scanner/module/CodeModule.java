package com.xiaomi.scanner.module;

import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.android.ex.camera2.portability.CameraSettings;
import com.android.ex.camera2.portability.Size;
import com.google.zxing.Result;
import com.taobao.ma.common.result.MaResult;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.app.QRResultActivity;
import com.xiaomi.scanner.module.code.codec.DecodeParams;
import com.xiaomi.scanner.module.code.codec.QRCodeDecoder;
import com.xiaomi.scanner.module.code.codec.QRCodeMatcher;
import com.xiaomi.scanner.module.code.codec.QRCodeScanner;
import com.xiaomi.scanner.module.code.codec.QRCodeScanner.QRCodeScannerListener;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.module.code.utils.AlipayListener;
import com.xiaomi.scanner.module.code.utils.AllCanPayListener;
import com.xiaomi.scanner.module.code.utils.BarcodeScannerListener;
import com.xiaomi.scanner.module.code.utils.CustomUrlListener;
import com.xiaomi.scanner.module.code.utils.MiAccountListener;
import com.xiaomi.scanner.module.code.utils.MiPayListener;
import com.xiaomi.scanner.module.code.utils.MiPayWalletListener;
import com.xiaomi.scanner.module.code.utils.URLInspector;
import com.xiaomi.scanner.module.code.utils.URLInspector.OnInspectedListener;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.module.code.utils.WeChatPayListener;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.CodeModuleUI;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.CameraUtil;
import com.xiaomi.scanner.util.DeleteFileTask;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ToastUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class CodeModule extends BaseModule implements QRCodeScannerListener {
    private static final long DETECT_PREVIEW_INTERVAL_MS = 100;
    private static final int MSG_CHECK_PREVIEW = 11;
    private static final int MSG_REQUEST_FRAME = 12;
    public static final String RESULT_EXTRA_RESULT = "result";
    public static final String RESULT_EXTRA_TYPE = "type";
    private static final Tag TAG = new Tag("CodeModule");
    private String mCallingApp;
    private DecodeParams mDecodeParams;
    private Runnable mInitRunnable;
    private long mInitTime;
    private boolean mIsPause;
    private ArrayList<BarcodeScannerListener> mListeners;
    private Handler mMainHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (CodeModule.this.mIsPause) {
                Log.v(CodeModule.TAG, "drop msg " + msg.what);
                return;
            }
            switch (msg.what) {
                case 11:
                    CodeModule.this.checkPreviewReady();
                    return;
                case 12:
                    CodeModule.this.requestPreviewFrame();
                    return;
                default:
                    Log.w(CodeModule.TAG, "unexpected msg " + msg.what);
                    return;
            }
        }
    };
    private MainWorkTask mMainWorkTask;
    private QRCodeScanner mQRScanner;
    private CodeModuleUI mUI;

    private static class MainWorkTask extends AsyncTask<Object, Void, Result> {
        private String mFilePath;
        private boolean mIsCropped;
        private WeakReference<CodeModule> weakModule;

        MainWorkTask(CodeModule module) {
            this.weakModule = new WeakReference(module);
        }

        protected Result doInBackground(Object... params) {
            this.mFilePath = params[0].toString();
            this.mIsCropped = Boolean.parseBoolean(params[1].toString());
            if (TextUtils.isEmpty(this.mFilePath)) {
                Log.w(CodeModule.TAG, "MainWorkTask null file path. cropped=" + this.mIsCropped);
                return null;
            }
            Log.v(CodeModule.TAG, "MainWorkTask filePath=" + this.mFilePath + ", isCropped=" + this.mIsCropped);
            if (isCancelled()) {
                return null;
            }
            UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_DECODE_IMAGE_ZXING_COUNT);
            UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_AR_CODE_SERVER_REQ, "select_image");
            return QRCodeDecoder.decode(this.mFilePath);
        }

        protected void onPostExecute(Result result) {
            CodeModule module = (CodeModule) this.weakModule.get();
            if (module != null) {
                if (isCancelled()) {
                    Log.w(CodeModule.TAG, "drop this search task cancled");
                    module.deleteCropImage();
                } else if (TextUtils.isEmpty(this.mFilePath)) {
                    ToastUtils.showCenterToast((int) R.string.error_get_image);
                    module.deleteCropImage();
                    Log.w(CodeModule.TAG, "drop this search, null file path");
                } else {
                    if (result != null) {
                        module.handleDecodeSuccess(result.getText());
                    } else if (this.mIsCropped) {
                        ToastUtils.showCenterToast((int) R.string.recognize_fail);
                    } else {
                        module.requestCropImage(this.mFilePath);
                    }
                    module.deleteCropImage();
                    module.clearMainTask();
                }
            }
        }
    }

    public CodeModule(AppController app, int moduleId) {
        this.mModuleId = moduleId;
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        UsageStatistics.trackEvent(UsageStatistics.KEY_AR_CODE_TAB);
        this.mInitTime = System.currentTimeMillis();
        Intent intent = activity.getIntent();
        this.mCallingApp = intent.getStringExtra(AppUtil.EXTRA_INTENT_MODULE_PACKAGE_NAME);
        if (TextUtils.equals(intent.getAction(), "android.intent.action.SEND")) {
            recordExtraCount(UsageStatistics.PARAM_BARCODE_CALLER_ACTION_SEND, UsageStatistics.PARAM_BARCODE_CALLER, UsageStatistics.KEY_BARCODE_CALLED_COUNT);
        } else if (intent.getData() != null) {
            recordExtraCount(intent, UsageStatistics.PARAM_BARCODE_CALLER, UsageStatistics.KEY_BARCODE_CALLED_COUNT);
        } else {
            String appName = intent.getStringExtra(AppUtil.EXTRA_INTENT_MODULE_APP);
            if (TextUtils.isEmpty(appName)) {
                appName = this.mCallingApp;
            }
            recordExtraCount(appName, UsageStatistics.PARAM_BARCODE_CALLER, UsageStatistics.KEY_BARCODE_CALLED_COUNT);
        }
        initBarcodeListener();
        if (this.mActivity.checkAppStartRun()) {
            onCTAAndPermissionAgree();
        }
        this.mUI = new CodeModuleUI(this.mActivity, this, this.mActivity.getModuleLayoutRoot(), this.mCallingApp);
        this.mInitRunnable = new Runnable() {
            public void run() {
                CodeModule.this.mQRScanner = new QRCodeScanner(CodeModule.this.mAppContext);
                CodeModule.this.mQRScanner.setQRCodeScannerListener(CodeModule.this);
                CodeModule.this.mQRScanner.initScan();
            }
        };
        this.mMainHandler.postDelayed(this.mInitRunnable, 200);
    }

    private void initBarcodeListener() {
        this.mListeners = new ArrayList();
        this.mListeners.add(new MiAccountListener(this.mActivity));
        this.mListeners.add(new MiPayListener(this.mActivity));
        this.mListeners.add(new MiPayWalletListener(this.mActivity));
        if (!DeviceUtil.isInternationalBuild()) {
            this.mListeners.add(new AllCanPayListener(this.mActivity));
            this.mListeners.add(new AlipayListener(this.mActivity));
        }
        this.mListeners.add(new WeChatPayListener(this.mActivity));
        this.mListeners.add(new CustomUrlListener(this.mActivity));
    }

    public void selectPhotoClick() {
        super.selectPhotoClick();
        UsageStatistics.trackEvent(UsageStatistics.KEY_AR_CODE_SELECT_PHOTO_BTN);
    }

    public void onStart() {
        Log.v(TAG, "onStart");
    }

    private void checkPreviewReady() {
        if (!this.mActivity.isPreviewReady(getModuleId()) || this.mQRScanner == null) {
            Log.v(TAG, "check preview status later");
            this.mMainHandler.sendEmptyMessageDelayed(11, DETECT_PREVIEW_INTERVAL_MS);
            return;
        }
        this.mQRScanner.start();
    }

    public void onResume() {
        super.onResume();
        Log.v(TAG, "onResume");
        ConfigModel.instance.initCacheData();
        this.mIsPause = false;
        this.mInitTime = System.currentTimeMillis();
        if (this.mUI != null) {
            this.mUI.onResume();
        }
        checkPreviewReady();
    }

    public void onPause() {
        Log.v(TAG, "onPause");
        this.mIsPause = true;
        if (this.mUI != null) {
            this.mUI.onPause();
        }
        ConfigModel.instance.clearAllCacheData();
    }

    public void onStop() {
        Log.v(TAG, "onStop");
        if (this.mQRScanner != null) {
            this.mQRScanner.quitScan();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.mMainHandler.removeCallbacksAndMessages(null);
        this.mMainHandler.removeCallbacks(this.mInitRunnable);
        if (this.mMainWorkTask != null) {
            this.mMainWorkTask.cancel(true);
            this.mMainWorkTask = null;
        }
        if (this.mUI != null) {
            this.mUI.onDestroy();
        }
        if (this.mListeners != null) {
            this.mListeners.clear();
            this.mListeners = null;
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_ACTIVE_TIME, System.currentTimeMillis() - this.mInitTime);
    }

    public void requestPreviewFrame() {
        if (isPause() || !this.mActivity.isFrameValid()) {
            Log.v(TAG, "check preview later");
            this.mMainHandler.removeMessages(12);
            this.mMainHandler.sendEmptyMessageDelayed(12, DETECT_PREVIEW_INTERVAL_MS);
            return;
        }
        this.mActivity.requestPreviewFrame();
    }

    private void handleDecodeSuccess(final String text) {
        Log.v(TAG, "handleDecodeSuccess");
        UsageStatistics.trackEvent(UsageStatistics.KEY_AR_CODE_SERVER_RESULT);
        final QRCodeType type = QRCodeMatcher.match(text);
        recordDecodeTime(type);
        Intent intent = new Intent();
        intent.putExtra("result", text);
        intent.putExtra("type", type.ordinal());
        intent.putExtra(AppUtil.EXTRA_INTENT_MODULE_PACKAGE_NAME, this.mCallingApp);
        if (this.mIsBackToThirdApp) {
            this.mActivity.setResult(-1, intent);
            this.mActivity.finish();
            return;
        }
        if (!(this.mListeners == null || this.mListeners.isEmpty())) {
            for (int i = 0; i < this.mListeners.size(); i++) {
                if (((BarcodeScannerListener) this.mListeners.get(i)).handleBarcode(text, type)) {
                    checkToFinishActivity();
                    return;
                }
            }
        }
        if (type == QRCodeType.WEB_URL) {
            URLInspector request = new URLInspector();
            request.setOnReceivedDataListener(new OnInspectedListener() {
                public void onInspected(int risk) {
                    if (risk == 0 && CodeModule.this.launchActionView(Uri.parse(text))) {
                        CodeModule.this.checkToFinishActivity();
                        return;
                    }
                    CodeModule.this.launchQRResultActivity(text, type);
                    CodeModule.this.checkToFinishActivity();
                }
            });
            request.execute(new String[]{text});
            return;
        }
        Log.i(TAG, "no listener catch,launch QRResultActivity");
        launchQRResultActivity(text, type);
        checkToFinishActivity();
    }

    private void launchQRResultActivity(String text, QRCodeType type) {
        Intent intent = new Intent();
        intent.putExtra("result", text);
        intent.putExtra("type", type.ordinal());
        intent.putExtra(AppUtil.EXTRA_INTENT_MODULE_PACKAGE_NAME, this.mCallingApp);
        intent.setClass(this.mActivity, QRResultActivity.class);
        intent.addFlags(268435456);
        this.mActivity.startActivity(intent);
    }

    private boolean launchActionView(Uri uri) {
        try {
            this.mActivity.startActivity(new Intent("android.intent.action.VIEW", uri));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private void recordDecodeTime(QRCodeType barcodeType) {
        Map param = new HashMap(1);
        param.put(UsageStatistics.PARAM_BARCODE_TYPE, barcodeType.toString());
        UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_DECODE_COUNT, param);
        UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_DECODE_TIME, System.currentTimeMillis() - this.mInitTime, param);
    }

    public boolean onPreviewFrame(byte[] data, CameraProxy camera) {
        if (!super.onPreviewFrame(data, camera)) {
            return false;
        }
        CameraSettings settings = this.mActivity.getCameraSettings();
        if (settings == null) {
            Log.v(TAG, "onPreviewFrame: settings is null.");
            return false;
        }
        Size size = settings.getCurrentPreviewSize();
        if (size == null) {
            Log.v(TAG, "onPreviewFrame: size is null.");
            return false;
        }
        int width = size.width();
        int height = size.height();
        if (width <= 0 || height <= 0) {
            Log.v(TAG, "onPreviewFrame: width=" + width + ",height=" + height);
            return false;
        }
        int orientation = camera.getCharacteristics().getPreviewOrientation(CameraUtil.getDisplayRotation());
        Rect framingRectInPreview = this.mUI.getFramingRectInPreview(width, height, orientation);
        if (framingRectInPreview == null) {
            requestPreviewFrame();
            return false;
        }
        DecodeParams decodeParams = new DecodeParams(data, settings.getCurrentPreviewFormat(), width, height, orientation, framingRectInPreview);
        if (this.mQRScanner != null) {
            this.mQRScanner.scan(decodeParams);
        }
        return true;
    }

    public boolean isZoomNeeded() {
        return true;
    }

    public void onCameraClosed() {
        if (this.mQRScanner != null) {
            this.mQRScanner.clearMessage();
        }
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    private void requestCropImage(String imagePath) {
        Intent intent = getCropImageIntent(imagePath, getCroppedImagePath(), this.mActivity.getString(R.string.barcode_into_rectangle), this.mActivity.getString(R.string.recognize), 1, 1);
        if (intent != null) {
            Toast.makeText(this.mActivity.getAndroidContext(), R.string.drag_barcode_into_frame, 0).show();
            this.mActivity.startActivityForResult(intent, 2);
            return;
        }
        Log.d(TAG, "requestCropImage: null intent");
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode != -1) {
            Log.e(TAG, "resultCode error");
            return;
        }
        switch (requestCode) {
            case 1:
            case 2:
                String filePath;
                boolean isCropped = requestCode == 2;
                if (isCropped) {
                    filePath = getCroppedImagePath();
                } else {
                    filePath = Utils.getFilePathFromUri(data.getData());
                }
                executeMainTask(filePath, isCropped);
                UsageStatistics.trackEvent(UsageStatistics.KEY_AR_CODE_SELECT_CONFIRM);
                return;
            default:
                Log.w(TAG, "unexpected request " + requestCode);
                return;
        }
    }

    private void executeMainTask(String path, boolean crop) {
        if (TextUtils.isEmpty(path)) {
            Log.w(TAG, "executeMainTask fail null path");
            return;
        }
        if (this.mMainWorkTask != null) {
            this.mMainWorkTask.cancel(true);
            Log.w(TAG, "cancel current task and start next task, path=" + path);
            this.mNeedFinishActivity = false;
        }
        this.mMainWorkTask = new MainWorkTask(this);
        this.mMainWorkTask.execute(new Object[]{path, Boolean.valueOf(crop)});
    }

    private void clearMainTask() {
        this.mMainWorkTask = null;
    }

    private void deleteCropImage() {
        String path = getCroppedImagePath();
        if (!TextUtils.isEmpty(path)) {
            ScannerThreadPool.poolExecute(new DeleteFileTask(path));
        }
    }

    private void checkToFinishActivity() {
        if (this.mNeedFinishActivity && this.mActivity != null) {
            this.mActivity.finish();
        }
    }

    public Object executeDoInBackground(Object... params) {
        return null;
    }

    public void executeOnPostExecute(Object object) {
        clearTask();
    }

    public void onCTAAndPermissionAgree() {
        initShoppingSdk();
        if (!TextUtils.isEmpty(this.mExtraShareImagePath)) {
            this.mNeedFinishActivity = true;
            executeMainTask(this.mExtraShareImagePath, false);
            this.mExtraShareImagePath = null;
        }
    }

    private void onDecoded(Result result) {
        if (this.mActivity != null && !this.mActivity.isPaused()) {
            this.mActivity.playBeepAndVibrate();
            UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_ZXING_SUCCESS_COUNT);
            String resultString = result == null ? null : result.getText();
            Log.v(TAG, "zxing onDecoded");
            if (!TextUtils.isEmpty(resultString)) {
                handleDecodeSuccess(resultString);
            } else if (TextUtils.isEmpty(this.mCallingApp)) {
                handleDecodeSuccess(resultString);
            } else {
                this.mActivity.finish();
            }
        }
    }

    public void onDecoded(MaResult maResult, Result result) {
        if (maResult == null && result == null) {
            Log.e(TAG, "onDecoded all null");
        } else if (this.mActivity != null && !this.mActivity.isPaused()) {
            if (result != null) {
                onDecoded(result);
                return;
            }
            this.mActivity.playBeepAndVibrate();
            this.mDecodeParams = null;
            UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_TAOBAO_SUCCESS_COUNT);
            String resultString = maResult.getText();
            Log.v(TAG, "onDecoded maResult");
            if (TextUtils.isEmpty(resultString)) {
                if (TextUtils.isEmpty(this.mCallingApp)) {
                    handleDecodeSuccess(resultString);
                } else {
                    this.mActivity.finish();
                }
            } else if (!PailitaoManager.showMaPage(this.mActivity, maResult)) {
                handleDecodeSuccess(resultString);
            }
        }
    }
}
