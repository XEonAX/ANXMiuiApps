package com.miui.internal.hybrid;

import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class PermissionManager {
    private Config eU;
    private Map<String, Boolean> fF = new HashMap();

    public PermissionManager(Config config) {
        this.eU = config;
    }

    private boolean l(String str) {
        Uri parse = Uri.parse(str);
        if ("file".equals(parse.getScheme())) {
            str = "*";
        } else {
            str = parse.getHost();
        }
        boolean z = false;
        for (Entry value : this.eU.getPermissions().entrySet()) {
            Permission permission = (Permission) value.getValue();
            String uri = permission.getUri();
            if ("*".equals(uri)) {
                uri = "*";
            } else {
                uri = Uri.parse(uri).getHost();
            }
            if (permission.isApplySubdomains()) {
                String[] split = uri.split("\\.");
                String[] split2 = str.split("\\.");
                if (split2.length >= split.length) {
                    for (int i = 1; i <= split.length; i++) {
                        if (!split2[split2.length - i].equals(split[split.length - i])) {
                            z = false;
                            break;
                        }
                    }
                    z = true;
                }
            } else {
                z = str.equals(uri);
            }
            if (z) {
                break;
            }
        }
        return z;
    }

    public boolean isValid(String str) {
        if (!this.fF.containsKey(str)) {
            this.fF.put(str, Boolean.valueOf(l(str)));
        }
        return ((Boolean) this.fF.get(str)).booleanValue();
    }
}
