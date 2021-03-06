package miui.accounts;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.SQLException;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import java.util.HashMap;
import java.util.Map.Entry;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class ExtraAccountManager {
    public static final String ACTION_VIEW_XIAOMI_ACCOUNT = "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS";
    public static final int BIND_SNS_TYPE_SINA = 1;
    public static final String EXTRA_ACCOUNT = "extra_account";
    public static final String EXTRA_ADD_ACCOUNT_FROM_PROVISION = "extra_add_account_from_provision";
    public static final String EXTRA_BIND_SNS_TYPE = "extra_bind_sns_type";
    public static final String EXTRA_BUNDLE = "extra_bundle";
    public static final String EXTRA_CLEAR_WHEN_RESET = "extra_clear_when_reset";
    public static final String EXTRA_DISABLE_BACK_KEY = "extra_disable_back_key";
    public static final String EXTRA_ENTER_ACCOUNT_FORWORD_IN_PROVISION = "is_to_next_in_provision";
    public static final String EXTRA_FIND_PASSWORD_ON_PC = "extra_find_pwd_on_pc";
    public static final String EXTRA_SHOW_ACCOUNT_SETTINGS = "show_account_settings";
    public static final String EXTRA_SHOW_FIND_DEVICE = "extra_show_find_device";
    public static final String EXTRA_SHOW_SKIP_LOGIN = "extra_show_skip_login";
    public static final String EXTRA_SHOW_SYNC_SETTINGS = "show_sync_settings";
    public static final String EXTRA_UPDATE_TYPE = "extra_update_type";
    public static final String EXTRA_WIPE_DATA = "extra_wipe_data";
    public static final String EXTRA_WIPE_SYNCED_DATA = "extra_wipe_synced_data";
    private static final SoftReferenceSingleton<ExtraAccountManager> INSTANCE = new SoftReferenceSingleton<ExtraAccountManager>() {
        protected ExtraAccountManager createInstance() {
            return new ExtraAccountManager(AppConstants.getCurrentApplication(), null);
        }
    };
    public static final String KEY_CAPTCHA_CODE = "captcha_code";
    public static final String KEY_CAPTCHA_ICK = "captcha_ick";
    public static final String KEY_CAPTCHA_URL = "captcha_url";
    public static final String KEY_ENCRYPTED_USER_ID = "encrypted_user_id";
    public static final String KEY_SERVICE_ID = "service_id";
    public static final String KEY_TITLE = "title";
    public static final String LOGIN_ACCOUNTS_POST_CHANGED_ACTION = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED";
    public static final String LOGIN_ACCOUNTS_PRE_CHANGED_ACTION = "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED";
    private static final String TAG = "ExtraAccountManager";
    public static final int TYPE_ADD = 2;
    public static final int TYPE_REMOVE = 1;
    public static final String XIAOMI_ACCOUNT_PACKAGE_NAME = "com.xiaomi.account";
    private AccountManager mAccountManager;
    private final BroadcastReceiver mAccountsChangedBroadcastReceiver;
    private Context mContext;
    private Handler mMainHandler;
    private final HashMap<MiuiOnAccountsUpdateListener, Handler> mMiuiAccountsUpdatedListeners;

    /* synthetic */ ExtraAccountManager(Context x0, AnonymousClass1 x1) {
        this(x0);
    }

    private ExtraAccountManager(Context context) {
        this.mMiuiAccountsUpdatedListeners = new HashMap();
        this.mAccountsChangedBroadcastReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                Intent intent2 = intent;
                String action = intent.getAction();
                if (ExtraAccountManager.LOGIN_ACCOUNTS_PRE_CHANGED_ACTION.equals(action) || "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED".equals(action)) {
                    Account account = (Account) intent2.getParcelableExtra(ExtraAccountManager.EXTRA_ACCOUNT);
                    Bundle extra = (Bundle) intent2.getParcelableExtra(ExtraAccountManager.EXTRA_BUNDLE);
                    int type = intent2.getIntExtra("extra_update_type", -1);
                    if (account == null || type <= 0) {
                        Log.w(ExtraAccountManager.TAG, "account changed, but no account or type");
                        return;
                    }
                    synchronized (ExtraAccountManager.this.mMiuiAccountsUpdatedListeners) {
                        for (Entry<MiuiOnAccountsUpdateListener, Handler> entry : ExtraAccountManager.this.mMiuiAccountsUpdatedListeners.entrySet()) {
                            ExtraAccountManager.this.postToHandler((Handler) entry.getValue(), (MiuiOnAccountsUpdateListener) entry.getKey(), account, type, extra, ExtraAccountManager.LOGIN_ACCOUNTS_PRE_CHANGED_ACTION.equals(action));
                        }
                    }
                    return;
                }
                Account[] accounts = ExtraAccountManager.this.mAccountManager.getAccounts();
                synchronized (ExtraAccountManager.this.mMiuiAccountsUpdatedListeners) {
                    for (Entry<MiuiOnAccountsUpdateListener, Handler> entry2 : ExtraAccountManager.this.mMiuiAccountsUpdatedListeners.entrySet()) {
                        ExtraAccountManager.this.postToHandler((Handler) entry2.getValue(), (MiuiOnAccountsUpdateListener) entry2.getKey(), accounts);
                    }
                }
            }
        };
        this.mContext = context;
        this.mAccountManager = AccountManager.get(this.mContext);
        this.mMainHandler = new Handler(this.mContext.getMainLooper());
    }

    public static ExtraAccountManager getInstance(Context context) {
        return (ExtraAccountManager) INSTANCE.get();
    }

    public void addOnAccountsUpdatedListener(MiuiOnAccountsUpdateListener listener, Handler handler, boolean updateImmediately) {
        if (listener != null) {
            synchronized (this.mMiuiAccountsUpdatedListeners) {
                if (this.mMiuiAccountsUpdatedListeners.containsKey(listener)) {
                    throw new IllegalStateException("this listener is already added");
                }
                boolean wasEmpty = this.mMiuiAccountsUpdatedListeners.isEmpty();
                this.mMiuiAccountsUpdatedListeners.put(listener, handler);
                if (wasEmpty) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.accounts.LOGIN_ACCOUNTS_CHANGED");
                    intentFilter.addAction(LOGIN_ACCOUNTS_PRE_CHANGED_ACTION);
                    intentFilter.addAction("android.accounts.LOGIN_ACCOUNTS_POST_CHANGED");
                    intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
                    this.mContext.registerReceiver(this.mAccountsChangedBroadcastReceiver, intentFilter);
                }
            }
            if (updateImmediately) {
                postToHandler(handler, listener, this.mAccountManager.getAccounts());
                return;
            }
            return;
        }
        throw new IllegalArgumentException("the listener is null");
    }

    /* JADX WARNING: Missing block: B:13:0x002b, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void removeOnAccountsUpdatedListener(MiuiOnAccountsUpdateListener listener) {
        if (listener != null) {
            synchronized (this.mMiuiAccountsUpdatedListeners) {
                if (this.mMiuiAccountsUpdatedListeners.containsKey(listener)) {
                    this.mMiuiAccountsUpdatedListeners.remove(listener);
                    if (this.mMiuiAccountsUpdatedListeners.isEmpty()) {
                        this.mContext.unregisterReceiver(this.mAccountsChangedBroadcastReceiver);
                    }
                } else {
                    Log.e(TAG, "Listener was not previously added");
                    return;
                }
            }
        }
        throw new IllegalArgumentException("listener is null");
    }

    private void postToHandler(Handler handler, final MiuiOnAccountsUpdateListener listener, Account[] accounts) {
        final Account[] accountsCopy = new Account[accounts.length];
        System.arraycopy(accounts, 0, accountsCopy, 0, accountsCopy.length);
        (handler == null ? this.mMainHandler : handler).post(new Runnable() {
            public void run() {
                try {
                    listener.onAccountsUpdated(accountsCopy);
                } catch (SQLException e) {
                    Log.e(ExtraAccountManager.TAG, "Can't update accounts", e);
                }
            }
        });
    }

    private void postToHandler(Handler handler, MiuiOnAccountsUpdateListener listener, Account account, int type, Bundle extra, boolean preAdd) {
        final boolean z = preAdd;
        final MiuiOnAccountsUpdateListener miuiOnAccountsUpdateListener = listener;
        final Account account2 = account;
        final int i = type;
        final Bundle bundle = extra;
        (handler == null ? this.mMainHandler : handler).post(new Runnable() {
            public void run() {
                try {
                    if (z) {
                        miuiOnAccountsUpdateListener.onPreAccountUpdated(account2, i, bundle);
                    } else {
                        miuiOnAccountsUpdateListener.onPostAccountUpdated(account2, i, bundle);
                    }
                } catch (SQLException e) {
                    Log.e(ExtraAccountManager.TAG, "Can't update accounts", e);
                }
            }
        });
    }

    public static Account getXiaomiAccount(Context context) {
        Account[] accounts = AccountManager.get(context).getAccountsByType("com.xiaomi");
        if (accounts.length > 0) {
            return accounts[0];
        }
        return null;
    }
}
