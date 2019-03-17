package com.xiaomi.scanner.payment;

import android.content.Intent;

interface Merchant {
    Intent getMerchantUpi(String str);

    String getPackageName();
}
