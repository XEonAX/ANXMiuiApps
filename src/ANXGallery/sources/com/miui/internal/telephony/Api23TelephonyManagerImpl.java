package com.miui.internal.telephony;

import android.telephony.TelephonyManager;

/* compiled from: TelephonyManagerAndroidImpl */
class Api23TelephonyManagerImpl extends Api22TelephonyManagerImpl {
    Api23TelephonyManagerImpl() {
    }

    public String getSimOperatorNameForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getSimOperatorNameForSubscription", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSimOperatorNameForSubscription(subId);
        }
    }

    public String getNetworkOperatorForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getNetworkOperatorForSubscription", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getNetworkOperatorForSubscription(subId);
        }
    }

    public String getNetworkCountryIsoForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getNetworkCountryIsoForSubscription", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getNetworkCountryIsoForSubscription(subId);
        }
    }
}
