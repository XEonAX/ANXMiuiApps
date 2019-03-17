package com.taobao.ma.common.exception;

public class MaException extends Exception {
    private static final long serialVersionUID = -6987929757213786107L;

    public MaException(String message) {
        super(message);
    }

    public MaException(String message, Throwable cause) {
        super(message, cause);
    }

    public MaException(Throwable cause) {
        super(cause);
    }
}
