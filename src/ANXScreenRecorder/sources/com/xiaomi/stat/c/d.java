package com.xiaomi.stat.c;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.xiaomi.stat.b.e;
import com.xiaomi.stat.d.k;
import java.util.Map;

final class d implements ServiceConnection {
    final /* synthetic */ String[] a;
    final /* synthetic */ String b;
    final /* synthetic */ Map c;

    d(String[] strArr, String str, Map map) {
        this.a = strArr;
        this.b = str;
        this.c = map;
    }

    public void onServiceConnected(ComponentName name, IBinder service) {
        e.a().b().execute(new e(this, service));
    }

    public void onServiceDisconnected(ComponentName name) {
        k.b("UploadMode error while perform IPC connection.", null);
        synchronized (i.class) {
            try {
                i.class.notify();
            } catch (Exception e) {
            }
        }
    }

    public void onBindingDied(ComponentName name) {
        synchronized (i.class) {
            try {
                i.class.notify();
            } catch (Exception e) {
            }
        }
    }
}
