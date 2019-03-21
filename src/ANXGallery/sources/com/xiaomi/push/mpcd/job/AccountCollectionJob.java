package com.xiaomi.push.mpcd.job;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import com.xiaomi.xmpush.thrift.ClientCollectionType;

public class AccountCollectionJob extends CollectionJob {
    public AccountCollectionJob(Context context, int period) {
        super(context, period);
    }

    public String collectInfo() {
        StringBuilder builder = new StringBuilder();
        try {
            Account[] accounts = AccountManager.get(this.context).getAccounts();
            for (int i = 0; i < Math.min(accounts.length, 10); i++) {
                Account account = accounts[i];
                if (i > 0) {
                    builder.append(";");
                }
                builder.append(account.name).append(",").append(account.type);
            }
        } catch (Throwable th) {
        }
        return builder.toString();
    }

    protected boolean checkPermission() {
        return this.context.getPackageManager().checkPermission("android.permission.GET_ACCOUNTS", this.context.getPackageName()) == 0;
    }

    public ClientCollectionType getCollectionType() {
        return ClientCollectionType.Account;
    }

    public int getJobId() {
        return 7;
    }
}
