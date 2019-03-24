package com.miui.internal.telephony;

import android.os.Binder;
import java.util.ArrayList;
import java.util.List;
import miui.telephony.SubscriptionInfo;
import miui.telephony.SubscriptionManager;

/* compiled from: SubscriptionManagerAndroidImpl */
class Api21SubscriptionManagerImpl extends BaseSubscriptionManagerImpl {
    protected static Class sSubscriptionManagerCls;
    private Object mSubscriptionManager = null;

    /* compiled from: SubscriptionManagerAndroidImpl */
    private static class Api21SubscriptionInfoImpl extends SubscriptionInfo {
        private static Class sSubInfoRecordCls;
        private Object mSubInfoRecord;

        static {
            sSubInfoRecordCls = null;
            try {
                sSubInfoRecordCls = Class.forName("android.telephony.SubInfoRecord");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

        public Api21SubscriptionInfoImpl(Object subInfoRecord) {
            this.mSubInfoRecord = subInfoRecord;
        }

        public int getSubscriptionId() {
            try {
                return (int) sSubInfoRecordCls.getField("subId").getLong(this.mSubInfoRecord);
            } catch (Exception e) {
                BaseSubscriptionManagerImpl.logException(e);
                return SubscriptionManager.INVALID_SUBSCRIPTION_ID;
            }
        }

        public String getIccId() {
            try {
                return (String) sSubInfoRecordCls.getField("iccId").get(this.mSubInfoRecord);
            } catch (Exception e) {
                BaseSubscriptionManagerImpl.logException(e);
                return null;
            }
        }

        public int getSlotId() {
            try {
                return sSubInfoRecordCls.getField("slotId").getInt(this.mSubInfoRecord);
            } catch (Exception e) {
                BaseSubscriptionManagerImpl.logException(e);
                return SubscriptionManager.INVALID_SLOT_ID;
            }
        }

        public int getPhoneId() {
            return getSlotId();
        }

        public CharSequence getDisplayName() {
            try {
                return (CharSequence) sSubInfoRecordCls.getField("displayName").get(this.mSubInfoRecord);
            } catch (Exception e) {
                BaseSubscriptionManagerImpl.logException(e);
                return null;
            }
        }

        public String getDisplayNumber() {
            try {
                return (String) sSubInfoRecordCls.getField("number").get(this.mSubInfoRecord);
            } catch (Exception e) {
                BaseSubscriptionManagerImpl.logException(e);
                return null;
            }
        }

        public boolean isActivated() {
            return false;
        }
    }

    Api21SubscriptionManagerImpl() {
    }

    static {
        try {
            sSubscriptionManagerCls = Class.forName("android.telephony.SubscriptionManager");
        } catch (ClassNotFoundException e) {
            BaseSubscriptionManagerImpl.logException(e);
        }
    }

    public int getSlotIdForSubscription(int subId) {
        if (!SubscriptionManager.isValidSubscriptionId(subId)) {
            return INVALID_SLOT_ID;
        }
        int slotId = subId == DEFAULT_SUBSCRIPTION_ID ? DEFAULT_SLOT_ID : getSlotId(subId);
        return !SubscriptionManager.isValidSlotId(slotId) ? INVALID_SLOT_ID : slotId;
    }

    public int getSubscriptionIdForSlot(int slotId) {
        if (!SubscriptionManager.isValidSlotId(slotId)) {
            return INVALID_SUBSCRIPTION_ID;
        }
        if (slotId == DEFAULT_SLOT_ID) {
            return DEFAULT_SUBSCRIPTION_ID;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            int subscriptionId;
            for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
                if (subscriptionInfo.getSlotId() == slotId) {
                    subscriptionId = subscriptionInfo.getSubscriptionId();
                    return subscriptionId;
                }
            }
            Binder.restoreCallingIdentity(identity);
            subscriptionId = INVALID_SUBSCRIPTION_ID;
            Object subIds = getSubId(slotId);
            if (subIds instanceof int[]) {
                int[] ids = (int[]) subIds;
                subscriptionId = ids.length > 0 ? ids[0] : INVALID_SUBSCRIPTION_ID;
            } else if (subIds instanceof long[]) {
                long[] ids2 = (long[]) subIds;
                subscriptionId = ids2.length > 0 ? (int) ids2[0] : INVALID_SUBSCRIPTION_ID;
            }
            return subscriptionId;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    protected List<SubscriptionInfo> getAllSubscriptionInfoListInternal() {
        if (this.mSubscriptionManager == null) {
            this.mSubscriptionManager = newSubscriptionManagerInstance();
        }
        List<SubscriptionInfo> subInfoList = new ArrayList();
        if (this.mSubscriptionManager != null) {
            for (Object subInfoRecord : getAllSubInfoList(this.mSubscriptionManager)) {
                subInfoList.add(new Api21SubscriptionInfoImpl(subInfoRecord));
            }
        }
        return subInfoList;
    }

    private Object newSubscriptionManagerInstance() {
        try {
            return sSubscriptionManagerCls.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return null;
        }
    }

    private List<?> getAllSubInfoList(Object subscriptionManager) {
        try {
            return (List) sSubscriptionManagerCls.getDeclaredMethod("getAllSubInfoList", new Class[0]).invoke(subscriptionManager, new Object[0]);
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return new ArrayList();
        }
    }

    public int getDefaultSlotId() {
        return getSlotIdForSubscription(getDefaultSubId());
    }

    protected int getDefaultSubId() {
        try {
            return (int) ((Long) sSubscriptionManagerCls.getDeclaredMethod("getDefaultSubId", new Class[0]).invoke(null, new Object[0])).longValue();
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return INVALID_SUBSCRIPTION_ID;
        }
    }

    protected int getSlotId(int subId) {
        try {
            return ((Integer) sSubscriptionManagerCls.getDeclaredMethod("getSlotId", new Class[]{Long.TYPE}).invoke(null, new Object[]{Integer.valueOf(subId)})).intValue();
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return INVALID_SLOT_ID;
        }
    }

    private static Object getSubId(int slotId) {
        try {
            return sSubscriptionManagerCls.getDeclaredMethod("getSubId", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(slotId)});
        } catch (Exception e) {
            BaseSubscriptionManagerImpl.logException(e);
            return null;
        }
    }
}
