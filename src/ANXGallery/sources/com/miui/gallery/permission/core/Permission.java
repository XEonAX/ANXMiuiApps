package com.miui.gallery.permission.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Permission implements Parcelable {
    public static final Creator<Permission> CREATOR = new Creator<Permission>() {
        public Permission createFromParcel(Parcel in) {
            return new Permission(in);
        }

        public Permission[] newArray(int size) {
            return new Permission[size];
        }
    };
    public final String mDesc;
    public final String mName;
    public final String mPermissionGroup;
    public final boolean mRequired;

    public Permission(String permissionGroup, String name, String desc, boolean required) {
        this.mPermissionGroup = permissionGroup;
        this.mName = name;
        this.mDesc = desc;
        this.mRequired = required;
    }

    protected Permission(Parcel in) {
        this.mPermissionGroup = in.readString();
        this.mName = in.readString();
        this.mDesc = in.readString();
        this.mRequired = in.readByte() != (byte) 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mPermissionGroup);
        dest.writeString(this.mName);
        dest.writeString(this.mDesc);
        dest.writeByte((byte) (this.mRequired ? 1 : 0));
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Permission) {
            return this.mPermissionGroup.equalsIgnoreCase(((Permission) obj).mPermissionGroup);
        }
        return false;
    }

    public int hashCode() {
        return this.mPermissionGroup.hashCode();
    }
}
