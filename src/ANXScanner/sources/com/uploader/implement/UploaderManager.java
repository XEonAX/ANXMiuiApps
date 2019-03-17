package com.uploader.implement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Pair;
import android.util.SparseArray;
import com.uploader.export.ITaskListener;
import com.uploader.export.IUploaderDependency;
import com.uploader.export.IUploaderManager;
import com.uploader.export.IUploaderTask;
import com.uploader.implement.a.d;
import com.uploader.implement.a.g;
import com.uploader.implement.a.i;
import com.uploader.implement.d.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import mtopsdk.common.util.SymbolExpUtil;

public class UploaderManager implements IUploaderManager, d {
    private int a;
    private ArrayList<i> b;
    private ArrayList<Pair<Integer, String>> c;
    private SparseArray<ArrayList<Pair<i, com.uploader.implement.d.b>>> d;
    private ArrayList<Pair<i, com.uploader.implement.d.b>> e;
    private com.uploader.implement.b.a.b f;
    private BroadcastReceiver g;
    private volatile Handler h;
    private volatile boolean i;
    private Runnable j;
    private boolean k;
    private String l;
    private final int m;
    private c n;
    private final byte[] o;
    private final int p;

    private static class a implements Runnable {
        final UploaderManager a;
        final int b;
        final Object[] c;

        a(int flag, @NonNull UploaderManager manager, Object... objects) {
            this.b = flag;
            this.a = manager;
            this.c = objects;
        }

        public void run() {
            switch (this.b) {
                case 1:
                    this.a.a((IUploaderTask) this.c[0], (ITaskListener) this.c[1], (Handler) this.c[2]);
                    return;
                case 2:
                    this.a.a((IUploaderTask) this.c[0]);
                    return;
                case 3:
                    this.a.a();
                    return;
                case 4:
                    this.a.b((g) this.c[0]);
                    return;
                case 5:
                    this.a.c();
                    return;
                default:
                    return;
            }
        }
    }

    private static class b extends BroadcastReceiver {
        private final WeakReference<UploaderManager> a;

        b(UploaderManager manager) {
            this.a = new WeakReference(manager);
        }

