package com.xiaomi.scanner.module;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore.Images.Media;
import com.android.ex.camera2.portability.CameraAgent.CameraProxy;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.AppUI;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.Utils;
import com.xiaomi.scanner.util.DeleteFileTask;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.PictureDecoder;
import com.xiaomi.scanner.util.ScannerThreadPool;
import com.xiaomi.scanner.util.Util;
import java.io.File;

public class AmazonShoppingModule extends BaseModule {
    private static final int ERROR_CODE = 2;
    private static final int FOUND_URI = 1;
    private static final Tag TAG = new Tag("AmazonShoppingModule");
    private AppUI mAppUi;
    private String mCapturedFile;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    Log.d(AmazonShoppingModule.TAG, "AmazonShoppingModule handleMessage - FOUND_URI");
                    AmazonShoppingModule.this.launchAmazonAssistant();
                    return;
                case 2:
                    Log.d(AmazonShoppingModule.TAG, "AmazonShoppingModule handleMessage - ERROR_CODE");
                    return;
                default:
                    return;
            }
        }
    };
    private long mInitTime;
    private boolean mIsPause;
    private Uri mUrl = null;

    public AmazonShoppingModule(AppController app, int moduleId) {
        Log.d(TAG, "AmazonShoppingModule");
        this.mAppUi = app.getAppUI();
        this.mModuleId = moduleId;
    }

    public void init(ScanActivity activity) {
        super.init(activity);
        initAmazonAssistantModule();
    }

    private void initAmazonAssistantModule() {
        this.mInitTime = System.currentTimeMillis();
        this.mAppUi.setTitle(R.string.amazon_assistant_shopping_title);
    }

    public boolean isSdkReady() {
        return true;
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
        this.mHandler.removeCallbacksAndMessages(null);
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
                    Log.d(TAG, "onActivityResult: REQUEST_DECODE_IMAGE -- Result Code - " + resultCode);
                    if (executeTask(3, data.getData(), getSavePath())) {
                        Log.d(TAG, "onActivityResult: executeTask(WORK_TYPE_CHOOSE_PICTURE)");
                        return;
                    }
                    Log.d(TAG, "onActivityResult: cancelWorkTask");
                    cancelWorkTask(true);
                    return;
                default:
                    Log.w(TAG, "onActivityResult: unexpected request " + requestCode);
                    return;
            }
        }
    }

    public Object executeDoInBackground(Object... params) {
        switch (Integer.parseInt(params[0].toString())) {
            case 1:
                Log.d(TAG, "executeDoInBackground: WORK_TYPE_TAKE_PICTURE");
                return processCameraImage(params[1]);
            case 3:
                Log.d(TAG, "executeDoInBackground: WORK_TYPE_CHOOSE_PICTURE");
                return processGalleryImage(params);
            default:
                Log.w(TAG, "illegal data = " + params[0]);
                return null;
        }
    }

    private Object processGalleryImage(Object[] params) {
        String filePath = Utils.getFilePathFromUri((Uri) params[1]);
        if (!DeviceUtil.isImageNeedRotate()) {
            return filePath;
        }
        this.mCapturedFile = PictureDecoder.rectifyBitmap(filePath, false, params[2].toString());
        return this.mCapturedFile;
    }

    private Object processCameraImage(Object param) {
        byte[] data = (byte[]) param;
        if (data == null) {
            Log.w(TAG, "null data");
            return Boolean.valueOf(false);
        }
        this.mCapturedFile = PictureDecoder.saveJpeg(this.mActivity.getImagePath(), data, DeviceUtil.isImageNeedRotate(), "" + System.currentTimeMillis());
        return this.mCapturedFile;
    }

    public void executeOnPostExecute(Object object) {
        if (isTaskCancelled() || object == null) {
            Log.w(TAG, "drop this search, object=" + object);
            clearTask();
            this.mActivity.getCaptureModule().startPreview();
            return;
        }
        clearTask();
        callAmazonAssistant((String) object);
    }

    private void callAmazonAssistant(String picturePath) {
        if (picturePath == null) {
            Log.e(TAG, "callAmazonAssistant, picturePath is null");
        } else {
            buildImageContentUri(new File(picturePath));
        }
    }

    private void launchAmazonAssistant() {
        if (this.mUrl == null) {
            this.mHandler.sendEmptyMessage(2);
            return;
        }
        Intent aaIntent = getAmazonAssitantIntent(this.mUrl);
        if (this.mActivity.getPackageManager().queryIntentActivities(aaIntent, 65536).size() < 1) {
            Log.w(TAG, "launchAmazonAssistant : No activities available for sharing images.");
        } else {
            this.mActivity.startActivity(aaIntent);
        }
    }

    private Intent getAmazonAssitantIntent(Uri uri) {
        Log.d(TAG, "AmazonShoppingModule  getAmazonAssitantIntent launchAmazonAssistant mUrl - " + uri);
        Intent aaIntent = new Intent();
        aaIntent.putExtra("android.intent.extra.STREAM", uri);
        aaIntent.setAction("android.intent.action.SEND");
        aaIntent.setPackage(Util.AMAZON_ASSISTANT_PACKAGE);
        aaIntent.setType(Util.MIME_TYPE_JPEG);
        return aaIntent;
    }

    protected void cancelWorkTask(boolean resetPreview) {
        super.cancelWorkTask(resetPreview);
    }

    public boolean onPictureTaken(byte[] data, CameraProxy camera) {
        if (!super.onPictureTaken(data, camera)) {
            return false;
        }
        if (executeTask(1, data, null)) {
            return true;
        }
        cancelWorkTask(true);
        return true;
    }

    private void deleteCapturedFile() {
        if (this.mCapturedFile != null) {
            ScannerThreadPool.poolExecute(new DeleteFileTask(this.mCapturedFile));
            this.mCapturedFile = null;
        }
    }

    private String getSavePath() {
        if (this.mActivity != null) {
            return buildPath();
        }
        Log.w(TAG, "null mActivity");
        return null;
    }

    private String buildPath() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mActivity.getImagePath());
        sb.append(File.separator);
        sb.append(System.currentTimeMillis());
        sb.append(Util.JPEG_POSTFIX);
        return sb.toString();
    }

    public void buildImageContentUri(final File imageFile) {
        final String filePath = imageFile.getAbsolutePath();
        new Thread(new Runnable() {
            public void run() {
                Cursor cursor = AmazonShoppingModule.this.getImageCursor(filePath);
                findUri(cursor);
                if (cursor != null) {
                    cursor.close();
                }
            }

            private void findUri(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst()) {
                    int id = cursor.getInt(cursor.getColumnIndex("_id"));
                    AmazonShoppingModule.this.mUrl = Uri.withAppendedPath(Uri.parse("content://media/external/images/media"), "" + id);
                    AmazonShoppingModule.this.mHandler.sendEmptyMessage(1);
                } else if (imageFile.exists()) {
                    AmazonShoppingModule.this.insertFilePath(filePath);
                    AmazonShoppingModule.this.mHandler.sendEmptyMessage(1);
                } else {
                    AmazonShoppingModule.this.mHandler.sendEmptyMessage(2);
                }
            }
        }).start();
    }

    private Cursor getImageCursor(String filePath) {
        return this.mActivity.getContentResolver().query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data =? ", new String[]{filePath}, null);
    }

    private void insertFilePath(String filePath) {
        ContentValues values = new ContentValues();
        values.put("_data", filePath);
        this.mUrl = this.mActivity.getContentResolver().insert(Media.EXTERNAL_CONTENT_URI, values);
    }
}
