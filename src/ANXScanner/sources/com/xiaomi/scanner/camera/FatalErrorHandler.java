package com.xiaomi.scanner.camera;

import com.xiaomi.scanner.R;

public interface FatalErrorHandler {

    public enum Reason {
        CANNOT_CONNECT_TO_CAMERA(R.string.error_cannot_connect_camera, R.string.feedback_description_camera_access, true),
        CAMERA_HAL_FAILED(R.string.error_cannot_connect_camera, R.string.feedback_description_camera_access, true),
        CAMERA_DISABLED_BY_SECURITY_POLICY(R.string.error_camera_disabled, R.string.feedback_description_camera_access, true),
        MEDIA_STORAGE_FAILURE(R.string.error_media_storage_failure, R.string.feedback_description_save_photo, false);
        
        private final int mDialogMsgId;
        private final int mFeedbackMsgId;
        private final boolean mFinishActivity;

        private Reason(int dialogMsgId, int feedbackMsgId, boolean finishActivity) {
            this.mDialogMsgId = dialogMsgId;
            this.mFeedbackMsgId = feedbackMsgId;
            this.mFinishActivity = finishActivity;
        }

        public int getFeedbackMsgId() {
            return this.mFeedbackMsgId;
        }

        public int getDialogMsgId() {
            return this.mDialogMsgId;
        }

        public boolean doesFinishActivity() {
            return this.mFinishActivity;
        }
    }

    void dismisssErrorDialog();

    @Deprecated
    void handleFatalError(Reason reason);

    void onCameraDisabledFailure();

    void onCameraOpenFailure();

    void onCameraReconnectFailure();

    void onGenericCameraAccessFailure();

    void onMediaStorageFailure();
}
