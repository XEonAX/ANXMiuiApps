package com.xiaomi.scanner.module;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.recognizer.Quadrangle;
import com.xiaomi.recognizer.RecognizeResult;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.camera.Exif;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationListener;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationResult;
import com.xiaomi.scanner.translation.adapter.TranslationAdapterFactory;
import com.xiaomi.scanner.translation.bean.ScanDataBean;
import com.xiaomi.scanner.translation.bean.ScanDataBean.ScanType;
import com.xiaomi.scanner.ui.DocumentModuleUI;
import com.xiaomi.scanner.util.ImageUtils;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.ToastUtils;
import com.xiaomi.scanner.util.Util;
import java.lang.ref.WeakReference;
import java.util.Locale;

public class DocumentModule extends BaseModule implements TranslationListener {
    private static final int MAX_PICTURE_SIZE = 2048;
    private static final int MSG_GRAY_DOCUMENT = 66;
    private static final int MSG_GRAY_DOCUMENT_RESULT = 61;
    private static final int MSG_OCR = 65;
    private static final int MSG_RECTIFY_DOCUMENT = 64;
    private static final int MSG_SAVE_DOCUMENT = 67;
    private static final int STATE_PREVIEW = 1;
    private static final int STATE_PROCESS = 2;
    private static final Tag TAG = new Tag("DocumentModule");
    private AppUI mAppUi;
    private boolean mIsPause;
    private Handler mMainHandler;
    private RecognizeResult mRecognizeResult;
    private Bitmap mRectifiedBitmap;
    private final SettingsManager mSettingsManager;
    private Bitmap mSourceBitmap;
    private int mState = 1;
    private TranslationAdapter mTranslationAdapter;
    private DocumentModuleUI mUI;
    private Handler mWorkerHandler;
    private HandlerThread mWorkerThread;

    private static class DocumentHandler extends Handler {
        WeakReference<DocumentModule> mDocumentReference;

        DocumentHandler(Looper looper, DocumentModule documentModule) {
            super(looper);
            this.mDocumentReference = new WeakReference(documentModule);
        }

