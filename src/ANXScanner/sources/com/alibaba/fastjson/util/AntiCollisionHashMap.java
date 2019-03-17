package com.alibaba.fastjson.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Random;
import java.util.Set;

public class AntiCollisionHashMap<K, V> extends AbstractMap<K, V> implements Map<K, V>, Cloneable, Serializable {
    static final int DEFAULT_INITIAL_CAPACITY = 16;
    static final float DEFAULT_LOAD_FACTOR = 0.75f;
    static final int KEY = 16777619;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int M_MASK = -2023358765;
    static final int SEED = -2128831035;
    private static final long serialVersionUID = 362498820763181265L;
    private transient Set<java.util.Map.Entry<K, V>> entrySet;
    volatile transient Set<K> keySet;
    final float loadFactor;
    volatile transient int modCount;
    final int random;
    transient int size;
    transient Entry<K, V>[] table;
    int threshold;
    volatile transient Collection<V> values;

    static class Entry<K, V> implements java.util.Map.Entry<K, V> {
        final int hash;
        final K key;
        Entry<K, V> next;
        V value;

        Entry(int h, K k, V v, Entry<K, V> n) {
            this.value = v;
            this.next = n;
            this.key = k;
            this.hash = h;
        }

        public final K getKey() {
            return this.key;
        }

        public final V getValue() {
            return this.value;
        }

        public final V setValue(V newValue) {
            V oldValue = this.value;
            this.value = newValue;
            return oldValue;
        }

