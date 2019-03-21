package com.miui.gallery.loader;

import android.database.Cursor;
import com.miui.gallery.model.Album;
import com.miui.gallery.model.AlbumList;

public class AlbumConvertCallback implements CursorConvertCallback<AlbumList> {
    public AlbumList convert(Cursor cursor) {
        if (cursor == null || cursor.isClosed() || cursor.getCount() <= 0) {
            return null;
        }
        AlbumList albumList = new AlbumList(cursor.getCount());
        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            Album album = Album.fromCursor(cursor);
            if (album != null) {
                albumList.add(album);
            }
            cursor.moveToNext();
        }
        return albumList;
    }
}
