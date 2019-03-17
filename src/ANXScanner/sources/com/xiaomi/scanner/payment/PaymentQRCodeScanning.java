package com.xiaomi.scanner.payment;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.payment.UpiFactory.UpiConstant;
import com.xiaomi.scanner.util.AppUtil;

public class PaymentQRCodeScanning {
    private static final String GOOGLE_PLAY_BASE_URL = "market://details?id=";
    private static final Tag TAG = new Tag("PaymentQRCodeScanning");
    private Context mContext = null;

    public boolean scanningCompleted(String QRCodeId, Context context, UpiConstant upiConstant) {
        this.mContext = context;
        Log.d(TAG, "PaymentQRCodeScanning scanningCompleted mContext : " + this.mContext);
        if (this.mContext == null || TextUtils.isEmpty(QRCodeId)) {
            return false;
        }
        UpiConstant detectedUpiMerchant = upiConstant;
        if (detectedUpiMerchant != UpiConstant.PAYTM) {
            return false;
        }
        Log.d(TAG, "PaymentQRCodeScanning scanningCompleted UpiFactory.UpiConstant.PAYTM");
        Merchant merchantDetected = UpiFactory.getMerchant(detectedUpiMerchant);
        if (AppUtil.isPackageAvailable(context, merchantDetected.getPackageName())) {
            Log.d(TAG, "PaymentQRCodeScanning scanningCompleted app is installed ");
            startActivity(merchantDetected.getMerchantUpi(QRCodeId));
        } else {
            Log.d(TAG, "PaymentQRCodeScanning scanningCompleted app is not installed ");
            installAppFromAppStore(merchantDetected.getPackageName());
        }
        return true;
    }

    private void startActivity(Intent merchantIntent) {
        try {
            this.mContext.startActivity(merchantIntent);
        } catch (ActivityNotFoundException e) {
            Log.e(TAG, "PaymentQRCodeScanning Paytm application not found : ", e);
        }
    }

    private void installAppFromAppStore(String packageName) {
        Intent marketIntent = new Intent("android.intent.action.VIEW", Uri.parse(GOOGLE_PLAY_BASE_URL + packageName));
        marketIntent.addFlags(1476919296);
        startActivity(marketIntent);
    }
}
