package cn.kuaipan.android.exception;

import android.text.TextUtils;

public class NetworkException extends KscException {
    private static final long serialVersionUID = 3410936099313815279L;
    private final String origMessage;

    public NetworkException(int errorCode, String detailState, Throwable t) {
        super(errorCode, detailState, t);
        this.origMessage = t == null ? null : t.getMessage();
    }

    public String getMessage() {
        if (TextUtils.isEmpty(this.origMessage)) {
            return super.getMessage();
        }
        return this.origMessage + "\n" + super.getMessage();
    }

    public String getSimpleMessage() {
        String result = getClass().getName() + "(ErrCode: " + getErrorCode() + ")";
        Throwable t = getCause();
        if (t != null) {
            result = result + " - [" + t.getClass().getName();
            if (this.origMessage != null) {
                result = result + ": " + this.origMessage;
            }
            result = result + "]";
        }
        if (this.detailMessage == null || this.detailMessage.length() >= 100) {
            return result;
        }
        return result + ": " + this.detailMessage;
    }
}
