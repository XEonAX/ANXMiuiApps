package com.miui.gallery.cloud.thread;

import android.accounts.Account;
import android.os.SystemClock;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.data.DBImage;

public class RequestCommand implements Command {
    final Account mAccount;
    final long mInvokeTime = SystemClock.uptimeMillis();
    final RequestCloudItem mRequestItem;

    public RequestCommand(Account account, RequestCloudItem item) {
        this.mAccount = account;
        this.mRequestItem = item;
    }

    public int getPriority() {
        return this.mRequestItem.priority;
    }

    public String getKey() {
        return getKey(this.mRequestItem);
    }

    public long getDelay(long now) {
        return this.mRequestItem.getDelayToExecuteInMillis(now);
    }

    public boolean canMergeWith(Command other) {
        RequestCommand rc = (RequestCommand) other;
        return this.mRequestItem.priority == rc.mRequestItem.priority && this.mAccount.equals(rc.mAccount);
    }

    public boolean needProcess() {
        return this.mRequestItem.getStatus() != 0;
    }

    public static String getKey(RequestCloudItem item) {
        return getKey(item.dbCloud, item.priority);
    }

    public static String getKey(DBImage dbImage, int priority) {
        return dbImage.getTagId() + "#" + priority;
    }
}
