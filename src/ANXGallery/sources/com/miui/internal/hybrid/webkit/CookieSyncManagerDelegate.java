package com.miui.internal.hybrid.webkit;

import android.content.Context;
import android.webkit.CookieSyncManager;
import com.miui.internal.hybrid.provider.AbsCookieSyncManager;

public class CookieSyncManagerDelegate extends AbsCookieSyncManager {
    public void getInstance() {
        CookieSyncManager.getInstance();
    }

    public void createInstance(Context context) {
        CookieSyncManager.createInstance(context);
    }

    public void sync() {
        CookieSyncManager.getInstance().sync();
    }
}
