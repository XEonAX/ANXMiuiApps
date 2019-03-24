package miui.util.async.tasks;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import java.lang.ref.WeakReference;
import miui.util.AppConstants;
import miui.util.C0014Pools;
import miui.util.async.Task;
import miui.util.async.TaskManager;

public abstract class ContentResolverQueryTask<T> extends Task<T> {
    private WeakReference<TaskManager> Kc;
    private final String[] Ll;
    private final String[] Ln;
    private final String Lo;
    private final String Lp;
    private boolean Lq;
    private boolean Lr;
    private boolean Ls;
    private UriObserver Lt;
    private String hO;
    private final Uri zX;

    public class Cookie {
        public void release() {
            ContentResolverQueryTask.this.disableAutoRequery();
        }

        public void pause() {
            ContentResolverQueryTask.this.pause();
        }

        public void resume() {
            ContentResolverQueryTask.this.resume();
        }
    }

    private static class UriObserver extends ContentObserver {
        private final WeakReference<ContentResolverQueryTask> Lv;

        public UriObserver(ContentResolverQueryTask contentResolverQueryTask) {
            super(new Handler(AppConstants.getCurrentApplication().getMainLooper()));
            this.Lv = new WeakReference(contentResolverQueryTask);
        }

        public void onChange(boolean z) {
            ContentResolverQueryTask contentResolverQueryTask = (ContentResolverQueryTask) this.Lv.get();
            if (contentResolverQueryTask != null) {
                contentResolverQueryTask.requery();
            }
        }
    }

    public ContentResolverQueryTask(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        this.zX = uri;
        this.Ln = strArr;
        this.Lo = str;
        this.Ll = strArr2;
        this.Lp = str2;
    }

    public Cookie enableAutoRequery() {
        if (!this.Lq) {
            this.Lq = true;
            this.Lt = new UriObserver(this);
            AppConstants.getCurrentApplication().getContentResolver().registerContentObserver(this.zX, true, this.Lt);
        }
        return new Cookie();
    }

    public void disableAutoRequery() {
        this.Lq = false;
        if (this.Lt != null) {
            AppConstants.getCurrentApplication().getContentResolver().unregisterContentObserver(this.Lt);
            this.Lt = null;
        }
    }

    public String getDescription() {
        if (this.hO == null) {
            StringBuilder stringBuilder = (StringBuilder) C0014Pools.getStringBuilderPool().acquire();
            int i = 1;
            if (this.Ln != null) {
                stringBuilder.append('[');
                stringBuilder.append(this.Ln[0]);
                for (int i2 = 1; i2 < this.Ln.length; i2++) {
                    stringBuilder.append(';');
                    stringBuilder.append(this.Ln[i2]);
                }
                stringBuilder.append("]@");
            }
            stringBuilder.append(this.zX);
            if (this.Lo != null) {
                stringBuilder.append(" WHERE ");
                if (this.Ll != null) {
                    stringBuilder.append('[');
                    stringBuilder.append(this.Ll[0]);
                    while (i < this.Ll.length) {
                        stringBuilder.append(';');
                        stringBuilder.append(this.Ll[i]);
                        i++;
                    }
                    stringBuilder.append("]@");
                }
                stringBuilder.append(this.Lo);
            }
            if (this.Lp != null) {
                stringBuilder.append(" ORDER BY ");
                stringBuilder.append(this.Lp);
            }
            this.hO = stringBuilder.toString();
            C0014Pools.getStringBuilderPool().release(stringBuilder);
        }
        return this.hO;
    }

    protected Cursor query() throws Exception {
        return AppConstants.getCurrentApplication().getContentResolver().query(this.zX, this.Ln, this.Lo, this.Ll, this.Lp);
    }

    void requery() {
        if (this.Lr) {
            this.Ls = true;
        } else if (this.Kc != null) {
            TaskManager taskManager = (TaskManager) this.Kc.get();
            if (taskManager != null) {
                restart();
                taskManager.add(this);
                return;
            }
            disableAutoRequery();
        }
    }

    void pause() {
        this.Lr = true;
    }

    void resume() {
        this.Lr = false;
        if (this.Ls) {
            this.Ls = false;
            requery();
        }
    }

    public void onPrepare(TaskManager taskManager) {
        this.Kc = new WeakReference(taskManager);
    }
}
