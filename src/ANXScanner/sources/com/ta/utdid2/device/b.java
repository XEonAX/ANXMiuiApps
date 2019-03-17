package com.ta.utdid2.device;

import android.content.Context;
import com.ta.utdid2.b.a.g;
import com.ta.utdid2.b.a.i;
import java.util.zip.Adler32;

/* compiled from: DeviceInfo */
public class b {
    private static a a = null;
    static final Object e = new Object();
    static String k = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";

    static long a(a aVar) {
        if (aVar != null) {
            String format = String.format("%s%s%s%s%s", new Object[]{aVar.f(), aVar.getDeviceId(), Long.valueOf(aVar.a()), aVar.e(), aVar.d()});
            if (!i.a(format)) {
                Adler32 adler32 = new Adler32();
                adler32.reset();
                adler32.update(format.getBytes());
                return adler32.getValue();
            }
        }
        return 0;
    }

    private static a a(Context context) {
        if (context != null) {
            a aVar = new a();
            synchronized (e) {
                String value = c.a(context).getValue();
                if (!i.a(value)) {
                    String substring;
                    if (value.endsWith("\n")) {
                        substring = value.substring(0, value.length() - 1);
                    } else {
                        substring = value;
                    }
                    aVar = new a();
                    long currentTimeMillis = System.currentTimeMillis();
                    String a = g.a(context);
                    String b = g.b(context);
                    aVar.d(a);
                    aVar.b(a);
                    aVar.b(currentTimeMillis);
                    aVar.c(b);
                    aVar.e(substring);
                    aVar.a(a(aVar));
                    return aVar;
                }
            }
        }
        return null;
    }

    public static synchronized a b(Context context) {
        a aVar;
        synchronized (b.class) {
            if (a != null) {
                aVar = a;
            } else if (context != null) {
                aVar = a(context);
                a = aVar;
            } else {
                aVar = null;
            }
        }
        return aVar;
    }
}
