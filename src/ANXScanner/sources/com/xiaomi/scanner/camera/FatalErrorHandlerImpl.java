package com.xiaomi.scanner.camera;

import android.app.AlertDialog;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.camera.FatalErrorHandler.Reason;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.DialogUtil;
import java.lang.ref.WeakReference;

public final class FatalErrorHandlerImpl implements FatalErrorHandler {
    private static final Tag TAG = new Tag("FatalErrorHandler");
    private WeakReference<ScanActivity> mActivity;
    private AlertDialog mErrorDialog = null;

    public FatalErrorHandlerImpl(ScanActivity activity) {
        this.mActivity = new WeakReference(activity);
    }

    public void onMediaStorageFailure() {
        Log.e(TAG, "Handling Media Storage Failure");
        doError(Reason.MEDIA_STORAGE_FAILURE, 201);
    }

    public void onCameraOpenFailure() {
        Log.e(TAG, "Handling Camera Open Failure");
        doError(Reason.CANNOT_CONNECT_TO_CAMERA, 102);
    }

    public void onCameraReconnectFailure() {
        Log.e(TAG, "Handling Camera Reconnect Failure");
        doError(Reason.CANNOT_CONNECT_TO_CAMERA, 103);
    }

    public void onGenericCameraAccessFailure() {
        Log.e(TAG, "Handling Camera Access Failure");
        doError(Reason.CANNOT_CONNECT_TO_CAMERA, 100);
    }

    public void onCameraDisabledFailure() {
        Log.i(TAG, "Handling Camera Disabled Failure");
        doError(Reason.CAMERA_DISABLED_BY_SECURITY_POLICY, 101);
    }

    public void handleFatalError(Reason reason) {
        Log.i(TAG, "Handling Fatal Error");
        doError(reason, -1);
    }

    private void doError(Reason reason, int statCauseId) {
        Log.e(TAG, "doError:", new Exception());
        if (statCauseId != -1) {
            UsageStatistics.cameraFailure(statCauseId);
        }
        dismisssErrorDialog();
        ScanActivity activity = (ScanActivity) this.mActivity.get();
        if (activity != null && !activity.isDestroyed() && !activity.isPaused()) {
            this.mErrorDialog = DialogUtil.CameraErrorDialog(activity, reason.getDialogMsgId(), reason.doesFinishActivity());
            if (this.mErrorDialog != null) {
                this.mErrorDialog.show();
            }
        }
    }

    public void dismisssErrorDialog() {
        DialogUtil.dismissDialog(this.mErrorDialog);
    }
}
