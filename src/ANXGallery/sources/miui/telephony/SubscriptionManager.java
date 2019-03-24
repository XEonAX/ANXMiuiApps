package miui.telephony;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import com.miui.internal.telephony.SubscriptionManagerAndroidImpl;
import com.miui.internal.vip.utils.JsonParser;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import miui.os.C0015Build;
import miui.reflect.Method;

public abstract class SubscriptionManager {
    public static final int DEFAULT_PHONE_ID = ConstantsDefiner.getDefaultPhoneIdConstant();
    public static final int DEFAULT_SLOT_ID = ConstantsDefiner.getDefaultSlotIdConstant();
    public static final int DEFAULT_SUBSCRIPTION_ID = ConstantsDefiner.getDefaultSubscriptionIdConstant();
    public static final int INVALID_PHONE_ID = ConstantsDefiner.getInvalidPhoneIdConstant();
    public static final int INVALID_SLOT_ID = ConstantsDefiner.getInvalidSlotIdConstant();
    public static final int INVALID_SUBSCRIPTION_ID = ConstantsDefiner.getInvalidSubscriptionIdConstant();
    protected static final String LOG_TAG = "SubMgr";
    public static final String PHONE_KEY = ConstantsDefiner.getPhoneKeyConstant();
    public static final int SLOT_ID_1 = 0;
    public static final int SLOT_ID_2 = 1;
    public static final String SLOT_KEY = ConstantsDefiner.getSlotKeyConstant();
    public static final String SUBSCRIPTION_KEY = ConstantsDefiner.getSubscriptionKeyConstant();
    private List<SubscriptionInfo> mInsertedSubscriptionInfos = null;
    private ArrayList<OnSubscriptionsChangedListener> mListeners = null;
    private Object mLock = new Object();
    private boolean mSubscriptionsCacheEnabled = false;

    static class ConstantsDefiner {
        private static final String PHONE_ID = "phone_id";
        private static final String SLOT_ID = "slot_id";
        private static final String SUBSCRIPTION_ID = "subscription_id";

        private ConstantsDefiner() {
        }

        static int getInvalidSubscriptionIdConstant() {
            return -1;
        }

        static int getInvalidPhoneIdConstant() {
            return -1;
        }

        static int getInvalidSlotIdConstant() {
            return -1;
        }

        static int getDefaultSubscriptionIdConstant() {
            return Integer.MAX_VALUE;
        }

        static int getDefaultPhoneIdConstant() {
            return Integer.MAX_VALUE;
        }

        static int getDefaultSlotIdConstant() {
            return Integer.MAX_VALUE;
        }

        static String getSubscriptionKeyConstant() {
            return "subscription_id";
        }

        static String getPhoneKeyConstant() {
            return PHONE_ID;
        }

        static String getSlotKeyConstant() {
            return SLOT_ID;
        }
    }

    private static class Holder {
        static final SubscriptionManager INSTANCE;

        private Holder() {
        }

        static {
            SubscriptionManager miuiSubscriptionManager;
            if (C0015Build.IS_MIUI) {
                miuiSubscriptionManager = getMiuiSubscriptionManager();
            } else {
                miuiSubscriptionManager = SubscriptionManagerAndroidImpl.getDefault();
            }
            INSTANCE = miuiSubscriptionManager;
        }

