package com.miui.gallery.editor.photo.core;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class Metadata implements Parcelable, Comparable<Metadata> {
    public final String name;
    public final int priority;

    public Metadata(short priority, String name) {
        this.name = name;
        this.priority = priority;
    }

    public int compareTo(Metadata o) {
        return this.priority - o.priority;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.name);
        dest.writeInt(this.priority);
    }

    protected Metadata(Parcel in) {
        this.name = in.readString();
        this.priority = in.readInt();
    }
}
