package com.miui.internal.analytics;

import android.database.Cursor;
import android.os.Parcel;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class TrackEvent extends Event {
    private Map<String, String> av;
    private long aw;

    public TrackEvent() {
        this.mPackageName = "";
        this.mType = Integer.valueOf(2);
        this.av = null;
        this.aw = 0;
    }

    public TrackEvent(String str, String str2, Map<String, String> map, long j) {
        this.mPackageName = str;
        this.mType = Integer.valueOf(2);
        this.mEventId = str2;
        this.av = map;
        this.aw = j;
    }

    public Map<String, String> getParam() {
        return this.av;
    }

    public long getValue() {
        return this.aw;
    }

    public void writeEvent(c cVar) {
        if (cVar != null) {
            String str = this.mPackageName;
            Integer num = this.mType;
            String str2 = this.mEventId;
            String a = a(this.av);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mTrackTime);
            stringBuilder.append("");
            String stringBuilder2 = stringBuilder.toString();
            stringBuilder = new StringBuilder();
            stringBuilder.append(this.aw);
            stringBuilder.append("");
            cVar.b(str, num, str2, a, stringBuilder2, stringBuilder.toString());
        }
    }

    public void restore(Cursor cursor) {
        super.restore(cursor);
        if (cursor != null) {
            this.aw = Long.parseLong(cursor.getString(cursor.getColumnIndexOrThrow("value")));
            c(cursor.getString(cursor.getColumnIndexOrThrow(EventUtils.COLUMN_PARAM)));
        }
    }

    private String a(Map<String, String> map) {
        String str = "";
        if (map == null) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (String str2 : map.keySet()) {
            stringBuilder.append(str2);
            stringBuilder.append("#ITEMSPLITTER#");
            stringBuilder.append((String) map.get(str2));
            stringBuilder.append("#ITEMSPLITTER#");
        }
        return stringBuilder.toString();
    }

    private void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.av = new HashMap();
            String[] split = str.split("#ITEMSPLITTER#");
            for (int i = 0; i < split.length - 1; i += 2) {
                this.av.put(split[i], split[i + 1]);
            }
        }
    }

    public void dispatch() {
        if (sDispatcher != null) {
            for (Dispatchable dispatchEvent : sDispatcher) {
                dispatchEvent.dispatchEvent(this);
            }
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(a(this.av));
        parcel.writeLong(this.aw);
    }

    void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        c(parcel.readString());
        this.aw = parcel.readLong();
    }
}
