package com.miui.gallery.card.ui.detail;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.os.Bundle;
import android.view.KeyEvent;
import com.miui.gallery.R;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.ProgressDialog;

public class CardDownloadDialog extends GalleryDialogFragment {
    private CallBack mCallBack;
    private long mLastBackPressedTime;
    private ProgressDialog mProgressDialog;

    public interface CallBack {
        void cancel();
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = new ProgressDialog(getActivity());
        this.mProgressDialog.setMessage(getResources().getString(R.string.story_photo_downloading));
        this.mProgressDialog.setProgressStyle(1);
        this.mProgressDialog.setIndeterminate(false);
        this.mProgressDialog.setMax(100);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(DialogInterface anInterface, int keyCode, KeyEvent event) {
                if (keyCode == 4 && event.getAction() == 0) {
                    return CardDownloadDialog.this.backPress();
                }
                return false;
            }
        });
        setCancelable(false);
        return this.mProgressDialog;
    }

    private boolean backPress() {
        long now = System.currentTimeMillis();
        if (now - this.mLastBackPressedTime > 3000) {
            this.mLastBackPressedTime = now;
            ToastUtils.makeText(getActivity(), getString(R.string.story_back_stop_download));
        } else {
            if (this.mCallBack != null) {
                this.mCallBack.cancel();
            }
            dismissSafely();
        }
        return true;
    }

    public void show(Activity activity) {
        showAllowingStateLoss(activity.getFragmentManager(), "CardDownloadDialog");
    }

    public void setCallBack(CallBack callBack) {
        this.mCallBack = callBack;
    }

    public void updateProgress(float percent) {
        if (this.mProgressDialog != null) {
            this.mProgressDialog.setProgress((int) (100.0f * percent));
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.mCallBack = null;
    }
}
