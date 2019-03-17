package org.android.spdy;

public final class TnetStatusCode {
    public static final int EASY_DEFAULT_ERROR = -3800;
    public static final int EASY_EAGAIN = -3848;
    public static final int EASY_OK = 0;
    public static final int EASY_REASON_CANCEL = -2005;
    public static final int EASY_REASON_CONN_ERROR = -2500;
    public static final int EASY_REASON_CONN_NOT_EXISTS = -2001;
    public static final int EASY_REASON_CONN_TIMEOUT = -2003;
    public static final int EASY_REASON_DISCONNECT = -2002;
    public static final int EASY_REASON_HANDSHAKE_ERROR = -3000;
    public static final int EASY_REASON_INVALID_DATA = -2037;
    public static final int EASY_REASON_IO_STOPED = -2030;
    public static final int EASY_REASON_NO_MEM = -2031;
    public static final int EASY_REASON_READ_ERROR = -2100;
    public static final int EASY_REASON_SERVER_CLOSE = -2032;
    public static final int EASY_REASON_SESSION_TIMEOUT = -2004;
    public static final int EASY_REASON_SLIGHTSSL_ERROR = -3500;
    public static final int EASY_REASON_SPDYINIT_ERROR = -2036;
    public static final int EASY_REASON_WRITE_ERROR = -2300;
    public static final int EASY_REQ_STAGE_NOT_SEND = -1;
    public static final int EASY_REQ_STAGE_SEND_FAIL = -2;
    public static final int EASY_REQ_STATE_OK = 0;
    public static final int EASY_REQ_STATE_PROCESS_RSP_FAIL = -3;
    public static final int EASY_SPDY_CANCEL = -2014;
    public static final int EASY_SPDY_FLOW_CONTROL_ERROR = -2016;
    public static final int EASY_SPDY_FRAME_TOO_LARGE = -2020;
    public static final int EASY_SPDY_INTERNAL_ERROR = -2015;
    public static final int EASY_SPDY_INVALID_CREDENTIALS = -2019;
    public static final int EASY_SPDY_INVALID_STREAM = -2011;
    public static final int EASY_SPDY_PROTOCOL_ERROR = -2010;
    public static final int EASY_SPDY_REFUSED_STREAM = -2012;
    public static final int EASY_SPDY_SESSION_INTERNAL_ERROR = -2022;
    public static final int EASY_SPDY_SESSION_PROTOCOL_ERROR = -2021;
    public static final int EASY_SPDY_STREAM_ALREADY_CLOSED = -2018;
    public static final int EASY_SPDY_STREAM_IN_USE = -2017;
    public static final int EASY_SPDY_UNSUPPORTED_VERSION = -2013;
    public static final int TNET_JNI_ERR_ASYNC_CLOSE = -1104;
    public static final int TNET_JNI_ERR_BASE = -1101;
    public static final int TNET_JNI_ERR_INVLID_PARAM = -1102;
    public static final int TNET_JNI_ERR_LOAD_SO_FAIL = -1108;
    public static final int TNET_JNI_ERR_NOT_SUPPORT_API = -1107;
    public static final int TNET_JNI_ERR_NO_MEM = -1101;
    public static final int TNET_JNI_ERR_STATUS_ERR = -1103;
    public static final int TNET_SESSION_EXCEED_MAXED = -1105;

    public static final int getReqStage(int error) {
        switch (getStatusCode(error)) {
            case EASY_REASON_HANDSHAKE_ERROR /*-3000*/:
            case -2500:
            case EASY_REASON_INVALID_DATA /*-2037*/:
            case EASY_REASON_SPDYINIT_ERROR /*-2036*/:
            case EASY_REASON_IO_STOPED /*-2030*/:
            case EASY_REASON_CONN_TIMEOUT /*-2003*/:
            case EASY_REASON_CONN_NOT_EXISTS /*-2001*/:
                return -1;
            case EASY_SPDY_STREAM_IN_USE /*-2017*/:
            case EASY_SPDY_PROTOCOL_ERROR /*-2010*/:
                return -3;
            case 0:
                return 0;
            default:
                return -2;
        }
    }

    public static final int getStatusCode(int error) {
        if (error <= EASY_DEFAULT_ERROR) {
            return error;
        }
        if (error <= EASY_REASON_SLIGHTSSL_ERROR) {
            return EASY_REASON_SLIGHTSSL_ERROR;
        }
        if (error <= EASY_REASON_HANDSHAKE_ERROR) {
            return EASY_REASON_HANDSHAKE_ERROR;
        }
        if (error <= -2500) {
            return -2500;
        }
        return error <= EASY_REASON_WRITE_ERROR ? EASY_REASON_WRITE_ERROR : error <= EASY_REASON_READ_ERROR ? EASY_REASON_READ_ERROR : error;
    }

    public static final int getErrno(int error) {
        if (error <= EASY_DEFAULT_ERROR) {
            return 0;
        }
        if (error <= EASY_REASON_SLIGHTSSL_ERROR) {
            return -3500 - error;
        }
        if (error <= EASY_REASON_HANDSHAKE_ERROR) {
            return -3000 - error;
        }
        if (error <= -2500) {
            return -2500 - error;
        }
        if (error <= EASY_REASON_WRITE_ERROR) {
            return -2300 - error;
        }
        if (error <= EASY_REASON_READ_ERROR) {
            return -2100 - error;
        }
        return 0;
    }
}
