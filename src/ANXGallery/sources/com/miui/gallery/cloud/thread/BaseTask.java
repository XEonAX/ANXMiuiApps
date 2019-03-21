package com.miui.gallery.cloud.thread;

import android.accounts.Account;
import android.content.Context;
import android.os.SystemClock;
import com.google.common.collect.Lists;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.AccountCache.AccountInfo;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.cloud.thread.RequestCommandQueue.OnItemChangedListener;
import com.miui.gallery.util.Log;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class BaseTask implements Runnable {
    protected final String TAG;
    private volatile boolean isRunning = false;
    private final RequestCommandQueue mCommandQueue;
    private AtomicBoolean mHasInterruptted = new AtomicBoolean(false);

    protected abstract int handle(Context context, Account account, GalleryExtendedAuthToken galleryExtendedAuthToken, List<RequestCloudItem> list) throws Exception;

    protected abstract void onPostExecute();

    protected abstract void onPreExecute();

    public BaseTask(int type, int priorityCount, int batchMax, int commandMax, OnItemChangedListener changeListener) {
        this.TAG = String.format(Locale.US, "%s#%s", new Object[]{getClass().getSimpleName(), Integer.valueOf(type)});
        this.mCommandQueue = new RequestCommandQueue(priorityCount, batchMax, commandMax, changeListener, this.TAG);
    }

    public void run() {
        Log.i(this.TAG, "thread start %s", Integer.valueOf(System.identityHashCode(Thread.currentThread())));
        this.isRunning = true;
        onPreExecute();
        int result;
        do {
            if (Thread.currentThread().isInterrupted()) {
                break;
            }
            result = 2;
            try {
                result = onPerformSync();
            } catch (Throwable th) {
                onPostExecute();
                Log.i(this.TAG, "thread end %s", Integer.valueOf(System.identityHashCode(Thread.currentThread())));
                this.isRunning = false;
            }
        } while (needContinue(result));
        onPostExecute();
        Log.i(this.TAG, "thread end %s", Integer.valueOf(System.identityHashCode(Thread.currentThread())));
        this.isRunning = false;
    }

    protected int onPerformSync() throws Throwable {
        List<RequestCommand> commands = Lists.newArrayList();
        List<RequestCloudItem> items = Lists.newArrayList();
        try {
            long minDelay = this.mCommandQueue.pollToExecute(commands);
            if (commands.isEmpty()) {
                if (minDelay > 0) {
                    synchronized (Thread.currentThread()) {
                        try {
                            Log.i(this.TAG, "wait for " + minDelay);
                            Thread.currentThread().wait(minDelay);
                            Log.i(this.TAG, "wait time out or notified");
                        } catch (InterruptedException e) {
                            Log.i(this.TAG, "resume from waiting by interuptted");
                        }
                    }
                }
                for (RequestCloudItem item : items) {
                    this.mCommandQueue.removeFromExecuting(RequestCommand.getKey(item));
                }
                for (RequestCommand cmd : commands) {
                    Log.d(this.TAG, "execute: %s, invoke~finish cost=%s", cmd.getKey(), Long.valueOf(SystemClock.uptimeMillis() - cmd.mInvokeTime));
                }
                return 0;
            }
            for (RequestCommand cmd2 : commands) {
                items.add(cmd2.mRequestItem);
            }
            RequestCommand first = (RequestCommand) commands.get(0);
            if (SyncConditionManager.checkForItem(first.mRequestItem) == 2) {
                for (RequestCloudItem item2 : items) {
                    this.mCommandQueue.removeFromExecuting(RequestCommand.getKey(item2));
                }
                for (RequestCommand cmd22 : commands) {
                    Log.d(this.TAG, "execute: %s, invoke~finish cost=%s", cmd22.getKey(), Long.valueOf(SystemClock.uptimeMillis() - cmd22.mInvokeTime));
                }
                return 2;
            }
            Account account = first.mAccount;
            AccountInfo info = AccountCache.getAccountInfo();
            if (info == null || !info.mAccount.equals(account)) {
                if (info != null) {
                    Log.e(this.TAG, "execute: account is changed. old=" + account + ", current=" + info.mAccount);
                } else {
                    Log.e(this.TAG, "execute: account is null");
                }
                for (RequestCloudItem item22 : items) {
                    this.mCommandQueue.removeFromExecuting(RequestCommand.getKey(item22));
                }
                for (RequestCommand cmd222 : commands) {
                    Log.d(this.TAG, "execute: %s, invoke~finish cost=%s", cmd222.getKey(), Long.valueOf(SystemClock.uptimeMillis() - cmd222.mInvokeTime));
                }
                return 2;
            }
            int handle = handle(GalleryApp.sGetAndroidContext(), info.mAccount, info.mToken, items);
            for (RequestCloudItem item222 : items) {
                this.mCommandQueue.removeFromExecuting(RequestCommand.getKey(item222));
            }
            for (RequestCommand cmd2222 : commands) {
                Log.d(this.TAG, "execute: %s, invoke~finish cost=%s", cmd2222.getKey(), Long.valueOf(SystemClock.uptimeMillis() - cmd2222.mInvokeTime));
            }
            return handle;
        } catch (Object e2) {
            try {
                Log.d(this.TAG, "interruptted", e2);
                for (RequestCommand cmd22222 : commands) {
                    Log.d(this.TAG, "execute: %s, invoke~finish cost=%s", cmd22222.getKey(), Long.valueOf(SystemClock.uptimeMillis() - cmd22222.mInvokeTime));
                }
            } finally {
                for (RequestCloudItem item2222 : items) {
                    this.mCommandQueue.removeFromExecuting(RequestCommand.getKey(item2222));
                }
                for (RequestCommand cmd222222 : commands) {
                    Log.d(this.TAG, "execute: %s, invoke~finish cost=%s", cmd222222.getKey(), Long.valueOf(SystemClock.uptimeMillis() - cmd222222.mInvokeTime));
                }
            }
        }
    }

    protected boolean needContinue(int status) {
        boolean z = true;
        if (Thread.currentThread().isInterrupted()) {
            return false;
        }
        if (status == 2) {
            this.mCommandQueue.cancelAll(true);
            return false;
        } else if (this.mCommandQueue.getPengdingSize() > 0) {
            return true;
        } else {
            if (!this.mHasInterruptted.compareAndSet(true, false)) {
                return false;
            }
            if (resumeInterruptted() <= 0) {
                z = false;
            }
            return z;
        }
    }

    protected int resumeInterruptted() {
        return 0;
    }

    public int[] invoke(List<RequestCloudItem> requestItems, boolean interruptExecuting, boolean atFirst) {
        Account account = AccountCache.getAccount();
        if (account == null) {
            Log.e(this.TAG, "invoke: no account");
            return new int[]{0, 0};
        }
        int addCount = 0;
        int interrupttedCount = 0;
        if (!requestItems.isEmpty()) {
            List<RequestCommand> commands = Lists.newArrayList();
            for (RequestCloudItem item : requestItems) {
                commands.add(new RequestCommand(account, item));
            }
            addCount = this.mCommandQueue.put(commands, atFirst);
            if (interruptExecuting) {
                boolean z;
                List<RequestCommand> interrupttedItems = this.mCommandQueue.interruptIfNotExecuting(commands);
                if (interrupttedItems != null) {
                    interrupttedCount = interrupttedItems.size();
                } else {
                    interrupttedCount = 0;
                }
                AtomicBoolean atomicBoolean = this.mHasInterruptted;
                if (interrupttedCount > 0) {
                    z = true;
                } else {
                    z = false;
                }
                atomicBoolean.compareAndSet(false, z);
            }
        }
        return new int[]{addCount, interrupttedCount};
    }

    public void cancelAll(int priority, boolean abandon) {
        this.mCommandQueue.cancelAll(priority, abandon);
    }

    public int getPendingSize() {
        return this.mCommandQueue.getPengdingSize();
    }

    public boolean hasDelayedItem() {
        return this.mCommandQueue.hasDelayedItem();
    }
}
