package com.miui.gallery.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.miui.gallery.R;
import com.miui.gallery.model.PeopleContactInfo.UserDefineRelation;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.util.ArrayList;
import java.util.Iterator;
import miui.provider.ExtraContacts.Groups;

public class PeopleRelationCreatorDialogFragment extends GalleryDialogFragment {
    private static final String[] INVALID_NAMES = new String[]{"自己", "孩子", "家人", "同事", "同学", "家人", "朋友", "未分组", "自定义", "Me", "Child", Groups.SYSTEM_ID_FAMILY, "Collegues", "Classmates", Groups.SYSTEM_ID_FRIENDS, "Ungrouped", "Custom"};
    private Button mConfirmButton;
    private OnClickListener mConfirmListener = new OnClickListener() {
        public void onClick(View v) {
            String relationText = PeopleRelationCreatorDialogFragment.this.mInputView.getText().toString();
            if (PeopleRelationCreatorDialogFragment.this.verify(relationText)) {
                PeopleRelationCreatorDialogFragment.this.mDialog.dismiss();
                UserDefineRelation.addRelation(relationText);
                if (PeopleRelationCreatorDialogFragment.this.mOnCreatedListener != null) {
                    PeopleRelationCreatorDialogFragment.this.mOnCreatedListener.onRelationCreated(relationText);
                }
            }
        }
    };
    private String mDefaultName;
    private AlertDialog mDialog;
    private EditText mInputView;
    private OnRelationCreatedListener mOnCreatedListener;

    public interface OnRelationCreatedListener {
        void onRelationCreated(String str);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mInputView = (EditText) LayoutInflater.from(getActivity()).inflate(R.layout.edit_text_dialog, null, false);
        this.mInputView.setHint(R.string.input_relation_name);
        this.mDefaultName = getString(R.string.default_relation_name);
        this.mInputView.setText(this.mDefaultName);
        this.mInputView.selectAll();
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mDialog = new Builder(getActivity()).setView(this.mInputView).setTitle(R.string.default_relation_name).setPositiveButton(17039370, null).setNegativeButton(17039360, null).create();
        this.mDialog.getWindow().setSoftInputMode(4);
        this.mDialog.setOnShowListener(new OnShowListener() {
            public void onShow(DialogInterface dialog) {
                PeopleRelationCreatorDialogFragment.this.mConfirmButton = PeopleRelationCreatorDialogFragment.this.mDialog.getButton(-1);
                PeopleRelationCreatorDialogFragment.this.mConfirmButton.setOnClickListener(PeopleRelationCreatorDialogFragment.this.mConfirmListener);
            }
        });
        return this.mDialog;
    }

    private void selectAll() {
        this.mInputView.setText(this.mInputView.getText());
        this.mInputView.selectAll();
    }

    private boolean verify(String name) {
        if (TextUtils.isEmpty(name.trim())) {
            ToastUtils.makeText(getActivity(), getString(R.string.empty_relation));
            this.mInputView.setText(this.mDefaultName);
            this.mInputView.selectAll();
            return false;
        } else if ("._".indexOf(name.charAt(0)) >= 0) {
            ToastUtils.makeText(getActivity(), (int) R.string.new_relation_invalid_prefix);
            return false;
        } else {
            for (int i = 0; i < name.length(); i++) {
                char invalidChar = name.charAt(i);
                if ("/\\:@*?<>\r\n\t".indexOf(invalidChar) >= 0) {
                    if ("\r\n\t".indexOf(invalidChar) >= 0) {
                        invalidChar = ' ';
                    }
                    ToastUtils.makeText(getActivity(), getString(R.string.new_relation_invalid_char, new Object[]{Character.valueOf(invalidChar)}));
                    return false;
                }
            }
            for (String invalid : INVALID_NAMES) {
                if (TextUtils.equals(invalid, name)) {
                    ToastUtils.makeText(getActivity(), getString(R.string.new_relation_invalid_name, new Object[]{name}));
                    selectAll();
                    return false;
                }
            }
            ArrayList<String> userDefineRelations = UserDefineRelation.getUserDefineRelations();
            if (BaseMiscUtil.isValid(userDefineRelations)) {
                Iterator it = userDefineRelations.iterator();
                while (it.hasNext()) {
                    if (TextUtils.equals((String) it.next(), name)) {
                        ToastUtils.makeText(getActivity(), getString(R.string.new_relation_invalid_name, new Object[]{name}));
                        selectAll();
                        return false;
                    }
                }
            }
            return true;
        }
    }

    public void setOnCreatedListener(OnRelationCreatedListener onCreatedListener) {
        this.mOnCreatedListener = onCreatedListener;
    }
}
