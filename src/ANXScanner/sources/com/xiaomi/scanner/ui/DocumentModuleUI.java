package com.xiaomi.scanner.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.ex.camera2.portability.CameraSettings;
import com.android.ex.camera2.portability.Size;
import com.xiaomi.recognizer.RecognizeResult;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.DocumentModule;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.translation.adapter.TranslationAdapter.TranslationResult;
import com.xiaomi.scanner.ui.LanguageChooser.LanguageSwitchListener;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.AppUtil.AppUtilListener;

public class DocumentModuleUI implements MessageDispatcher, LanguageSwitchListener {
    public static final int INDEX_GRAY_SCALE = 3;
    public static final int INDEX_OCR = 1;
    public static final int INDEX_PREVIEW = -1;
    public static final int INDEX_PROCESS = 0;
    public static final int INDEX_RECTIFY = 2;
    private static final String NotesActivity = "com.miui.notes.ui.NotesListActivity";
    private static final String NotesPackage = "com.miui.notes";
    private static final Tag TAG = new Tag("DocumentModuleUI");
    private boolean isTakePhotoType;
    private final ScanActivity mActivity;
    private final View mAppRoot;
    private AppUtilListener mAppUtilListener = new AppUtilListener() {
        public void packageInstalled(String packageName, boolean success, Object extra) {
            if (success && TextUtils.equals(packageName, DocumentModuleUI.NotesPackage)) {
                DocumentModuleUI.this.startNoteActivity(extra.toString());
            }
        }
    };
    private int mCurrentVisibleIndex = -1;
    private final ViewGroup mFullScreenRoot;
    private MessageDispatcher mMessageDispatcher;
    private final ViewGroup mModuleRoot;
    private DocumentOcrLayout mOcrLayout;
    private final DocumentModule mOwner;
    private DocumentPreviewCropView mPreviewCropView;
    private ProcessDocumentLayout mProcessLayout;
    private RecognizeResult mRecognizeResult;
    private Bitmap mRectifiedBitmap;
    private RectifyImageLayout mRectifyLayout;
    private Bitmap mSourceBitmap;

    public DocumentModuleUI(ScanActivity activity, DocumentModule owner, View parent) {
        this.mActivity = activity;
        this.mOwner = owner;
        this.mAppRoot = parent;
        this.mModuleRoot = (ViewGroup) this.mAppRoot.findViewById(R.id.module_ui_layout);
        this.mActivity.getLayoutInflater().inflate(R.layout.document_module, this.mModuleRoot, true);
        this.mFullScreenRoot = (FrameLayout) this.mAppRoot.findViewById(R.id.full_screen_panel_layout);
        this.mCurrentVisibleIndex = -1;
        this.mPreviewCropView = (DocumentPreviewCropView) this.mModuleRoot.findViewById(R.id.preview_crop_view);
        AppUI appUI = this.mActivity.getAppUI();
        if (appUI != null) {
            appUI.setTitle(R.string.document_title);
        }
    }

    public void setTakePhotoType(boolean isTakePhotoType) {
        this.isTakePhotoType = isTakePhotoType;
    }

    public boolean onBackPressed() {
        switch (this.mCurrentVisibleIndex) {
            case -1:
                return false;
            case 0:
                showPreviewUI();
                return true;
            case 1:
                showProcessUI();
                return true;
            case 2:
                if (this.mRectifiedBitmap == null) {
                    showPreviewUI();
                } else {
                    showProcessUI();
                }
                return true;
            case 3:
                showProcessUI();
                return true;
            default:
                Log.w(TAG, "unexpected " + this.mCurrentVisibleIndex);
                return false;
        }
    }

    public void setPreviewCropRect(float[] corners) {
        if (this.mPreviewCropView != null) {
            checkPreviewSize();
            this.mPreviewCropView.setCorners(corners);
        }
    }

    public void updateProcessResult(Bitmap source, Bitmap rectified, RecognizeResult result, boolean updateScaleView) {
        this.mSourceBitmap = source;
        this.mRectifiedBitmap = rectified;
        this.mRecognizeResult = result;
        Log.v(TAG, "updateProcessResult: index=" + this.mCurrentVisibleIndex + " result=" + result);
        if (updateScaleView) {
            updateGrayScaleView(true);
        }
        showProcessUI();
    }

    public void updateRectifyResult(Bitmap source, Bitmap rectified, RecognizeResult result, boolean updateScaleView) {
        this.mSourceBitmap = source;
        this.mRectifiedBitmap = rectified;
        this.mRecognizeResult = result;
        Log.v(TAG, "updateRectifyResult: index=" + this.mCurrentVisibleIndex + " result=" + result);
        if (updateScaleView) {
            updateGrayScaleView(true);
        }
        showRectifyUI();
    }

