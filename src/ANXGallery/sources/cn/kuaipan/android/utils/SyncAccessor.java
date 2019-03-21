package cn.kuaipan.android.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class SyncAccessor extends Handler {

    public static class Args {
        private static Args mPool;
        private static int mPoolSize = 0;
        private static Object mPoolSync = new Object();
        public RuntimeException err;
        public volatile boolean handled = false;
        private Args next;
        public Object[] params;
        public Object result;

        public static Args obtain() {
            synchronized (mPoolSync) {
                if (mPool != null) {
                    Args m = mPool;
                    mPool = m.next;
                    m.next = null;
                    return m;
                }
                return new Args();
            }
        }

        public void recycle() {
            synchronized (mPoolSync) {
                if (mPoolSize < 10) {
                    clearForRecycle();
                    this.next = mPool;
                    mPool = this;
                }
            }
        }

        private void clearForRecycle() {
            this.params = null;
            this.result = null;
            this.err = null;
            this.handled = false;
        }
    }

    public SyncAccessor(Looper looper) {
        super(looper);
    }

    public synchronized <T> T access(int what, Object... objects) throws InterruptedException {
        Object result;
        Args args = Args.obtain();
        args.params = objects;
        if (sendMessage(obtainMessage(what, args))) {
            while (!args.handled) {
                if (isAlive()) {
                    synchronized (args) {
                        args.wait(50);
                    }
                } else {
                    throw new RuntimeException("SyncAccessor has dead.");
                }
            }
            result = args.result;
            RuntimeException err = args.err;
            args.recycle();
            if (err != null) {
                throw err;
            }
        } else {
            throw new RuntimeException("SyncAccessor has dead.");
        }
        return result;
    }

    private boolean isAlive() {
        Looper looper = getLooper();
        if (looper == null) {
            return false;
        }
        Thread t = looper.getThread();
        if (t == null || !t.isAlive()) {
            return false;
        }
        return true;
    }

    public Object handleAccess(int what, Object... objects) {
        return null;
    }

    public void dispatchMessage(Message msg) {
        Args obj = msg.obj;
        if (obj == null || !(obj instanceof Args)) {
            super.dispatchMessage(msg);
            return;
        }
        Args args = obj;
        try {
            args.result = handleAccess(msg.what, args.params);
            args.handled = true;
            synchronized (args) {
                args.notifyAll();
            }
        } catch (RuntimeException e) {
            args.err = e;
            args.handled = true;
            synchronized (args) {
                args.notifyAll();
            }
        } catch (Throwable th) {
            args.handled = true;
            synchronized (args) {
                args.notifyAll();
            }
        }
    }
}
