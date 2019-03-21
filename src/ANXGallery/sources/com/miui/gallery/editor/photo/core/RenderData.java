package com.miui.gallery.editor.photo.core;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class RenderData implements Parcelable {
    public Effect mType;

    final Effect getType() {
        return this.mType;
    }

    final RenderData merge(RenderData other) {
        RenderData merged = onMerge(other);
        if (merged != null) {
            merged.mType = this.mType;
        }
        return merged;
    }

    protected RenderData onMerge(RenderData other) {
        return null;
    }

    public final void release() {
        onRelease();
    }

    protected void onRelease() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.mType, flags);
    }

    protected RenderData(Parcel in) {
        this.mType = (Effect) in.readParcelable(Effect.class.getClassLoader());
    }
}
