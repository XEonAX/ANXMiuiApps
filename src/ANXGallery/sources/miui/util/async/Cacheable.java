package miui.util.async;

public interface Cacheable {
    String getCacheKey();

    int sizeOf(Object obj);
}
