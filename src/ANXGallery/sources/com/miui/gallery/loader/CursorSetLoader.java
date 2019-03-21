package com.miui.gallery.loader;

import android.content.Context;
import android.content.Loader.ForceLoadContentObserver;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.model.CursorDataSet;

public abstract class CursorSetLoader extends BaseLoader {
    private ForceLoadContentObserver mObserver = new ForceLoadContentObserver(this);

    protected abstract String getOrder();

    protected abstract String[] getProjection();

    protected abstract String getSelection();

    protected abstract String[] getSelectionArgs();

    protected abstract Uri getUri();

    protected abstract CursorDataSet wrapDataSet(Cursor cursor);

    public CursorSetLoader(Context context) {
        super(context);
    }

    public CursorDataSet loadInBackground() {
        Cursor cursor = getContext().getContentResolver().query(getUri(), getProjection(), getSelection(), getSelectionArgs(), getOrder(), null);
        if (cursor != null) {
            try {
                cursor.getCount();
            } catch (RuntimeException ex) {
                cursor.close();
                throw ex;
            }
        }
        return wrapDataSet(cursor);
    }
}
