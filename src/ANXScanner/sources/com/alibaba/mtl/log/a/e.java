package com.alibaba.mtl.log.a;

import android.text.TextUtils;
import com.alibaba.mtl.log.a;
import com.alibaba.mtl.log.c.c;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.r;
import com.alibaba.mtl.log.upload.UploadEngine;
import org.json.JSONObject;

/* compiled from: SystemConfig */
public class e {
    public static void i(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject != null && jSONObject.has("SYSTEM")) {
                    i.a("SystemConfig", "server system config ", str);
                    jSONObject = jSONObject.optJSONObject("SYSTEM");
                    if (jSONObject != null) {
                        try {
                            if (jSONObject.has("bg_interval")) {
                                a.f(jSONObject.getInt("bg_interval") + "");
                            }
                        } catch (Throwable th) {
                        }
                        try {
                            if (jSONObject.has("fg_interval")) {
                                a.g(jSONObject.getInt("fg_interval") + "");
                            }
                        } catch (Throwable th2) {
                        }
                        i.a("SystemConfig", "UTDC.bSendToNewLogStore:", Boolean.valueOf(a.r));
                        i.a("SystemConfig", "Config.BACKGROUND_PERIOD:", Long.valueOf(a.b()));
                        i.a("SystemConfig", "Config.FOREGROUND_PERIOD:", Long.valueOf(a.a()));
                        try {
                            if (jSONObject.has("discard")) {
                                int i = jSONObject.getInt("discard");
                                if (i == 1) {
                                    a.B = true;
                                    UploadEngine.getInstance().stop();
                                } else if (i == 0) {
                                    a.B = false;
                                    UploadEngine.getInstance().start();
                                }
                            } else if (a.B) {
                                a.B = false;
                                UploadEngine.getInstance().start();
                            }
                        } catch (Throwable th3) {
                        }
                        try {
                            if (jSONObject.has("cdb") && jSONObject.getInt("cdb") > f()) {
                                r.a().b(new Runnable() {
                                    public void run() {
                                        c.a().clear();
                                    }
                                });
                            }
                        } catch (Throwable th4) {
                        }
                    }
                }
            } catch (Throwable th5) {
                i.a("SystemConfig", "updateconfig", th5);
            }
        }
    }

    public static int f() {
        Object h = a.h();
        if (TextUtils.isEmpty(h)) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(h);
            if (jSONObject == null || !jSONObject.has("SYSTEM")) {
                return 0;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("SYSTEM");
            if (jSONObject2 == null || !jSONObject2.has("cdb")) {
                return 0;
            }
            return jSONObject2.getInt("cdb");
        } catch (Throwable th) {
            return 0;
        }
    }
}
