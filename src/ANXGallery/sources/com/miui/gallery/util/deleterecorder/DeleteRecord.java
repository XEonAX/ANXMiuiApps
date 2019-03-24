package com.miui.gallery.util.deleterecorder;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.provider.ExtraTelephony.FirewallLog;
import miui.provider.Weather.WeatherBaseColumns;

public class DeleteRecord extends Entity {
    private String mFilePath;
    private int mReason;
    private String mTag;
    private long mTimestamp;

    public DeleteRecord(int reason, String filePath, String tag) {
        this(System.currentTimeMillis(), reason, filePath, tag);
    }

    public DeleteRecord(long timestamp, int reason, String filePath, String tag) {
        this.mTimestamp = timestamp;
        this.mReason = reason;
        this.mFilePath = filePath;
        this.mTag = tag;
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, WeatherBaseColumns.TIMESTAMP, "INTEGER");
        Entity.addColumn(columns, "filePath", "TEXT");
        Entity.addColumn(columns, FirewallLog.REASON, "INTEGER");
        Entity.addColumn(columns, "tag", "TEXT");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mTimestamp = Entity.getLong(cursor, WeatherBaseColumns.TIMESTAMP);
        this.mFilePath = Entity.getString(cursor, "filePath");
        this.mReason = Entity.getInt(cursor, FirewallLog.REASON);
        this.mTag = Entity.getString(cursor, "tag");
    }

    protected void onConvertToContents(ContentValues values) {
        values.put(WeatherBaseColumns.TIMESTAMP, Long.valueOf(this.mTimestamp));
        values.put("filePath", this.mFilePath);
        values.put(FirewallLog.REASON, Integer.valueOf(this.mReason));
        values.put("tag", this.mTag);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteRecord)) {
            return false;
        }
        DeleteRecord other = (DeleteRecord) obj;
        if (this.mTimestamp != other.mTimestamp) {
            return false;
        }
        if (this.mReason != other.mReason) {
            return false;
        }
        if (!TextUtils.equals(this.mFilePath, other.mFilePath)) {
            return false;
        }
        if (TextUtils.equals(this.mTag, other.mTag)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.format(Locale.US, "DeleteRecord [timestamp=%d, reason=%d, filePath=%s, tag=%s]", new Object[]{Long.valueOf(this.mTimestamp), Integer.valueOf(this.mReason), this.mFilePath, this.mTag});
    }
}
