package com.taobao.applink.auth;

import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Messenger;
import android.util.Log;
import com.taobao.applink.util.TBAppLinkUtil;

public class a {
    private static ServiceConnection a;
    private static boolean b = false;
    private Handler c;
    private TBAppLinkAuthListener d;
    private Messenger e;

    public a(TBAppLinkAuthListener tBAppLinkAuthListener) {
        if (tBAppLinkAuthListener != null) {
            this.d = tBAppLinkAuthListener;
        }
    }

    private void b() {
        try {
            if (a != null && b) {
                b = false;
                TBAppLinkUtil.getApplication().getApplicationContext().unbindService(a);
            }
        } catch (Throwable th) {
            Log.d(TBAppLinkUtil.TAG, th.toString());
        }
    }

    private void c() {
        this.c = new Handler(new b(this));
        this.e = new Messenger(this.c);
        a = new c(this);
    }

    public void a(String str) {
        if (TBAppLinkUtil.getApplication() != null) {
            b();
            c();
            Intent intent = new Intent();
            intent.setAction(TBAppLinkUtil.getServerAction(str));
            intent.setPackage(TBAppLinkUtil.getPackageName(str));
            try {
                TBAppLinkUtil.getApplication().getApplicationContext().bindService(intent, a, 1);
                b = true;
            } catch (Throwable th) {
                Log.d(TBAppLinkUtil.TAG, th.toString());
            }
        }
    }
}
