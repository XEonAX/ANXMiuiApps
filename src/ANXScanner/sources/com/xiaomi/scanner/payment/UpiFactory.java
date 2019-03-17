package com.xiaomi.scanner.payment;

public class UpiFactory {

    public enum UpiConstant {
        PAYTM,
        NOTHING
    }

    public static Merchant getMerchant(UpiConstant upiConstant) {
        switch (upiConstant) {
            case PAYTM:
                return new PaytmMerchant();
            default:
                return null;
        }
    }
}
