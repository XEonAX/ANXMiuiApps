package com.miui.gallery.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BulkDownloadHelper;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadItem;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadListener;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.ArrayList;
import java.util.List;
import miui.app.ProgressDialog;

public class DownloadFragment extends GalleryDialogFragment implements BulkDownloadListener {
    private OnDownloadListener mDownloadListener;
    private BulkDownloadHelper mHelper;
    private ProgressDialog mProgressDialog;
    private String mTitle;

    public interface OnDownloadListener {
        void onCanceled();

        void onDownloadComplete(List<BulkDownloadItem> list, List<BulkDownloadItem> list2);
    }

    public static DownloadFragment newInstance(ArrayList<BulkDownloadItem> items) {
        DownloadFragment fragment = new DownloadFragment();
        Bundle data = new Bundle();
        data.putParcelableArrayList("key_download_items", items);
        fragment.setArguments(data);
        return fragment;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = new ProgressDialog(getActivity());
        this.mTitle = getResources().getString(R.string.download_title);
        this.mProgressDialog.setTitle(this.mTitle);
        this.mProgressDialog.setProgressStyle(1);
        this.mProgressDialog.setIndeterminate(false);
        this.mProgressDialog.setMax(100);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setButton(-2, getResources().getString(17039360), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (DownloadFragment.this.mDownloadListener != null) {
                    DownloadFragment.this.mDownloadListener.onCanceled();
                    DownloadFragment.this.mDownloadListener = null;
                }
                DownloadFragment.this.dismissAllowingStateLoss();
            }
        });
        setCancelable(false);
        return this.mProgressDialog;
    }

    public void setOnDownloadListener(OnDownloadListener listener) {
        this.mDownloadListener = listener;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        ArrayList<BulkDownloadItem> items = getArguments().getParcelableArrayList("key_download_items");
        if (BaseMiscUtil.isValid(items)) {
            this.mHelper = new BulkDownloadHelper();
            this.mHelper.download(items, true, this);
            return;
        }
        dismissAllowingStateLoss();
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (this.mHelper != null) {
            this.mHelper.cancel();
            this.mHelper = null;
        }
        this.mDownloadListener = null;
    }

    public void onDownloadProgress(float progress) {
        int uiProgress = (int) (100.0f * progress);
        this.mProgressDialog.setTitle(this.mTitle + " " + uiProgress + "%");
        this.mProgressDialog.setProgress(uiProgress);
    }

    public void onDownloadEnd(List<BulkDownloadItem> successes, List<BulkDownloadItem> fails) {
        int size = fails.size();
        if (size > 0) {
            ToastUtils.makeText(getActivity(), getResources().getQuantityString(R.plurals.download_error, size, new Object[]{Integer.valueOf(size)}));
        }
        if (this.mDownloadListener != null) {
            this.mDownloadListener.onDownloadComplete(successes, fails);
            this.mDownloadListener = null;
        }
        dismissAllowingStateLoss();
    }
}