    private Point[] cornersToPoints(float[] corners) {
        int size = corners == null ? 0 : corners.length / 2;
        Log.v(TAG, "cornerSize=" + size);
        Point[] points = new Point[size];
        for (int i = 0; i < size; i++) {
            points[i] = new Point((int) corners[i * 2], (int) corners[(i * 2) + 1]);
        }
        return points;
    }

    private void showPreviewUI() {
        changeFrontUI(-1, 8, 8, 8, 8);
        this.mOwner.onModuleSwitch(-1);
    }

    private void showProcessUI() {
        if (this.mRectifiedBitmap == null || this.mRectifiedBitmap.isRecycled()) {
            Log.w(TAG, "drop this operation, bitmap is recycled");
            return;
        }
        changeFrontUI(0, 0, 0, 8, 8);
        if (this.mProcessLayout != null) {
            this.mProcessLayout.setRectifiedImage(this.mRectifiedBitmap);
        }
    }

    private void showOcrUI() {
        changeFrontUI(1, 0, 8, 8, 0);
    }

    private void showRectifyUI() {
        changeFrontUI(2, 0, 8, 0, 8);
        if (this.mRectifyLayout != null) {
            if (this.mSourceBitmap != null) {
                this.mRectifyLayout.setSourceImage(this.mSourceBitmap);
            }
            if (this.mRecognizeResult != null) {
                this.mRectifyLayout.setCropCorners(cornersToPoints(this.mRecognizeResult.quadrangleCorners));
            }
        }
    }

    private void changeFrontUI(int currentIndex, int fullScreenUI, int processUI, int rectifyUI, int ocrUI) {
        this.mCurrentVisibleIndex = currentIndex;
        this.mFullScreenRoot.setVisibility(fullScreenUI);
        if (this.mProcessLayout != null) {
            this.mProcessLayout.setVisibility(processUI);
        } else if (processUI == 0) {
            initProcessUI();
            this.mProcessLayout.setVisibility(processUI);
        }
        if (this.mRectifyLayout != null) {
            this.mRectifyLayout.setVisibility(rectifyUI);
        } else if (rectifyUI == 0) {
            initRectifyUI();
            this.mRectifyLayout.setVisibility(rectifyUI);
        }
        if (this.mOcrLayout != null) {
            this.mOcrLayout.setVisibility(ocrUI);
        } else if (ocrUI == 0) {
            initOcrUI();
            this.mOcrLayout.setVisibility(ocrUI);
        }
    }

    public boolean isShowPreviewUI() {
        return this.mCurrentVisibleIndex == -1;
    }

    public void setMessageDispatcher(MessageDispatcher messageDispatcher) {
        this.mMessageDispatcher = messageDispatcher;
    }

    public void updateOcrResult(TranslationResult result) {
        showOcrUI();
        if (result != null) {
            this.mOcrLayout.setResult(result.getOcrResult());
        } else {
            this.mOcrLayout.setResult("");
        }
    }

    private void checkPreviewSize() {
        if (!this.mPreviewCropView.hasSetPreviewSize()) {
            CameraSettings cameraSettings = this.mActivity.getCameraSettings();
            if (cameraSettings != null) {
                Size previewSize = cameraSettings.getCurrentPreviewSize();
                this.mPreviewCropView.setPreviewSize(previewSize.width(), previewSize.height());
            }
        }
    }

    private void initProcessUI() {
        if (this.mProcessLayout == null) {
            this.mActivity.getLayoutInflater().inflate(R.layout.document_process_layout, this.mFullScreenRoot, true);
            this.mProcessLayout = (ProcessDocumentLayout) this.mFullScreenRoot.findViewById(R.id.document_process_layout);
            this.mProcessLayout.setMessageDispatcher(this);
        }
    }

    private void initRectifyUI() {
        if (this.mRectifyLayout == null) {
            this.mActivity.getLayoutInflater().inflate(R.layout.document_rectify_layout, this.mFullScreenRoot, true);
            this.mRectifyLayout = (RectifyImageLayout) this.mFullScreenRoot.findViewById(R.id.crop_layout);
            this.mRectifyLayout.setMessageDispatcher(this);
            this.mRectifyLayout.setTitle(R.string.document_crop_title);
        }
    }

    private void initOcrUI() {
        if (this.mOcrLayout == null) {
            this.mActivity.getLayoutInflater().inflate(R.layout.document_ocr_layout, this.mFullScreenRoot, true);
            this.mOcrLayout = (DocumentOcrLayout) this.mFullScreenRoot.findViewById(R.id.document_ocr_layout);
            this.mOcrLayout.setLanguageChooserListener(this);
            this.mOcrLayout.setMessageDispatcher(this);
        }
    }

