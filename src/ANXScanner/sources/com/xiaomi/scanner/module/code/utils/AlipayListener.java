package com.xiaomi.scanner.module.code.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.scanner.config.ConfigModel;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.codec.QRCodeType;
import com.xiaomi.scanner.util.AppJumpUtils;
import com.xiaomi.scanner.util.Constants;
import java.util.List;
import java.util.regex.Pattern;

public class AlipayListener implements BarcodeScannerListener {
    private static final Pattern NUMBER = Pattern.compile("[0-9]*");
    private static final Tag TAG = new Tag("AlipayListener");
    private Context mContext;

    public AlipayListener(Context context) {
        this.mContext = context;
    }

    private static boolean isAlipayUrl(String url) {
        String host = Uri.parse(url).getHost();
        if ((!TextUtils.isEmpty(host) && host.equalsIgnoreCase(Constants.ALPAY_HOST)) || isAlipayNumber(url) || isCanAlipayFromConfig(url)) {
            return true;
        }
        return false;
    }

    private static boolean isCanAlipayFromConfig(String url) {
        List<Pattern> rules = ConfigModel.instance.getPaymentRuleList();
        if (rules == null || rules.isEmpty()) {
            Log.i(TAG, "no config rules");
            return false;
        }
        for (Pattern pattern : rules) {
            if (pattern.matcher(url).matches()) {
                return true;
            }
        }
        return false;
    }

    private static boolean isAlipayNumber(String url) {
        CharSequence replace = url.replace(" ", "");
        if ((replace.length() == 17 || replace.length() == 18) && replace.substring(0, 2).equals("28")) {
            return NUMBER.matcher(replace).matches();
        }
        return false;
    }

    public boolean handleBarcode(String result, QRCodeType type) {
        boolean ret = isAlipayUrl(result);
        if (ret) {
            return AppJumpUtils.startAlipay(this.mContext, result);
        }
        return ret;
    }
}
