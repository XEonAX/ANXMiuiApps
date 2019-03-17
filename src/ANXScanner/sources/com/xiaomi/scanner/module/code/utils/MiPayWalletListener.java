package com.xiaomi.scanner.module.code.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.util.regex.Pattern;

public class MiPayWalletListener implements BarcodeScannerListener {
    private static final String MIPAY_APP = "https://app\\.mipay\\.com/.*";
    private static final String MIPAY_APPLICATION_ID = "com.mipay.wallet";
    private static final String MI_PAY = "https://([a-zA-Z]+\\.)?m\\.pay\\.xiaomi\\.com/qrpay/[0-9a-zA-Z]{20}.*";
    private static final Tag TAG = new Tag("WalletListener");
    private Context mContext;

    public MiPayWalletListener(Context context) {
        this.mContext = context;
    }

    private boolean checkUrl(String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        Intent intent;
        if (Pattern.matches(MI_PAY, url)) {
            try {
                UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_MIPAY_COUNT);
                intent = new Intent("android.intent.action.VIEW");
                intent.setClassName(MIPAY_APPLICATION_ID, "com.mipay.counter.ui.pay.QrEntryActivity");
                intent.addFlags(268435456);
                intent.setData(Uri.parse(url));
                this.mContext.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.w(TAG, e.getMessage());
                return false;
            }
        } else if (!Pattern.matches(MIPAY_APP, url) && !ConfigModel.instance.isMipayRule(url)) {
            return false;
        } else {
            try {
                UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_MIPAY_COUNT);
                intent = new Intent("android.intent.action.VIEW");
                intent.setPackage(MIPAY_APPLICATION_ID);
                intent.addFlags(268435456);
                intent.setData(Uri.parse(url));
                this.mContext.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.w(TAG, "", e2);
                return false;
            }
        }
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        return checkUrl(result);
    }
}
