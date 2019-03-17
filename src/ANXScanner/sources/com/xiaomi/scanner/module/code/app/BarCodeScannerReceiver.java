package com.xiaomi.scanner.module.code.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.code.utils.CustomUrlListener;

public class BarCodeScannerReceiver extends BroadcastReceiver {
    public static final String ACTION_BARCODE_SCANNER_RECEIVER = "com.xiaomi.scanner.receiver.senderbarcodescanner";
    public static final String PERMISSION_BARCODE_SCANNER_RECEIVER = "com.xiaomi.scanner.receiver.RECEIVER";
    private static final Tag TAG = new Tag("BarCodeScannerReceiver");

    public void onReceive(Context context, Intent intent) {
        Log.v(TAG, "BarCodeScannerReceiver onReceive");
        if (intent != null && intent.hasExtra("result")) {
            String mQRResult = intent.getStringExtra("result");
            if (!TextUtils.isEmpty(mQRResult) && !new CustomUrlListener(context).handleBarcode(mQRResult)) {
                intent.setClass(context, QRResultActivity.class);
                intent.addFlags(268468224);
                context.startActivity(intent);
            }
        }
    }
}
