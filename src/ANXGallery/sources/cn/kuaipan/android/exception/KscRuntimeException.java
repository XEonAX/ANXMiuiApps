package cn.kuaipan.android.exception;

public class KscRuntimeException extends RuntimeException implements IKscError {
    private static final long serialVersionUID = 4693852528580738850L;
    private final String detailMessage;
    private final int errCode;

    public KscRuntimeException(int code) {
        this(code, null, null);
    }

    public KscRuntimeException(int code, String details) {
        this(code, details, null);
    }

    public KscRuntimeException(int code, Throwable t) {
        this(code, t == null ? null : t.toString(), t);
    }

    public KscRuntimeException(int code, String details, Throwable e) {
        super("ErrCode:" + code + (details == null ? "" : " details:" + details), KscException.getSerial(e));
        this.errCode = code;
        this.detailMessage = details;
    }

    public int getErrorCode() {
        return this.errCode;
    }
}
