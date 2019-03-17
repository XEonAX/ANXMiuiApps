package com.ali.auth.third.core.rpc.protocol;

public class RpcException extends RuntimeException {
    private static final long serialVersionUID = -2875437994101380406L;
    private int mCode;
    private String mMsg;

    public interface ErrorCode {
        public static final int ANTI_REFRESH = 401;
        public static final int API_UNAUTHORIZED = 408;
        public static final int CLIENT_DESERIALIZER_ERROR = 10;
        public static final int CLIENT_NETWORK_ERROR = 7;
        public static final int EXPIRED_REQUEST = 402;
        public static final int ILLEGEL_SIGN = 403;
        public static final int LIMIT_ERROR = 400;
        public static final int OK = 1000;
        public static final int SESSION_INVALID = 407;
        public static final int SYSTEM_ERROR = 406;
    }

    public RpcException(Integer num, String str) {
        super(a(num, str));
        this.mCode = num.intValue();
        this.mMsg = str;
    }

    public RpcException(Integer num, Throwable th) {
        super(th);
        this.mCode = num.intValue();
    }

    public RpcException(String str) {
        super(str);
        this.mCode = 0;
        this.mMsg = str;
    }

    protected static String a(Integer num, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("RPCException: ");
        if (num != null) {
            stringBuilder.append("[").append(num).append("]");
        }
        stringBuilder.append(" : ");
        if (str != null) {
            stringBuilder.append(str);
        }
        return stringBuilder.toString();
    }

    public static boolean isNetworkError(int i) {
        return i == 7;
    }

    public static boolean isSystemError(int i) {
        return i == 7 || (i >= 400 && i <= ErrorCode.API_UNAUTHORIZED);
    }

    public int getCode() {
        return this.mCode;
    }

    public String getMsg() {
        return this.mMsg;
    }
}
