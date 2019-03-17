package com.ali.auth.third.core.exception;

import com.ali.auth.third.core.message.Message;

public class AlibabaSDKException extends RuntimeException {
    private static final long serialVersionUID = 1357689949294215654L;
    private Message message;

    public AlibabaSDKException(Message message) {
        super(message == null ? "" : message.message);
        this.message = message;
    }

    public AlibabaSDKException(Message message, Throwable th) {
        super(message == null ? "" : message.message, th);
        this.message = message;
    }

    public Message getSDKMessage() {
        return this.message;
    }
}
