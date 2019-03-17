package org.android.spdy;

import java.util.concurrent.atomic.AtomicLong;

class ProtectedPointer {
    private static final long CLOSED = 3;
    private static final long INIT = 1;
    private static final long WAIT_CLOSE = 2;
    private Object data2protected;
    protected ProtectedPointerOnClose how2close;
    private AtomicLong referAndstatus = new AtomicLong(1);

    interface ProtectedPointerOnClose {
        void close(Object obj);
    }

    ProtectedPointer(Object data2protected) {
        this.data2protected = data2protected;
    }

    void setHow2close(ProtectedPointerOnClose how2close) {
        this.how2close = how2close;
    }

    boolean enter() {
        long old_value;
        do {
            old_value = this.referAndstatus.get();
            if (old_value == 3) {
                return false;
            }
        } while (!this.referAndstatus.compareAndSet(old_value, old_value + 16));
        return true;
    }

    void exit() {
        this.referAndstatus.addAndGet(-16);
        if (this.referAndstatus.compareAndSet(2, 3)) {
            if (this.how2close != null) {
                this.how2close.close(this.data2protected);
            }
            this.data2protected = null;
        }
    }

    void release() {
        this.referAndstatus.incrementAndGet();
        if (this.referAndstatus.compareAndSet(2, 3)) {
            if (this.how2close != null) {
                this.how2close.close(this.data2protected);
            }
            this.data2protected = null;
        }
    }

    Object getData() {
        return this.data2protected;
    }
}
