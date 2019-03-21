package com.miui.gallery.permission.cta;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import com.miui.gallery.R;
import com.miui.gallery.agreement.cta.CtaAgreement;
import com.miui.gallery.permission.core.OnPermissionIntroduced;
import com.miui.gallery.preference.BaseGalleryPreferences.PermissionIntroduction;
import com.miui.gallery.util.Log;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class CtaPermissionIntroduceDialog extends DialogFragment {
    private OnPermissionIntroduced mIntroduceListener;
    private String mPermissionToRequest;

    public static CtaPermissionIntroduceDialog newInstance(String permission, OnPermissionIntroduced listener) {
        CtaPermissionIntroduceDialog dialog = new CtaPermissionIntroduceDialog();
        Bundle bundle = new Bundle();
        bundle.putString("permission", permission);
        dialog.setArguments(bundle);
        dialog.setOnIntroducedListener(listener);
        return dialog;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        this.mPermissionToRequest = getArguments().getString("permission");
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new Builder(getActivity()).setTitle(getTitle()).setMessage(getMessage()).setPositiveButton(getPositiveText(), getPositiveListener()).setNegativeButton(getNegativeText(), getNegativeListener()).create();
    }

    public void onStart() {
        super.onStart();
        ((AlertDialog) getDialog()).getMessageView().setMovementMethod(LinkMovementMethod.getInstance());
    }

    void setOnIntroducedListener(OnPermissionIntroduced listener) {
        this.mIntroduceListener = listener;
    }

    protected String getTitle() {
        return getString(R.string.privacy_permission_request_title);
    }

    protected SpannableStringBuilder getMessage() {
        PackageManager packageManager = getActivity().getPackageManager();
        String permissionName = this.mPermissionToRequest;
        try {
            CharSequence label = packageManager.getPermissionInfo(this.mPermissionToRequest, 128).loadLabel(packageManager);
            if (label != null) {
                permissionName = label.toString();
            }
            permissionName = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
        } catch (NameNotFoundException e) {
            Log.w("CtaPrivacyPermissionRequestDialog", "Get permission info failed, %s", permissionName);
            permissionName = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
        } catch (Throwable th) {
            permissionName = String.format(getString(R.string.grant_permission_item), new Object[]{permissionName});
        }
        return CtaAgreement.buildUserNotice(getActivity(), getString(R.string.privacy_permission_request_message, new Object[]{getString(R.string.user_agreement2), getString(R.string.user_agreement4), permissionName}), getString(R.string.user_agreement2), getString(R.string.user_agreement4));
    }

    protected String getPositiveText() {
        return getString(R.string.privacy_permission_request_positive);
    }

    protected String getNegativeText() {
        return getString(R.string.privacy_permission_request_negative);
    }

    protected OnClickListener getPositiveListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                PermissionIntroduction.setCtaPrivacyPermissionsAllowed(CtaPermissionIntroduceDialog.this.mPermissionToRequest, true);
                if (CtaPermissionIntroduceDialog.this.mIntroduceListener != null) {
                    CtaPermissionIntroduceDialog.this.mIntroduceListener.onPermissionIntroduced(true);
                }
            }
        };
    }

    protected OnClickListener getNegativeListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                PermissionIntroduction.setCtaPrivacyPermissionsAllowed(CtaPermissionIntroduceDialog.this.mPermissionToRequest, false);
                if (CtaPermissionIntroduceDialog.this.mIntroduceListener != null) {
                    CtaPermissionIntroduceDialog.this.mIntroduceListener.onPermissionIntroduced(false);
                }
            }
        };
    }
}
