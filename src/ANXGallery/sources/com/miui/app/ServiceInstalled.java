package com.miui.app;

import android.content.Context;
import android.content.Intent;
import com.miui.utils.LazyConst;

public final class ServiceInstalled extends LazyConst<Context, Boolean> {
    private Intent mIntent;

    public ServiceInstalled(Intent intent) {
        this.mIntent = intent;
    }

    public Boolean onInit(Context context) {
        boolean z = false;
        if (context.getPackageManager().resolveService(this.mIntent, 0) != null) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
