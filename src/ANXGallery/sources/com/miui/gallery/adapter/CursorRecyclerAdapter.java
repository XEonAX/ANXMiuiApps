package com.miui.gallery.adapter;

import android.database.Cursor;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import java.util.Locale;

public abstract class CursorRecyclerAdapter<VH extends BaseViewHolder> extends BaseRecyclerAdapter<Cursor, VH> {
    protected Cursor mCursor;
    protected boolean mDataValid;
    private int mRowIDColumn;

    public Cursor swapCursor(Cursor newCursor) {
        if (newCursor == this.mCursor) {
            return null;
        }
        Cursor oldCursor = this.mCursor;
        this.mCursor = newCursor;
        if (newCursor != null) {
            this.mDataValid = true;
            this.mRowIDColumn = newCursor.getColumnIndexOrThrow("_id");
            notifyDataSetChanged();
            return oldCursor;
        }
        this.mDataValid = false;
        this.mRowIDColumn = -1;
        notifyDataSetChanged();
        return oldCursor;
    }

    public long getItemId(int position) {
        if (this.mDataValid && this.mCursor != null && this.mCursor.moveToPosition(position)) {
            return this.mCursor.getLong(this.mRowIDColumn);
        }
        return -1;
    }

    public int getItemCount() {
        if (!this.mDataValid || this.mCursor == null) {
            return 0;
        }
        return this.mCursor.getCount();
    }

    public Cursor getItem(int position) {
        if (!this.mDataValid || this.mCursor == null) {
            return null;
        }
        this.mCursor.moveToPosition(position);
        return this.mCursor;
    }

    protected boolean isValidPosition(int position) {
        return position >= 0 && position < getItemCount();
    }

    protected Cursor moveCursorToPosition(int position) {
        if (isValidPosition(position)) {
            return getItem(position);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Wrong cursor position %d, total count %d", new Object[]{Integer.valueOf(position), Integer.valueOf(getItemCount())}));
    }
}
