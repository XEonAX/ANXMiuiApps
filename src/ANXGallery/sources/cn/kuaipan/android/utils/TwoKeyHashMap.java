package cn.kuaipan.android.utils;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

public class TwoKeyHashMap<E, K, V> extends AbstractMap<String, V> {
    private Entry<E, K, V>[] arr;
    private int arrSize;
    private Set<java.util.Map.Entry<String, V>> entrySet;
    private float loadFactor;
    private int modCount;
    private int size;
    int threshold;
    private Collection<V> values;

    public static class Entry<E, K, V> implements java.util.Map.Entry<String, V> {
        int hash;
        E key1;
        K key2;
        Entry<E, K, V> next;
        V value;

        public Entry(int hash, E key1, K key2, V value, Entry<E, K, V> next) {
            this.hash = hash;
            this.key1 = key1;
            this.key2 = key2;
            this.value = value;
            this.next = next;
        }

        public String getKey() {
            return this.key1.toString() + this.key2.toString();
        }

        public E getKey1() {
            return this.key1;
        }

        public K getKey2() {
            return this.key2;
        }

        public V getValue() {
            return this.value;
        }

        public V setValue(V value) {
            V oldValue = this.value;
            this.value = value;
            return oldValue;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry<?, ?, ?> e = (Entry) obj;
            Object getKey1 = e.getKey1();
            Object getKey2 = e.getKey2();
            Object getValue = e.getValue();
            if (this.key1 == null && getKey1 != null) {
                return false;
            }
            if (this.key2 == null && getKey2 != null) {
                return false;
            }
            if ((this.value != null || getValue == null) && this.key1.equals(e.getKey1()) && this.key2.equals(e.getKey2()) && this.value.equals(getValue)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = (this.key1 == null ? 0 : this.key1.hashCode()) + (this.key2 == null ? 0 : this.key2.hashCode());
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return i ^ hashCode;
        }
    }

    class EntryIteratorImpl implements Iterator<java.util.Map.Entry<String, V>> {
        private int curr = -1;
        private Entry<E, K, V> curr_entry;
        private boolean found;
        private Entry<E, K, V> returned_entry;
        private int returned_index = -1;
        private int startModCount;

        EntryIteratorImpl() {
            this.startModCount = TwoKeyHashMap.this.modCount;
        }

        public boolean hasNext() {
            boolean z = true;
            if (!this.found) {
                if (this.curr_entry != null) {
                    this.curr_entry = this.curr_entry.next;
                }
                if (this.curr_entry == null) {
                    this.curr++;
                    while (this.curr < TwoKeyHashMap.this.arr.length && TwoKeyHashMap.this.arr[this.curr] == null) {
                        this.curr++;
                    }
                    if (this.curr < TwoKeyHashMap.this.arr.length) {
                        this.curr_entry = TwoKeyHashMap.this.arr[this.curr];
                    }
                }
                if (this.curr_entry == null) {
                    z = false;
                }
                this.found = z;
            }
            return z;
        }

        public java.util.Map.Entry<String, V> next() {
            if (TwoKeyHashMap.this.modCount != this.startModCount) {
                throw new ConcurrentModificationException();
            } else if (hasNext()) {
                this.found = false;
                this.returned_index = this.curr;
                this.returned_entry = this.curr_entry;
                return this.curr_entry;
            } else {
                throw new NoSuchElementException();
            }
        }

        public void remove() {
            if (this.returned_index == -1) {
                throw new IllegalStateException();
            } else if (TwoKeyHashMap.this.modCount != this.startModCount) {
                throw new ConcurrentModificationException();
            } else {
                Entry<E, K, V> p = null;
                for (Entry<E, K, V> e = TwoKeyHashMap.this.arr[this.returned_index]; e != this.returned_entry; e = e.next) {
                    p = e;
                }
                if (p != null) {
                    p.next = this.returned_entry.next;
                } else {
                    TwoKeyHashMap.this.arr[this.returned_index] = this.returned_entry.next;
                }
                TwoKeyHashMap.this.size = TwoKeyHashMap.this.size - 1;
                TwoKeyHashMap.this.modCount = TwoKeyHashMap.this.modCount + 1;
                this.startModCount++;
                this.returned_index = -1;
            }
        }
    }

