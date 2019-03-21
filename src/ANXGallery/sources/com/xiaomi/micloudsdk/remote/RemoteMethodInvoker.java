package com.xiaomi.micloudsdk.remote;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.micloudsdk.utils.ThreadUtil;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public abstract class RemoteMethodInvoker<R> implements ServiceConnection {
    private final AsyncFuture<IBinder> future = new AsyncFuture();
    private final Context mContext;

    private static class AsyncFuture<V> extends FutureTask<V> {
        public AsyncFuture() {
            super(new Callable<V>() {
                public V call() throws Exception {
                    throw new IllegalStateException("this should never be called");
                }
            });
        }

        public void setResult(V v) {
            set(v);
        }
    }

    protected abstract boolean bindService(Context context, ServiceConnection serviceConnection);

    protected abstract R invokeRemoteMethod(IBinder iBinder) throws RemoteException;

    public RemoteMethodInvoker(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        this.mContext = context.getApplicationContext();
    }

    public void onServiceDisconnected(ComponentName name) {
    }

    public void onServiceConnected(ComponentName name, IBinder service) {
        Log.i("RemoteMethodInvoker", "RemoteMethodInvoker connects remote service " + name.getShortClassName());
        this.future.setResult(service);
    }

    public R invoke() {
        R r = null;
        ThreadUtil.ensureWorkerThread();
        if (bindService(this.mContext, this)) {
            try {
                r = invokeRemoteMethod((IBinder) this.future.get());
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (ExecutionException e2) {
            } catch (RemoteException e3) {
                Log.e("RemoteMethodInvoker", "error while invoking service methods", e3);
            } finally {
                this.mContext.unbindService(this);
            }
        } else {
            Log.e("RemoteMethodInvoker", "Cannot bind remote service.");
        }
        return r;
    }
}
