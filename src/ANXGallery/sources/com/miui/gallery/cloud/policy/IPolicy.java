package com.miui.gallery.cloud.policy;

import com.miui.gallery.cloud.syncstate.SyncType;

public interface IPolicy {
    SyncType getType();

    boolean isDisallowMetered();

    boolean isEnable();

    boolean isExpedited();

    boolean isIgnoreBatteryLow();

    boolean isManual();

    boolean isRequireCharging();
}
