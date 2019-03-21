package com.miui.gallery.loader;

import android.database.Cursor;

public interface CursorConvertCallback<T> {
    T convert(Cursor cursor);
}
