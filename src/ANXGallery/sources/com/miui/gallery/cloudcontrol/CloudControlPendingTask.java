package com.miui.gallery.cloudcontrol;

import com.miui.gallery.push.PendingPullTask;

public class CloudControlPendingTask extends PendingPullTask {
    public CloudControlPendingTask(int type) {
        super(type);
    }

    public boolean requireDeviceIdle() {
        return false;
    }

    public boolean requireCharging() {
        return false;
    }
}
