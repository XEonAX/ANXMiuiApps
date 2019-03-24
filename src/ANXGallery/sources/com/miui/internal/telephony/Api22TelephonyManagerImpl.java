package com.miui.internal.telephony;

import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import java.lang.reflect.Field;

/* compiled from: TelephonyManagerAndroidImpl */
class Api22TelephonyManagerImpl extends Api21TelephonyManagerImpl {
    Api22TelephonyManagerImpl() {
    }

    protected Class getClassForSubId() {
        return Integer.TYPE;
    }

    public boolean hasIccCard(int slotId) {
        try {
            return ((Boolean) TelephonyManager.class.getDeclaredMethod("hasIccCard", new Class[]{Integer.TYPE}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(slotId)})).booleanValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.hasIccCard(slotId);
        }
    }

    public void listenForSubscription(int subId, PhoneStateListener listener, int events) {
        try {
            Field subIdField = PhoneStateListener.class.getDeclaredField("mSubId");
            int old = subIdField.getInt(listener);
            subIdField.setInt(listener, subId);
            listen(listener, events);
            subIdField.setInt(listener, old);
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
        }
    }
}
