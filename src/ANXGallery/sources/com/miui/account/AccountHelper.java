package com.miui.account;

import android.accounts.Account;
import android.content.Context;
import miui.accounts.ExtraAccountManager;

public class AccountHelper {
    public static Account getXiaomiAccount(Context context) {
        return ExtraAccountManager.getXiaomiAccount(context);
    }
}
