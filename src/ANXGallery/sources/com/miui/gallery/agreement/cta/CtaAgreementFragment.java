package com.miui.gallery.agreement.cta;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import com.miui.gallery.R;
import com.miui.gallery.agreement.core.OnAgreementInvokedListener;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class CtaAgreementFragment extends DialogFragment {
    private OnAgreementInvokedListener mListener;

    public void invoke(Activity activity, OnAgreementInvokedListener listener) {
        Fragment f = activity.getFragmentManager().findFragmentByTag("CtaAgreementFragment");
        if (!(f == null || f == this || !(f instanceof CtaAgreementFragment))) {
            ((DialogFragment) f).dismiss();
        }
        this.mListener = listener;
        show(activity.getFragmentManager(), "CtaAgreementFragment");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return new Builder(getActivity()).setTitle(getTitle()).setMessage(getMessage()).setPositiveButton(getPositiveText(), getPositiveListener()).setNegativeButton(getNegativeText(), getNegativeListener()).create();
    }

    public void onStart() {
        super.onStart();
        ((AlertDialog) getDialog()).getMessageView().setMovementMethod(LinkMovementMethod.getInstance());
    }

    protected String getTitle() {
        return getString(R.string.user_notice_title);
    }

    protected SpannableStringBuilder getMessage() {
        return CtaAgreement.buildUserNotice(getActivity(), R.string.user_notice_identify_summary_format);
    }

    protected String getPositiveText() {
        return getString(R.string.user_agree);
    }

    protected String getNegativeText() {
        return getString(17039360);
    }

    protected OnClickListener getPositiveListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                CTA.setCanConnectNetwork(true);
                if (CtaAgreementFragment.this.mListener != null) {
                    CtaAgreementFragment.this.mListener.onAgreementInvoked(true);
                }
            }
        };
    }

    protected OnClickListener getNegativeListener() {
        return new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                CTA.setToAllowUseOnOfflineGlobal(true);
                if (CtaAgreementFragment.this.mListener != null) {
                    CtaAgreementFragment.this.mListener.onAgreementInvoked(false);
                }
            }
        };
    }
}
