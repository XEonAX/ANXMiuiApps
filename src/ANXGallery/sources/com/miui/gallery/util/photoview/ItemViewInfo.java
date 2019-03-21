package com.miui.gallery.util.photoview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View;

public class ItemViewInfo implements Parcelable {
    public static final Creator<ItemViewInfo> CREATOR = new Creator<ItemViewInfo>() {
        public ItemViewInfo createFromParcel(Parcel in) {
            return new ItemViewInfo(in);
        }

        public ItemViewInfo[] newArray(int size) {
            return new ItemViewInfo[size];
        }
    };
    private int mAdapterPos;
    private int mHeight;
    private int mWidth;
    private int mX;
    private int mY;

    public ItemViewInfo(int pos, int x, int y, int width, int height) {
        this.mAdapterPos = pos;
        this.mX = x;
        this.mY = y;
        this.mWidth = width;
        this.mHeight = height;
    }

    protected ItemViewInfo(Parcel in) {
        this.mAdapterPos = in.readInt();
        this.mX = in.readInt();
        this.mY = in.readInt();
        this.mWidth = in.readInt();
        this.mHeight = in.readInt();
    }

    public boolean isLocationValid() {
        return (this.mX == -1 || this.mY == -1) ? false : true;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getPosition() {
        return this.mAdapterPos;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mAdapterPos);
        dest.writeInt(this.mX);
        dest.writeInt(this.mY);
        dest.writeInt(this.mWidth);
        dest.writeInt(this.mHeight);
    }

    public static ItemViewInfo getImageInfo(View view, int adapterPos) {
        if (view == null) {
            return null;
        }
        int[] location = new int[2];
        view.getLocationInWindow(location);
        return new ItemViewInfo(adapterPos, location[0], location[1], view.getWidth(), view.getHeight());
    }

    public static ItemViewInfo getImageInfo(int x, int y, View view, int adapterPos) {
        if (view == null) {
            return null;
        }
        return new ItemViewInfo(adapterPos, x, y, view.getWidth(), view.getHeight());
    }

    public String toString() {
        return "mPos: " + this.mAdapterPos + " mX: " + this.mX + " mY: " + this.mY + " mWidth: " + this.mWidth + " mHeight: " + this.mHeight;
    }
}
