package miui.util.async;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C0007Pool;
import miui.util.concurrent.ConcurrentRingQueue;
import miui.util.concurrent.Queue.Predicate;

class TaskInfoDeliverer {
    private static final C0007Pool<TaskDeliveryInfo> Ks = C0014Pools.createSimplePool(new C0000Manager<TaskDeliveryInfo>() {
        /* renamed from: dI */
        public TaskDeliveryInfo createInstance() {
            return new TaskDeliveryInfo();
        }

        /* renamed from: a */
        public void onRelease(TaskDeliveryInfo taskDeliveryInfo) {
            taskDeliveryInfo.clear();
        }
    }, 8);
    private TaskManager Kt;
    private DeliverHandler Ku = new DeliverHandler(AppConstants.getCurrentApplication().getMainLooper());
    private ConcurrentRingQueue<TaskDeliveryInfo> Kv = new ConcurrentRingQueue(20, true, true);

    private static class DeliverHandler extends Handler {
        static final int Ky = 0;

        public DeliverHandler(Looper looper) {
            super(looper);
        }

        public void b(TaskInfoDeliverer taskInfoDeliverer) {
            obtainMessage(0, taskInfoDeliverer).sendToTarget();
        }

        public void handleMessage(Message message) {
            ((TaskInfoDeliverer) message.obj).dH();
            message.obj = null;
        }
    }

    static class TaskDeliveryInfo {
        public Delivery KA;
        public Object KC;
        public Task<?> Kz;

        TaskDeliveryInfo() {
        }

        public void clear() {
            this.Kz = null;
            this.KA = null;
            this.KC = null;
        }
    }

    public TaskInfoDeliverer(TaskManager taskManager) {
        this.Kt = taskManager;
    }

    public void setCallbackThread(boolean z) {
        Looper mainLooper = AppConstants.getCurrentApplication().getMainLooper();
        if (z && this.Ku.getLooper() != mainLooper) {
            this.Ku.getLooper().quit();
            this.Ku = new DeliverHandler(mainLooper);
        } else if (!z && this.Ku.getLooper() == mainLooper) {
            Thread anonymousClass2 = new Thread() {
                public void run() {
                    Looper.prepare();
                    TaskInfoDeliverer.this.Ku = new DeliverHandler(Looper.myLooper());
                    Looper.loop();
                }
            };
            anonymousClass2.setName("TaskInfoDeliverer-Callback");
            anonymousClass2.start();
        }
    }

    public void a(final Task<?> task, Delivery delivery, Object obj) {
        TaskDeliveryInfo taskDeliveryInfo = (TaskDeliveryInfo) Ks.acquire();
        taskDeliveryInfo.Kz = task;
        taskDeliveryInfo.KA = delivery;
        taskDeliveryInfo.KC = obj;
        if (delivery == Delivery.Result && obj == null) {
            this.Kv.remove(new Predicate<TaskDeliveryInfo>() {
                /* renamed from: b */
                public boolean apply(TaskDeliveryInfo taskDeliveryInfo) {
                    return taskDeliveryInfo != null && taskDeliveryInfo.Kz == task;
                }
            });
        }
        this.Kv.put(taskDeliveryInfo);
        dH();
    }

    private void dH() {
        if (Looper.myLooper() == this.Ku.getLooper()) {
            while (!this.Kv.isEmpty()) {
                TaskDeliveryInfo taskDeliveryInfo = (TaskDeliveryInfo) this.Kv.get();
                if (taskDeliveryInfo != null) {
                    taskDeliveryInfo.Kz.a(this.Kt, taskDeliveryInfo.KA, taskDeliveryInfo.KC);
                    Ks.release(taskDeliveryInfo);
                }
            }
            return;
        }
        this.Ku.b(this);
    }
}
