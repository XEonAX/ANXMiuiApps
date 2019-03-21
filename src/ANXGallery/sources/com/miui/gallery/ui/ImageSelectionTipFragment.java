package com.miui.gallery.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import com.miui.gallery.R;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.preference.GalleryPreferences.Assistant;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;

public class ImageSelectionTipFragment extends GalleryDialogFragment {
    private ImageSelectionTipDialog mImageSelectionTipDialog;

    private class ImageSelectionTipDialog extends Dialog implements OnClickListener {
        private Button mPositiveBtn;
        private OnClickListener mPositiveListener;

        public ImageSelectionTipDialog(Context context) {
            super(context);
        }

        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.image_selection_tips_dialog);
            this.mPositiveBtn = (Button) findViewById(R.id.positive_btn);
            this.mPositiveBtn.setOnClickListener(this);
            Window window = getWindow();
            LayoutParams lp = window.getAttributes();
            lp.gravity = 80;
            lp.width = -1;
            lp.height = -2;
            window.setAttributes(lp);
            setCanceledOnTouchOutside(false);
        }

        public ImageSelectionTipDialog setPositiveButtonOnClickListener(OnClickListener listener) {
            this.mPositiveListener = listener;
            return this;
        }

        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.positive_btn /*2131886459*/:
                    if (this.mPositiveListener != null) {
                        this.mPositiveListener.onClick(v);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public static void showImageSelectionTipDialogIfNecessary(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            Log.d("ImageSelectionTipFragment", "activity is null or finishing ,no need to show selection tip dialog");
        } else if (ImageFeatureCacheManager.getInstance().shouldShowImageSelectionTip()) {
            Assistant.setIsFirstShowImageSelection(false);
            ImageFeatureCacheManager.getInstance().setFirstShowImageSelection(false);
            new ImageSelectionTipFragment().showAllowingStateLoss(activity.getFragmentManager(), "ImageSelectionTip");
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mImageSelectionTipDialog = new ImageSelectionTipDialog(getActivity()).setPositiveButtonOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ImageSelectionTipFragment.this.onDone(ImageSelectionTipFragment.this.mImageSelectionTipDialog);
            }
        });
        return this.mImageSelectionTipDialog;
    }

    private void onDone(DialogInterface dialog) {
        if (getActivity() != null) {
            dismissAllowingStateLoss();
        }
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        onDone(dialog);
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        onDone(dialog);
    }
}
