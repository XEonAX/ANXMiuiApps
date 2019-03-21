package com.nexstreaming.app.common.util;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: RefUtil */
public class j {
    public static <K, V> void a(Map<K, WeakReference<V>> map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) ((Entry) it.next()).getValue();
            if (weakReference == null || weakReference.get() == null) {
                it.remove();
            }
        }
    }
}
