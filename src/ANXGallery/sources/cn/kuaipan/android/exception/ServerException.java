package cn.kuaipan.android.exception;

public class ServerException extends KscException {
    private static final long serialVersionUID = 6373467541984892922L;
    private final int statusCode;

    public ServerException(int statusCode, String detail) {
        super(503000 + validCode(statusCode), detail);
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    private static int validCode(int statusCode) {
        return (statusCode < 100 || statusCode > 599) ? 0 : statusCode;
    }

    public String getSimpleMessage() {
        String result = getClass().getName() + "(ErrCode: " + getErrorCode() + "): StatusCode: " + this.statusCode;
        if (this.detailMessage == null || this.detailMessage.length() >= 100) {
            return result;
        }
        return result + ", " + this.detailMessage;
    }
}
