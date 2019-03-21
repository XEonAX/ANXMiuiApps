package com.miui.gallery.provider.cloudmanager;

import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import java.util.ArrayList;
import java.util.List;

public class MediaRemarkInfo extends Entity {
    private long mCloudId;
    private int mOperationType = 0;

    public void setOperationType(int operationType) {
        this.mOperationType = operationType;
    }

    public long getCloudId() {
        return this.mCloudId;
    }

    public void setCloudId(long cloudId) {
        this.mCloudId = cloudId;
    }

    protected final List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "mediaId", "INTEGER");
        Entity.addColumn(columns, "operationType", "INTEGER");
        return columns;
    }

    protected final void onInitFromCursor(Cursor cursor) {
        this.mCloudId = Entity.getLong(cursor, "mediaId");
        this.mOperationType = Entity.getInt(cursor, "operationType");
    }

    protected final void onConvertToContents(ContentValues values) {
        values.put("mediaId", Long.valueOf(this.mCloudId));
        values.put("operationType", Integer.valueOf(this.mOperationType));
    }
}
