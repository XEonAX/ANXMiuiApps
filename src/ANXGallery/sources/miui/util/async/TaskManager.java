package miui.util.async;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import miui.os.C0001Environment;
import miui.util.SoftReferenceSingleton;
import miui.util.async.Task.Priority;
import miui.util.async.Task.Status;
import miui.util.cache.Cache;
import miui.util.cache.LruCache;

public class TaskManager {
    public static final int DEFAULT_CACHE_SIZE = -1;
    static final boolean KD = true;
    static final boolean KF = true;
    static final boolean KJ = false;
    static final boolean KK = false;
    static final boolean KL = false;
    private static final int KO = 10;
    private static final int KQ = -1;
    static final String TAG = "async";
    private static final SoftReferenceSingleton<TaskManager> s = new SoftReferenceSingleton<TaskManager>() {
        /* renamed from: dL */
        protected TaskManager createInstance() {
            return new TaskManager();
        }
    };
    private volatile boolean KS;
    private final a KT;
    private Cache<String, Object> KU;
    private TaskInfoDeliverer KV;
    private ArrayList<b> KX;
    private Object zV;

    public TaskManager() {
        this(10, -1, -1);
    }

    public TaskManager(int i, int i2, int i3) {
        this.zV = new Object() {
            protected void finalize() throws Throwable {
                try {
                    TaskManager.this.shutdown();
                } finally {
                    super.finalize();
                }
            }
        };
        int i4 = 0;
        this.KS = false;
        this.KT = new a(this, i);
        if (i2 < 0) {
            i2 = C0001Environment.getCpuCount();
            if (i2 <= 0) {
                i2 = 4;
            }
        }
        this.KX = new ArrayList(i2);
        while (i4 < i2) {
            this.KX.add(new b(this, this.KT, i4));
            ((b) this.KX.get(i4)).start();
            i4++;
        }
        this.KV = new TaskInfoDeliverer(this);
        this.KU = new LruCache(i3);
    }

    public static TaskManager getDefault() {
        return (TaskManager) s.get();
    }

    public void setMaxCache(int i) {
        this.KU.setMaxSize(i);
    }

    public void setThreadCount(int i) {
        if (this.KS) {
            Log.e(TAG, "Cannot add task into a shut down task manager");
            return;
        }
        if (i < 0) {
            i = C0001Environment.getCpuCount();
            if (i <= 0) {
                i = 4;
            }
        }
        int size = this.KX.size();
        if (i > size) {
            while (size < i) {
                b bVar = new b(this, this.KT, size);
                bVar.start();
                this.KX.add(bVar);
                size++;
            }
        } else if (i < size) {
            for (size--; size >= i; size--) {
                ((b) this.KX.get(size)).shutdown();
                this.KX.remove(size);
            }
        }
    }

    public void add(Task<?> task) {
        StringBuilder stringBuilder;
        if (this.KS) {
            Log.e(TAG, "Cannot add task into a shut down task manager");
        } else if (task.isRunning()) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Task ");
            stringBuilder2.append(task);
            stringBuilder2.append(" has already added into task manager and not finish yet");
            String stringBuilder3 = stringBuilder2.toString();
            Log.e(TAG, stringBuilder3);
            throw new IllegalArgumentException(stringBuilder3);
        } else if (task.getStatus() != Status.New && !task.restart()) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Status of task ");
            stringBuilder.append(task);
            stringBuilder.append(" is not New, and cannot restart.");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (task.a(this)) {
            if (this.KU != null && (task instanceof Cacheable)) {
                Object obj = this.KU.get(((Cacheable) task).getCacheKey());
                if (obj != null) {
                    task.a(Status.Queued, null);
                    task.a(Status.Executing, null);
                    task.a(Status.Done, obj);
                    return;
                }
            }
            if (task.getPriority() == Priority.RealTime) {
                task.a(Status.Queued, null);
                b.a(this, task);
            } else {
                this.KT.put(task);
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Task ");
            stringBuilder.append(task);
            stringBuilder.append(" has already added into task manager and not finish yet");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public void pause() {
        this.KT.pause();
    }

    public void resume() {
        this.KT.resume();
    }

    public void shutdown() {
        if (this != getDefault() && !this.KS) {
            this.KS = true;
            Iterator it = this.KX.iterator();
            while (it.hasNext()) {
                ((b) it.next()).shutdown();
            }
            this.KX.clear();
            this.KU.clear();
            dJ();
        }
    }

    private void dJ() {
        while (!this.KT.isEmpty()) {
            Task dN = this.KT.get();
            if (dN != null) {
                dN.a(Status.Canceled, null);
            }
        }
    }

    boolean isShutdown() {
        return this.KS;
    }

    public void setCallbackThread(boolean z) {
        this.KV.setCallbackThread(z);
    }

    Cache<String, Object> dK() {
        return this.KU;
    }

    boolean a(Task<?> task) {
        return this.KT.remove(task);
    }

    void b(Task<?> task, Delivery delivery, Object obj) {
        this.KV.a(task, delivery, obj);
    }
}
