package com.miui.gallery.picker.uri;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.widget.GalleryDialogFragment;

public class DownloadConfirmDialog extends GalleryDialogFragment {
    private OnClickListener mNegativeListener;
    private OnClickListener mPositiveListener;

    public void setPositiveListener(OnClickListener positiveListener) {
        this.mPositiveListener = positiveListener;
    }

    public void setNegativeListener(OnClickListener negativeListener) {
        this.mNegativeListener = negativeListener;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        String msg;
        String confirm;
        int download = getArguments().getInt("download_file_count");
        int local = getArguments().getInt("local_file_count");
        int size = (int) Math.ceil((((double) getArguments().getInt("download_file_size", 0)) / 1024.0d) / 1024.0d);
        if (getArguments().getBoolean("retry_mode")) {
            if (NetworkUtils.isNetworkConnected()) {
                if (size != 0) {
                    msg = getActivity().getResources().getQuantityString(R.plurals.picker_retry_origin_confirm_message, download, new Object[]{Integer.valueOf(download), Integer.valueOf(size)});
                } else {
                    msg = getActivity().getResources().getQuantityString(R.plurals.picker_retry_image_confirm_message, download, new Object[]{Integer.valueOf(download)});
                }
            } else if (size != 0) {
                msg = getActivity().getResources().getQuantityString(R.plurals.picker_no_network_retry_origin_confirm_message, download, new Object[]{Integer.valueOf(download), Integer.valueOf(size)});
            } else {
                msg = getActivity().getResources().getQuantityString(R.plurals.picker_no_network_retry_image_confirm_message, download, new Object[]{Integer.valueOf(download)});
            }
            confirm = getActivity().getString(R.string.download_retry_text);
        } else {
            if (!NetworkUtils.isNetworkConnected()) {
                msg = getActivity().getResources().getString(R.string.picker_no_network_message);
            } else if (local == 0) {
                if (size != 0) {
                    msg = getActivity().getResources().getQuantityString(R.plurals.picker_all_origin_need_download, download, new Object[]{Integer.valueOf(size)});
                } else {
                    msg = getActivity().getResources().getQuantityString(R.plurals.picker_all_image_need_download, download);
                }
            } else if (size != 0) {
                msg = getActivity().getString(R.string.picker_origin_need_download, new Object[]{Integer.valueOf(download), Integer.valueOf(size)});
            } else {
                msg = getActivity().getString(R.string.picker_image_need_download, new Object[]{Integer.valueOf(download)});
            }
            confirm = getActivity().getString(R.string.picker_download);
        }
        return new Builder(getActivity()).setTitle(R.string.title_tip).setMessage(msg).setPositiveButton(confirm, this.mPositiveListener).setNegativeButton(getActivity().getString(R.string.picker_cancel_download), this.mNegativeListener).setCancelable(true).create();
    }
}
