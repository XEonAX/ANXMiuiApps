package com.miui.gallery.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import java.util.ArrayList;
import java.util.List;

public class PersistentResponse extends Entity implements Parcelable {
    public static final Creator<PersistentResponse> CREATOR = new Creator<PersistentResponse>() {
        public PersistentResponse createFromParcel(Parcel source) {
            return new PersistentResponse(source);
        }

        public PersistentResponse[] newArray(int size) {
            return new PersistentResponse[size];
        }
    };
    private long mExpireMillis;
    private long mLastVisitTime;
    private String mResponse;
    private long mUpdateTime;
    private String mUrl;

    public PersistentResponse(String url, String response, long updateTime, long lastVisitTime, long expireMillis) {
        this.mUrl = url;
        this.mResponse = response;
        this.mUpdateTime = updateTime;
        this.mLastVisitTime = lastVisitTime;
        this.mExpireMillis = expireMillis;
    }

    public void setLastVisitTime(long lastVisitTime) {
        this.mLastVisitTime = lastVisitTime;
    }

    public String getResponse() {
        return this.mResponse;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public long getExpireMillis() {
        return this.mExpireMillis;
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"url"};
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn((List) columns, "url", "TEXT", true);
        Entity.addColumn(columns, "response", "TEXT");
        Entity.addColumn(columns, "updateTime", "INTEGER");
        Entity.addColumn(columns, "lastVisitTime", "INTEGER");
        Entity.addColumn(columns, "expireMillis", "INTEGER");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mUrl = Entity.getString(cursor, "url");
        this.mResponse = Entity.getString(cursor, "response");
        this.mUpdateTime = Entity.getLong(cursor, "updateTime");
        this.mLastVisitTime = Entity.getLong(cursor, "lastVisitTime");
        this.mExpireMillis = Entity.getLong(cursor, "expireMillis");
    }

    protected void onConvertToContents(ContentValues values) {
        values.put("url", this.mUrl);
        values.put("response", this.mResponse);
        values.put("updateTime", Long.valueOf(this.mUpdateTime));
        values.put("lastVisitTime", Long.valueOf(this.mLastVisitTime));
        values.put("expireMillis", Long.valueOf(this.mExpireMillis));
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mUrl);
        dest.writeString(this.mResponse);
        dest.writeLong(this.mUpdateTime);
        dest.writeLong(this.mLastVisitTime);
        dest.writeLong(this.mId);
        dest.writeLong(this.mExpireMillis);
    }

    protected PersistentResponse(Parcel in) {
        this.mUrl = in.readString();
        this.mResponse = in.readString();
        this.mUpdateTime = in.readLong();
        this.mLastVisitTime = in.readLong();
        this.mId = in.readLong();
        this.mExpireMillis = in.readLong();
    }
}
