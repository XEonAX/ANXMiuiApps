package com.nexstreaming.nexeditorsdk.exception;

public class ExpiredTimeException extends Exception {
    private static final long serialVersionUID = 1;

    public ExpiredTimeException() {
        super("Asset has expired.");
    }

    public ExpiredTimeException(String str) {
        super(str + " has expired.");
    }
}
