package com.alipay.sdk.packet.impl;

import com.alipay.sdk.packet.d;
import org.json.JSONException;
import org.json.JSONObject;

public final class b extends d {
    protected final String b() {
        return "5.0.0";
    }

    protected final JSONObject a() throws JSONException {
        return d.a("sdkConfig", "obtain");
    }
}
