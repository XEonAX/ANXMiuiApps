package com.xiaomi.network;

import android.content.Context;
import com.xiaomi.channel.commonutils.network.NameValuePair;
import java.io.IOException;
import java.util.List;

public abstract class HttpProcessor {
    private int httpRequest;

    public abstract String visit(Context context, String str, List<NameValuePair> list) throws IOException;

    public HttpProcessor(int httpRequest) {
        this.httpRequest = httpRequest;
    }

    public boolean prepare(Context context, String url, List<NameValuePair> list) throws IOException {
        return true;
    }

    public int getRequestType() {
        return this.httpRequest;
    }
}
