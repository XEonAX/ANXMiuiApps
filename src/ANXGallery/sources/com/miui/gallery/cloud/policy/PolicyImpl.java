package com.miui.gallery.cloud.policy;

import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.strategies.BackupPolicisStrategy.PolicyWrapper;
import com.miui.gallery.preference.GalleryPreferences.Sync;

public class PolicyImpl implements IPolicy {
    private final PolicyWrapper mProxy;
    private final SyncType mType;

    public PolicyImpl(SyncType type, PolicyWrapper proxy) {
        this.mType = type;
        this.mProxy = proxy;
    }

    public boolean isEnable() {
        return this.mProxy != null ? this.mProxy.isEnable() : true;
    }

    public SyncType getType() {
        return this.mType;
    }

    public boolean isDisallowMetered() {
        if (Sync.getBackupOnlyInWifi()) {
            return this.mProxy != null ? this.mProxy.isDisallowMetered() : true;
        } else {
            return false;
        }
    }

    public boolean isRequireCharging() {
        return this.mProxy != null ? this.mProxy.isRequireCharging() : false;
    }

    public boolean isIgnoreBatteryLow() {
        return this.mProxy != null ? this.mProxy.isIgnoreBattery() : false;
    }

    public boolean isExpedited() {
        return this.mProxy != null ? this.mProxy.isExpedited() : false;
    }

    public boolean isManual() {
        return this.mProxy != null ? this.mProxy.isManual() : false;
    }
}