        public void handleMessage(Message msg) {
            DocumentModule documentModule = (DocumentModule) this.mDocumentReference.get();
            if (documentModule == null || documentModule.mIsPause) {
                Log.d(DocumentModule.TAG, "drop msg " + msg.what);
                return;
            }
            switch (msg.what) {
                case 66:
                    long start;
                    if (!msg.obj.booleanValue()) {
                        start = System.currentTimeMillis();
                        Bitmap rectified = ImageUtils.rectifyBitmap(documentModule.mSourceBitmap, documentModule.mRecognizeResult);
                        Log.t(DocumentModule.TAG, "COLOR_DOCUMENT: cost=" + (System.currentTimeMillis() - start));
                        if (rectified != null) {
                            documentModule.mMainHandler.obtainMessage(61, rectified).sendToTarget();
                        }
                    } else if (!(documentModule.mRectifiedBitmap == null || documentModule.mRectifiedBitmap.isRecycled())) {
                        start = System.currentTimeMillis();
                        Bitmap grayBitmap = Quadrangle.covertToGray(documentModule.mRectifiedBitmap);
                        Log.t(DocumentModule.TAG, "GRAY_DOCUMENT: cost=" + (System.currentTimeMillis() - start));
                        if (grayBitmap != null) {
                            Log.t(DocumentModule.TAG, "GRAY_DOCUMENT: size=" + grayBitmap.getWidth() + "x" + grayBitmap.getHeight());
                            documentModule.mMainHandler.obtainMessage(61, grayBitmap).sendToTarget();
                        }
                    }
                    documentModule.mAppUi.dismissProgress();
                    return;
                case 67:
                    if (ImageUtils.saveJpeg(documentModule.mRectifiedBitmap) != null) {
                        String saveMsg = ScannerApp.getAndroidContext().getString(R.string.document_save_succeed_tip);
                        ToastUtils.showCenterToast(String.format(Locale.ENGLISH, saveMsg, new Object[]{jpegPath}));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private static class MainTaskHandler extends Handler {
        private WeakReference<DocumentModule> mDocumentReference;

        public MainTaskHandler(DocumentModule documentModule) {
            super(Looper.getMainLooper());
            this.mDocumentReference = new WeakReference(documentModule);
        }

        public void handleMessage(Message msg) {
            DocumentModule documentModule = (DocumentModule) this.mDocumentReference.get();
            if (documentModule == null || documentModule.mIsPause) {
                Log.d(DocumentModule.TAG, "drop msg " + msg.what);
                return;
            }
            switch (msg.what) {
                case 61:
                    documentModule.publishRectifyResult((Bitmap) msg.obj);
                    return;
                case 64:
                    if (msg.obj instanceof RecognizeResult) {
                        RecognizeResult result = msg.obj;
                        Log.v(DocumentModule.TAG, "RECTIFY: result=" + result + " bitmap=" + documentModule.mSourceBitmap);
                        documentModule.mRecognizeResult = result;
                        documentModule.publishRectifyResult(ImageUtils.rectifyBitmap(documentModule.mSourceBitmap, result));
                        documentModule.mAppUi.dismissProgress();
                        return;
                    }
                    return;
                case 65:
                    documentModule.mTranslationAdapter.scan(new ScanDataBean(documentModule.mRectifiedBitmap, ScanType.OCR));
                    return;
                default:
                    return;
            }
        }
    }

    public void onOcrDone(final TranslationResult result, ScanType type) {
        Log.v(TAG, "onOcrDone");
        this.mAppUi.dismissProgress();
        this.mTranslationAdapter.stopScan();
        if (!this.mIsPause && type == ScanType.OCR) {
            ScannerThreadPool.runOnUiThread(new Runnable() {
                public void run() {
                    DocumentModule.this.mUI.updateOcrResult(result);
                }
            });
        }
    }

    public void onTranslationDone() {
        Log.v(TAG, "onTranslationDone");
    }

    public void onDefinitionDone(TranslationResult result) {
        Log.v(TAG, "onDefinitionDone");
    }

    public void onOcrFail() {
        Log.v(TAG, "onOcrFail");
        this.mTranslationAdapter.stopScan();
    }

    public DocumentModule(AppController app, int moduleId) {
        this.mAppUi = app.getAppUI();
        this.mSettingsManager = app.getSettingsManager();
        this.mModuleId = moduleId;
        this.mMainHandler = new MainTaskHandler(this);
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        this.mTranslationAdapter = TranslationAdapterFactory.getAdapter(this.mAppContext, this.mSettingsManager, this);
        this.mUI = new DocumentModuleUI(this.mActivity, this, this.mActivity.getModuleLayoutRoot());
        this.mUI.setMessageDispatcher(this.mActivity.getAppUI());
        UsageStatistics.trackEvent(UsageStatistics.KEY_DOCUMENT_TAB);
    }

    public void onStart() {
        Log.v(TAG, "onStart");
        if (this.mWorkerThread == null || !this.mWorkerThread.isAlive()) {
            this.mWorkerThread = new HandlerThread(TAG.toString());
            this.mWorkerThread.start();
            this.mWorkerHandler = new DocumentHandler(this.mWorkerThread.getLooper(), this);
        }
    }

    public void onResume() {
        super.onResume();
        Log.v(TAG, "onResume");
        this.mIsPause = false;
        if (this.mUI.isShowPreviewUI()) {
            setState(1);
        }
    }

    public void onPause() {
        Log.v(TAG, "onPause");
        this.mIsPause = true;
        cancelWorkTask(false);
    }

    public void onStop() {
        Log.v(TAG, "onStop");
        this.mTranslationAdapter.stopScan();
        if (this.mWorkerHandler != null) {
            this.mWorkerHandler.removeCallbacksAndMessages(null);
            this.mWorkerThread.quit();
            this.mWorkerThread = null;
            this.mWorkerHandler = null;
        }
        this.mMainHandler.removeCallbacksAndMessages(null);
    }

    public void onDestroy() {
        Log.v(TAG, "onDestroy");
        super.onDestroy();
        if (!(this.mRectifiedBitmap == null || this.mRectifiedBitmap.isRecycled())) {
            this.mRectifiedBitmap.recycle();
            this.mRectifiedBitmap = null;
        }
        if (!(this.mSourceBitmap == null || this.mSourceBitmap.isRecycled())) {
            this.mSourceBitmap.recycle();
            this.mSourceBitmap = null;
        }
        if (this.mRecognizeResult != null) {
            this.mRecognizeResult = null;
        }
        this.mTranslationAdapter.clear();
    }

    public boolean isCaptureNeeded() {
        return true;
    }

    public boolean shouldConsumeCameraKey() {
        return getState() == 1;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 1:
                    Uri imgUri;
                    if (data != null) {
                        imgUri = data.getData();
                    } else {
                        imgUri = null;
                    }
                    if (imgUri == null || !executeTask(3, imgUri, null)) {
                        cancelWorkTask(true);
                        return;
                    }
                    setState(2);
                    this.mAppUi.showProgressView((int) R.string.document_rectify_tip_msg, 0);
                    return;
                default:
                    Log.d(TAG, "unexpected request " + requestCode);
                    return;
            }
        }
    }

    public Object executeDoInBackground(Object... params) {
        Bitmap source = null;
        switch (Integer.parseInt(params[0].toString())) {
            case 1:
                byte[] data = (byte[]) params[1];
                if (data != null) {
                    int rotation = Exif.getOrientation(data);
                    Log.v(TAG, "rotation=" + rotation);
                    source = PictureDecoder.decode(this.mAppContext, data, 1, rotation, false);
                    UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_DOCUMENT_SERVER_REQ, "take_photo");
                    break;
                }
            case 3:
                String filePath = Utils.getFilePathFromUri((Uri) params[1]);
                source = PictureDecoder.decodeSafely(filePath, Exif.getOrientation(filePath), false);
                UsageStatistics.recordWithParamEvent(UsageStatistics.KEY_DOCUMENT_SERVER_REQ, "select_image");
                break;
            default:
                Log.w(TAG, "illegal data = " + params[0]);
                break;
        }
        if (isTaskCancelled()) {
            recycleBitmap(source);
            return Boolean.valueOf(false);
        }
        if (source != null) {
            source = PictureDecoder.scale(source, (Util.screenWidth * source.getWidth()) / source.getHeight(), Util.screenWidth);
        }
        RecognizeResult result = detectBitmap(source);
        if (result != null) {
            return Boolean.valueOf(resetRectifyData(source, null, result));
        }
        Log.w(TAG, "null RecognizeResult");
        recycleBitmap(source);
        return Boolean.valueOf(false);
    }