    public boolean dispatchMessage(int what, int sender, int receiver, Object extra1, Object extra2) {
        switch (sender) {
            case R.id.document_ocr_back /*2131558623*/:
                onOcrBack();
                break;
            case R.id.document_ocr_save /*2131558625*/:
                saveOcrResult(extra1.toString());
                break;
            case R.id.document_rectify /*2131558631*/:
                onRectify();
                UsageStatistics.trackEvent(this.isTakePhotoType ? UsageStatistics.KEY_DOCUMENT_TAKE_PHOTO_ADJUST : UsageStatistics.KEY_DOCUMENT_SELECT_ADJUST);
                break;
            case R.id.document_gray_pic /*2131558632*/:
                boolean gray = ((Boolean) extra1).booleanValue();
                onGrayScale((Boolean) extra1);
                UsageStatistics.recordWithParamEvent(this.isTakePhotoType ? UsageStatistics.KEY_DOCUMENT_TAKE_PHOTO_CHANGE_COLOR : UsageStatistics.KEY_DOCUMENT_SELECT_CHANGE_COLOR, gray ? "black_white" : "color");
                break;
            case R.id.document_ocr /*2131558633*/:
                onOcr();
                UsageStatistics.trackEvent(this.isTakePhotoType ? UsageStatistics.KEY_DOCUMENT_TAKE_PHOTO_RECOG_WORD : UsageStatistics.KEY_DOCUMENT_SELECT_RECOG_WORD);
                break;
            case R.id.document_retake_picture /*2131558635*/:
                onRetake();
                break;
            case R.id.document_save /*2131558636*/:
                onSaveDocument((Boolean) extra1);
                UsageStatistics.trackEvent(this.isTakePhotoType ? UsageStatistics.KEY_DOCUMENT_TAKE_PHOTO_SAVE : UsageStatistics.KEY_DOCUMENT_SELECT_SAVE);
                break;
            case R.id.cancel_rectify /*2131558641*/:
                onRectifyCanceled();
                break;
            case R.id.done_rectify /*2131558642*/:
                if (extra1 instanceof RecognizeResult) {
                    onRectifyDone((RecognizeResult) extra1);
                    break;
                }
                break;
            default:
                Log.w(TAG, "unexpected sender " + sender);
                break;
        }
        return true;
    }

    private void onRetake() {
        showPreviewUI();
    }

    private void onSaveDocument(Boolean grayScale) {
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.document_save, 2, grayScale, null);
        }
    }

    private void onOcr() {
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.document_ocr, 2, null, null);
        }
    }

    private void onOcrBack() {
        showProcessUI();
    }

    private void onRectify() {
        showRectifyUI();
    }

    private void onGrayScale(Boolean toGrayScale) {
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.document_gray_pic, 2, toGrayScale, null);
        }
    }

    public void onRectifyCanceled() {
        showPreviewUI();
    }

    private void onRectifyDone(RecognizeResult result) {
        if (this.mMessageDispatcher != null) {
            this.mMessageDispatcher.dispatchMessage(0, R.id.done_rectify, 2, result, null);
            return;
        }
        Log.w(TAG, "null messageDispatcher");
        showProcessUI();
    }

    private void saveOcrResult(final String result) {
        if (TextUtils.isEmpty(result) || this.mActivity == null || this.mActivity.isPaused()) {
            Log.w(TAG, "drop save operatioin result = " + result);
        } else {
            new AsyncTask<Void, Void, Boolean>() {
                protected Boolean doInBackground(Void... params) {
                    if (AppUtil.isPackageAvailable(DocumentModuleUI.this.mActivity.getAndroidContext(), DocumentModuleUI.NotesPackage)) {
                        return Boolean.valueOf(true);
                    }
                    AppUtil.installPackage(DocumentModuleUI.this.mActivity.getAndroidContext(), DocumentModuleUI.NotesPackage, DocumentModuleUI.this.mAppUtilListener, result);
                    return Boolean.valueOf(false);
                }

                protected void onPostExecute(Boolean available) {
                    super.onPostExecute(available);
                    if (available.booleanValue()) {
                        DocumentModuleUI.this.startNoteActivity(result);
                    }
                }
            }.execute(new Void[0]);
        }
    }

    private void startNoteActivity(final String result) {
        try {
            if (this.mActivity == null) {
                Log.w(TAG, "null activity drop operation");
            } else {
                this.mActivity.runOnUiThread(new Runnable() {
                    public void run() {
                        Intent intent = new Intent("android.intent.action.SEND");
                        intent.setClassName(DocumentModuleUI.NotesPackage, DocumentModuleUI.NotesActivity);
                        intent.putExtra("android.intent.extra.TEXT", result);
                        intent.setType("text/plain");
                        DocumentModuleUI.this.mActivity.startActivity(intent);
                    }
                });
            }
        } catch (Exception e) {
            Log.e(TAG, "save note fail", e);
        }
    }

    public void onLanguageSwitched(String newLanguage) {
        if (this.mCurrentVisibleIndex == 1) {
            onOcr();
        }
    }

    public void updateGrayScaleView(boolean toGrayScale) {
        initProcessUI();
        this.mProcessLayout.updateGrayScaleStatus(toGrayScale);
    }
}
