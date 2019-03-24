package com.miui.internal.analytics;

import android.os.Parcel;

public class TrackPageViewEvent extends Event {
    private static final String ax = "_pageview_event_";

    public TrackPageViewEvent() {
        this.mPackageName = "";
        this.mType = Integer.valueOf(3);
        this.mEventId = ax;
    }

    public TrackPageViewEvent(String str) {
        this.mPackageName = str;
    }

    public void writeEvent(c cVar) {
        if (cVar != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mTrackTime);
            stringBuilder.append("");
            cVar.b(this.mPackageName, this.mType, this.mEventId, "", stringBuilder.toString(), Boolean.toString(false));
        }
    }

    public void dispatch() {
        if (sDispatcher != null) {
            for (Dispatchable dispatchPageView : sDispatcher) {
                dispatchPageView.dispatchPageView(this);
            }
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
    }
}