    class EntrySetImpl extends AbstractSet<java.util.Map.Entry<String, V>> {
        EntrySetImpl() {
        }

        public int size() {
            return TwoKeyHashMap.this.size;
        }

        public void clear() {
            TwoKeyHashMap.this.clear();
        }

        public boolean isEmpty() {
            return TwoKeyHashMap.this.size == 0;
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry<?, ?, ?> entry = (Entry) obj;
            Entry<E, K, V> entry2 = TwoKeyHashMap.this.findEntry(entry.getKey1(), entry.getKey2());
            if (entry2 == null) {
                return false;
            }
            Object value = entry.getValue();
            Object value2 = entry2.getValue();
            if (value != null) {
                return value.equals(value2);
            }
            if (value2 == null) {
                return true;
            }
            return false;
        }

        public boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            return TwoKeyHashMap.this.removeEntry(((Entry) obj).getKey1(), ((Entry) obj).getKey2()) != null;
        }

        public Iterator<java.util.Map.Entry<String, V>> iterator() {
            return TwoKeyHashMap.this.createEntrySetIterator();
        }
    }

    class ValueIteratorImpl implements Iterator<V> {
        private EntryIteratorImpl itr;

        ValueIteratorImpl() {
            this.itr = new EntryIteratorImpl();
        }

        public V next() {
            return this.itr.next().getValue();
        }

        public void remove() {
            this.itr.remove();
        }

        public boolean hasNext() {
            return this.itr.hasNext();
        }
    }

    class ValuesCollectionImpl extends AbstractCollection<V> {
        ValuesCollectionImpl() {
        }

        public int size() {
            return TwoKeyHashMap.this.size;
        }

        public void clear() {
            TwoKeyHashMap.this.clear();
        }

        public boolean isEmpty() {
            return TwoKeyHashMap.this.size == 0;
        }

        public Iterator<V> iterator() {
            return TwoKeyHashMap.this.createValueCollectionIterator();
        }

        public boolean contains(Object obj) {
            return TwoKeyHashMap.this.containsValue(obj);
        }
    }

    public TwoKeyHashMap() {
        this(16, 0.75f);
    }

    public TwoKeyHashMap(int initialCapacity, float initialLoadFactor) {
        this.threshold = 0;
        if (initialCapacity < 0) {
            throw new IllegalArgumentException("initialCapacity should be >= 0");
        } else if (initialLoadFactor <= 0.0f) {
            throw new IllegalArgumentException("initialLoadFactor should be > 0");
        } else {
            this.loadFactor = initialLoadFactor;
            if (initialCapacity == Integer.MAX_VALUE) {
                initialCapacity--;
            }
            if (initialCapacity <= 0) {
                initialCapacity = 1;
            }
            this.arrSize = initialCapacity;
            this.threshold = (int) (((float) this.arrSize) * this.loadFactor);
            this.arr = new Entry[(this.arrSize + 1)];
        }
    }

    public Collection<V> values() {
        if (this.values == null) {
            this.values = new ValuesCollectionImpl();
        }
        return this.values;
    }

    public Set<java.util.Map.Entry<String, V>> entrySet() {
        if (this.entrySet == null) {
            this.entrySet = new EntrySetImpl();
        }
        return this.entrySet;
    }

    public void clear() {
        this.modCount++;
        this.size = 0;
        Arrays.fill(this.arr, 0, this.arr.length, null);
    }

