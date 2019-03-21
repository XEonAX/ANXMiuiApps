package com.miui.gallery.model;

import android.database.Cursor;
import com.miui.gallery.util.BaseMiscUtil;

public abstract class CursorDataSet extends BaseDataSet {
    protected Cursor mCursor;

    public CursorDataSet(Cursor cursor) {
        this.mCursor = cursor;
    }

    public CursorDataSet(Cursor cursor, int initPos) {
        super(initPos);
        this.mCursor = cursor;
    }

    public int getCount() {
        return isValidate() ? this.mCursor.getCount() : 0;
    }

    public void onRelease() {
        BaseMiscUtil.closeSilently(this.mCursor);
    }

    protected BaseDataItem createItem(int position) {
        if (!isValidate(position)) {
            return null;
        }
        BaseDataItem item = new CloudItem();
        bindItem(item, position);
        return item;
    }

    protected boolean isValidate() {
        return (this.mCursor == null || this.mCursor.isClosed()) ? false : true;
    }

    protected boolean isValidate(int pos) {
        return isValidate() && pos >= 0 && pos < this.mCursor.getCount();
    }

    protected boolean moveToPosition(int pos) {
        return isValidate(pos) && this.mCursor.moveToPosition(pos);
    }
}
