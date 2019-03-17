package com.alibaba.wireless.security.framework;

import android.content.pm.PackageInfo;
import com.alibaba.wireless.security.framework.utils.b;
import java.io.File;
import org.json.JSONObject;

public class a {
    public PackageInfo a = null;
    private JSONObject b = null;
    private String c;

    public a(String str) {
        this.c = str;
    }

    public String a(String str) {
        String str2 = "";
        try {
            return b().getString(str);
        } catch (Exception e) {
            return "";
        }
    }

    public boolean a() {
        try {
            return new File(this.c).exists();
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b0  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00a8 A:{SYNTHETIC, Splitter: B:23:0x00a8} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(PackageInfo packageInfo, String str) {
        if (packageInfo == null || str == null) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            File file;
            jSONObject.put("version", packageInfo.versionName);
            jSONObject.put("hasso", packageInfo.applicationInfo.metaData.getBoolean("hasso", false));
            jSONObject.put("pluginname", packageInfo.applicationInfo.metaData.getString("pluginname"));
            jSONObject.put("pluginclass", packageInfo.applicationInfo.metaData.getString("pluginclass"));
            jSONObject.put("dependencies", packageInfo.applicationInfo.metaData.getString("dependencies"));
            jSONObject.put("weakdependencies", packageInfo.applicationInfo.metaData.getString("weakdependencies"));
            jSONObject.put("reversedependencies", packageInfo.applicationInfo.metaData.getString("reversedependencies"));
            jSONObject.put("thirdpartyso", packageInfo.applicationInfo.metaData.getBoolean("thirdpartyso"));
            try {
                file = new File(this.c);
                try {
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                } catch (Exception e) {
                    if (!file.exists()) {
                    }
                    if (b.a(file, jSONObject.toString())) {
                    }
                }
            } catch (Exception e2) {
                file = null;
                if (file.exists()) {
                    try {
                        file.createNewFile();
                    } catch (Exception e3) {
                    }
                }
                if (b.a(file, jSONObject.toString())) {
                }
            }
            return b.a(file, jSONObject.toString());
        } catch (Exception e4) {
            return true;
        }
    }

    public JSONObject b() {
        if (this.b != null) {
            return this.b;
        }
        JSONObject jSONObject;
        try {
            String a = b.a(new File(this.c));
            jSONObject = (a == null || a.length() <= 0) ? null : new JSONObject(a);
        } catch (Exception e) {
            jSONObject = null;
        }
        this.b = jSONObject;
        return jSONObject;
    }
}
