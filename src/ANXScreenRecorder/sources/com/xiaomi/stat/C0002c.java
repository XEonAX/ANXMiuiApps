package com.xiaomi.stat;

import android.os.Handler;
import android.os.HandlerThread;
import com.xiaomi.stat.d.k;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* renamed from: com.xiaomi.stat.c */
public class C0002c {
    private static final String a = "DBExecutor";
    private static String b = "mistat_db";
    private static final String c = "mistat";
    private static final String d = "db.lk";
    private static Handler e;
    private static FileLock f;
    private static FileChannel g;

    private static class a implements Runnable {
        private Runnable a;

        public a(Runnable runnable) {
            this.a = runnable;
        }

        public void run() {
            if (C0002c.d()) {
                if (this.a != null) {
                    this.a.run();
                }
                C0002c.e();
            }
        }
    }

    private static void c() {
        if (e == null) {
            synchronized (C0002c.class) {
                if (e == null) {
                    HandlerThread handlerThread = new HandlerThread(b);
                    handlerThread.start();
                    e = new Handler(handlerThread.getLooper());
                }
            }
        }
    }

    public static void a(Runnable runnable) {
        C0002c.c();
        e.post(new a(runnable));
    }

    private static boolean d() {
        File file = new File(I.a().getFilesDir(), c);
        if (!file.exists()) {
            file.mkdir();
        }
        try {
            g = new FileOutputStream(new File(file, d)).getChannel();
            try {
                f = g.lock();
                k.c(a, "acquire lock for db");
                return true;
            } catch (IOException e) {
                k.c(a, "acquire lock for db failed with " + e);
                try {
                    g.close();
                    g = null;
                    return false;
                } catch (IOException e2) {
                    k.c(a, "close file stream failed with " + e);
                    return false;
                }
            }
        } catch (FileNotFoundException e3) {
            k.c(a, "acquire lock for db failed with " + e3);
            return false;
        }
    }

    private static void e() {
        if (f != null) {
            try {
                f.release();
                f = null;
                k.c(a, "release lock for db");
                g.close();
                g = null;
            } catch (IOException e) {
                k.c(a, "release lock for db failed with " + e);
            }
        }
    }
}
