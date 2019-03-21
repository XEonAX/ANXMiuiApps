package com.nexstreaming.app.common.tracelog;

import android.content.Context;
import com.nexstreaming.app.common.task.Task.TaskError;

public enum ResponseCode implements TaskError {
    SUCCESS(0),
    APPAUTH_FAILED(1),
    LICENSE_EXPIRED(2),
    DLLIMIT_EXCEEDED(3),
    NO_AVAILABLE_LICENSE(4),
    INVALID_APIVERSION(5),
    ERR_NORMAL(6),
    ERR_FATAL(7),
    INVALID_CODECID(8),
    INVALID_DEVICE(9),
    UPDATE_AVAILABLE(10),
    UPDATE_NOTAVAILABLE(11),
    APP_VERSION_EXISTED(12),
    NOTICE_AVAILABLE(13),
    NOTICE_NOTAVAILABLE(14),
    INVALID_PROMOCODE(15),
    EXPIRED_PROMOCODE(16),
    ALREADYINUSE_PROMOCODE(17),
    PROMOCODE_NONE(18),
    PROMOCODE_ALREADY(19),
    ALREADY_IAP_REGISTERED(20),
    APP_BLOCKDATE(21),
    INVALID_SOUNDTRACKID(22),
    NO_MATCH(23),
    SOMETHING_WRONG(505),
    UNKNOWN;
    
    private final boolean unknown;
    private final int value;

    private ResponseCode(int i) {
        this.value = i;
        this.unknown = false;
    }

    public int value() {
        return this.value;
    }

    public Exception getException() {
        return null;
    }

    public String getMessage() {
        if (this.unknown) {
            return "UNKNOWN";
        }
        return name() + " [" + this.value + "]";
    }

    static ResponseCode fromValue(int i) {
        for (ResponseCode responseCode : values()) {
            if (responseCode.value == i) {
                return responseCode;
            }
        }
        return UNKNOWN;
    }

    public String getLocalizedMessage(Context context) {
        return getMessage();
    }

    public int getIntErrorCode() {
        return value();
    }
}
