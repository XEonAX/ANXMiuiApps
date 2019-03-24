package miui.util.cache;

public interface Cache<K, V> {
    void clear();

    V get(K k);

    int getCount();

    void put(K k, V v, int i);

    void setMaxSize(int i);
}
