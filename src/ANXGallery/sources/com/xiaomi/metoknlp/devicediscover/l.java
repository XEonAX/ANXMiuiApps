package com.xiaomi.metoknlp.devicediscover;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* compiled from: Scanner */
public class l extends Thread {
    private WeakReference T;
    private WeakReference U;
    private final int mWhat;

    public l(Handler handler, Context context, int i) {
        this.T = new WeakReference(handler);
        this.U = new WeakReference(context);
        this.mWhat = i;
        start();
    }

    public static void a(Context context, Handler handler, int i) {
        l lVar = new l(handler, context, i);
    }

    public void run() {
        a(L());
    }

    private void a(HashMap hashMap) {
        Handler handler = getHandler();
        Message obtainMessage = handler.obtainMessage(this.mWhat);
        obtainMessage.obj = hashMap;
        handler.sendMessage(obtainMessage);
    }

    private Handler getHandler() {
        if (this.T == null) {
            return null;
        }
        return (Handler) this.T.get();
    }

    private Context getContext() {
        if (this.T == null) {
            return null;
        }
        return (Context) this.U.get();
    }

    private HashMap L() {
        HashMap hashMap = new HashMap();
        String c = i.c(getContext());
        if (c != null) {
            String substring = c.substring(0, c.lastIndexOf("."));
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(40);
            long dVar;
            try {
                int i;
                Runnable[] runnableArr = new Runnable[255];
                for (i = 1; i < 255; i++) {
                    dVar = new d(this, substring + "." + i);
                    runnableArr[i] = dVar;
                }
                for (i = 1; i < 255; i++) {
                    dVar = runnableArr[i];
                    newFixedThreadPool.execute(dVar);
                }
                try {
                    newFixedThreadPool.awaitTermination(dVar, TimeUnit.MILLISECONDS);
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                try {
                    newFixedThreadPool.awaitTermination(dVar, TimeUnit.MILLISECONDS);
                } catch (Exception e3) {
                }
                a(substring, 1, 255, hashMap);
                return hashMap;
            } finally {
                newFixedThreadPool.shutdown();
                int hashMap2 = 10000;
                try {
                    newFixedThreadPool.awaitTermination(10000, TimeUnit.MILLISECONDS);
                } catch (Exception e4) {
                }
            }
            a(substring, 1, 255, hashMap2);
        }
        return hashMap2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x007c A:{SYNTHETIC, Splitter: B:28:0x007c} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0086 A:{SYNTHETIC, Splitter: B:34:0x0086} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x008f A:{SYNTHETIC, Splitter: B:39:0x008f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(String str, int i, int i2, HashMap hashMap) {
        Throwable th;
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2;
        try {
            bufferedReader2 = new BufferedReader(new FileReader("/proc/net/arp"));
            try {
                int i3;
                bufferedReader2.readLine();
                String[] strArr = new String[((i2 - i) + 1)];
                for (i3 = 0; i3 < (i2 - i) + 1; i3++) {
                    strArr[i3] = str + "." + i3;
                }
                while (true) {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    String[] split = readLine.split("[ ]+");
                    if (split.length >= 6) {
                        Object obj = split[0];
                        String str2 = split[3];
                        for (String equals : strArr) {
                            if (equals.equals(obj) && str2.matches("..:..:..:..:..:..") && !"00:00:00:00:00:00".equals(str2)) {
                                hashMap.put(obj, str2);
                            }
                        }
                    }
                }
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e) {
                    }
                }
            } catch (FileNotFoundException e2) {
                if (bufferedReader2 == null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (IOException e4) {
                if (bufferedReader2 == null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e5) {
                    }
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                bufferedReader = bufferedReader2;
                th = th3;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
            bufferedReader2 = null;
            if (bufferedReader2 == null) {
            }
        } catch (IOException e8) {
            bufferedReader2 = null;
            if (bufferedReader2 == null) {
            }
        } catch (Throwable th4) {
            th = th4;
            if (bufferedReader != null) {
            }
            throw th;
        }
    }
}