        private static SubscriptionManager getMiuiSubscriptionManager() {
            try {
                Class cls = Class.forName("miui.telephony.SubscriptionManagerEx");
                return (SubscriptionManager) Method.of(cls, "getDefault", cls, new Class[0]).invokeObject(cls, null, new Object[0]);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public interface OnSubscriptionsChangedListener {
        void onSubscriptionsChanged();
    }

    protected abstract void addOnSubscriptionsChangedListenerInternal();

    protected abstract List<SubscriptionInfo> getAllSubscriptionInfoListInternal();

    public abstract int getDefaultDataSlotId();

    public abstract int getDefaultDataSubscriptionId();

    public abstract SubscriptionInfo getDefaultDataSubscriptionInfo();

    protected abstract int getDefaultSlotIdInternal();

    public abstract int getDefaultSmsSubscriptionId();

    public abstract SubscriptionInfo getDefaultSmsSubscriptionInfo();

    public abstract int getDefaultVoiceSlotId();

    public abstract int getDefaultVoiceSubscriptionId();

    public abstract SubscriptionInfo getDefaultVoiceSubscriptionInfo();

    protected abstract List<SubscriptionInfo> getSubscriptionInfoListInternal();

    protected abstract void removeOnSubscriptionsChangedListenerInternal();

    public abstract void setDefaultDataSlotId(int i);

    public abstract void setDefaultSmsSubscriptionId(int i);

    public abstract void setDefaultVoiceSlotId(int i);

    public static SubscriptionManager getDefault() {
        return Holder.INSTANCE;
    }

    public void addOnSubscriptionsChangedListener(OnSubscriptionsChangedListener listener) {
        if (PhoneDebug.VDBG) {
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("addOnSubscriptionsChangedListener listener=");
            stringBuilder.append(listener.getClass().getName());
            Rlog.i(str, stringBuilder.toString());
        }
        synchronized (this.mLock) {
            if (this.mListeners == null) {
                this.mListeners = new ArrayList();
            }
            if (!this.mListeners.contains(listener)) {
                this.mListeners.add(listener);
                addOnSubscriptionsChangedListenerInternal();
            }
        }
    }

    /* JADX WARNING: Missing block: B:13:0x0021, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void removeOnSubscriptionsChangedListener(OnSubscriptionsChangedListener listener) {
        synchronized (this.mLock) {
            if (this.mListeners == null) {
                return;
            }
            this.mListeners.remove(listener);
            if (this.mListeners.size() == 0) {
                this.mListeners = null;
                if (!this.mSubscriptionsCacheEnabled) {
                    removeOnSubscriptionsChangedListenerInternal();
                }
            }
        }
    }

    public void enableSubscriptionsCache() {
        synchronized (this.mLock) {
            this.mSubscriptionsCacheEnabled = true;
            addOnSubscriptionsChangedListenerInternal();
        }
    }

    public void disableSubscriptionsCache() {
        synchronized (this.mLock) {
            this.mSubscriptionsCacheEnabled = false;
            this.mInsertedSubscriptionInfos = null;
            if (this.mListeners == null || this.mListeners.size() == 0) {
                removeOnSubscriptionsChangedListenerInternal();
            }
        }
    }

    private void ensureSubscriptionInfoCache(boolean forceUpdate) {
        boolean update = false;
        if (forceUpdate || this.mInsertedSubscriptionInfos == null) {
            this.mInsertedSubscriptionInfos = getSubscriptionInfoListInternal();
            if (this.mInsertedSubscriptionInfos == null) {
                this.mInsertedSubscriptionInfos = new ArrayList();
            }
            update = true;
        }
        if (update && PhoneDebug.VDBG) {
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ensureSubscriptionInfoCache ");
            stringBuilder.append(forceUpdate ? "" : "false");
            stringBuilder.append(" insert=");
            stringBuilder.append(Arrays.toString(this.mInsertedSubscriptionInfos.toArray()));
            Rlog.i(str, stringBuilder.toString());
        }
    }

    protected void onSubscriptionInfoChanged() {
        if (this.mSubscriptionsCacheEnabled) {
            new AsyncTask<Void, Void, Void>() {
                protected Void doInBackground(Void... params) {
                    SubscriptionManager.this.ensureSubscriptionInfoCache(true);
                    return null;
                }

                protected void onPostExecute(Void result) {
                    SubscriptionManager.this.notifyOnSubscriptionsChangedListeners();
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[]{(Void) null});
            return;
        }
        notifyOnSubscriptionsChangedListeners();
    }

    private void notifyOnSubscriptionsChangedListeners() {
        synchronized (this.mLock) {
            if (this.mListeners != null) {
                if (PhoneDebug.VDBG) {
                    String str = LOG_TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("notify OnSubscriptionsChangedListener size=");
                    stringBuilder.append(this.mListeners.size());
                    Rlog.i(str, stringBuilder.toString());
                }
                Iterator it = this.mListeners.iterator();
                while (it.hasNext()) {
                    ((OnSubscriptionsChangedListener) it.next()).onSubscriptionsChanged();
                }
            }
        }
    }

    public SubscriptionInfo getSubscriptionInfoForSubscription(int subId) {
        if (!isValidSubscriptionId(subId)) {
            return null;
        }
        if (subId == DEFAULT_SUBSCRIPTION_ID) {
            return getSubscriptionInfoForSlot(getDefaultSlotId());
        }
        for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
            if (subscriptionInfo.getSubscriptionId() == subId) {
                return subscriptionInfo;
            }
        }
        return null;
    }

    public SubscriptionInfo getSubscriptionInfoForSlot(int slotId) {
        if (!isValidSlotId(slotId)) {
            return null;
        }
        if (slotId == DEFAULT_SLOT_ID) {
            slotId = getDefaultSlotId();
        }
        for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
            if (subscriptionInfo.getSlotId() == slotId) {
                return subscriptionInfo;
            }
        }
        return null;
    }

    public List<SubscriptionInfo> getAllSubscriptionInfoList() {
        return getAllSubscriptionInfoListInternal();
    }

    public List<SubscriptionInfo> getSubscriptionInfoList() {
        if (this.mSubscriptionsCacheEnabled) {
            ensureSubscriptionInfoCache(false);
            return this.mInsertedSubscriptionInfos;
        }
        List<SubscriptionInfo> infos = getSubscriptionInfoListInternal();
        if (infos == null) {
            infos = new ArrayList();
        }
        return infos;
    }

    public List<SubscriptionInfo> getActiveSubscriptionInfoList() {
        List<SubscriptionInfo> activeSubscriptionInfoList = new ArrayList();
        for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
            if (subscriptionInfo.isActivated()) {
                activeSubscriptionInfoList.add(subscriptionInfo);
            }
        }
        return activeSubscriptionInfoList;
    }

    public int getAllSubscriptionInfoCount() {
        int count = 0;
        long identity = Binder.clearCallingIdentity();
        try {
            count = getAllSubscriptionInfoList().size();
            return count;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public int getSubscriptionInfoCount() {
        int activeCount = 0;
        long identity = Binder.clearCallingIdentity();
        try {
            for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
                if (subscriptionInfo.isActivated()) {
                    activeCount++;
                }
            }
            return activeCount;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public int getSlotIdForSubscription(int subId) {
        if (!isValidSubscriptionId(subId)) {
            return INVALID_SLOT_ID;
        }
        int slotId = subId == DEFAULT_SUBSCRIPTION_ID ? DEFAULT_SLOT_ID : getSlotId(subId);
        return !isValidSlotId(slotId) ? INVALID_SLOT_ID : slotId;
    }

    public int getPhoneIdForSubscription(int subId) {
        if (!isValidSubscriptionId(subId)) {
            return INVALID_PHONE_ID;
        }
        int phoneId = subId == DEFAULT_SUBSCRIPTION_ID ? DEFAULT_PHONE_ID : getSlotId(subId);
        return !isValidPhoneId(phoneId) ? INVALID_PHONE_ID : phoneId;
    }

    protected int getSlotId(int subId) {
        long identity = Binder.clearCallingIdentity();
        try {
            for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
                if (subscriptionInfo.getSubscriptionId() == subId) {
                    int slotId = subscriptionInfo.getSlotId();
                    return slotId;
                }
            }
            Binder.restoreCallingIdentity(identity);
            return INVALID_PHONE_ID;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public int getPhoneIdForSlot(int slotId) {
        return slotId;
    }

    public int getSlotIdForPhone(int phoneId) {
        return phoneId;
    }

    public int getSubscriptionIdForSlot(int slotId) {
        if (!isValidSlotId(slotId)) {
            return INVALID_SUBSCRIPTION_ID;
        }
        if (slotId == DEFAULT_SLOT_ID) {
            return DEFAULT_SUBSCRIPTION_ID;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            for (SubscriptionInfo subscriptionInfo : getSubscriptionInfoList()) {
                if (subscriptionInfo.getSlotId() == slotId) {
                    int subscriptionId = subscriptionInfo.getSubscriptionId();
                    return subscriptionId;
                }
            }
            Binder.restoreCallingIdentity(identity);
            return INVALID_SUBSCRIPTION_ID;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public int getDefaultSubscriptionId() {
        int subId = INVALID_SUBSCRIPTION_ID;
        if (TelephonyManager.getDefault().isVoiceCapable()) {
            subId = getDefaultVoiceSubscriptionId();
        } else {
            subId = getDefaultDataSubscriptionId();
        }
        if (!isValidSubscriptionId(subId) || subId == DEFAULT_SUBSCRIPTION_ID) {
            return getSubscriptionIdForSlot(getDefaultSlotIdInternal());
        }
        return subId;
    }

    public SubscriptionInfo getDefaultSubscriptionInfo() {
        return getSubscriptionInfoForSubscription(getDefaultSubscriptionId());
    }

    public int getDefaultSlotId() {
        int subId = INVALID_SUBSCRIPTION_ID;
        if (TelephonyManager.getDefault().isVoiceCapable()) {
            subId = getDefaultVoiceSubscriptionId();
        } else {
            subId = getDefaultDataSubscriptionId();
        }
        int slotId = INVALID_SLOT_ID;
        if (isValidSubscriptionId(subId)) {
            slotId = getSlotIdForSubscription(subId);
        }
        if (!isValidSlotId(slotId) || slotId == DEFAULT_SLOT_ID) {
            return getDefaultSlotIdInternal();
        }
        return slotId;
    }

    public void setDefaultVoiceSubscriptionId(int subId) {
        setDefaultVoiceSlotId(getSlotIdForSubscription(subId));
    }

    public void setDefaultDataSubscriptionId(int subId) {
        setDefaultDataSlotId(getSlotIdForSubscription(subId));
    }

    public int getDefaultSmsSlotId() {
        return getSlotIdForSubscription(getDefaultSmsSubscriptionId());
    }

    public void setDefaultSmsSlotId(int slotId) {
        if (!isValidSlotId(slotId)) {
            slotId = INVALID_SLOT_ID;
        }
        if (slotId != DEFAULT_SLOT_ID && slotId != getDefaultSmsSlotId()) {
            setDefaultSmsSubscriptionId(getSubscriptionIdForSlot(slotId));
        }
    }

    public static boolean isValidSubscriptionId(int subId) {
        return subId > INVALID_SUBSCRIPTION_ID;
    }

    public static boolean isValidSlotId(int slotId) {
        return (slotId >= 0 && slotId < TelephonyManager.getDefault().getPhoneCount()) || slotId == DEFAULT_SLOT_ID;
    }

    public static boolean isRealSlotId(int slotId) {
        return slotId >= 0 && slotId < TelephonyManager.getDefault().getPhoneCount();
    }

    public static boolean isValidPhoneId(int phoneId) {
        return (phoneId >= 0 && phoneId < TelephonyManager.getDefault().getPhoneCount()) || phoneId == DEFAULT_PHONE_ID;
    }

    public static void putSlotIdExtra(Intent intent, int slotId) {
        putSlotIdPhoneIdAndSubIdExtra(intent, slotId, getDefault().getPhoneIdForSlot(slotId), getDefault().getSubscriptionIdForSlot(slotId));
    }

    public static void putPhoneIdExtra(Intent intent, int phoneId) {
        int slotId = getDefault().getSlotIdForPhone(phoneId);
        putSlotIdPhoneIdAndSubIdExtra(intent, slotId, phoneId, getDefault().getSubscriptionIdForSlot(slotId));
    }

    public static void putSubscriptionIdExtra(Intent intent, int subId) {
        putSlotIdPhoneIdAndSubIdExtra(intent, getDefault().getSlotIdForSubscription(subId), getDefault().getPhoneIdForSubscription(subId), subId);
    }

    public static void putSlotIdPhoneIdAndSubIdExtra(Intent intent, int slotId, int phoneId, int subId) {
        intent.putExtra(SUBSCRIPTION_KEY, subId);
        intent.putExtra(PHONE_KEY, phoneId);
        intent.putExtra(SLOT_KEY, slotId);
    }

    public static void putSlotId(Bundle bundle, int slotId) {
        putSlotIdPhoneIdAndSubId(bundle, slotId, getDefault().getPhoneIdForSlot(slotId), getDefault().getSubscriptionIdForSlot(slotId));
    }

    public static void putPhoneId(Bundle bundle, int phoneId) {
        int slotId = getDefault().getSlotIdForPhone(phoneId);
        putSlotIdPhoneIdAndSubId(bundle, slotId, phoneId, getDefault().getSubscriptionIdForSlot(slotId));
    }

    public static void putSubscriptionId(Bundle bundle, int subId) {
        putSlotIdPhoneIdAndSubId(bundle, getDefault().getSlotIdForSubscription(subId), getDefault().getPhoneIdForSubscription(subId), subId);
    }

    public static void putSlotIdPhoneIdAndSubId(Bundle bundle, int slotId, int phoneId, int subId) {
        bundle.putInt(SUBSCRIPTION_KEY, subId);
        bundle.putInt(PHONE_KEY, phoneId);
        bundle.putInt(SLOT_KEY, slotId);
    }

    public static int getSlotIdExtra(Intent intent, int defaultValue) {
        return intent.getIntExtra(SLOT_KEY, defaultValue);
    }

    public static int getSubscriptionIdExtra(Intent intent, int defaultValue) {
        return intent.getIntExtra(SUBSCRIPTION_KEY, defaultValue);
    }

    public static int getPhoneIdExtra(Intent intent, int defaultValue) {
        return intent.getIntExtra(PHONE_KEY, defaultValue);
    }

    public static int getSlotId(Bundle bundle, int defaultValue) {
        return bundle.getInt(SLOT_KEY, defaultValue);
    }

    public static int getSubscriptionId(Bundle bundle, int defaultValue) {
        return bundle.getInt(SUBSCRIPTION_KEY, defaultValue);
    }

    public static int getPhoneId(Bundle bundle, int defaultValue) {
        return bundle.getInt(PHONE_KEY, defaultValue);
    }

    public static String toSimpleString(List<SubscriptionInfo> infos) {
        int i = 0;
        int size = infos == null ? 0 : infos.size();
        if (size <= 0) {
            return JsonParser.EMPTY_ARRAY;
        }
        SubscriptionInfo[] subs = new SubscriptionInfo[size];
        infos.toArray(subs);
        StringBuilder sb = new StringBuilder(size * 64);
        sb.append("[ size=");
        sb = sb.append(size);
        int length = subs.length;
        while (i < length) {
            SubscriptionInfo si = subs[i];
            if (si == null) {
                Rlog.i(LOG_TAG, "toSimpleString SubscriptionInfo size was changed");
            } else {
                sb.append(" {id=");
                sb.append(si.getSubscriptionId());
                sb.append(" iccid=");
                sb.append(PhoneDebug.VDBG ? si.getIccId() : TelephonyUtils.pii(si.getIccId()));
                sb.append(" slot=");
                sb.append(si.getSlotId());
                sb.append(" active=");
                sb.append(si.isActivated());
                sb.append('}');
            }
            i++;
        }
        sb.append(']');
        return sb.toString();
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("SubscriptionManager:");
        try {
            StringBuilder sb = new StringBuilder(512);
            sb.append("mListeners=");
            sb.append('[');
            if (this.mListeners != null) {
                Iterator it = this.mListeners.iterator();
                while (it.hasNext()) {
                    OnSubscriptionsChangedListener l = (OnSubscriptionsChangedListener) it.next();
                    sb.append('{');
                    sb.append(l.getClass().getName());
                    sb.append('}');
                }
            }
            sb.append(']');
            pw.println(sb.toString());
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("mInsertedSubscriptionInfos=");
            stringBuilder.append(this.mInsertedSubscriptionInfos);
            pw.println(stringBuilder.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        pw.flush();
    }
}
