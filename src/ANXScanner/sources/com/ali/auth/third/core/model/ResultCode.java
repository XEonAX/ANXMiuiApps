package com.ali.auth.third.core.model;

import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import mtopsdk.mtop.util.ErrorConstant;

public class ResultCode {
    public static final ResultCode CAPTCHA_RELOGIN = new ResultCode(103, "CAPTCHA_RELOGIN");
    public static final ResultCode CHECK = new ResultCode(108, "CHECK");
    public static final ResultCode CONTINUE_LOGIN = new ResultCode(105, Constants.ACTION_CONTINUELOGIN);
    public static final ResultCode IGNORE = new ResultCode(-100, "IGNORE");
    public static final ResultCode SUCCESS = new ResultCode(100, ErrorConstant.ERRCODE_SUCCESS);
    public static final ResultCode SYSTEM_EXCEPTION = new ResultCode(KernelMessageConstants.GENERIC_SYSTEM_ERROR, "SYSTEM_EXCEPTION");
    public static final ResultCode TRUST_LOGIN = new ResultCode(104, "TRUST_LOGIN");
    public static final ResultCode USER_CANCEL = new ResultCode(SystemMessageConstants.USER_CANCEL_CODE, "USER_CANCEL");
    public int code;
    public String message;

    public ResultCode(int i) {
        this(i, null);
    }

    public ResultCode(int i, String str) {
        this.code = i;
        this.message = str;
    }

    public static ResultCode create(int i, Object... objArr) {
        return new ResultCode(i, MessageUtils.getMessageContent(i, objArr));
    }

    public static ResultCode create(Message message) {
        return new ResultCode(message.code, message.message);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        return this.code == ((ResultCode) obj).code;
    }

    public int hashCode() {
        return this.code + 31;
    }

    public boolean isSuccess() {
        return this.code == 100;
    }
}
