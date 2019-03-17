package com.alibaba.fastjson.util;

public class IdentityHashMap<K, V> {
    public static final int DEFAULT_SIZE = 1024;
    private final Entry<K, V>[] buckets;
    private final int indexMask;

    protected static final class Entry<K, V> {
        public final int hashCode;
        public final K key;
        public final Entry<K, V> next;
        public V value;

        public Entry(K key, V value, int hash, Entry<K, V> next) {
            this.key = key;
            this.value = value;
            this.next = next;
            this.hashCode = hash;
        }
    }

    public IdentityHashMap() {
        this(1024);
    }

    public IdentityHashMap(int tableSize) {
        this.indexMask = tableSize - 1;
        this.buckets = new Entry[tableSize];
    }

    public final V get(K key) {
        for (Entry<K, V> entry = this.buckets[System.identityHashCode(key) & this.indexMask]; entry != null; entry = entry.next) {
            if (key == entry.key) {
                return entry.value;
            }
        }
        return null;
    }

    public Class findClass(String keyString) {
        for (Entry<K, V> bucket : this.buckets) {
            if (bucket != null) {
                for (Entry<K, V> entry = bucket; entry != null; entry = entry.next) {
                    Class key = bucket.key;
                    if (key instanceof Class) {
                        Class clazz = key;
                        if (clazz.getName().equals(keyString)) {
                            return clazz;
                        }
                    }
                }
                continue;
            }
        }
        return null;
    }

    public boolean put(K key, V value) {
        int hash = System.identityHashCode(key);
        int bucket = hash & this.indexMask;
        for (Entry<K, V> entry = this.buckets[bucket]; entry != null; entry = entry.next) {
            if (key == entry.key) {
                entry.value = value;
                return true;
            }
        }
        this.buckets[bucket] = new Entry(key, value, hash, this.buckets[bucket]);
        return false;
    }
}