        public final boolean equals(Object o) {
            if (!(o instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry e = (java.util.Map.Entry) o;
            Object k1 = getKey();
            Object k2 = e.getKey();
            if (k1 != k2 && (k1 == null || !k1.equals(k2))) {
                return false;
            }
            Object v1 = getValue();
            Object v2 = e.getValue();
            if (v1 == v2 || (v1 != null && v1.equals(v2))) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int i = 0;
            int hashCode = this.key == null ? 0 : this.key.hashCode();
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return hashCode ^ i;
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }

        void recordAccess(AntiCollisionHashMap<K, V> antiCollisionHashMap) {
        }

        void recordRemoval(AntiCollisionHashMap<K, V> antiCollisionHashMap) {
        }
    }

    private abstract class HashIterator<E> implements Iterator<E> {
        Entry<K, V> current;
        int expectedModCount;
        int index;
        Entry<K, V> next;

        HashIterator() {
            this.expectedModCount = AntiCollisionHashMap.this.modCount;
            if (AntiCollisionHashMap.this.size > 0) {
                Entry[] t = AntiCollisionHashMap.this.table;
                while (this.index < t.length) {
                    int i = this.index;
                    this.index = i + 1;
                    Entry entry = t[i];
                    this.next = entry;
                    if (entry != null) {
                        return;
                    }
                }
            }
        }

        public final boolean hasNext() {
            return this.next != null;
        }

        final Entry<K, V> nextEntry() {
            if (AntiCollisionHashMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
            Entry<K, V> e = this.next;
            if (e == null) {
                throw new NoSuchElementException();
            }
            Entry entry = e.next;
            this.next = entry;
            if (entry == null) {
                Entry[] t = AntiCollisionHashMap.this.table;
                while (this.index < t.length) {
                    int i = this.index;
                    this.index = i + 1;
                    entry = t[i];
                    this.next = entry;
                    if (entry != null) {
                        break;
                    }
                }
            }
            this.current = e;
            return e;
        }

        public void remove() {
            if (this.current == null) {
                throw new IllegalStateException();
            } else if (AntiCollisionHashMap.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            } else {
                Object k = this.current.key;
                this.current = null;
                AntiCollisionHashMap.this.removeEntryForKey(k);
                this.expectedModCount = AntiCollisionHashMap.this.modCount;
            }
        }
    }

    private final class EntryIterator extends HashIterator<java.util.Map.Entry<K, V>> {
        private EntryIterator() {
            super();
        }

        public java.util.Map.Entry<K, V> next() {
            return nextEntry();
        }
    }

    private final class EntrySet extends AbstractSet<java.util.Map.Entry<K, V>> {
        private EntrySet() {
        }

        public Iterator<java.util.Map.Entry<K, V>> iterator() {
            return AntiCollisionHashMap.this.newEntryIterator();
        }

        public boolean contains(Object o) {
            if (!(o instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry<K, V> e = (java.util.Map.Entry) o;
            Entry<K, V> candidate = AntiCollisionHashMap.this.getEntry(e.getKey());
            if (candidate == null || !candidate.equals(e)) {
                return false;
            }
            return true;
        }

        public boolean remove(Object o) {
            return AntiCollisionHashMap.this.removeMapping(o) != null;
        }

        public int size() {
            return AntiCollisionHashMap.this.size;
        }

        public void clear() {
            AntiCollisionHashMap.this.clear();
        }
    }

    private final class KeyIterator extends HashIterator<K> {
        private KeyIterator() {
            super();
        }

        public K next() {
            return nextEntry().getKey();
        }
    }

    private final class KeySet extends AbstractSet<K> {
        private KeySet() {
        }

        public Iterator<K> iterator() {
            return AntiCollisionHashMap.this.newKeyIterator();
        }

        public int size() {
            return AntiCollisionHashMap.this.size;
        }

        public boolean contains(Object o) {
            return AntiCollisionHashMap.this.containsKey(o);
        }

        public boolean remove(Object o) {
            return AntiCollisionHashMap.this.removeEntryForKey(o) != null;
        }

        public void clear() {
            AntiCollisionHashMap.this.clear();
        }
    }

    private final class ValueIterator extends HashIterator<V> {
        private ValueIterator() {
            super();
        }

        public V next() {
            return nextEntry().value;
        }
    }

    private final class Values extends AbstractCollection<V> {
        private Values() {
        }

        public Iterator<V> iterator() {
            return AntiCollisionHashMap.this.newValueIterator();
        }

        public int size() {
            return AntiCollisionHashMap.this.size;
        }

        public boolean contains(Object o) {
            return AntiCollisionHashMap.this.containsValue(o);
        }

        public void clear() {
            AntiCollisionHashMap.this.clear();
        }
    }

    private int hashString(String key) {
        int hash = SEED * this.random;
        for (int i = 0; i < key.length(); i++) {
            hash = (KEY * hash) ^ key.charAt(i);
        }
        return ((hash >> 1) ^ hash) & M_MASK;
    }

    public AntiCollisionHashMap(int initialCapacity, float loadFactor) {
        this.keySet = null;
        this.values = null;
        this.random = new Random().nextInt(99999);
        this.entrySet = null;
        if (initialCapacity < 0) {
            throw new IllegalArgumentException("Illegal initial capacity: " + initialCapacity);
        }
        if (initialCapacity > MAXIMUM_CAPACITY) {
            initialCapacity = MAXIMUM_CAPACITY;
        }
        if (loadFactor <= 0.0f || Float.isNaN(loadFactor)) {
            throw new IllegalArgumentException("Illegal load factor: " + loadFactor);
        }
        int capacity = 1;
        while (capacity < initialCapacity) {
            capacity <<= 1;
        }
        this.loadFactor = loadFactor;
        this.threshold = (int) (((float) capacity) * loadFactor);
        this.table = new Entry[capacity];
        init();
    }

    public AntiCollisionHashMap(int initialCapacity) {
        this(initialCapacity, DEFAULT_LOAD_FACTOR);
    }

    public AntiCollisionHashMap() {
        this.keySet = null;
        this.values = null;
        this.random = new Random().nextInt(99999);
        this.entrySet = null;
        this.loadFactor = DEFAULT_LOAD_FACTOR;
        this.threshold = 12;
        this.table = new Entry[16];
        init();
    }

    public AntiCollisionHashMap(Map<? extends K, ? extends V> m) {
        this(Math.max(((int) (((float) m.size()) / DEFAULT_LOAD_FACTOR)) + 1, 16), DEFAULT_LOAD_FACTOR);
        putAllForCreate(m);
    }

    void init() {
    }

    static int hash(int h) {
        h *= h;
        h ^= (h >>> 20) ^ (h >>> 12);
        return ((h >>> 7) ^ h) ^ (h >>> 4);
    }

    static int indexFor(int h, int length) {
        return (length - 1) & h;
    }

    public int size() {
        return this.size;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public V get(Object key) {
        if (key == null) {
            return getForNullKey();
        }
        int hash;
        if (key instanceof String) {
            hash = hash(hashString((String) key));
        } else {
            hash = hash(key.hashCode());
        }
        for (Entry<K, V> e = this.table[indexFor(hash, this.table.length)]; e != null; e = e.next) {
            if (e.hash == hash) {
                Object k = e.key;
                if (k == key || key.equals(k)) {
                    return e.value;
                }
            }
        }
        return null;
    }

    private V getForNullKey() {
        for (Entry<K, V> e = this.table[0]; e != null; e = e.next) {
            if (e.key == null) {
                return e.value;
            }
        }
        return null;
    }

    public boolean containsKey(Object key) {
        return getEntry(key) != null;
    }

    final Entry<K, V> getEntry(Object key) {
        int hash;
        if (key == null) {
            hash = 0;
        } else if (key instanceof String) {
            hash = hash(hashString((String) key));
        } else {
            hash = hash(key.hashCode());
        }
        for (Entry<K, V> e = this.table[indexFor(hash, this.table.length)]; e != null; e = e.next) {
            if (e.hash == hash) {
                Object k = e.key;
                if (k == key) {
                    return e;
                }
                if (key != null && key.equals(k)) {
                    return e;
                }
            }
        }
        return null;
    }

    public V put(K key, V value) {
        if (key == null) {
            return putForNullKey(value);
        }
        int hash;
        if (key instanceof String) {
            hash = hash(hashString((String) key));
        } else {
            hash = hash(key.hashCode());
        }
        int i = indexFor(hash, this.table.length);
        for (Entry<K, V> e = this.table[i]; e != null; e = e.next) {
            if (e.hash == hash) {
                K k = e.key;
                if (k == key || key.equals(k)) {
                    V oldValue = e.value;
                    e.value = value;
                    e.recordAccess(this);
                    return oldValue;
                }
            }
        }
        this.modCount++;
        addEntry(hash, key, value, i);
        return null;
    }

    private V putForNullKey(V value) {
        for (Entry<K, V> e = this.table[0]; e != null; e = e.next) {
            if (e.key == null) {
                V oldValue = e.value;
                e.value = value;
                e.recordAccess(this);
                return oldValue;
            }
        }
        this.modCount++;
        addEntry(0, null, value, 0);
        return null;
    }

    private void putForCreate(K key, V value) {
        int hash;
        if (key == null) {
            hash = 0;
        } else if (key instanceof String) {
            hash = hash(hashString((String) key));
        } else {
            hash = hash(key.hashCode());
        }
        int i = indexFor(hash, this.table.length);
        for (Entry<K, V> e = this.table[i]; e != null; e = e.next) {
            if (e.hash == hash) {
                K k = e.key;
                if (k == key || (key != null && key.equals(k))) {
                    e.value = value;
                    return;
                }
            }
        }
        createEntry(hash, key, value, i);
    }

    private void putAllForCreate(Map<? extends K, ? extends V> m) {
        for (java.util.Map.Entry<? extends K, ? extends V> e : m.entrySet()) {
            putForCreate(e.getKey(), e.getValue());
        }
    }

    void resize(int newCapacity) {
        if (this.table.length == MAXIMUM_CAPACITY) {
            this.threshold = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            return;
        }
        Entry<K, V>[] newTable = new Entry[newCapacity];
        transfer(newTable);
        this.table = newTable;
        this.threshold = (int) (((float) newCapacity) * this.loadFactor);
    }

    void transfer(Entry[] newTable) {
        Entry[] src = this.table;
        int newCapacity = newTable.length;
        for (int j = 0; j < src.length; j++) {
            Entry<K, V> e = src[j];
            if (e != null) {
                src[j] = null;
                do {
                    Entry<K, V> next = e.next;
                    int i = indexFor(e.hash, newCapacity);
                    e.next = newTable[i];
                    newTable[i] = e;
                    e = next;
                } while (e != null);
            }
        }
    }

    public void putAll(Map<? extends K, ? extends V> m) {
        int numKeysToBeAdded = m.size();
        if (numKeysToBeAdded != 0) {
            if (numKeysToBeAdded > this.threshold) {
                int targetCapacity = (int) ((((float) numKeysToBeAdded) / this.loadFactor) + 1.0f);
                if (targetCapacity > MAXIMUM_CAPACITY) {
                    targetCapacity = MAXIMUM_CAPACITY;
                }
                int newCapacity = this.table.length;
                while (newCapacity < targetCapacity) {
                    newCapacity <<= 1;
                }
                if (newCapacity > this.table.length) {
                    resize(newCapacity);
                }
            }
            for (java.util.Map.Entry<? extends K, ? extends V> e : m.entrySet()) {
                put(e.getKey(), e.getValue());
            }
        }
    }

    public V remove(Object key) {
        Entry<K, V> e = removeEntryForKey(key);
        return e == null ? null : e.value;
    }

    final Entry<K, V> removeEntryForKey(Object key) {
        int hash;
        if (key == null) {
            hash = 0;
        } else if (key instanceof String) {
            hash = hash(hashString((String) key));
        } else {
            hash = hash(key.hashCode());
        }
        int i = indexFor(hash, this.table.length);
        Entry<K, V> prev = this.table[i];
        Entry<K, V> e = prev;
        while (e != null) {
            Entry<K, V> next = e.next;
            if (e.hash == hash) {
                Object k = e.key;
                if (k == key || (key != null && key.equals(k))) {
                    this.modCount++;
                    this.size--;
                    if (prev == e) {
                        this.table[i] = next;
                    } else {
                        prev.next = next;
                    }
                    e.recordRemoval(this);
                    return e;
                }
            }
            prev = e;
            e = next;
        }
        return e;
    }

    final Entry<K, V> removeMapping(Object o) {
        if (!(o instanceof java.util.Map.Entry)) {
            return null;
        }
        int hash;
        java.util.Map.Entry<K, V> entry = (java.util.Map.Entry) o;
        Object key = entry.getKey();
        if (key == null) {
            hash = 0;
        } else if (key instanceof String) {
            hash = hash(hashString((String) key));
        } else {
            hash = hash(key.hashCode());
        }
        int i = indexFor(hash, this.table.length);
        Entry<K, V> prev = this.table[i];
        Entry<K, V> e = prev;
        while (e != null) {
            Entry<K, V> next = e.next;
            if (e.hash == hash && e.equals(entry)) {
                this.modCount++;
                this.size--;
                if (prev == e) {
                    this.table[i] = next;
                } else {
                    prev.next = next;
                }
                e.recordRemoval(this);
                return e;
            }
            prev = e;
            e = next;
        }
        return e;
    }

    public void clear() {
        this.modCount++;
        Entry[] tab = this.table;
        for (int i = 0; i < tab.length; i++) {
            tab[i] = null;
        }
        this.size = 0;
    }

    public boolean containsValue(Object value) {
        if (value == null) {
            return containsNullValue();
        }
        Entry[] tab = this.table;
        for (Entry e : tab) {
            for (Entry e2 = tab[i]; e2 != null; e2 = e2.next) {
                if (value.equals(e2.value)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean containsNullValue() {
        Entry[] tab = this.table;
        for (Entry e : tab) {
            for (Entry e2 = tab[i]; e2 != null; e2 = e2.next) {
                if (e2.value == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public Object clone() {
        AntiCollisionHashMap<K, V> result = null;
        try {
            result = (AntiCollisionHashMap) super.clone();
        } catch (CloneNotSupportedException e) {
        }
        result.table = new Entry[this.table.length];
        result.entrySet = null;
        result.modCount = 0;
        result.size = 0;
        result.init();
        result.putAllForCreate(this);
        return result;
    }

    void addEntry(int hash, K key, V value, int bucketIndex) {
        this.table[bucketIndex] = new Entry(hash, key, value, this.table[bucketIndex]);
        int i = this.size;
        this.size = i + 1;
        if (i >= this.threshold) {
            resize(this.table.length * 2);
        }
    }

    void createEntry(int hash, K key, V value, int bucketIndex) {
        this.table[bucketIndex] = new Entry(hash, key, value, this.table[bucketIndex]);
        this.size++;
    }

    Iterator<K> newKeyIterator() {
        return new KeyIterator();
    }

    Iterator<V> newValueIterator() {
        return new ValueIterator();
    }

    Iterator<java.util.Map.Entry<K, V>> newEntryIterator() {
        return new EntryIterator();
    }

    public Set<K> keySet() {
        Set<K> ks = this.keySet;
        if (ks != null) {
            return ks;
        }
        ks = new KeySet();
        this.keySet = ks;
        return ks;
    }

    public Collection<V> values() {
        Collection<V> vs = this.values;
        if (vs != null) {
            return vs;
        }
        vs = new Values();
        this.values = vs;
        return vs;
    }

    public Set<java.util.Map.Entry<K, V>> entrySet() {
        return entrySet0();
    }

    private Set<java.util.Map.Entry<K, V>> entrySet0() {
        Set<java.util.Map.Entry<K, V>> es = this.entrySet;
        if (es != null) {
            return es;
        }
        es = new EntrySet();
        this.entrySet = es;
        return es;
    }

    private void writeObject(ObjectOutputStream s) throws IOException {
        Iterator<java.util.Map.Entry<K, V>> i = this.size > 0 ? entrySet0().iterator() : null;
        s.defaultWriteObject();
        s.writeInt(this.table.length);
        s.writeInt(this.size);
        if (i != null) {
            while (i.hasNext()) {
                java.util.Map.Entry<K, V> e = (java.util.Map.Entry) i.next();
                s.writeObject(e.getKey());
                s.writeObject(e.getValue());
            }
        }
    }

    private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        this.table = new Entry[s.readInt()];
        init();
        int size = s.readInt();
        for (int i = 0; i < size; i++) {
            putForCreate(s.readObject(), s.readObject());
        }
    }

    int capacity() {
        return this.table.length;
    }

    float loadFactor() {
        return this.loadFactor;
    }
}
