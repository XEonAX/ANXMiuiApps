package com.miui.internal.analytics;

import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.List;

public abstract class Event implements Parcelable {
    public static final Creator<Event> CREATOR = new Creator<Event>() {
        /* renamed from: a */
        public Event createFromParcel(Parcel parcel) {
            try {
                Event event = (Event) Class.forName(parcel.readString()).newInstance();
                event.readFromParcel(parcel);
                return event;
            } catch (Throwable e) {
                Log.e(Event.TAG, "InstantiationException catched when create event from parcel", e);
                return null;
            } catch (Throwable e2) {
                Log.e(Event.TAG, "IllegalAccessException catched when create event from parcel", e2);
                return null;
            } catch (Throwable e22) {
                Log.e(Event.TAG, "ClassNotFoundException catched when create event from parcel", e22);
                return null;
            }
        }

        /* renamed from: a */
        public Event[] newArray(int i) {
            return new Event[i];
        }
    };
    protected static final String SPLITTER = "#ITEMSPLITTER#";
    private static final String TAG = "AnalyticsEvent";
    protected static List<Dispatchable> sDispatcher;
    protected String mEventId;
    protected String mPackageName;
    protected String mPolicy;
    protected long mTrackTime;
    protected Integer mType;

    public abstract void dispatch();

    public abstract void writeEvent(c cVar);

    public Event() {
        setTime(System.currentTimeMillis());
    }

    public static void setDispatcher(List<Dispatchable> list) {
        sDispatcher = list;
    }

    public void setTime(long j) {
        this.mTrackTime = j;
    }

    public void setPolicy(String str) {
        this.mPolicy = str;
    }

    public String getPolicy() {
        return this.mPolicy;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public long getTrackTime() {
        return this.mTrackTime;
    }

    public Integer getType() {
        return this.mType;
    }

    public String getEventId() {
        return this.mEventId;
    }

    public void restore(Cursor cursor) {
        if (cursor != null) {
            this.mPackageName = cursor.getString(cursor.getColumnIndexOrThrow(EventUtils.COLUMN_PACKAGE_NAME));
            this.mEventId = cursor.getString(cursor.getColumnIndexOrThrow(EventUtils.COLUMN_ID));
            this.mTrackTime = Long.parseLong(cursor.getString(cursor.getColumnIndexOrThrow("time")));
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getClass().getName());
        parcel.writeString(this.mPackageName);
        parcel.writeInt(this.mType.intValue());
        parcel.writeString(this.mEventId);
        parcel.writeString(this.mPolicy);
        parcel.writeLong(this.mTrackTime);
    }

    void readFromParcel(Parcel parcel) {
        this.mPackageName = parcel.readString();
        this.mType = Integer.valueOf(parcel.readInt());
        this.mEventId = parcel.readString();
        this.mPolicy = parcel.readString();
        this.mTrackTime = parcel.readLong();
    }
}
