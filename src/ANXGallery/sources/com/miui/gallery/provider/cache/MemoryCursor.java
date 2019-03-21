package com.miui.gallery.provider.cache;

import android.database.AbstractWindowedCursor;
import android.database.CursorWindow;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.Map;

class MemoryCursor extends AbstractWindowedCursor {
    private Map<String, Integer> mColumnMap;
    private String[] mColumns = this.mQuery.getColumnNames();
    private int mCount = this.mQuery.getCount();
    private String mName;
    private ResultSet mQuery;

    public MemoryCursor(ResultSet query, String name) {
        this.mQuery = query;
        this.mName = name;
    }

    public int getCount() {
        if (this.mCount == -1) {
            fillWindow(0);
        }
        return this.mCount;
    }

    public String[] getColumnNames() {
        return this.mColumns;
    }

    public boolean onMove(int oldPosition, int newPosition) {
        if (this.mWindow == null || newPosition < this.mWindow.getStartPosition() || newPosition >= this.mWindow.getStartPosition() + this.mWindow.getNumRows()) {
            fillWindow(newPosition);
        }
        return true;
    }

    private void fillWindow(int startPos) {
        doClearOrCreateWindow(this.mName);
        try {
            this.mWindow.acquireReference();
            this.mWindow.setNumColumns(this.mQuery.getColumnNames().length);
            this.mWindow.setStartPosition(startPos);
            this.mQuery.fillWindow(this.mWindow);
            if (this.mCount == -1) {
                this.mCount = this.mQuery.getCount();
            }
            this.mWindow.releaseReference();
        } catch (Throwable th) {
            this.mWindow.releaseReference();
        }
    }

    public int getColumnIndex(String columnName) {
        if (this.mColumnMap == null) {
            String[] columns = this.mColumns;
            int count = columns.length;
            HashMap<String, Integer> map = new HashMap(count, 1.0f);
            for (int i = 0; i < count; i++) {
                map.put(columns[i], Integer.valueOf(i));
            }
            this.mColumnMap = map;
        }
        Integer i2 = (Integer) this.mColumnMap.get(columnName);
        return i2 != null ? i2.intValue() : -1;
    }

    public void close() {
        super.close();
        synchronized (this) {
            this.mQuery.close();
        }
    }

    public boolean requery() {
        boolean z = false;
        if (isClosed()) {
            return z;
        }
        synchronized (this) {
            if (this.mWindow != null) {
                this.mWindow.clear();
            }
            this.mPos = -1;
            this.mCount = -1;
        }
        try {
            return super.requery();
        } catch (IllegalStateException e) {
            Log.w(".provider.cache.MemoryCursor", "requery() failed " + e.getMessage(), e);
            return z;
        }
    }

    public void setWindow(CursorWindow window) {
        super.setWindow(window);
        this.mCount = -1;
    }

    protected void finalize() {
        try {
            if (this.mWindow != null) {
                close();
                Log.w(".provider.cache.MemoryCursor", "Finalizing cursor " + this.mName + ", which has not been deactived or closed");
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    private void doClearOrCreateWindow(String name) {
        if (this.mWindow == null) {
            this.mWindow = new CursorWindow(name);
        } else {
            this.mWindow.clear();
        }
    }
}
