package com.xiaomi.mipush.sdk;

import com.xiaomi.push.service.module.PushChannelRegion;

public class PushConfiguration {
    private boolean mGeoEnable = false;
    private boolean mOpenCOSPush = false;
    private boolean mOpenFCMPush = false;
    private boolean mOpenHmsPush = false;
    private PushChannelRegion mRegion = PushChannelRegion.China;

    public boolean getGeoEnable() {
        return this.mGeoEnable;
    }

    public boolean getOpenHmsPush() {
        return this.mOpenHmsPush;
    }

    public boolean getOpenFCMPush() {
        return this.mOpenFCMPush;
    }

    public boolean getOpenCOSPush() {
        return this.mOpenCOSPush;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer("PushConfiguration{");
        sb.append("Region:");
        if (this.mRegion == null) {
            sb.append("null");
        } else {
            sb.append(this.mRegion.name());
        }
        sb.append('}');
        return sb.toString();
    }
}
