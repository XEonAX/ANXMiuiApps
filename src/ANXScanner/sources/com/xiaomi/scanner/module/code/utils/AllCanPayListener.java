package com.xiaomi.scanner.module.code.utils;

import android.app.Activity;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.dialog.ChoosePayTypeDialog;
import com.xiaomi.scanner.dialog.ChoosePayTypeDialog.OnPayTypeClickListener;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.stats.UsageStatistics;
import com.xiaomi.scanner.util.AppJumpUtils;
import com.xiaomi.scanner.util.Constants;
import com.xiaomi.scanner.util.SPUtils;

public class AllCanPayListener implements BarcodeScannerListener, OnPayTypeClickListener {
    private Activity activity;
    private ChoosePayTypeDialog dialog;

    public AllCanPayListener(Activity activity) {
        this.activity = activity;
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        boolean isAllCanPay = ConfigModel.instance.isAllCanPayRule(result);
        if (isAllCanPay) {
            return toChooseOnePay(result);
        }
        return isAllCanPay;
    }

    private boolean toChooseOnePay(String result) {
        switch (SPUtils.getLocal(Constants.KEY_PREFERENCE_PAY_SELECT, 2).intValue()) {
            case 0:
                return AppJumpUtils.startAlipay(this.activity, result);
            case 1:
                boolean success = toWechat(this.activity, result);
                if (success) {
                    return success;
                }
                return AppJumpUtils.startAlipay(this.activity, result);
            case 2:
                if (getWechatIntent().resolveActivityInfo(this.activity.getPackageManager(), 0) == null) {
                    return AppJumpUtils.startAlipay(this.activity, result);
                }
                showChooseDialog(result);
                return true;
            default:
                return false;
        }
    }

    private void showChooseDialog(String result) {
        if (this.dialog != null) {
            this.dialog.dismiss();
        }
        this.dialog = ChoosePayTypeDialog.showChoosePayDialog(this.activity, result, this, new OnDismissListener() {
            public void onDismiss(DialogInterface dialog) {
                AllCanPayListener.this.requestPreviewFrame();
            }
        });
    }

    private Intent getWechatIntent() {
        Intent mmintent = new Intent();
        mmintent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.LauncherUI"));
        mmintent.putExtra("LauncherUI.From.Scaner.Shortcut", true);
        mmintent.setFlags(335544320);
        mmintent.setAction("android.intent.action.VIEW");
        return mmintent;
    }

    private boolean toWechat(Activity mActivity, String result) {
        UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_WECHAT_COUNT);
        Intent mmintent = getWechatIntent();
        if (mmintent.resolveActivityInfo(mActivity.getPackageManager(), 0) == null) {
            return false;
        }
        try {
            mActivity.startActivity(mmintent);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public void onToPayClick(boolean wechat, String result) {
        boolean success = false;
        if (wechat) {
            success = toWechat(this.activity, result);
        }
        if (!success) {
            AppJumpUtils.startAlipay(this.activity, result);
        }
        if (!success) {
            requestPreviewFrame();
        }
    }

    private void requestPreviewFrame() {
        if (this.activity instanceof ScanActivity) {
            ((ScanActivity) this.activity).requestPreviewFrame();
        }
    }

    public void onCancel() {
    }
}
