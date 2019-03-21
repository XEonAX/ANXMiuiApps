package cn.kuaipan.android.exception;

import android.text.TextUtils;

public class ServerMsgException extends KscException {
    private static final long serialVersionUID = -681123175263669159L;
    private final String origMessage;
    private final int statusCode;

    public ServerMsgException(int statusCode, String message) {
        this(statusCode, message, null);
    }

    public ServerMsgException(int statusCode, String message, String details) {
        super(ServerMsgMap.getErrorCode(statusCode, message), details);
        this.statusCode = statusCode;
        this.origMessage = message;
    }

    public String getSimpleMessage() {
        String result = getClass().getName() + "(ErrCode: " + getErrorCode() + "): StatusCode: " + this.statusCode;
        if (this.origMessage != null) {
            result = result + ", msg: " + this.origMessage;
        }
        if (this.detailMessage == null || this.detailMessage.length() >= 100) {
            return result;
        }
        return result + ", " + this.detailMessage;
    }

    public String getMessage() {
        if (TextUtils.isEmpty(this.origMessage)) {
            return super.getMessage();
        }
        return this.origMessage + "\n" + super.getMessage();
    }
}
