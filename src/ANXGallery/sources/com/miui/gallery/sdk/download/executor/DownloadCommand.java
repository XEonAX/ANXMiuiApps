package com.miui.gallery.sdk.download.executor;

import android.accounts.Account;
import android.text.TextUtils;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.executor.queue.Command;

public class DownloadCommand implements Command {
    private Account mAccount;
    private DownloadItem mItem;

    public DownloadCommand(Account account, DownloadItem item) {
        this.mAccount = account;
        this.mItem = item;
    }

    public DownloadCommand(DownloadCommand cmd) {
        this.mAccount = cmd.getAccount();
        this.mItem = new DownloadItem(cmd.mItem);
    }

    public String getKey() {
        return this.mItem.getKey();
    }

    public int getPriority() {
        return this.mItem.getPriority();
    }

    public DownloadItem getItem() {
        return this.mItem;
    }

    public Account getAccount() {
        return this.mAccount;
    }

    public boolean equals(Object o) {
        return o != null && (o instanceof DownloadCommand) && TextUtils.equals(getKey(), ((DownloadCommand) o).getKey());
    }

    public int hashCode() {
        return getKey().hashCode();
    }

    public static boolean checkValid(DownloadCommand command) {
        Account account = AccountCache.getAccount();
        if (account != null && command != null && account.equals(command.getAccount())) {
            return true;
        }
        DownloadItem item = command.getItem();
        if (item != null) {
            DownloadItem.callbackError(item, new DownloadFailReason(ErrorCode.NO_ACCOUNT, "illegal account", null));
        }
        return false;
    }
}
