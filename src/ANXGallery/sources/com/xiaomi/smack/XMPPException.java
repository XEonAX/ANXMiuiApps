package com.xiaomi.smack;

import com.xiaomi.smack.packet.StreamError;
import com.xiaomi.smack.packet.XMPPError;
import java.io.PrintStream;
import java.io.PrintWriter;

public class XMPPException extends Exception {
    private XMPPError error = null;
    private StreamError streamError = null;
    private Throwable wrappedThrowable = null;

    public XMPPException(String message) {
        super(message);
    }

    public XMPPException(Throwable wrappedThrowable) {
        this.wrappedThrowable = wrappedThrowable;
    }

    public XMPPException(StreamError streamError) {
        this.streamError = streamError;
    }

    public XMPPException(String message, Throwable wrappedThrowable) {
        super(message);
        this.wrappedThrowable = wrappedThrowable;
    }

    public Throwable getWrappedThrowable() {
        return this.wrappedThrowable;
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void printStackTrace(PrintStream out) {
        super.printStackTrace(out);
        if (this.wrappedThrowable != null) {
            out.println("Nested Exception: ");
            this.wrappedThrowable.printStackTrace(out);
        }
    }

    public void printStackTrace(PrintWriter out) {
        super.printStackTrace(out);
        if (this.wrappedThrowable != null) {
            out.println("Nested Exception: ");
            this.wrappedThrowable.printStackTrace(out);
        }
    }

    public String getMessage() {
        String msg = super.getMessage();
        if (msg == null && this.error != null) {
            return this.error.toString();
        }
        if (msg != null || this.streamError == null) {
            return msg;
        }
        return this.streamError.toString();
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        String message = super.getMessage();
        if (message != null) {
            buf.append(message).append(": ");
        }
        if (this.error != null) {
            buf.append(this.error);
        }
        if (this.streamError != null) {
            buf.append(this.streamError);
        }
        if (this.wrappedThrowable != null) {
            buf.append("\n  -- caused by: ").append(this.wrappedThrowable);
        }
        return buf.toString();
    }
}
