package com.miui.internal.telephony;

/* compiled from: SubscriptionManagerAndroidImpl */
class Api26SubscriptionManagerImpl extends Api24SubscriptionManagerImpl {
    Api26SubscriptionManagerImpl() {
    }

    protected int getSlotId(int subId) {
        try {
            return ((Integer) sSubscriptionManagerCls.getDeclaredMethod("getSlotIndex", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(subId)})).intValue();
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return super.getSlotId(subId);
        }
    }
}
