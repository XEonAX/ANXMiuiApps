package com.miui.gallery.search.core;

import java.io.Closeable;

public interface QuietlyCloseable extends Closeable {
    void close();
}
