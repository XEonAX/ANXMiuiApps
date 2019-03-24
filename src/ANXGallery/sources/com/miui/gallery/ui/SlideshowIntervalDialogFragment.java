package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.miui.gallery.R;
import com.miui.gallery.preference.GalleryPreferences.SlideShow;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class SlideshowIntervalDialogFragment extends GalleryDialogFragment {
    private AlertDialog mDialog;
    private CompleteListener mListener;

    public interface CompleteListener {
        void onComplete();
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Activity activity = getActivity();
        final View editText = (EditText) LayoutInflater.from(activity).inflate(R.layout.edit_text_dialog, null, false);
        editText.setText(String.valueOf(SlideShow.getSlideShowInterval()));
        editText.selectAll();
        editText.setRawInputType(2);
        this.mDialog = new Builder(activity).setView(editText).setTitle((int) R.string.slideshow_interval_dialog_title).setPositiveButton(17039370, null).setNegativeButton(17039360, null).create();
        this.mDialog.getWindow().setSoftInputMode(4);
        this.mDialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialog) {
                SlideshowIntervalDialogFragment.this.mDialog.getButton(-1).setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        if (SlideshowIntervalDialogFragment.this.isTextValid(editText.getText())) {
                            SlideShow.setSlideShowInterval(Integer.parseInt(editText.getText().toString()));
                            if (SlideshowIntervalDialogFragment.this.mListener != null) {
                                SlideshowIntervalDialogFragment.this.mListener.onComplete();
                            }
                            SlideshowIntervalDialogFragment.this.mDialog.dismiss();
                            return;
                        }
                        ToastUtils.makeText(SlideshowIntervalDialogFragment.this.getActivity(), (int) R.string.slideshow_interval_invalid);
                    }
                });
            }
        });
        return this.mDialog;
    }

    public void setCompleteListener(CompleteListener listener) {
        this.mListener = listener;
    }

    private boolean isTextValid(CharSequence s) {
        if (TextUtils.isEmpty(s)) {
            return false;
        }
        try {
            int newValue = Integer.parseInt(s.toString());
            if (newValue < 3 || newValue > 3600) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
