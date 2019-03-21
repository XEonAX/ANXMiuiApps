package com.miui.gallery.video.editor.ui;

import android.app.FragmentManager;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.VideoEditor;
import com.miui.gallery.video.editor.VideoEditor.TrimStateInterface;
import com.miui.gallery.video.editor.ui.ProgressDialog.ProgressDialogInterface;

public class AutoTrimProgressDialog extends ProgressDialog implements TrimStateInterface, ProgressDialogInterface {
    private int mCurrentWorkState = -1;
    private FragmentManager mFragmentManager;
    private OnCompletedListener mOnCompletedListener;
    private String mOutPutFilePath;
    private VideoEditor mVideoEditor;

    public interface OnCompletedListener {
        void onCompleted(boolean z, String str, int i, String str2);
    }

    public static void startAutoTrim(VideoEditor videoEditor, OnCompletedListener listener, FragmentManager fragmentManager) {
        AutoTrimProgressDialog dialog = new AutoTrimProgressDialog();
        dialog.setVideoEditor(videoEditor);
        dialog.setOnCompletedListener(listener);
        dialog.setFragmentManager(fragmentManager);
        videoEditor.autoTrim(dialog);
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
        setCancleButtonEnable(false);
        setProgressDialogInterface(this);
    }

    public boolean onCancelClicked() {
        if (this.mCurrentWorkState == 2) {
            this.mVideoEditor.cancelExport(null);
        }
        return false;
    }

    public void onTrimStart() {
        showAllowingStateLoss(this.mFragmentManager, "AutoTrimProgressDialog");
        this.mCurrentWorkState = 1;
        setMsg(R.string.video_editor_auto_trim_tip);
        setCancelable(false);
    }

    public void onTrimProgress(int progresss) {
        setProgress((int) (5.0f * (((float) progresss) / 100.0f)));
    }

    public void onTrimEnd(String outputFileURI) {
        this.mOutPutFilePath = outputFileURI;
    }

    public void onEncodeStart() {
        this.mCurrentWorkState = 2;
        setProgress(5);
        setCancleButtonEnable(true);
    }

    public void onEncodeProgress(int progress) {
        setProgress(((int) (95.0f * (((float) progress) / 100.0f))) + 5);
    }

    public void onEncodeEnd(boolean success, int errorCode, int state) {
        if (this.mOnCompletedListener != null) {
            this.mOnCompletedListener.onCompleted(success, this.mOutPutFilePath, errorCode, "");
        }
        dismissSafely();
    }
}
