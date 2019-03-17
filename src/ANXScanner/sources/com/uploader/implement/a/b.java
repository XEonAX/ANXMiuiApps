package com.uploader.implement.a;

import android.os.Handler;
import com.uploader.export.ITaskListener;
import com.uploader.export.ITaskResult;
import com.uploader.export.IUploaderTask;
import com.uploader.export.TaskError;

/* compiled from: ActionNotifiable */
class b implements Runnable {
    final ITaskListener a;
    final IUploaderTask b;
    final Object c;
    final int d;

    static void a(Handler scheduler, int type, IUploaderTask task, ITaskListener listener, Object object) {
        if (listener != null) {
            Runnable notifiable = new b(type, task, listener, object);
            if (scheduler == null) {
                com.uploader.implement.e.b.a(notifiable);
            } else {
                scheduler.post(notifiable);
            }
        }
    }

    private b(int type, IUploaderTask task, ITaskListener listener, Object object) {
        this.d = type;
        this.b = task;
        this.a = listener;
        this.c = object;
    }

    public void run() {
        switch (this.d) {
            case 0:
                this.a.onSuccess(this.b, (ITaskResult) this.c);
                return;
            case 1:
                this.a.onCancel(this.b);
                return;
            case 2:
                this.a.onFailure(this.b, (TaskError) this.c);
                return;
            case 3:
                this.a.onProgress(this.b, ((Integer) this.c).intValue());
                return;
            case 4:
                this.a.onPause(this.b);
                return;
            case 5:
                this.a.onStart(this.b);
                return;
            case 6:
                this.a.onResume(this.b);
                return;
            case 7:
                this.a.onWait(this.b);
                return;
            default:
                return;
        }
    }
}
