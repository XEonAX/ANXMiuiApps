package com.miui.internal.hybrid.provider;

import android.content.Context;

public abstract class AbsCookieSyncManager {
    public abstract void createInstance(Context context);

    public abstract void getInstance();

    public abstract void sync();
}
