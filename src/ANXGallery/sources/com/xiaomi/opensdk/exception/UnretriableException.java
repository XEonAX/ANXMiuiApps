package com.xiaomi.opensdk.exception;

public class UnretriableException extends Exception {
    private static final long serialVersionUID = 1;
    private String mDescription;
    private int mErrorCode;

    public UnretriableException(String description) {
        this.mDescription = description;
    }

    public UnretriableException(Throwable throwable) {
        super(throwable);
    }

    public UnretriableException(Throwable throwable, int errorCode) {
        super(throwable);
        this.mErrorCode = errorCode;
    }

    public String toString() {
        String result = getClass().getSimpleName();
        Throwable cause = getCause();
        if (cause != null) {
            result = result + "[" + cause.getClass().getSimpleName();
            if (cause.getMessage() != null) {
                result = result + ":" + cause.getMessage();
            }
            result = result + "]";
        }
        if (this.mErrorCode > 0) {
            result = result + "[" + this.mErrorCode + "]";
        }
        if (this.mDescription != null) {
            return result + ": " + this.mDescription;
        }
        return result;
    }
}