    public V put(E key1, K key2, V value) {
        int index;
        V oldValue;
        if (key1 == null && key2 == null) {
            index = this.arrSize;
            if (this.arr[index] == null) {
                this.arr[index] = createEntry(0, null, null, value, null);
                this.size++;
                this.modCount++;
                return null;
            }
            oldValue = this.arr[index].value;
            this.arr[index].value = value;
            return oldValue;
        }
        int hash = key1.hashCode() + key2.hashCode();
        index = (Integer.MAX_VALUE & hash) % this.arrSize;
        Entry<E, K, V> e = this.arr[index];
        while (e != null) {
            if (hash == e.hash && key1.equals(e.getKey1()) && key2.equals(e.getKey2())) {
                oldValue = e.value;
                e.value = value;
                return oldValue;
            }
            e = e.next;
        }
        this.arr[index] = createEntry(hash, key1, key2, value, this.arr[index]);
        this.size++;
        this.modCount++;
        if (this.size <= this.threshold) {
            return null;
        }
        rehash();
        return null;
    }

    void rehash() {
        int newArrSize = ((this.arrSize + 1) * 2) + 1;
        if (newArrSize < 0) {
            newArrSize = 2147483646;
        }
        Entry<E, K, V>[] newArr = new Entry[(newArrSize + 1)];
        for (int i = 0; i < this.arr.length - 1; i++) {
            Entry<E, K, V> entry = this.arr[i];
            while (entry != null) {
                Entry<E, K, V> next = entry.next;
                int newIndex = (entry.hash & Integer.MAX_VALUE) % newArrSize;
                entry.next = newArr[newIndex];
                newArr[newIndex] = entry;
                entry = next;
            }
        }
        newArr[newArrSize] = this.arr[this.arrSize];
        this.arrSize = newArrSize;
        if (this.arrSize == Integer.MAX_VALUE) {
            this.loadFactor *= 10.0f;
        }
        this.threshold = (int) (((float) this.arrSize) * this.loadFactor);
        this.arr = newArr;
    }

    public V get(Object key1, Object key2) {
        Entry<E, K, V> e = findEntry(key1, key2);
        if (e != null) {
            return e.value;
        }
        return null;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int size() {
        return this.size;
    }

    Entry<E, K, V> createEntry(int hashCode, E key1, K key2, V value, Entry<E, K, V> next) {
        return new Entry(hashCode, key1, key2, value, next);
    }

    Iterator<java.util.Map.Entry<String, V>> createEntrySetIterator() {
        return new EntryIteratorImpl();
    }

    Iterator<V> createValueCollectionIterator() {
        return new ValueIteratorImpl();
    }

    private final Entry<E, K, V> findEntry(Object key1, Object key2) {
        if (key1 == null && key2 == null) {
            return this.arr[this.arrSize];
        }
        int hash = key1.hashCode() + key2.hashCode();
        Entry<E, K, V> e = this.arr[(Integer.MAX_VALUE & hash) % this.arrSize];
        while (e != null) {
            if (hash == e.hash && key1.equals(e.getKey1()) && key2.equals(e.getKey2())) {
                return e;
            }
            e = e.next;
        }
        return null;
    }

    private final Entry<E, K, V> removeEntry(Object key1, Object key2) {
        int index;
        if (key1 == null && key2 == null) {
            index = this.arrSize;
            if (this.arr[index] == null) {
                return null;
            }
            Entry<E, K, V> ret = this.arr[index];
            this.arr[index] = null;
            this.size--;
            this.modCount++;
            return ret;
        }
        int hash = key1.hashCode() + key2.hashCode();
        index = (Integer.MAX_VALUE & hash) % this.arrSize;
        Entry<E, K, V> e = this.arr[index];
        Entry<E, K, V> prev = e;
        while (e != null) {
            if (hash == e.hash && key1.equals(e.getKey1()) && key2.equals(e.getKey2())) {
                if (prev == e) {
                    this.arr[index] = e.next;
                } else {
                    prev.next = e.next;
                }
                this.size--;
                this.modCount++;
                return e;
            }
            prev = e;
            e = e.next;
        }
        return null;
    }
}
