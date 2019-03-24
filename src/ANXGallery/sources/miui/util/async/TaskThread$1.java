package miui.util.async;

class TaskThread$1 extends Thread {
    final /* synthetic */ TaskManager Lf;
    final /* synthetic */ Task Lg;

    TaskThread$1(TaskManager taskManager, Task task) {
        this.Lf = taskManager;
        this.Lg = task;
    }

    public void run() {
        b.a(this.Lf, this, this.Lg);
    }
}
