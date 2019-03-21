package org.keyczar;

import java.util.concurrent.ConcurrentHashMap;
import org.keyczar.interfaces.Stream;

class StreamCache<T extends Stream> {
    private final ConcurrentHashMap<KeyczarKey, StreamQueue<T>> cacheMap = new ConcurrentHashMap();

    StreamCache() {
    }

    void put(KeyczarKey keyczarKey, T t) {
        getQueue(keyczarKey).add(t);
    }

    T get(KeyczarKey keyczarKey) {
        return (Stream) getQueue(keyczarKey).poll();
    }

    StreamQueue<T> getQueue(KeyczarKey keyczarKey) {
        StreamQueue<T> streamQueue = (StreamQueue) this.cacheMap.get(keyczarKey);
        if (streamQueue != null) {
            return streamQueue;
        }
        StreamQueue<T> streamQueue2 = new StreamQueue();
        streamQueue = (StreamQueue) this.cacheMap.putIfAbsent(keyczarKey, streamQueue2);
        if (streamQueue == null) {
            return streamQueue2;
        }
        return streamQueue;
    }
}
