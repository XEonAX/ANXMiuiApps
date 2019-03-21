package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.LinkedList;

class MosaicOperationItem implements Parcelable {
    public static final Creator<MosaicOperationItem> CREATOR = new Creator<MosaicOperationItem>() {
        public MosaicOperationItem createFromParcel(Parcel source) {
            return new MosaicOperationItem(source);
        }

        public MosaicOperationItem[] newArray(int size) {
            return new MosaicOperationItem[size];
        }
    };
    final MosaicGLEntity mosaicGLEntity;
    final LinkedList<PaintingItem> paintingItems = new LinkedList();

    static class PaintingItem implements Parcelable {
        public static final Creator<PaintingItem> CREATOR = new Creator<PaintingItem>() {
            public PaintingItem createFromParcel(Parcel source) {
                return new PaintingItem(source);
            }

            public PaintingItem[] newArray(int size) {
                return new PaintingItem[size];
            }
        };
        final LinkedList<GLRectF> points = new LinkedList();

        PaintingItem() {
        }

        void add(GLRectF glRectF) {
            this.points.add(glRectF);
        }

        boolean isEmpty() {
            return this.points.isEmpty();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeTypedList(this.points);
        }

        protected PaintingItem(Parcel in) {
            in.readTypedList(this.points, GLRectF.CREATOR);
        }
    }

    MosaicOperationItem(MosaicGLEntity mosaicGLEntity) {
        this.mosaicGLEntity = mosaicGLEntity;
    }

    void add(PaintingItem paintingItem) {
        this.paintingItems.add(paintingItem);
    }

    boolean isEmpty() {
        return this.paintingItems.isEmpty();
    }

    PaintingItem removeLast() {
        return (PaintingItem) this.paintingItems.removeLast();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.mosaicGLEntity, flags);
        dest.writeTypedList(this.paintingItems);
    }

    protected MosaicOperationItem(Parcel in) {
        this.mosaicGLEntity = (MosaicGLEntity) in.readParcelable(MosaicGLEntity.class.getClassLoader());
        in.readTypedList(this.paintingItems, PaintingItem.CREATOR);
    }
}
