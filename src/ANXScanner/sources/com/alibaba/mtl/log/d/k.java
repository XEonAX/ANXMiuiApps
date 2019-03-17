package com.alibaba.mtl.log.d;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* compiled from: MutiProcessLock */
public class k {
    static File a = null;
    /* renamed from: a */
    static FileChannel f64a;
    /* renamed from: a */
    static FileLock f65a;

    public static synchronized boolean c(Context context) {
        boolean z = true;
        synchronized (k.class) {
            if (a == null) {
                a = new File(context.getFilesDir() + File.separator + "ap.Lock");
            }
            boolean exists = a.exists();
            if (!exists) {
                try {
                    exists = a.createNewFile();
                } catch (IOException e) {
                }
            }
            if (exists) {
                if (a == null) {
                    try {
                        a = new RandomAccessFile(a, "rw").getChannel();
                    } catch (Exception e2) {
                        z = false;
                    }
                }
                Object obj;
                try {
                    FileLock tryLock = a.tryLock();
                    if (tryLock != null) {
                        a = tryLock;
                    } else {
                        FileLock obj2 = tryLock;
                        Log.d("TAG", "mLock:" + obj2);
                        z = false;
                    }
                } catch (Throwable th) {
                    obj2 = null;
                }
            }
        }
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0013 A:{SYNTHETIC, Splitter: B:11:0x0013} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void release() {
        FileChannel e;
        synchronized (k.class) {
            FileLock e2;
            if (a != null) {
                try {
                    e2 = a;
                    e2.release();
                    a = e2;
                } catch (Exception e3) {
                    e = e3;
                    a = e;
                } catch (IOException e4) {
                    e2 = e4;
                    a = e2;
                    if (a != null) {
                    }
                } catch (Throwable th) {
                    e2 = th;
                    a = null;
                } finally {
                    a = null;
                }
            }
            if (a != null) {
                e2 = a;
                e2.close();
                a = e;
            }
        }
    }
}
