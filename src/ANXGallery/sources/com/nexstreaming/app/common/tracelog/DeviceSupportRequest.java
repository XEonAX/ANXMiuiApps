package com.nexstreaming.app.common.tracelog;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import com.nexstreaming.app.common.util.o;

public class DeviceSupportRequest {
    public String app_name;
    public String app_ucode;
    public String app_uuid;
    public String app_version;
    public String board_platform;
    public String build_device;
    public String build_model;
    public String manufacturer;
    public String os;
    public int os_api_level;
    public String os_version;
    public String package_name;
    public int version = 10000;

    public DeviceSupportRequest(Context context, String str) {
        this.app_uuid = o.a(context);
        this.app_name = o.b(context);
        this.app_version = o.d(context);
        this.package_name = o.c(context);
        this.app_ucode = str;
        this.build_device = Build.DEVICE;
        this.build_model = Build.MODEL;
        this.manufacturer = Build.MANUFACTURER;
        this.os_api_level = VERSION.SDK_INT;
        this.board_platform = o.b();
    }
}
