package com.ta.utdid2.device;

import android.content.Context;
import com.ta.utdid2.b.a.i;

public class UTDevice {
    public static String getUtdid(Context context) {
        a b = b.b(context);
        if (b == null || i.a(b.f())) {
            return "ffffffffffffffffffffffff";
        }
        return b.f();
    }

    public static String getUtdidForUpdate(Context context) {
        String h = c.a(context).h();
        return (h == null || i.a(h)) ? "ffffffffffffffffffffffff" : h;
    }
}
