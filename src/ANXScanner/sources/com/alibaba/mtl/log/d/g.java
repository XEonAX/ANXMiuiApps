package com.alibaba.mtl.log.d;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: KeyArraySorter */
public class g {
    private static g a = new g();
    /* renamed from: a */
    private a f62a = new a();
    /* renamed from: a */
    private b f63a = new b();

    /* compiled from: KeyArraySorter */
    private class a implements Comparator<String> {
        private a() {
        }

        public int compare(String o1, String o2) {
            if (TextUtils.isEmpty(o1) || TextUtils.isEmpty(o2)) {
                return 0;
            }
            return o1.compareTo(o2);
        }
    }

    /* compiled from: KeyArraySorter */
    private class b implements Comparator<String> {
        private b() {
        }

        public int compare(String o1, String o2) {
            if (TextUtils.isEmpty(o1) || TextUtils.isEmpty(o2)) {
                return 0;
            }
            return o1.compareTo(o2) * -1;
        }
    }

    private g() {
    }

    public static g a() {
        return a;
    }

    public String[] a(String[] strArr, boolean z) {
        Comparator comparator;
        if (z) {
            comparator = this.a;
        } else {
            comparator = this.a;
        }
        if (comparator == null || strArr == null || strArr.length <= 0) {
            return null;
        }
        Arrays.sort(strArr, comparator);
        return strArr;
    }
}
