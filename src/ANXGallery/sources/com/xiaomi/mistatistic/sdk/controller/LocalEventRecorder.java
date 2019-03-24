package com.xiaomi.mistatistic.sdk.controller;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.data.AbstractEvent;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import com.xiaomi.mistatistic.sdk.data.f;
import com.xiaomi.mistatistic.sdk.data.g;
import com.xiaomi.xmsf.push.service.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

public class LocalEventRecorder {
    private static volatile b a = null;
    private static volatile boolean b = false;
    private static List<AbstractEvent> c = new ArrayList();
    private static Object d = new Object();
    private static ServiceConnection e = new ServiceConnection() {
        public void onServiceDisconnected(ComponentName componentName) {
            j.a("LER", "IStatService has unexpectedly disconnected");
            LocalEventRecorder.a = null;
            LocalEventRecorder.b = false;
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            j.a("LER", "IStatService connected");
            LocalEventRecorder.a = com.xiaomi.xmsf.push.service.b.a.a(iBinder);
            if (LocalEventRecorder.a != null) {
                r.b.execute(new Runnable() {
                    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c7 A:{ExcHandler: android.os.RemoteException (r0_17 'e' java.lang.Throwable), Splitter: B:3:0x0006} */
                    /* JADX WARNING: Failed to process nested try/catch */
                    /* JADX WARNING: Missing block: B:27:0x00c7, code:
            r0 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:29:?, code:
            com.xiaomi.mistatistic.sdk.controller.j.a("dispatch event to IStatService exception", r0);
     */
                    /* JADX WARNING: Missing block: B:31:?, code:
            com.xiaomi.mistatistic.sdk.controller.j.a("LER", "pending eventList size: " + com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.e().size());
            com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.a(com.xiaomi.mistatistic.sdk.controller.d.a());
     */
                    /* JADX WARNING: Missing block: B:33:0x00f6, code:
            com.xiaomi.mistatistic.sdk.controller.j.a("LER", "pending eventList size: " + com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.e().size());
            com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder.a(com.xiaomi.mistatistic.sdk.controller.d.a());
     */
                    /* JADX WARNING: Missing block: B:35:0x011e, code:
            r1 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:36:0x011f, code:
            r5 = r1;
            r1 = r0;
            r0 = r5;
     */
                    /* Code decompiled incorrectly, please refer to instructions dump. */
                    public void run() {
                        synchronized (LocalEventRecorder.d) {
                            Object obj = null;
                            try {
                                j.a("LER", "start insert event to IStatService and eventList size: " + LocalEventRecorder.c.size());
                                if (!(LocalEventRecorder.c == null || LocalEventRecorder.c.isEmpty())) {
                                    Iterator it = LocalEventRecorder.c.iterator();
                                    while (it.hasNext()) {
                                        AbstractEvent abstractEvent = (AbstractEvent) it.next();
                                        LocalEventRecorder.a.a(abstractEvent.valueToJSon().toString());
                                        j.a("LER", "insert a reserved event into IStatService");
                                        it.remove();
                                        AbstractEvent abstractEvent2 = abstractEvent;
                                    }
                                }
                                j.a("LER", "pending eventList size: " + LocalEventRecorder.c.size());
                                LocalEventRecorder.c(d.a());
                            } catch (JSONException e) {
                                Throwable e2 = e;
                                j.a("dispatch event to IStatService exception", e2);
                                LocalEventRecorder.c.remove(obj);
                                j.a("LER", "pending eventList size: " + LocalEventRecorder.c.size());
                                LocalEventRecorder.c(d.a());
                            } catch (Throwable e3) {
                            }
                        }
                    }
                });
            }
        }
    };

    public static class a implements com.xiaomi.mistatistic.sdk.controller.e.a {
        private AbstractEvent a;

        public a(AbstractEvent abstractEvent) {
            this.a = abstractEvent;
        }

        public void execute() {
            StatEventPojo toPojo = this.a.toPojo();
            h hVar = new h();
            if ((this.a instanceof f) || (this.a instanceof g)) {
                String str = toPojo.mKey;
                String str2 = toPojo.mCategory;
                StatEventPojo a = hVar.a(str2, str);
                if (a == null || !toPojo.mType.equals(a.mType)) {
                    hVar.a(toPojo);
                    n.a("w", toPojo);
                    return;
                }
                hVar.a(str, str2, toPojo.mValue);
                return;
            }
            hVar.a(toPojo);
            n.a("w", toPojo);
        }
    }

    public static void insertEvent(final AbstractEvent abstractEvent) {
        try {
            Context a = d.a();
            if (a == null) {
                j.d("LER", "mistats is not initialized properly.");
                return;
            }
            n.a("c", abstractEvent);
            if (BuildSetting.isCTABuild()) {
                j.d("LER", "disable local event upload for CTA build");
            } else if (CustomSettings.isUseSystemStatService()) {
                j.a("LER", "insert event use SystemStatService.");
                e.a().a(new com.xiaomi.mistatistic.sdk.controller.e.a() {
                    public void execute() {
                        LocalEventRecorder.b(abstractEvent);
                    }
                });
            } else if (BuildSetting.isDisabled(a) && !t.e(abstractEvent.getCategory()) && abstractEvent.getAnonymous() == 0) {
                j.a("LER", "disabled local event upload, event category:" + abstractEvent.getCategory());
            } else {
                e.a().a(new a(abstractEvent));
                s.a().c();
            }
        } catch (Throwable e) {
            j.a("LER", "insertEvent exception", e);
        }
    }

    private static void b(final AbstractEvent abstractEvent) {
        try {
            b(d.a());
            if (a != null) {
                r.b.execute(new Runnable() {
                    public void run() {
                        try {
                            LocalEventRecorder.a.a(abstractEvent.valueToJSon().toString());
                        } catch (Throwable e) {
                            j.a("LER", "dispatch event to IStatService exception", e);
                        } catch (Throwable e2) {
                            j.a("LER", "dispatch event to IStatService exception", e2);
                        }
                    }
                });
                j.b("LER", "StatSystemService is not null, insert a event");
                return;
            }
            j.a("LER", "StatSystemService is null, insert event into eventList");
            synchronized (d) {
                c.add(abstractEvent);
            }
        } catch (Throwable th) {
            j.a("LER", "insertEventUseSystemService exception: ", th);
        }
    }

    private static void b(Context context) throws InterruptedException {
        if (!b) {
            Intent intent = new Intent();
            intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.xmsf.push.service.StatService");
            b = context.bindService(intent, e, 1);
            j.a("LER", "bind StatSystemService: " + b);
        }
    }

    private static void c(final Context context) {
        e.a().a(new com.xiaomi.mistatistic.sdk.controller.e.a() {
            public void execute() {
                try {
                    if (LocalEventRecorder.b) {
                        context.unbindService(LocalEventRecorder.e);
                        LocalEventRecorder.b = false;
                        LocalEventRecorder.a = null;
                        j.a("LER", "unbind StatSystemService");
                    }
                } catch (Throwable e) {
                    j.a("unbindStatSystemService exception", e);
                }
            }
        }, 180000);
    }
}
