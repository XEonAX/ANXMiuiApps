package com.xiaomi.scanner.module.code.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.DialogUtil;
import java.util.regex.Pattern;

public class WeChatPayListener implements BarcodeScannerListener {
    private static final Tag TAG = new Tag("WeChatPayListener");
    private static final Pattern WECHAT = Pattern.compile("(http:\\/\\/weixin.qq.com\\/.*|weixin:\\/\\/.*)");
    private static final Pattern WECHAT_PAY = Pattern.compile("(https:\\/\\/wx\\.tenpay\\.com\\/f2f.*)");
    private Activity activity;
    private AlertDialog mWarnDialog;

    public WeChatPayListener(Activity activity) {
        this.activity = activity;
    }

    private void toWechat(Activity mActivity, String result) {
        UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_WECHAT_COUNT);
        Intent mmintent = new Intent();
        mmintent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.LauncherUI"));
        mmintent.putExtra("LauncherUI.From.Scaner.Shortcut", true);
        mmintent.setFlags(335544320);
        mmintent.setAction("android.intent.action.VIEW");
        if (mmintent.resolveActivityInfo(mActivity.getPackageManager(), 0) == null) {
            if (this.mWarnDialog == null) {
                this.mWarnDialog = DialogUtil.createConfirmAlert((Context) mActivity, new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                        WeChatPayListener.this.requestPreviewFrame();
                    }
                }, null, mActivity.getString(R.string.weixin_code_tip), mActivity.getString(R.string.back));
            }
            if (!this.mWarnDialog.isShowing()) {
                this.mWarnDialog.show();
                return;
            }
            return;
        }
        try {
            mActivity.startActivity(mmintent);
        } catch (Throwable e) {
            Log.e(TAG, "start open wechat error ", e);
            requestPreviewFrame();
        }
    }

    private void requestPreviewFrame() {
        if (this.activity instanceof ScanActivity) {
            ((ScanActivity) this.activity).requestPreviewFrame();
        }
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        boolean isWechat = false;
        if (type == QRCodeType.WEB_URL || type == QRCodeType.TEXT) {
            if (WECHAT.matcher(result).matches() || WECHAT_PAY.matcher(result).matches() || ConfigModel.instance.isWechatRule(result)) {
                isWechat = true;
            }
            if (isWechat) {
                toWechat(this.activity, result);
            }
        }
        return isWechat;
    }
}
