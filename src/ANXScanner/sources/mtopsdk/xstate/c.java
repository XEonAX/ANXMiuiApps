package mtopsdk.xstate;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;

/* compiled from: XStateService */
public class c extends Service {
    private mtopsdk.xstate.a.a.a a = null;
    private Object b = new Object();

    /* compiled from: XStateService */
    class a extends mtopsdk.xstate.a.a.a {
        public final String a(String str) throws RemoteException {
            return b.b(str);
        }

        public final void a(String str, String str2) throws RemoteException {
            b.a(str, str2);
        }

        public final void a() throws RemoteException {
            b.a(c.this.getBaseContext());
        }

        public final void b() throws RemoteException {
            b.a();
        }

        public final String b(String str) throws RemoteException {
            return b.a(str);
        }
    }

    public IBinder onBind(Intent intent) {
        synchronized (this.b) {
            if (this.a == null) {
                this.a = new a();
                try {
                    this.a.a();
                } catch (Throwable e) {
                    TBSdkLog.e("mtopsdk.XStateService", "[onBind]init() exception", e);
                } catch (Throwable e2) {
                    TBSdkLog.e("mtopsdk.XStateService", "[onBind]init() error", e2);
                }
            }
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i("mtopsdk.XStateService", "[onBind] XStateService  stub= " + this.a.hashCode());
        }
        return this.a;
    }

    public void onDestroy() {
        super.onDestroy();
        synchronized (this.b) {
            if (this.a != null) {
                try {
                    this.a.b();
                } catch (Throwable e) {
                    TBSdkLog.e("mtopsdk.XStateService", "[onDestroy]unInit() exception", e);
                } catch (Throwable e2) {
                    TBSdkLog.e("mtopsdk.XStateService", "[onDestroy]unInit() error", e2);
                }
            }
        }
        return;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
