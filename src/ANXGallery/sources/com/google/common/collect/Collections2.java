package com.google.common.collect;

import java.util.Collection;

public final class Collections2 {
    static <T> Collection<T> cast(Iterable<T> iterable) {
        return (Collection) iterable;
    }
}
