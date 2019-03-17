package com.ta.utdid2.a;

import android.content.Context;
import android.util.Log;
import com.ta.utdid2.b.a.f;
import com.ta.utdid2.b.a.i;
import com.ta.utdid2.b.a.j;

/* compiled from: AidManager */
public class a {
    private static final String TAG = a.class.getName();
    private static a a = null;
    private Context mContext;

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a(context);
            }
            aVar = a;
        }
        return aVar;
    }

    private a(Context context) {
        this.mContext = context;
    }

    public void a(String str, String str2, String str3, com.ut.device.a aVar) {
        boolean z = false;
        if (aVar == null) {
            Log.e(TAG, "callback is null!");
        } else if (this.mContext == null || i.a(str) || i.a(str2)) {
            boolean z2;
            String str4 = TAG;
            StringBuilder append = new StringBuilder("mContext:").append(this.mContext).append("; callback:").append(aVar).append("; has appName:");
            if (i.a(str)) {
                z2 = false;
            } else {
                z2 = true;
            }
            StringBuilder append2 = append.append(z2).append("; has token:");
            if (!i.a(str2)) {
                z = true;
            }
            Log.e(str4, append2.append(z).toString());
            aVar.a(1002, "");
        } else {
            String a = c.a(this.mContext, str, str2);
            if (!i.a(a) && j.a(c.a(this.mContext, str, str2), 1)) {
                aVar.a(1001, a);
            } else if (f.a(this.mContext)) {
                b.a(this.mContext).a(str, str2, str3, a, aVar);
            } else {
                aVar.a(1003, a);
            }
        }
    }

    public String a(String str, String str2, String str3) {
        boolean z = false;
        if (this.mContext == null || i.a(str) || i.a(str2)) {
            String str4 = TAG;
            StringBuilder append = new StringBuilder("mContext:").append(this.mContext).append("; has appName:").append(!i.a(str)).append("; has token:");
            if (!i.a(str2)) {
                z = true;
            }
            Log.e(str4, append.append(z).toString());
            return "";
        }
        String a = c.a(this.mContext, str, str2);
        if ((i.a(a) || !j.a(c.a(this.mContext, str, str2), 1)) && f.a(this.mContext)) {
            return b(str, str2, str3);
        }
        return a;
    }

    private synchronized String b(String str, String str2, String str3) {
        String str4;
        if (this.mContext == null) {
            Log.e(TAG, "no context!");
            str4 = "";
        } else {
            str4 = "";
            if (f.a(this.mContext)) {
                str4 = b.a(this.mContext).a(str, str2, str3, c.a(this.mContext, str, str2));
            }
            c.a(this.mContext, str, str4, str2);
        }
        return str4;
    }
}
