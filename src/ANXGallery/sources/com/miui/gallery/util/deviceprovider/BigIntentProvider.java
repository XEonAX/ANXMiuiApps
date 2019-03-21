package com.miui.gallery.util.deviceprovider;

public class BigIntentProvider implements IntentProviderInterface {
    public String getXiaomiAccountType() {
        return "com.xiaomi";
    }

    public String getExtraAccount() {
        return "account";
    }
}
