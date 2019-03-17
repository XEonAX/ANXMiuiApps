package com.xiaomi.scanner.module.code.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.dialog.CtaDialog;
import com.xiaomi.scanner.dialog.CtaDialog.CTAClick;
import com.xiaomi.scanner.module.code.codec.QRCodeMatcher;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.module.code.ui.QRResultFragment;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.DeviceUtil;
import com.xiaomi.scanner.util.DialogUtil;

public class QRResultActivity extends Activity {
    private static final Tag TAG = new Tag("QRResultActivity");
    private String mCallingApp;
    private CtaDialog mConfirmDialog = null;
    private QRResultFragment mFragment;
    private String mQRResult;
    private QRCodeType mQRType;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setVolumeControlStream(3);
        setContentView(R.layout.result_activity_layout);
        Intent intent = getIntent();
        this.mQRResult = intent.getStringExtra("result");
        if (this.mQRResult != null) {
            this.mQRType = QRCodeMatcher.match(this.mQRResult);
        }
        this.mCallingApp = intent.getStringExtra(AppUtil.EXTRA_INTENT_MODULE_PACKAGE_NAME);
        if (AppUtil.isUserAgreeToRun()) {
            if (this.mConfirmDialog != null) {
                this.mConfirmDialog.dismiss();
                this.mConfirmDialog = null;
            }
            initUI();
            return;
        }
        showCTAConfirmDialog();
    }

    protected void onResume() {
        super.onResume();
        UsageStatistics.recordPageStart(this, "QRResultActivity");
    }

    protected void onPause() {
        super.onPause();
        UsageStatistics.recordPageEnd();
    }

    protected void onDestroy() {
        super.onDestroy();
        DialogUtil.dismissDialog(this.mConfirmDialog);
    }

    private void showCTAConfirmDialog() {
        if (DeviceUtil.isInternationalBuild()) {
            AppUtil.saveUserAgreeToRun(true);
            initUI();
        } else if (this.mConfirmDialog == null) {
            this.mConfirmDialog = DialogUtil.showCTADialog(this, new CTAClick() {
                public void onAccept() {
                    AppUtil.saveUserAgreeToRun(true);
                    QRResultActivity.this.initUI();
                }

                public void onReject() {
                    QRResultActivity.this.finish();
                }
            });
            if (!this.mConfirmDialog.isShowing()) {
                this.mConfirmDialog.show();
            }
        }
    }

    private void initUI() {
        if (TextUtils.isEmpty(this.mQRResult)) {
            findViewById(R.id.txv_empty).setVisibility(0);
            findViewById(R.id.lyt_qrresult).setVisibility(8);
            return;
        }
        this.mFragment = (QRResultFragment) getFragmentManager().findFragmentById(R.id.lyt_qrresult);
        this.mFragment.showQRResult(this.mQRType, this.mQRResult, this.mCallingApp, AppUtil.isUserAgreeToRun());
    }
}