    private void recycleBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    public void executeOnPostExecute(int workType, Object object) {
        this.mUI.setTakePhotoType(workType == 1);
        this.mAppUi.dismissProgress();
        if (!Boolean.parseBoolean(object.toString()) || isTaskCancelled()) {
            Log.w(TAG, "cancel task");
            clearTask();
            setState(1);
            if (!this.mIsPause) {
                ToastUtils.showCenterToast((int) R.string.document_recognize_fail_tip);
                this.mActivity.getCaptureModule().startPreview();
                return;
            }
            return;
        }
        UsageStatistics.trackEvent(UsageStatistics.KEY_DOCUMENT_SERVER_RESULT);
        clearTask();
        this.mUI.updateRectifyResult(this.mSourceBitmap, this.mRectifiedBitmap, this.mRecognizeResult, true);
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
            setState(2);
            this.mAppUi.showProgressView((int) R.string.document_rectify_tip_msg, 0);
        } else {
            cancelWorkTask(true);
        }
        return true;
    }

    public boolean onPreviewFrame(byte[] data, CameraProxy camera) {
        if (super.onPreviewFrame(data, camera)) {
            return true;
        }
        return false;
    }

    public boolean onBackPressed() {
        if (this.mUI.onBackPressed()) {
            return true;
        }
        return false;
    }

