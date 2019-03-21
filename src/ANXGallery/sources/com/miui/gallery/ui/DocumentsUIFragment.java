package com.miui.gallery.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog.Builder;

public class DocumentsUIFragment extends GalleryDialogFragment {
    private int mLayoutId;
    private String mMessage;
    private OnClickListener mPositiveClickListener;
    private String mPositiveText;
    private String mTitle;

    public static DocumentsUIFragment newInstance(int page, int requestCode) {
        DocumentsUIFragment docUI = new DocumentsUIFragment();
        Bundle params = new Bundle();
        params.putInt("which_page", page);
        params.putInt("request_code", requestCode);
        docUI.setArguments(params);
        return docUI;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        Bundle params = getArguments();
        int page = params.getInt("which_page");
        final int requestCode = params.getInt("request_code");
        this.mTitle = getString(R.string.ext_sdcard_permission_request_title);
        this.mMessage = getString(R.string.ext_sdcard_guide_text);
        switch (page) {
            case 2:
                this.mLayoutId = R.layout.external_sdcard_documentsui_guide_page2;
                this.mPositiveText = getString(R.string.ext_sdcard_guide_last_page_button_text);
                this.mPositiveClickListener = new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        DocumentsUIFragment.this.getActivity().startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE"), requestCode);
                    }
                };
                return;
            default:
                this.mLayoutId = R.layout.external_sdcard_documentsui_guide_page1;
                this.mPositiveText = getString(R.string.ext_sdcard_guide_first_page_button_text);
                this.mPositiveClickListener = new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        DocumentsUIFragment.newInstance(2, requestCode).showAllowingStateLoss(DocumentsUIFragment.this.getActivity().getFragmentManager(), "DocumentsUIFragment");
                        dialog.dismiss();
                    }
                };
                return;
        }
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new Builder(getActivity()).setTitle(this.mTitle).setMessage(this.mMessage).setView(this.mLayoutId).setPositiveButton(this.mPositiveText, this.mPositiveClickListener).create();
    }
}
