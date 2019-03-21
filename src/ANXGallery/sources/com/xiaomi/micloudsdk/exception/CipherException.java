package com.xiaomi.micloudsdk.exception;

public class CipherException extends Exception {
    private static final long serialVersionUID = -1479750857131098427L;

    public CipherException(String msg) {
        super(msg);
    }

    public CipherException(String message, Throwable cause) {
        super(message, cause);
    }

    public CipherException(Throwable cause) {
        super(cause);
    }
}
