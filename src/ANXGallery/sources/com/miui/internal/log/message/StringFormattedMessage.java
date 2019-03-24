package com.miui.internal.log.message;

import android.util.Log;
import com.miui.internal.log.util.AppendableFormatter;
import java.util.Locale;

public class StringFormattedMessage extends AbstractMessage {
    private static final String TAG = "StringFormattedMessage";
    private String hj;
    private Object[] hk;
    private Throwable hl;
    private AppendableFormatter hm = new AppendableFormatter();

    public static StringFormattedMessage obtain() {
        return (StringFormattedMessage) MessageFactory.obtain(StringFormattedMessage.class);
    }

    public String getFormat() {
        return this.hj;
    }

    public StringFormattedMessage setFormat(String str) {
        this.hj = str;
        return this;
    }

    public Object[] getParameters() {
        return this.hk;
    }

    public StringFormattedMessage setParameters(Object[] objArr) {
        this.hk = objArr;
        return this;
    }

    protected void onRecycle() {
        this.hj = null;
        this.hk = null;
        this.hl = null;
        this.hm.setAppendable(null);
    }

    public void format(Appendable appendable) {
        if (this.hj == null || this.hk == null || this.hk.length == 0) {
            try {
                appendable.append(this.hj);
                return;
            } catch (Throwable e) {
                Log.e(TAG, "Fail to format message", e);
                return;
            }
        }
        this.hm.setAppendable(appendable);
        this.hm.format(Locale.US, this.hj, this.hk);
    }

    public Throwable getThrowable() {
        return this.hl;
    }

    public StringFormattedMessage setThrowable(Throwable th) {
        this.hl = th;
        return this;
    }
}
