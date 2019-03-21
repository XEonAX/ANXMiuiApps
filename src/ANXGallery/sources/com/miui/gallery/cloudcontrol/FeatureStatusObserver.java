package com.miui.gallery.cloudcontrol;

import com.miui.gallery.cloudcontrol.FeatureProfile.Status;

public interface FeatureStatusObserver {
    void onStatusChange(String str, Status status, Status status2);
}
