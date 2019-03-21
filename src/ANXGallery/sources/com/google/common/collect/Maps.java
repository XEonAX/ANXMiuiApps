package com.google.common.collect;

import java.util.HashMap;
import java.util.Map;

public final class Maps {
    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap();
    }

    public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> map) {
        return new HashMap(map);
    }
}
