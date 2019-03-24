package com.miui.internal.telephony;

import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Field;

/* compiled from: TelephonyManagerAndroidImpl */
class Api21TelephonyManagerImpl extends BaseTelephonyManagerAndroidImpl {
    private String mMiuiDeviceId;

    Api21TelephonyManagerImpl() {
    }

    protected Class getClassForSubId() {
        return Long.TYPE;
    }

    public int getPhoneCount() {
        try {
            return ((Integer) TelephonyManager.class.getDeclaredMethod("getPhoneCount", new Class[0]).invoke(this.mTelephonyManager, new Object[0])).intValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return 1;
        }
    }

    public String getDeviceIdForSlot(int slotId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getDeviceId", new Class[]{Integer.TYPE}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(slotId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getDeviceIdForSlot(slotId);
        }
    }

    public String getMiuiDeviceId() {
        if (TextUtils.isEmpty(this.mMiuiDeviceId)) {
            if (getPhoneCount() < 2) {
                this.mMiuiDeviceId = getDeviceId();
            } else {
                int phoneCount = getPhoneCount();
                String deviceIdMax = "";
                for (int i = 0; i < phoneCount; i++) {
                    String deviceId = getDeviceIdForSlot(i);
                    if (!TextUtils.isEmpty(deviceId) && deviceId.compareTo(deviceIdMax) > 0) {
                        deviceIdMax = deviceId;
                    }
                }
                this.mMiuiDeviceId = deviceIdMax;
            }
        }
        return this.mMiuiDeviceId;
    }

    public String getImei() {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getImei", new Class[0]).invoke(this.mTelephonyManager, new Object[0]);
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getImei();
        }
    }

    public String getImeiForSlot(int slotId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getImei", new Class[]{Integer.TYPE}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(slotId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getImeiForSlot(slotId);
        }
    }

    public int getPhoneTypeForSubscription(int subId) {
        try {
            return ((Integer) TelephonyManager.class.getDeclaredMethod("getCurrentPhoneType", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)})).intValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getPhoneTypeForSubscription(subId);
        }
    }

    public String getLine1NumberForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getLine1NumberForSubscriber", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getLine1NumberForSubscription(subId);
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

    public boolean hasIccCard(int slotId) {
        try {
            return ((Boolean) TelephonyManager.class.getDeclaredMethod("hasIccCard", new Class[]{Long.TYPE}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(slotId)})).booleanValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.hasIccCard(slotId);
        }
    }

    public String getSimOperatorForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getSimOperator", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSimOperatorForSubscription(subId);
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

    public int getSimStateForSlot(int slotId) {
        try {
            return ((Integer) TelephonyManager.class.getDeclaredMethod("getSimState", new Class[]{Integer.TYPE}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(slotId)})).intValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSimStateForSlot(slotId);
        }
    }

    public String getSimSerialNumberForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getSimSerialNumber", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSimSerialNumberForSubscription(subId);
        }
    }

    public String getSubscriberIdForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getSubscriberId", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSubscriberIdForSubscription(subId);
        }
    }

    public String getNetworkOperatorNameForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getNetworkOperatorName", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getNetworkOperatorNameForSubscription(subId);
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

    public int getNetworkTypeForSubscription(int subId) {
        try {
            return ((Integer) TelephonyManager.class.getDeclaredMethod("getNetworkType", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)})).intValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getNetworkTypeForSubscription(subId);
        }
    }

    public String getSimCountryIsoForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getSimCountryIso", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getSimCountryIsoForSubscription(subId);
        }
    }

    public String getVoiceMailNumberForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getVoiceMailNumber", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getVoiceMailNumberForSubscription(subId);
        }
    }

    public String getVoiceMailAlphaTagForSubscription(int subId) {
        try {
            return (String) TelephonyManager.class.getDeclaredMethod("getVoiceMailNumber", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)});
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getVoiceMailAlphaTagForSubscription(subId);
        }
    }

    public int getCallStateForSubscription(int subId) {
        try {
            return ((Integer) TelephonyManager.class.getDeclaredMethod("getCallState", new Class[]{getClassForSubId()}).invoke(this.mTelephonyManager, new Object[]{Integer.valueOf(subId)})).intValue();
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
            return super.getCallStateForSubscription(subId);
        }
    }

    public void listenForSubscription(int subId, PhoneStateListener listener, int events) {
        try {
            Field subIdField = PhoneStateListener.class.getDeclaredField("mSubId");
            long old = subIdField.getLong(listener);
            subIdField.setLong(listener, (long) subId);
            listen(listener, events);
            subIdField.setLong(listener, old);
        } catch (Exception e) {
            BaseTelephonyManagerAndroidImpl.logException(e);
        }
    }
}
