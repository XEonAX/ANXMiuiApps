package com.xiaomi.scanner.module;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.module.study.app.FeedSearchActivity;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.ui.StudyModuleUI;
import com.xiaomi.scanner.util.DeleteFileTask;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;

public class StudyModule extends BaseModule {
    private static final Tag TAG = new Tag("StudyModule");
    private AppUI mAppUi;
    private String mCapturedFile;
    private long mInitTime;
    private boolean mIsPause;
    OnKeyListener mOnKeyListener = new OnKeyListener() {
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            if (keyCode == 4 && event.getAction() == 1) {
                StudyModule.this.cancelWorkTask(true);
            }
            return false;
        }
    };
    private StudyModuleUI mUI;

    public StudyModule(AppController app, int moduleId) {
        this.mModuleId = moduleId;
        this.mAppUi = app.getAppUI();
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        this.mUI = new StudyModuleUI(activity, this.mActivity.getModuleLayoutRoot());
        this.mInitTime = System.currentTimeMillis();
        if (!TextUtils.isEmpty(this.mExtraShareImagePath)) {
            requestCropImage(this.mExtraShareImagePath);
            this.mNeedFinishActivity = true;
        }
        recordExtraCount(this.mActivity.getIntent(), UsageStatistics.PARAM_STUDY_CALLER, UsageStatistics.KEY_STUDY_CALLED_COUNT);
    }

    public void onResume() {
        super.onResume();
        Log.v(TAG, "onResume");
        this.mIsPause = false;
        if (this.mUI != null) {
            this.mUI.onResume();
        }
    }

    public void onPause() {
        Log.v(TAG, "onPause");
        this.mIsPause = true;
        cancelWorkTask(false);
    }

    public void onDestroy() {
        Log.v(TAG, "onStop");
        UsageStatistics.trackEvent(UsageStatistics.KEY_STUDY_ACTIVE_TIME, System.currentTimeMillis() - this.mInitTime);
    }

    public boolean isCaptureNeeded() {
        return true;
    }

    public boolean isNetworkRequired() {
        return true;
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode != -1) {
            deleteCapturedFile();
            return;
        }
        switch (requestCode) {
            case 1:
                Uri imgUri = data.getData();
                if (imgUri != null) {
                    requestCropImage(Utils.getFilePathFromUri(imgUri));
                    return;
                }
                return;
            case 2:
                deleteCapturedFile();
                searchImage(getCroppedImagePath());
                return;
            default:
                Log.d(TAG, "onActivityResult: unexpected request " + requestCode);
                return;
        }
    }

    public boolean onPictureTaken(byte[] data, CameraProxy camera) {
        if (!super.onPictureTaken(data, camera)) {
            return false;
        }
        if (executeTask(1, this.mActivity.getImagePath(), data)) {
            this.mAppUi.showProgressView((int) R.string.study_rotate_picture, 0);
        } else {
            cancelWorkTask(true);
        }
        return true;
    }

    public Object executeDoInBackground(Object... params) {
        String jpegPath = PictureDecoder.saveJpeg(params[1].toString(), (byte[]) params[2], false, String.valueOf(System.currentTimeMillis()));
        if (!isTaskCancelled() && !TextUtils.isEmpty(jpegPath)) {
            return jpegPath;
        }
        Log.w(TAG, "jpegPath =" + jpegPath);
        return null;
    }

    public void executeOnPostExecute(Object object) {
        this.mAppUi.dismissProgress();
        if (isTaskCancelled() || object == null) {
            Log.w(TAG, "drop this data, object=" + object);
            clearTask();
            this.mActivity.getCaptureModule().startPreview();
            return;
        }
        clearTask();
        requestCropImage(object.toString());
    }

    protected void cancelWorkTask(boolean resetPreview) {
        super.cancelWorkTask(resetPreview);
        this.mAppUi.dismissProgress();
    }

    private void deleteCapturedFile() {
        ScannerThreadPool.poolExecute(new DeleteFileTask(this.mCapturedFile));
        this.mCapturedFile = null;
    }

    private void searchImage(String imgPath) {
        if (imgPath == null) {
            Log.w(TAG, "searchImage: null path");
            return;
        }
        Intent intent = new Intent(this.mActivity, FeedSearchActivity.class);
        intent.putExtra(FeedSearchActivity.SEARCH_PIC_URL, imgPath);
        this.mActivity.startActivity(intent);
        if (this.mNeedFinishActivity) {
            this.mActivity.finish();
        }
    }

    private void requestCropImage(String imagePath) {
        Intent intent = getCropImageIntent(imagePath, getCroppedImagePath(), this.mActivity.getString(R.string.crop_title_study), this.mActivity.getString(R.string.action_search), -1, -1);
        if (intent != null) {
            this.mActivity.startActivityForResult(intent, 2);
        } else {
            Log.d(TAG, "requestCropImage: null intent");
        }
    }
}
