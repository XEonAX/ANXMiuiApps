package com.miui.gallery.card.ui.detail;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.miui.gallery.R;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class StoryAlbumRenameDialog extends GalleryDialogFragment {
    protected Button mConfirmButton;
    private final OnClickListener mConfirmListener = new OnClickListener() {
        public void onClick(View v) {
            String cardName = StoryAlbumRenameDialog.this.mInputView.getText().toString();
            if (StoryAlbumRenameDialog.this.verify(cardName)) {
                if (!TextUtils.equals(StoryAlbumRenameDialog.this.mDefaultName, cardName)) {
                    StoryAlbumRenameDialog.this.mConfirmButton.setEnabled(true);
                    if (StoryAlbumRenameDialog.this.mOnRenameDoneListener != null) {
                        StoryAlbumRenameDialog.this.mOnRenameDoneListener.onOperationDone(cardName);
                    }
                }
                StoryAlbumRenameDialog.this.mDialog.dismiss();
            }
        }
    };
    protected String mDefaultName;
    protected AlertDialog mDialog;
    protected EditText mInputView;
    protected OnRenameDoneListener mOnRenameDoneListener;
    private final TextWatcher mTextWatcher = new TextWatcher() {
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (StoryAlbumRenameDialog.this.mConfirmButton != null) {
                StoryAlbumRenameDialog.this.mConfirmButton.setEnabled(!TextUtils.isEmpty(s));
            }
        }

        public void afterTextChanged(Editable s) {
        }
    };

    public interface OnRenameDoneListener {
        void onOperationDone(String str);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        parseArguments();
        this.mInputView = (EditText) LayoutInflater.from(getActivity()).inflate(R.layout.edit_text_dialog, null, false);
        this.mInputView.setHint(R.string.rename_dialog_hint);
        this.mInputView.setText(this.mDefaultName);
        this.mInputView.selectAll();
        this.mInputView.addTextChangedListener(this.mTextWatcher);
    }

    private void parseArguments() {
        this.mDefaultName = getArguments().getString("card_name");
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mDialog = new Builder(getActivity()).setView(this.mInputView).setTitle(R.string.rename_dialog_title).setPositiveButton(17039370, null).setNegativeButton(17039360, null).create();
        if (this.mDialog.getWindow() != null) {
            this.mDialog.getWindow().setSoftInputMode(4);
        }
        this.mDialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialog) {
                StoryAlbumRenameDialog.this.mConfirmButton = StoryAlbumRenameDialog.this.mDialog.getButton(-1);
                StoryAlbumRenameDialog.this.mConfirmButton.setEnabled(!TextUtils.isEmpty(StoryAlbumRenameDialog.this.mInputView.getText()));
                StoryAlbumRenameDialog.this.mConfirmButton.setOnClickListener(StoryAlbumRenameDialog.this.mConfirmListener);
            }
        });
        return this.mDialog;
    }

    private boolean verify(String name) {
        if (TextUtils.isEmpty(name.trim())) {
            this.mInputView.selectAll();
            return false;
        } else if ("._".indexOf(name.charAt(0)) >= 0) {
            ToastUtils.makeText(getActivity(), (int) R.string.story_rename_invalid_prefix);
            return false;
        } else {
            for (int i = 0; i < name.length(); i++) {
                char invalidChar = name.charAt(i);
                if ("/\\:@*?<>\r\n\t".indexOf(invalidChar) >= 0) {
                    if ("\r\n\t".indexOf(invalidChar) >= 0) {
                        invalidChar = ' ';
                    }
                    ToastUtils.makeText(getActivity(), getString(R.string.story_rename_invalid_char, new Object[]{Character.valueOf(invalidChar)}));
                    return false;
                }
            }
            return true;
        }
    }

    public void setOnRenameDoneListener(OnRenameDoneListener onRenameDoneListener) {
        this.mOnRenameDoneListener = onRenameDoneListener;
    }
}