        public void onReceive(Context context, Intent intent) {
            if (context != null && intent != null) {
                try {
                    if (!intent.getBooleanExtra("noConnectivity", false)) {
                    }
                    String extraInfo = intent.getStringExtra("extraInfo");
                    UploaderManager manager = (UploaderManager) this.a.get();
                    if (manager != null) {
                        manager.d();
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    UploaderManager() {
        this(0);
    }

    UploaderManager(int instanceType) {
        this.a = 0;
        this.i = false;
        this.o = new byte[0];
        this.d = new SparseArray(2);
        this.e = new ArrayList();
        this.c = new ArrayList();
        this.b = new ArrayList();
        this.m = hashCode();
        this.p = instanceType;
    }

    public boolean isInitialized() {
        return this.i;
    }

    /* JADX WARNING: Missing block: B:38:?, code:
            return true;
     */
    /* JADX WARNING: Missing block: B:39:?, code:
            return false;
     */
    /* JADX WARNING: Missing block: B:40:?, code:
            return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean initialize(@NonNull Context context, @NonNull IUploaderDependency dependency) {
        if (context == null) {
            if (!a.a(16)) {
                return false;
            }
            a.a(16, "UploaderManager", this.m + " initialize fail, context null");
            return false;
        } else if (!this.i) {
            synchronized (this.o) {
                if (this.i) {
                    if (a.a(4)) {
                        a.a(4, "UploaderManager", this.m + " initialize, is initialized !");
                    }
                } else if (this.p == dependency.getEnvironment().getInstanceType()) {
                    this.n = new c(context, dependency);
                    this.i = true;
                    if (a.a(4)) {
                        a.a(4, "UploaderManager", this.m + " initialize !!!");
                    }
                } else if (a.a(16)) {
                    a.a(16, "UploaderManager", this.m + " initialize, FAILED! environment not equals instance in instanceType");
                }
            }
        } else if (!a.a(4)) {
            return false;
        } else {
            a.a(4, "UploaderManager", this.m + " initialize, is initialized !");
            return false;
        }
    }

    public boolean uploadAsync(@NonNull IUploaderTask task, @NonNull ITaskListener listener, Handler scheduler) {
        boolean z = false;
        if (task != null) {
            synchronized (this.o) {
                if (this.i) {
                    z = b().post(new a(1, this, task, listener, scheduler));
                }
            }
        } else if (a.a(8)) {
            a.a(8, "UploaderManager", this.m + " uploadAsync fail,task null");
        }
        return z;
    }

    private Handler b() {
        Handler handler = this.h;
        if (handler != null) {
            return handler;
        }
        if (a.a(2)) {
            a.a(2, "UploaderManager", this.m + " doRetrieve and register");
        }
        HandlerThread thread = new HandlerThread("[aus]");
        thread.start();
        handler = new Handler(thread.getLooper());
        this.h = handler;
        return handler;
    }

    void a() {
        Handler handler = this.h;
        if (handler != null) {
            Context applicationContext = this.n.c.getApplicationContext();
            if (this.g != null) {
                try {
                    applicationContext.unregisterReceiver(this.g);
                    this.g = null;
                } catch (Exception e) {
                    if (a.a(16)) {
                        a.a(16, "UploaderManager", "doClean unregisterReceiver", e);
                    }
                    this.g = null;
                } catch (Throwable th) {
                    this.g = null;
                    throw th;
                }
            }
            handler.removeCallbacksAndMessages(null);
            handler.getLooper().quit();
            this.j = null;
            this.h = null;
            this.d = new SparseArray(2);
            this.e.trimToSize();
            this.c.trimToSize();
            this.b.trimToSize();
            if (this.f != null) {
                this.f.a();
                this.f = null;
            }
            if (a.a(2)) {
                a.a(2, "UploaderManager", this.m + " doClean and release");
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x007e  */
    /* JADX WARNING: Missing block: B:26:0x008b, code:
            if (r11 == false) goto L_0x00ba;
     */
    /* JADX WARNING: Missing block: B:28:0x0092, code:
            if (com.uploader.implement.a.a(4) == false) goto L_?;
     */
    /* JADX WARNING: Missing block: B:29:0x0094, code:
            com.uploader.implement.a.a(4, "UploaderManager", r13.m + " doUpload, remove count down, start, task:" + r14.hashCode());
     */
    /* JADX WARNING: Missing block: B:34:0x00ba, code:
            r13.b.add(0, r0);
            r0.d();
     */
    /* JADX WARNING: Missing block: B:35:0x00c8, code:
            if (com.uploader.implement.a.a(4) == false) goto L_?;
     */
    /* JADX WARNING: Missing block: B:36:0x00ca, code:
            com.uploader.implement.a.a(4, "UploaderManager", r13.m + " doUpload, remove count down, wait, stopReason:" + r12 + " task:" + r14.hashCode());
     */
    /* JADX WARNING: Missing block: B:41:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:42:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:43:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:44:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void a(IUploaderTask task, ITaskListener listener, Handler scheduler) {
        if (this.g == null) {
            Context applicationContext = this.n.c.getApplicationContext();
            this.g = new b(this);
            this.n.c.registerReceiver(this.g, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            NetworkInfo networkInfo = com.uploader.implement.e.a.b(applicationContext);
            if (networkInfo != null) {
                this.k = networkInfo.isConnected();
                this.l = networkInfo.getExtraInfo();
            }
        }
        int category = a(task.getBizType());
        ArrayList concurrentArray = (ArrayList) this.d.get(category);
        i action = new i(this.n, task, category, listener, scheduler);
        boolean started = false;
        int stopReason = 0;
        if (concurrentArray != null) {
            if (concurrentArray.size() == 2) {
                stopReason = 1;
            }
            if (com.uploader.implement.e.a.a(this.n.c.getApplicationContext())) {
                stopReason = 3;
            } else {
                a(action, concurrentArray);
                started = true;
            }
        } else {
            if (this.d.size() == 2) {
                stopReason = 2;
            }
            if (com.uploader.implement.e.a.a(this.n.c.getApplicationContext())) {
            }
        }
        synchronized (this.o) {
            Handler handler = this.h;
            if (handler == null) {
                return;
            }
            handler.removeCallbacks(this.j);
        }
    }

    private void a(i action, @Nullable ArrayList<Pair<i, com.uploader.implement.d.b>> concurrentArray) {
        int category = action.g();
        if (this.f == null) {
            this.f = new com.uploader.implement.b.a.b(this.n, this.h.getLooper());
        }
        com.uploader.implement.d.b session = new c(this.n, this.f, this.h.getLooper());
        if (concurrentArray == null) {
            concurrentArray = new ArrayList(2);
            this.d.append(category, concurrentArray);
        }
        Pair pair = Pair.create(action, session);
        concurrentArray.add(pair);
        this.e.add(pair);
        action.a((d) this);
        action.b(session);
        if (a.a(4)) {
            a.a(4, "UploaderManager", this.m + " startAction task:" + action.f().hashCode());
        }
    }

    public boolean cancelAsync(@NonNull IUploaderTask task) {
        boolean z = false;
        if (task == null) {
            if (a.a(8)) {
                a.a(8, "UploaderManager", this.m + " cancelAsync fail,task null");
            }
        } else if (this.i) {
            synchronized (this.o) {
                if (this.i) {
                    Handler handler = this.h;
                    if (handler != null) {
                        if (handler.post(new a(2, this, task))) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    private int a(String businessType) {
        int index = -1;
        if (businessType == null) {
            businessType = "";
        }
        for (int i = this.c.size() - 1; i >= 0; i--) {
            if (((String) ((Pair) this.c.get(i)).second).equals(businessType)) {
                index = i;
                break;
            }
        }
        if (index < 0) {
            ArrayList arrayList = this.c;
            int i2 = this.a + 1;
            this.a = i2;
            arrayList.add(new Pair(Integer.valueOf(i2), businessType));
            index = this.c.size() - 1;
        }
        return ((Integer) ((Pair) this.c.get(index)).first).intValue();
    }

    void a(IUploaderTask task) {
        int i;
        int category = a(task.getBizType());
        boolean removed = false;
        for (i = this.b.size() - 1; i >= 0; i--) {
            if (((i) this.b.get(i)).f().equals(task)) {
                ((i) this.b.remove(i)).c(null);
                removed = true;
                break;
            }
        }
        if (!removed) {
            ArrayList pairList = (ArrayList) this.d.get(category);
            if (pairList != null) {
                for (i = pairList.size() - 1; i >= 0; i--) {
                    if (((i) ((Pair) pairList.get(i)).first).f().equals(task)) {
                        Pair pair = (Pair) pairList.get(i);
                        ((i) pair.first).c((com.uploader.implement.d.b) pair.second);
                        if (a.a(4)) {
                            a.a(4, "UploaderManager", this.m + " doCancel cancel concurrent task:" + task);
                            return;
                        }
                        return;
                    }
                }
            }
        } else if (a.a(4)) {
            a.a(4, "UploaderManager", this.m + " doCancel cancel waiting task:" + task);
        }
    }

    public void a(g action) {
        synchronized (this.o) {
            Handler handler = this.h;
            if (handler == null) {
                return;
            }
            handler.post(new a(4, this, action));
        }
    }

    void b(g uploaderAction) {
        i action = (i) uploaderAction;
        int category = action.g();
        ArrayList concurrentArray = (ArrayList) this.d.get(category);
        if (concurrentArray != null) {
            boolean removed = false;
            for (int i = concurrentArray.size() - 1; i >= 0; i--) {
                if (((i) ((Pair) concurrentArray.get(i)).first).equals(action)) {
                    removed = this.e.remove(concurrentArray.remove(i));
                    break;
                }
            }
            if (removed) {
                if (concurrentArray.size() == 0) {
                    this.d.remove(category);
                    if (a.a(4)) {
                        a.a(4, "UploaderManager", this.m + " onFinish remove concurrent task:" + action.f().hashCode());
                    }
                }
                if (com.uploader.implement.e.a.a(this.n.c.getApplicationContext())) {
                    e();
                    if (this.d.size() == 0 && this.b.size() == 0) {
                        synchronized (this.o) {
                            Handler handler = this.h;
                            if (a.a(8)) {
                                a.a(8, "UploaderManager", this.m + " start count down:" + 90000);
                            }
                            if (handler == null) {
                                return;
                            }
                            this.j = new a(3, this, new Object[0]);
                            handler.postDelayed(this.j, 90000);
                        }
                    } else if (a.a(8)) {
                        a.a(8, "UploaderManager", this.m + " doFinish has more data");
                    }
                } else if (a.a(8)) {
                    a.a(8, "UploaderManager", this.m + " doFinish no network");
                }
            } else if (a.a(8)) {
                a.a(8, "UploaderManager", this.m + " doFinish !removed");
            }
        } else if (a.a(8)) {
            a.a(8, "UploaderManager", this.m + " doFinish no concurrent");
        }
    }

    private void c() {
        boolean isConnected = false;
        String extraInfo = null;
        NetworkInfo info = com.uploader.implement.e.a.b(this.n.c.getApplicationContext());
        if (info != null) {
            isConnected = info.isConnected();
            extraInfo = info.getExtraInfo();
        }
        boolean isConnectedOld = this.k;
        String extraInfoOld = this.l;
        boolean changed = false;
        if (isConnectedOld != isConnected) {
            changed = true;
        } else if (extraInfoOld != null) {
            changed = !extraInfoOld.equals(extraInfo);
        } else if (extraInfo != null) {
            changed = !extraInfo.equals(extraInfoOld);
        }
        if (a.a(8)) {
            a.a(8, "UploaderManager", this.m + " doNetworkChanged, extraInfo(new|old):" + extraInfo + SymbolExpUtil.SYMBOL_VERTICALBAR + extraInfoOld + " isConnected(new|old):" + isConnected + SymbolExpUtil.SYMBOL_VERTICALBAR + isConnectedOld + " changed:" + changed);
        }
        if (changed) {
            this.k = isConnected;
            this.l = extraInfo;
            if (isConnected) {
                int restartedCount = 0;
                int size = this.e.size();
                for (int i = 0; i < size; i++) {
                    Pair pair = (Pair) this.e.get(i);
                    ((i) pair.first).b((com.uploader.implement.d.b) pair.second);
                    restartedCount++;
                }
                int suppliedCount = e();
                if (a.a(2)) {
                    a.a(2, "UploaderManager", this.m + " restartedCount:" + restartedCount + " suppliedCount:" + suppliedCount);
                }
            } else if (this.f != null) {
                this.f.a();
            }
        }
    }

    private void d() {
        synchronized (this.o) {
            Handler handler = this.h;
            if (handler == null) {
                return;
            }
            handler.post(new a(5, this, new Object[0]));
        }
    }

    private int e() {
        int count = 0;
        for (int i = this.b.size() - 1; i >= 0; i--) {
            i action = (i) this.b.get(i);
            ArrayList concurrentArray = (ArrayList) this.d.get(action.g());
            if (concurrentArray == null) {
                if (this.d.size() < 2) {
                    this.b.remove(i);
                    a(action, concurrentArray);
                    count++;
                }
            } else if (concurrentArray.size() < 2) {
                this.b.remove(i);
                a(action, concurrentArray);
                count++;
            }
        }
        if (a.a(2)) {
            a.a(2, "UploaderManager", this.m + " suppliedCount:" + count);
        }
        return count;
    }
}
