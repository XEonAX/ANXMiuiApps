package com.miui.internal.analytics;

import android.content.Context;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import miui.provider.ExtraTelephony.Phonelist;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class PersistenceHelper {
    private static final String TAG = "PersistenceHelper";
    private static final int ag = 1;
    private static final SoftReferenceSingleton<PersistenceHelper> s = new SoftReferenceSingleton<PersistenceHelper>() {
        /* renamed from: g */
        protected PersistenceHelper createInstance() {
            return new PersistenceHelper();
        }
    };
    private final AtomicBoolean ah;
    private c ai;
    private ObjectBuilder<c> aj;
    private ObjectBuilder<Event> ak;
    private Handler al;
    private Context mContext;

    private class RunThread extends Thread {
        private RunThread() {
        }

        /* synthetic */ RunThread(PersistenceHelper persistenceHelper, AnonymousClass1 anonymousClass1) {
            this();
        }

        public void run() {
            Looper.prepare();
            synchronized (PersistenceHelper.this.ah) {
                PersistenceHelper.this.al = new Handler() {
                    public void handleMessage(Message message) {
                        if (message.what == 1) {
                            PersistenceHelper.this.a((Event) message.obj);
                        }
                    }
                };
                PersistenceHelper.this.ah.set(true);
                PersistenceHelper.this.ah.notify();
            }
            Looper.loop();
        }
    }

    /* synthetic */ PersistenceHelper(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static PersistenceHelper getInstance() {
        return (PersistenceHelper) s.get();
    }

    private PersistenceHelper() {
        this.ah = new AtomicBoolean();
        this.aj = new ObjectBuilder();
        this.ak = new ObjectBuilder();
        this.ak.registerClass(TrackEvent.class, "2");
        this.ak.registerClass(LogEvent.class, "1");
        this.ak.registerClass(TrackPageViewEvent.class, Phonelist.TYPE_VIP);
        this.aj.registerClass(b.class, b.TAG);
        this.mContext = AppConstants.getCurrentApplication();
        f();
        synchronized (this.ah) {
            new RunThread(this, null).start();
            while (!this.ah.get()) {
                try {
                    this.ah.wait();
                } catch (InterruptedException e) {
                }
            }
        }
    }

    private void f() {
        this.ai = (c) this.aj.buildObject(b.TAG);
        this.ai.a(this.mContext);
    }

    public void close() {
        this.al.getLooper().quit();
        this.al = null;
        if (this.ai != null) {
            this.ai.close();
            this.ai = null;
        }
        this.mContext = null;
    }

    public boolean selectStore(String str) {
        c cVar = (c) this.aj.buildObject(str);
        if (cVar == null) {
            return false;
        }
        if (this.ai != null) {
            this.ai.close();
        }
        this.ai = cVar;
        return true;
    }

    private void a(Event event) {
        if (this.ai != null) {
            event.writeEvent(this.ai);
        }
    }

    public void writeEvent(String str, String str2, long j) {
        writeEvent(new TrackEvent(str, str2, null, j));
    }

    public void writeEvent(Event event) {
        if (this.al != null) {
            Message message = new Message();
            message.what = 1;
            message.obj = event;
            this.al.sendMessage(message);
        }
    }

    public List<Event> readEvents(String str, List<Item> list) {
        if (this.ai != null) {
            Cursor d = this.ai.d(str);
            if (d != null) {
                List arrayList = new ArrayList();
                while (d.moveToNext()) {
                    try {
                        int i = d.getInt(d.getColumnIndexOrThrow("type"));
                        ObjectBuilder objectBuilder = this.ak;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(i);
                        stringBuilder.append("");
                        Event event = (Event) objectBuilder.buildObject(stringBuilder.toString());
                        if (event != null) {
                            event.restore(d);
                            for (Item item : list) {
                                if (item.idMatches(event.getEventId())) {
                                    if (item.isDispatch(VERSION.INCREMENTAL)) {
                                        event.setPolicy(item.getPolicy());
                                        arrayList.add(event);
                                    }
                                }
                            }
                        }
                    } catch (Throwable e) {
                        Log.e(TAG, "IllegalArgumentException catched when readEvents from storage", e);
                    }
                }
                d.close();
                return arrayList;
            }
        }
        return Collections.emptyList();
    }
}