    public boolean handleMessage(int what, int sender, Object extra1, Object extra2) {
        if (this.mIsPause) {
            Log.v(TAG, "handleMessage drop operation while pause state what=" + what + ", sender=" + sender);
            return false;
        }
        switch (sender) {
            case R.id.document_gray_pic /*2131558632*/:
                this.mAppUi.showProgressView(((Boolean) extra1).booleanValue() ? R.string.document_grayscale_tip_msg : R.string.document_color_picture_tip, 0);
                this.mWorkerHandler.obtainMessage(66, extra1).sendToTarget();
                break;
            case R.id.document_ocr /*2131558633*/:
                this.mAppUi.showProgressView((int) R.string.document_ocr_tip_msg, 0);
                this.mMainHandler.obtainMessage(65).sendToTarget();
                break;
            case R.id.document_save /*2131558636*/:
                this.mWorkerHandler.obtainMessage(67, extra1).sendToTarget();
                break;
            case R.id.done_rectify /*2131558642*/:
                setState(2);
                if (!isCornerChanged((RecognizeResult) extra1, this.mRecognizeResult)) {
                    Log.v(TAG, "corner not change, cancle");
                    this.mUI.onRectifyCanceled();
                    break;
                }
                this.mAppUi.showProgressView((int) R.string.document_rectify_tip_msg, 0);
                this.mUI.updateGrayScaleView(true);
                this.mMainHandler.obtainMessage(64, extra1).sendToTarget();
                break;
            default:
                Log.d(TAG, "unexpected sender " + sender);
                break;
        }
        return super.handleMessage(what, sender, extra1, extra2);
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    private boolean isCornerChanged(RecognizeResult left, RecognizeResult right) {
        if (left == null || right == null || left.quadrangleCorners.length != right.quadrangleCorners.length) {
            return true;
        }
        for (int i = 0; i < left.quadrangleCorners.length; i++) {
            if (Math.abs(left.quadrangleCorners[i] - right.quadrangleCorners[i]) > 1.0f) {
                Log.v(TAG, String.format("corner[%d]: %f != %f", new Object[]{Integer.valueOf(i), Float.valueOf(left.quadrangleCorners[i]), Float.valueOf(right.quadrangleCorners[i])}));
                return true;
            }
        }
        return false;
    }

    public void requestPreviewFrame() {
    }

    public void onModuleSwitch(int module) {
        if (!this.mIsPause && module == -1) {
            setState(1);
            this.mActivity.getCaptureModule().startPreview();
        }
    }

    private RecognizeResult detectBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.getHeight() < 1 || bitmap.getWidth() < 1) {
            Log.w(TAG, "detectBitmap: null bitmap!");
            return null;
        }
        long start = System.currentTimeMillis();
        RecognizeResult result = Quadrangle.detectBitmap(bitmap);
        Log.v(TAG, "detectBitmap: cost=" + (System.currentTimeMillis() - start));
        if (result == null) {
            Log.w(TAG, "detectBitmap: failed!");
            return null;
        }
        Log.v(TAG, "detectBitmap: result=" + result);
        return result;
    }

    private boolean resetRectifyData(Bitmap source, Bitmap rectified, RecognizeResult result) {
        Log.v(TAG, "source=" + source + " rectified=" + rectified);
        if (this.mIsPause) {
            if (source != null) {
                source.recycle();
            }
            return false;
        }
        if (!(source == null || source.equals(this.mSourceBitmap))) {
            if (!(this.mSourceBitmap == null || this.mSourceBitmap.isRecycled())) {
                Log.v(TAG, "recycle " + this.mSourceBitmap);
            }
            this.mSourceBitmap = source;
        }
        if (!(rectified == null || rectified.equals(this.mRectifiedBitmap))) {
            if (!(this.mRectifiedBitmap == null || this.mRectifiedBitmap.isRecycled())) {
                Log.v(TAG, "recycle " + this.mRectifiedBitmap);
            }
            this.mRectifiedBitmap = rectified;
        }
        if (result != null) {
            this.mRecognizeResult = result;
        }
        return true;
    }

    private void publishRectifyResult(Bitmap rectified) {
        if (rectified == null || !resetRectifyData(null, rectified, null)) {
            this.mUI.onRectifyCanceled();
        } else {
            this.mUI.updateProcessResult(this.mSourceBitmap, this.mRectifiedBitmap, this.mRecognizeResult, false);
        }
    }

    private synchronized void setState(int state) {
        this.mState = state;
    }

    private synchronized int getState() {
        return this.mState;
    }
}
