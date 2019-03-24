package com.miui.internal.telephony;

import android.telephony.TelephonyManager;

/* compiled from: TelephonyManagerAndroidImpl */
class Api24TelephonyManagerImpl extends Api23TelephonyManagerImpl {
    Api24TelephonyManagerImpl() {
    }

    public String getLine1NumberForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getLine1Number", new Class[]{Integer.TYPE}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getLine1NumberForSubscription(subId);
        }
    }

    public String getSimOperatorNameForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getSimOperatorName", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSimOperatorNameForSubscription(subId);
        }
    }

    public String getNetworkOperatorForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getNetworkOperator", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getNetworkOperatorForSubscription(subId);
        }
    }

    public String getNetworkCountryIsoForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getNetworkCountryIso", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getNetworkCountryIsoForSubscription(subId);
        }
    }
}
