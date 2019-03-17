package com.alibaba.mtl.log;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.mtl.log.d.c;
import com.alibaba.mtl.log.d.i;
import com.ut.mini.UTAnalytics;
import com.ut.mini.core.appstatus.UTMCAppStatusRegHelper;
import com.ut.mini.core.sign.IUTRequestAuthentication;
import com.ut.mini.internal.UTOriginalCustomHitBuilder;
import java.io.UnsupportedEncodingException;

/* compiled from: UTMCStatConfig */
public class b {
    private static b a = new b();
    private String C = null;
    private String D = null;
    private String E = null;
    private String F = null;
    private String G = null;
    /* renamed from: a */
    private Application f59a = null;
    /* renamed from: a */
    private IUTRequestAuthentication f60a = null;
    private Context mContext = null;
    private boolean t = false;
    private boolean u = false;

    private b() {
    }

    public static b a() {
        return a;
    }

    public void setAppVersion(String aAppVersion) {
        this.G = aAppVersion;
    }

    public String f() {
        return this.G;
    }

    public void turnOnDebug() {
        i.setDebug(true);
    }

    private void c(String str) {
        this.C = str;
        if (!TextUtils.isEmpty(str)) {
            this.D = str;
        }
        if (!TextUtils.isEmpty(str) && this.mContext != null) {
            try {
                Editor edit = this.mContext.getSharedPreferences("UTCommon", 0).edit();
                edit.putString("_lun", new String(c.encode(str.getBytes("UTF-8"), 2)));
                edit.commit();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    private void d(String str) {
        this.E = str;
        if (!TextUtils.isEmpty(str)) {
            this.F = str;
        }
        if (!TextUtils.isEmpty(str) && this.mContext != null) {
            try {
                Editor edit = this.mContext.getSharedPreferences("UTCommon", 0).edit();
                edit.putString("_luid", new String(c.encode(str.getBytes("UTF-8"), 2)));
                edit.commit();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    public void updateUserAccount(String aUsernick, String aUserid) {
        c(aUsernick);
        d(aUserid);
        if (!TextUtils.isEmpty(aUsernick)) {
            UTAnalytics.getInstance().getDefaultTracker().send(new UTOriginalCustomHitBuilder("UT", 1007, aUsernick, aUserid, null, null).build());
        }
    }

    public void setContext(Context aContext) {
        if (aContext != null) {
            this.mContext = aContext;
            SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("UTCommon", 0);
            Object string = sharedPreferences.getString("_lun", "");
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.D = new String(c.decode(string.getBytes(), 2), "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            string = sharedPreferences.getString("_luid", "");
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.F = new String(c.decode(string.getBytes(), 2), "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
            }
        }
        n();
    }

    public Context getContext() {
        return this.mContext;
    }

    public void setAppApplicationInstance(Application aApplicationInstance) {
        this.a = aApplicationInstance;
        n();
    }

    private void n() {
        if (!this.t && VERSION.SDK_INT >= 14) {
            try {
                if (a().a() != null) {
                    UTMCAppStatusRegHelper.registeActivityLifecycleCallbacks(a().a());
                    this.t = true;
                    return;
                }
                UTMCAppStatusRegHelper.registeActivityLifecycleCallbacks((Application) a().getContext().getApplicationContext());
                this.t = true;
            } catch (Exception e) {
                e.printStackTrace();
                Log.e("UTEngine", "You need set a application instance for UT.");
            }
        }
    }

    /* renamed from: a */
    public Application m14a() {
        return this.a;
    }
}
