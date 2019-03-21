package com.miui.app;

import android.content.Context;
import com.miui.utils.LazyConst;

public final class ProviderInstalled extends LazyConst<Context, Boolean> {
    private String mAuthority;

    public ProviderInstalled(String authority) {
        this.mAuthority = authority;
    }

    public Boolean onInit(Context context) {
        boolean z = false;
        if (context.getPackageManager().resolveContentProvider(this.mAuthority, 0) != null) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
