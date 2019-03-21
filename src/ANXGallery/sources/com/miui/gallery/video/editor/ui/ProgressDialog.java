package com.miui.gallery.video.editor.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.widget.GalleryDialogFragment;

public class ProgressDialog extends GalleryDialogFragment {
    private ImageButton mCancelImageButton;
    private TextView mMsgTextView;
    private ProgressBar mProgressBar;
    private ProgressDialogInterface mProgressDialogInterface;
    private int mTempMax = -1;
    private String mTempMsg;
    private int mTempMsgId = -1;
    private int mTempProgress = -1;
    private View mView;

    public interface ProgressDialogInterface {
        boolean onCancelClicked();
    }

    public void setProgressDialogInterface(ProgressDialogInterface progressDialogInterface) {
        this.mProgressDialogInterface = progressDialogInterface;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mView = LayoutInflater.from(getActivity()).inflate(R.layout.video_editor_dialog_auto_trim_progress, null);
        this.mMsgTextView = (TextView) this.mView.findViewById(R.id.video_editor_progress_dialog_msg_textview);
        this.mProgressBar = (ProgressBar) this.mView.findViewById(R.id.video_editor_progress_dialog_progressbar);
        this.mCancelImageButton = (ImageButton) this.mView.findViewById(R.id.video_editor_progress_dialog_cancel_button);
        this.mProgressBar.setMax(100);
        this.mCancelImageButton.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (ProgressDialog.this.mProgressDialogInterface == null || ProgressDialog.this.mProgressDialogInterface.onCancelClicked()) {
                    ProgressDialog.this.dismissAllowingStateLoss();
                }
            }
        });
        if (this.mTempMax != -1) {
            this.mProgressBar.setMax(this.mTempMax);
        }
        if (this.mTempProgress != -1) {
            this.mProgressBar.setProgress(this.mTempProgress);
        }
        if (this.mTempMsgId != -1) {
            this.mMsgTextView.setText(this.mTempMsgId);
        }
        if (this.mTempMsg != null) {
            this.mMsgTextView.setText(this.mTempMsg);
        }
    }

    public void setCancleButtonEnable(boolean enable) {
        this.mCancelImageButton.setVisibility(enable ? 0 : 4);
    }

    public void setProgress(int progress) {
        if (this.mProgressBar != null) {
            this.mProgressBar.setProgress(progress);
        } else {
            this.mTempProgress = progress;
        }
    }

    public void setMax(int max) {
        if (this.mProgressBar != null) {
            this.mProgressBar.setMax(max);
        } else {
            this.mTempMax = max;
        }
    }

    public void setMsg(int msgResId) {
        if (this.mMsgTextView != null) {
            this.mMsgTextView.setText(msgResId);
        } else {
            this.mTempMsgId = msgResId;
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = new Dialog(getActivity(), R.style.f197VideoEditor.Dialog);
        dialog.setContentView(this.mView, new LayoutParams(getActivity().getWindowManager().getDefaultDisplay().getWidth(), -2));
        dialog.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
        dialog.getWindow().setGravity(80);
        dialog.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                return keyCode == 4;
            }
        });
        return dialog;
    }
}
