package com.miui.internal.analytics;

import android.database.Cursor;
import android.os.Parcel;
import android.text.TextUtils;

public class LogEvent extends Event {
    private String aa;
    private String ab;

    public LogEvent() {
        this.mPackageName = "";
        this.mType = Integer.valueOf(1);
        this.aa = "";
        this.ab = "";
    }

    public LogEvent(String str, String str2, String str3, String str4) {
        this.mPackageName = str;
        this.mType = Integer.valueOf(1);
        this.mEventId = str2;
        this.aa = str3;
        this.ab = str4;
    }

    public String getMessage() {
        return this.aa;
    }

    public String getErrorClass() {
        return this.ab;
    }

    public void writeEvent(c cVar) {
        if (cVar != null) {
            String str = this.mPackageName;
            Integer num = this.mType;
            String str2 = this.mEventId;
            String e = e();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mTrackTime);
            stringBuilder.append("");
            cVar.b(str, num, str2, e, stringBuilder.toString(), Boolean.toString(false));
        }
    }

    public void restore(Cursor cursor) {
        super.restore(cursor);
        if (cursor != null) {
            c(cursor.getString(cursor.getColumnIndexOrThrow(EventUtils.COLUMN_PARAM)));
        }
    }

    private String e() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.aa);
        stringBuilder.append("#ITEMSPLITTER#");
        stringBuilder.append(this.ab);
        return stringBuilder.toString();
    }

    private void c(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("#ITEMSPLITTER#");
            if (split.length > 1) {
                this.aa = split[0];
                this.ab = split[1];
            }
        }
    }

    public void dispatch() {
        if (sDispatcher != null) {
            for (Dispatchable dispatchLog : sDispatcher) {
                dispatchLog.dispatchLog(this);
            }
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.aa);
        parcel.writeString(this.ab);
    }

    void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        this.aa = parcel.readString();
        this.ab = parcel.readString();
    }
}
