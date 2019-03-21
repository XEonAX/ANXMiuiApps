package com.xiaomi.push.mpcd;

import com.xiaomi.xmpush.thrift.ClientCollectionType;

public class Constants {
    public static final String ACTION_PACKAGE_CHANGED = String.valueOf(ClientCollectionType.BroadcastActionChanged.getValue());
    public static final String ACTION_PACKAGE_RESTARTED = String.valueOf(ClientCollectionType.BroadcastActionRestarted.getValue());
    public static final Object cDataLock4Thread = new Object();
}
