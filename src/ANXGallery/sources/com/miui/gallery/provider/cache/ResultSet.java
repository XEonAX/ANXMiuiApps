package com.miui.gallery.provider.cache;

import android.database.CursorWindow;

public interface ResultSet {
    void close();

    int fillWindow(CursorWindow cursorWindow);

    String[] getColumnNames();

    int getCount();
}
