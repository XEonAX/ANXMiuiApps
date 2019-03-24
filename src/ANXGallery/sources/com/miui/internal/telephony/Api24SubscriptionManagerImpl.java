package com.miui.internal.telephony;

/* compiled from: SubscriptionManagerAndroidImpl */
class Api24SubscriptionManagerImpl extends Api22SubscriptionManagerImpl {
    Api24SubscriptionManagerImpl() {
    }

    protected int getDefaultSubId() {
        try {
            return ((Integer) sSubscriptionManagerCls.getDeclaredMethod("getDefaultSubscriptionId", new Class[0]).invoke(null, new Object[0])).intValue();
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return super.getDefaultSubId();
        }
    }
}
