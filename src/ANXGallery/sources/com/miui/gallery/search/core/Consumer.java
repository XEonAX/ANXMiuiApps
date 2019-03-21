package com.miui.gallery.search.core;

public interface Consumer<A> {
    boolean consume(A a);
}
