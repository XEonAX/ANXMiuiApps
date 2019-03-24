package com.miui.internal.hybrid.webkit;

import android.webkit.GeolocationPermissions;
import miui.hybrid.GeolocationPermissions.Callback;

public class GeolocationPermissionsCallback implements Callback {
    private GeolocationPermissions.Callback gi;

    public GeolocationPermissionsCallback(GeolocationPermissions.Callback callback) {
        this.gi = callback;
    }

    public void invoke(String str, boolean z, boolean z2) {
        this.gi.invoke(str, z, z2);
    }
}
