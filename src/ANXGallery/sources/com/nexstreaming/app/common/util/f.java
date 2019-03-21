package com.nexstreaming.app.common.util;

import java.util.Collection;

/* compiled from: Ints */
public final class f {
    public static final int[] a(Collection<Integer> collection) {
        if (collection == null) {
            return new int[0];
        }
        int[] iArr = new int[collection.size()];
        int i = 0;
        for (Integer num : collection) {
            int i2 = i + 1;
            iArr[i] = num == null ? 0 : num.intValue();
            i = i2;
        }
        return iArr;
    }
}
