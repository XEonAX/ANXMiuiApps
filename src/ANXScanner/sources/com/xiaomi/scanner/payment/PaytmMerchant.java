package com.xiaomi.scanner.payment;

import android.content.Intent;
import android.net.Uri;

public class PaytmMerchant implements Merchant {
    private static final String PAYTM_PACKAGE_NAME = "net.one97.paytm";
    private static final String PAYTM_URI = "paytmmp://scan_pay?recipient=%s&amount_editable=1";

    public Intent getMerchantUpi(String QRCodeId) {
        String paytmUri = String.format(PAYTM_URI, new Object[]{QRCodeId});
        Intent paytmIntent = new Intent();
        paytmIntent.setAction("android.intent.action.VIEW");
        paytmIntent.setData(Uri.parse(paytmUri));
        paytmIntent.addFlags(335544320);
        return paytmIntent;
    }

    public String getPackageName() {
        return PAYTM_PACKAGE_NAME;
    }
}
