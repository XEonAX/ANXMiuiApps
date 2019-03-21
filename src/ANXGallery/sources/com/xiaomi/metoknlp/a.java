package com.xiaomi.metoknlp;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xiaomi.metoknlp.a.e;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONObject;

/* compiled from: Config */
public class a {
    private static boolean f = false;
    private static int g = 0;
    private static a h = null;
    private SharedPreferences i = this.mContext.getSharedPreferences("config", 0);
    private List j = new ArrayList();
    private Context mContext;

    private a(Context context) {
        this.mContext = context;
    }

    public static a g() {
        return h;
    }

    public static synchronized void init(Context context) {
        synchronized (a.class) {
            if (h == null) {
                h = new a(context);
            }
        }
    }

    public static boolean h() {
        return false;
    }

    public void a(f fVar) {
        if (fVar != null) {
            synchronized (this.j) {
                this.j.add(fVar);
            }
        }
    }

    public void i() {
        synchronized (this.j) {
            for (f onConfigurationChanged : this.j) {
                onConfigurationChanged.onConfigurationChanged();
            }
        }
    }

    public void update() {
        int i = 0;
        String p = p();
        String Y = e.Y();
        if (!p.equals(Y)) {
            String a;
            String W = e.W();
            p = b.a("collect", "t_" + W);
            if (p == null || p.isEmpty()) {
                int i2 = 0;
                do {
                    a = b.a("collect", "t_" + W);
                    if (a != null && !a.isEmpty()) {
                        break;
                    }
                    i2++;
                } while (i2 != 5);
                if (i2 != 5) {
                    p = a;
                } else {
                    return;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(new JSONObject(p).getString("data"));
                a = this.i.getString("s_f", "");
                String optString = jSONObject.optString("s_f", "");
                boolean a2 = e.a(jSONObject.optInt("f_d_d", 0));
                Editor edit = this.i.edit();
                edit.putString("s_f", optString);
                edit.putBoolean("f_d_d", a2);
                edit.putString("m_s_u", jSONObject.optString("m_s_u", "https://metok.sys.miui.com"));
                edit.commit();
                Date date = new Date();
                date = new Date();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm");
                if (!(a == null || a.isEmpty() || optString == null || optString.isEmpty())) {
                    Date parse = simpleDateFormat.parse(a);
                    date = simpleDateFormat.parse(optString);
                    if (date.before(parse) || date.equals(parse)) {
                        c(Y);
                        i();
                        return;
                    }
                }
                p = b.a("collect", "f_" + W);
                if (p == null || p.isEmpty()) {
                    do {
                        p = b.a("collect", "f_" + W);
                        if (p != null && !p.isEmpty()) {
                            break;
                        }
                        i++;
                    } while (i != 5);
                    if (i == 5) {
                        return;
                    }
                }
                try {
                    jSONObject = new JSONObject(new JSONObject(p).getString("data"));
                    Editor edit2 = this.i.edit();
                    edit2.putLong("d_m_i", jSONObject.optLong("d_m_i", Long.MAX_VALUE));
                    edit2.putBoolean("d_n_s", e.a(jSONObject.optInt("d_n_s", g)));
                    edit2.putLong("d_s_t", jSONObject.optLong("d_s_t", Long.MAX_VALUE));
                    edit2.putLong("d_s_c_t", jSONObject.optLong("d_s_c_t", Long.MAX_VALUE));
                    edit2.commit();
                    c(Y);
                    i();
                } catch (Exception e) {
                }
            } catch (Exception e2) {
            }
        }
    }

    public String j() {
        return this.i.getString("m_s_u", "https://metok.sys.miui.com");
    }

    public boolean k() {
        return this.i.getBoolean("f_d_d", true);
    }

    public long l() {
        return this.i.getLong("d_m_i", Long.MAX_VALUE);
    }

    public boolean m() {
        return this.i.getBoolean("d_n_s", f);
    }

    public long n() {
        return this.i.getLong("d_s_t", Long.MAX_VALUE);
    }

    public long o() {
        return this.i.getLong("d_s_c_t", Long.MAX_VALUE);
    }

    public String p() {
        return this.i.getString("config_update_time", "0");
    }

    public void c(String str) {
        Editor edit = this.i.edit();
        edit.putString("config_update_time", str);
        edit.commit();
    }
}
