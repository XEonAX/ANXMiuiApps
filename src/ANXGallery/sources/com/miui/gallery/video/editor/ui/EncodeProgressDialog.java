package com.miui.gallery.video.editor.ui;

import android.app.FragmentManager;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.VideoEditor;
import com.miui.gallery.video.editor.VideoEditor.EnocdeStateInterface;
import com.miui.gallery.video.editor.ui.ProgressDialog.ProgressDialogInterface;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public class EncodeProgressDialog extends ProgressDialog implements EnocdeStateInterface, ProgressDialogInterface {
    private FragmentManager mFragmentManager;
    private OnCompletedListener mOnCompletedListener;
    private String mOutPutPath;
    private VideoEditor mVideoEditor;

    public interface OnCompletedListener {
        void onCompleted(String str, boolean z, int i, int i2);
    }

    public static void startEncode(VideoEditor videoEditor, String outPutFilePath, OnCompletedListener onCompletedListener, FragmentManager fragmentManager) {
        EncodeProgressDialog dialog = new EncodeProgressDialog();
        Bundle data = new Bundle();
        data.putString(nexExportFormat.TAG_FORMAT_PATH, outPutFilePath);
        dialog.setArguments(data);
        dialog.setVideoEditor(videoEditor);
        dialog.setOnCompletedListener(onCompletedListener);
        dialog.setFragmentManager(fragmentManager);
        videoEditor.export(outPutFilePath, dialog);
    }

    public void setFragmentManager(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    public void setOnCompletedListener(OnCompletedListener onCompletedListener) {
        this.mOnCompletedListener = onCompletedListener;
    }

    public void setVideoEditor(VideoEditor videoEditor) {
        this.mVideoEditor = videoEditor;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setProgressDialogInterface(this);
        setMax(100);
        this.mOutPutPath = getArguments().getString(nexExportFormat.TAG_FORMAT_PATH);
    }

    public boolean onCancelClicked() {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.cancelExport(null);
        }
        return false;
    }

    public void onEncodeStart() {
        showAllowingStateLoss(this.mFragmentManager, "EncodeProgressDialog");
        setMsg(R.string.video_editor_encode_video);
    }

    public void onEncodeProgress(int progress) {
        setProgress(progress);
    }

    public void onEncodeEnd(boolean success, int errorCode, int state) {
        setProgress(100);
        if (this.mOnCompletedListener != null) {
            this.mOnCompletedListener.onCompleted(this.mOutPutPath, success, errorCode, state);
        }
        dismissSafely();
    }
}
