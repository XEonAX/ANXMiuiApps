package com.miui.gallery.agreement.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Agreement implements Parcelable {
    public static final Creator<Agreement> CREATOR = new Creator<Agreement>() {
        public Agreement createFromParcel(Parcel in) {
            return new Agreement(in);
        }

        public Agreement[] newArray(int size) {
            return new Agreement[size];
        }
    };
    public final String mLink;
    public final boolean mRequired;
    public final String mText;

    public Agreement(String text, String link, boolean required) {
        this.mText = text;
        this.mLink = link;
        this.mRequired = required;
    }

    protected Agreement(Parcel in) {
        this.mText = in.readString();
        this.mLink = in.readString();
        this.mRequired = in.readByte() != (byte) 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mText);
        dest.writeString(this.mLink);
        dest.writeByte((byte) (this.mRequired ? 1 : 0));
    }

    public int describeContents() {
        return 0;
    }
}
