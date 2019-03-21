package com.xiaomi.push.service;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIIDUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ScheduledJobManager;
import java.util.ArrayList;

public class MIIDManager {
    private static volatile MIIDManager sInstance;
    private AccountManager mAccountManager;
    private Context mContext;
    private ArrayList<MIIDUpdatedCallback> mMIIDUpdatedCallbacks;
    private OnAccountsUpdateListener mMIIDUpdatedlistener;
    private Object mObject = new Object();

    public interface MIIDUpdatedCallback {
        void onMIIDUpdate(String str, Context context);
    }

    private MIIDManager(Context context) {
        this.mContext = context;
        if (MIIDUtils.checkGETACCOUNTPermission(this.mContext)) {
            this.mAccountManager = AccountManager.get(this.mContext);
            this.mMIIDUpdatedCallbacks = new ArrayList();
        }
    }

    public static MIIDManager getInstance(Context context) {
        if (sInstance == null) {
            synchronized (MIIDManager.class) {
                if (sInstance == null) {
                    sInstance = new MIIDManager(context);
                }
            }
        }
        return sInstance;
    }

    private void initMIIDUpdateListener() {
        if (this.mMIIDUpdatedlistener == null) {
            this.mMIIDUpdatedlistener = new OnAccountsUpdateListener() {
                public void onAccountsUpdated(final Account[] accounts) {
                    ScheduledJobManager.getInstance(MIIDManager.this.mContext).addOneShootJob(new Runnable() {
                        public void run() {
                            MIIDManager.this.updateMIIDAccount(accounts);
                        }
                    });
                }
            };
        }
    }

    private void updateMIIDAccount(Account[] accounts) {
        boolean hasNewMIID = false;
        Account miAccount = null;
        if (accounts != null && accounts.length > 0) {
            for (Account account : accounts) {
                if (account != null && TextUtils.equals("com.xiaomi", account.type)) {
                    miAccount = account;
                    break;
                }
            }
            if (!(miAccount == null || TextUtils.isEmpty(miAccount.name))) {
                hasNewMIID = true;
            }
            boolean hasCachedMIID = MIIDSPCacheHelper.getInstance(this.mContext).hasCachedMIID();
            if (hasNewMIID && !hasCachedMIID) {
                MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID(miAccount.name);
                executeCallback(miAccount.name);
            } else if (!hasNewMIID && hasCachedMIID) {
                MIIDSPCacheHelper.getInstance(this.mContext).removeCachedMIID();
                executeCallback("0");
            } else if (hasNewMIID && hasCachedMIID && !TextUtils.equals(MIIDSPCacheHelper.getInstance(this.mContext).getCachedMIID(), miAccount.name)) {
                MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID(miAccount.name);
                executeCallback(miAccount.name);
            }
        }
    }

    public boolean startMIIDUpdateListener() {
        try {
            if (!MIIDUtils.checkGETACCOUNTPermission(this.mContext)) {
                return false;
            }
            if (this.mMIIDUpdatedlistener == null) {
                initMIIDUpdateListener();
            }
            this.mAccountManager.addOnAccountsUpdatedListener(this.mMIIDUpdatedlistener, null, true);
            return true;
        } catch (Exception e) {
            MyLog.e(e.toString());
            return false;
        }
    }

    public void recycleMIIDUpdateListener() {
        if (MIIDUtils.checkGETACCOUNTPermission(this.mContext) && this.mMIIDUpdatedlistener != null) {
            this.mAccountManager.removeOnAccountsUpdatedListener(this.mMIIDUpdatedlistener);
        }
    }

    /* JADX WARNING: Missing block: B:10:0x001a, code:
            r2 = r1.iterator();
     */
    /* JADX WARNING: Missing block: B:12:0x0022, code:
            if (r2.hasNext() == false) goto L_0x0011;
     */
    /* JADX WARNING: Missing block: B:13:0x0024, code:
            ((com.xiaomi.push.service.MIIDManager.MIIDUpdatedCallback) r2.next()).onMIIDUpdate(r6, r5.mContext);
     */
    /* JADX WARNING: Missing block: B:22:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:23:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void executeCallback(String miid) {
        synchronized (this.mObject) {
            if (this.mMIIDUpdatedCallbacks == null || this.mMIIDUpdatedCallbacks.size() < 1) {
            } else {
                ArrayList<MIIDUpdatedCallback> callbacks = new ArrayList(this.mMIIDUpdatedCallbacks);
            }
        }
    }

    public String getMIID() {
        String miid = getMIIDFromSystem();
        if (TextUtils.isEmpty(miid)) {
            MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID("0");
            return "0";
        }
        MIIDSPCacheHelper.getInstance(this.mContext).updateCachedMIID(miid);
        return miid;
    }

    private String getMIIDFromSystem() {
        Account xmAccount = MIIDUtils.getXiaomiAccount(this.mContext);
        return xmAccount == null ? "" : xmAccount.name;
    }

    public void addMIIDUpdateCallback(MIIDUpdatedCallback miidUpdateCallback) {
        synchronized (this.mObject) {
            if (this.mMIIDUpdatedCallbacks == null) {
                this.mMIIDUpdatedCallbacks = new ArrayList();
            }
            if (miidUpdateCallback != null) {
                int callbacksSize = this.mMIIDUpdatedCallbacks.size();
                this.mMIIDUpdatedCallbacks.add(miidUpdateCallback);
                if (callbacksSize == 0 && !startMIIDUpdateListener()) {
                    MyLog.w("MIIDManager startMIIDUpdateListener failed cause lack of GET_ACCOUNTS permission");
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:15:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void removeMIIDUpdateCallback(MIIDUpdatedCallback miidUpdatedCallback) {
        synchronized (this.mObject) {
            if (this.mMIIDUpdatedCallbacks == null) {
            } else if (miidUpdatedCallback != null) {
                this.mMIIDUpdatedCallbacks.remove(miidUpdatedCallback);
                if (this.mMIIDUpdatedCallbacks.size() == 0) {
                    recycleMIIDUpdateListener();
                }
            }
        }
    }
}
