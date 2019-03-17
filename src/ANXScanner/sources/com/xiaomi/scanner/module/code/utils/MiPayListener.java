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
import com.xiaomi.scanner.util.Util;
import java.util.regex.Pattern;

public class MiPayListener implements BarcodeScannerListener {
    private static final String MI_BI = "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/qrpay/[0-9a-zA-Z]{20}";
    private static final String MI_BI_WITHHOLD = "https://([a-zA-Z]+\\.)?m\\.mibi\\.(xiao)?mi\\.com/dsqr/[0-9a-zA-Z]{20}";
    private static final Tag TAG = new Tag("MiPayListener");
    private Context mContext;

    public MiPayListener(Context context) {
        this.mContext = context;
    }

    private boolean checkUrl(String url) {
        if (!TextUtils.isEmpty(url)) {
            if (Pattern.matches(MI_BI, url) || ConfigModel.instance.isMiBiPayRule(url)) {
                try {
                    UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_MIBI_COUNT);
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setClassName("com.xiaomi.payment", "com.xiaomi.payment.QrEntryActivity");
                    intent.addFlags(268435456);
                    intent.setData(Uri.parse(url));
                    this.mContext.startActivity(intent);
                    return true;
                } catch (ActivityNotFoundException e) {
                    Log.e(TAG, "start payment false", e);
                }
            } else if (Pattern.matches(MI_BI_WITHHOLD, url)) {
                return Util.launchDefaultBrowser(this.mContext, url);
            }
        }
        return false;
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        return checkUrl(result);
    }
}
