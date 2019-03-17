package com.alibaba.alibclinkpartner.j;

import android.util.Log;
import com.alibaba.alibclinkpartner.b;

public class e {
    private static boolean a = b.c();

    public static void a(String str, String str2, String str3) {
        if (a) {
            Log.e("AlibcLinkPartner", "class = " + str + "\n" + "method = " + str2 + "\n" + "errMsg = " + str3);
            c(str, str2, str3);
        }
    }

    public static void b(String str, String str2, String str3) {
        if (a) {
            Log.i("AlibcLinkPartner", "class = " + str + "\n" + "method = " + str2 + "\n" + "debugMsg = " + str3);
        }
    }

    private static void c(String str, String str2, String str3) {
        if (a && b.f() == 1) {
            a.a(str, str2, str3);
        }
    }
}
