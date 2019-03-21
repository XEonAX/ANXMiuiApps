package com.miui.gallery.model;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;

public class AlbumList extends ArrayList<Album> implements Closeable {
    public AlbumList(int initialCapacity) {
        super(initialCapacity);
    }

    public void close() throws IOException {
    }
}
