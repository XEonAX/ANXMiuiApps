package com.miui.internal.webkit;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.miui.internal.R;
import com.miui.internal.hybrid.provider.AbsWebView;
import miui.app.ProgressDialog;

public class DefaultDeviceAccountLogin extends DeviceAccountLogin {
    private static final int pA = 500;
    private static final String px = "dialog";
    private static final int py = 0;
    private static final int pz = 1;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message message) {
            if (message.what == 0) {
                DefaultDeviceAccountLogin.this.aZ();
            } else if (message.what == 1) {
                DefaultDeviceAccountLogin.this.ba();
                DefaultDeviceAccountLogin.this.pB.setVisibility(0);
            }
        }
    };
    private AbsWebView pB;
    private ProgressDialogFragment pC;

    public static class ProgressDialogFragment extends DialogFragment {
        public Dialog onCreateDialog(Bundle bundle) {
            Dialog progressDialog = new ProgressDialog(getActivity());
            progressDialog.setMessage(getString(R.string.web_sso_login_message));
            progressDialog.setIndeterminate(true);
            progressDialog.setCancelable(false);
            return progressDialog;
        }
    }

    public DefaultDeviceAccountLogin(Activity activity, AbsWebView absWebView) {
        super(activity);
        this.pB = absWebView;
    }

    private void aZ() {
        ba();
        this.pC = new ProgressDialogFragment();
        try {
            this.pC.show(this.mActivity.getFragmentManager(), px);
        } catch (IllegalStateException e) {
        }
    }

    private void ba() {
        this.mHandler.removeMessages(0);
        if (this.pC != null && this.pC.isAdded()) {
            this.pC.dismissAllowingStateLoss();
        }
        this.pC = null;
    }

    public void onLoginStart() {
        this.mHandler.sendEmptyMessageDelayed(0, 500);
    }

    public void onLoginSuccess(String str) {
        this.pB.loadUrl(str);
    }

    public void onLoginFail() {
        ba();
        this.pB.setVisibility(0);
        Toast.makeText(this.mActivity, R.string.web_sso_login_fail, 0).show();
    }

    public void onLoginCancel() {
        ba();
        this.pB.setVisibility(0);
    }

    public void onLoginPageFinished() {
        this.mHandler.sendEmptyMessageDelayed(1, 500);
    }
}
