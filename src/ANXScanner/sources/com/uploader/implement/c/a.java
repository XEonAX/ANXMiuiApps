package com.uploader.implement.c;

import com.uploader.export.TaskError;

/* compiled from: RetryableTaskError */
public class a extends TaskError {
    public boolean a;

    public a(String code, String subcode, String info, boolean retryable) {
        this.code = code;
        this.subcode = subcode;
        this.info = info;
        this.a = retryable;
    }

    public String toString() {
        return "[retryable:" + this.a + " code:" + this.code + " subcode:" + this.subcode + " info:" + this.info + "]";
    }
}
