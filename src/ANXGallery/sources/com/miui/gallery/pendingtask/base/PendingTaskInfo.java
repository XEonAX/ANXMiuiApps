package com.miui.gallery.pendingtask.base;

import android.content.ContentValues;
import android.database.Cursor;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import java.util.ArrayList;
import java.util.List;

public class PendingTaskInfo extends Entity {
    private long mCreateTime;
    private byte[] mData;
    private long mExpireTime;
    private long mMinLatency;
    private int mNetType = 0;
    private boolean mRequireCharging;
    private boolean mRequireDeviceIdle;
    private int mRetryTime;
    private String mTaskTag;
    private int mTaskType;

    public int getTaskType() {
        return this.mTaskType;
    }

    public void setTaskType(int taskType) {
        this.mTaskType = taskType;
    }

    public void setTaskTag(String taskTag) {
        this.mTaskTag = taskTag;
    }

    public int getNetType() {
        return this.mNetType;
    }

    public void setNetType(int netType) {
        this.mNetType = netType;
    }

    public void setRequireCharging(boolean requireCharging) {
        this.mRequireCharging = requireCharging;
    }

    public boolean isRequireCharging() {
        return this.mRequireCharging;
    }

    public boolean isRequireDeviceIdle() {
        return this.mRequireDeviceIdle;
    }

    public void setRequireDeviceIdle(boolean requireDeviceIdle) {
        this.mRequireDeviceIdle = requireDeviceIdle;
    }

    public byte[] getData() {
        return this.mData;
    }

    public void setData(byte[] data) {
        this.mData = data;
    }

    public long getCreateTime() {
        return this.mCreateTime;
    }

    public void setCreateTime(long createTime) {
        this.mCreateTime = createTime;
    }

    public long getMinLatencyMillis() {
        return this.mMinLatency;
    }

    public void setMinLatencyMillis(long minLatency) {
        this.mMinLatency = minLatency;
    }

    public long getExpireTime() {
        return this.mExpireTime;
    }

    public void setExpireTime(long time) {
        this.mExpireTime = time;
    }

    public int getRetryTime() {
        return this.mRetryTime;
    }

    public void increaseRetryTime() {
        this.mRetryTime++;
    }

    protected final List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "taskType", "INTEGER");
        Entity.addColumn(columns, "taskTag", "TEXT");
        Entity.addColumn(columns, "netType", "INTEGER");
        Entity.addColumn(columns, "charging", "INTEGER");
        Entity.addColumn(columns, "deviceIdle", "INTEGER");
        Entity.addColumn(columns, "data", "BLOB");
        Entity.addColumn(columns, "createTime", "INTEGER");
        Entity.addColumn((List) columns, "expireTime", "INTEGER", String.valueOf(0));
        Entity.addColumn(columns, "retryTime", "INTEGER");
        return columns;
    }

    protected final void onInitFromCursor(Cursor cursor) {
        boolean z = true;
        this.mTaskType = Entity.getInt(cursor, "taskType");
        this.mTaskTag = Entity.getString(cursor, "taskTag");
        this.mNetType = Entity.getInt(cursor, "netType");
        this.mRequireCharging = Entity.getInt(cursor, "charging") == 1;
        if (Entity.getInt(cursor, "deviceIdle") != 1) {
            z = false;
        }
        this.mRequireDeviceIdle = z;
        this.mData = Entity.getBlob(cursor, "data");
        this.mCreateTime = Entity.getLong(cursor, "createTime");
        this.mExpireTime = Entity.getLong(cursor, "expireTime");
        this.mRetryTime = Entity.getInt(cursor, "retryTime");
    }

    protected final void onConvertToContents(ContentValues values) {
        int i = 1;
        values.put("taskType", Integer.valueOf(this.mTaskType));
        values.put("taskTag", this.mTaskTag);
        values.put("netType", Integer.valueOf(this.mNetType));
        values.put("charging", Integer.valueOf(this.mRequireCharging ? 1 : 0));
        String str = "deviceIdle";
        if (!this.mRequireDeviceIdle) {
            i = 0;
        }
        values.put(str, Integer.valueOf(i));
        values.put("data", this.mData);
        values.put("createTime", Long.valueOf(this.mCreateTime));
        values.put("expireTime", Long.valueOf(this.mExpireTime));
        values.put("retryTime", Integer.valueOf(this.mRetryTime));
    }
}
