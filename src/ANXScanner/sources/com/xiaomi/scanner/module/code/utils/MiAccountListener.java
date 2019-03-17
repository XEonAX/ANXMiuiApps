package com.xiaomi.scanner.module.code.utils;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.stats.UsageStatistics;
import java.util.regex.Pattern;

public class MiAccountListener implements BarcodeScannerListener {
    private static final String PATTERN_URL_MI_ACCOUNT_LOGIN = "https://.*\\.account\\.xiaomi\\.com/longPolling/login\\?.*";
    private static final Tag TAG = new Tag("AccountListener");
    private Context mContext;

    public MiAccountListener(Context context) {
        this.mContext = context;
    }

    private static boolean isMiAccountUrl(String url) {
        return !TextUtils.isEmpty(url) && Pattern.matches(PATTERN_URL_MI_ACCOUNT_LOGIN, url);
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        if (!isMiAccountUrl(result)) {
            return false;
        }
        try {
            startMiAccountLogin(result);
            return true;
        } catch (ActivityNotFoundException e) {
            Log.w(TAG, e.getMessage());
            return false;
        }
    }

    private void startMiAccountLogin(String url) {
        UsageStatistics.trackEvent(UsageStatistics.KEY_BARCODE_CALL_MIACCOUNT_COUNT);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setClassName("com.xiaomi.account", "com.xiaomi.account.ui.AccountWebActivity");
        intent.addFlags(268435456);
        intent.setData(Uri.parse(url));
        this.mContext.startActivity(intent);
    }
}
