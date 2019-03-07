package com.miui.screenrecorder.colorart.src.colorart;

import java.util.HashMap;
import java.util.Iterator;

public class HashBag<K> extends HashMap<K, Integer> {
    public int getCount(K value) {
        if (get(value) == null) {
            return 0;
        }
        return ((Integer) get(value)).intValue();
    }

    public void add(K value) {
        if (get(value) == null) {
            put(value, Integer.valueOf(1));
        } else {
            put(value, Integer.valueOf(((Integer) get(value)).intValue() + 1));
        }
    }

    public Iterator<K> iterator() {
        return keySet().iterator();
    }
}
