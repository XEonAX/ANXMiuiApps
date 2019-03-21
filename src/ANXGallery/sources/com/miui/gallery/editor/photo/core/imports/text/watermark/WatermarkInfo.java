package com.miui.gallery.editor.photo.core.imports.text.watermark;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.utils.parcelable.ParcelableGenericUtils;
import java.util.List;

public class WatermarkInfo implements Parcelable {
    public static final Creator<WatermarkInfo> CREATOR = new Creator<WatermarkInfo>() {
        public WatermarkInfo createFromParcel(Parcel source) {
            return new WatermarkInfo(source);
        }

        public WatermarkInfo[] newArray(int size) {
            return new WatermarkInfo[size];
        }
    };
    public String bgPost;
    public float[] bgPostRect;
    public float height;
    public String icon;
    public String name;
    public float offsetX;
    public float offsetY;
    public List<TextPieceInfo> textPieceList;
    public int version;
    public float width;

    public static class TextPieceInfo implements Parcelable {
        public static final Creator<TextPieceInfo> CREATOR = new Creator<TextPieceInfo>() {
            public TextPieceInfo createFromParcel(Parcel source) {
                return new TextPieceInfo(source);
            }

            public TextPieceInfo[] newArray(int size) {
                return new TextPieceInfo[size];
            }
        };
        public int align;
        String font;
        public float[] frameRect;
        public boolean isBold;
        int isVerticalText;
        public float letterSpacing;
        public int lines;
        public float minSize;
        public float size;
        public String text;

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel dest, int flags) {
            dest.writeFloatArray(this.frameRect);
            dest.writeString(this.text);
            dest.writeFloat(this.size);
            dest.writeFloat(this.minSize);
            dest.writeInt(this.isVerticalText);
            dest.writeString(this.font);
            dest.writeInt(this.align);
            dest.writeFloat(this.letterSpacing);
            dest.writeByte(this.isBold ? (byte) 1 : (byte) 0);
            dest.writeInt(this.lines);
        }

        protected TextPieceInfo(Parcel in) {
            this.frameRect = in.createFloatArray();
            this.text = in.readString();
            this.size = in.readFloat();
            this.minSize = in.readFloat();
            this.isVerticalText = in.readInt();
            this.font = in.readString();
            this.align = in.readInt();
            this.letterSpacing = in.readFloat();
            this.isBold = in.readByte() != (byte) 0;
            this.lines = in.readInt();
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeFloat(this.width);
        dest.writeFloat(this.height);
        dest.writeInt(this.version);
        dest.writeFloat(this.offsetX);
        dest.writeFloat(this.offsetY);
        dest.writeString(this.icon);
        dest.writeString(this.bgPost);
        dest.writeFloatArray(this.bgPostRect);
        dest.writeString(this.name);
        ParcelableGenericUtils.writeList(dest, flags, this.textPieceList);
    }

    protected WatermarkInfo(Parcel in) {
        this.width = in.readFloat();
        this.height = in.readFloat();
        this.version = in.readInt();
        this.offsetX = in.readFloat();
        this.offsetY = in.readFloat();
        this.icon = in.readString();
        this.bgPost = in.readString();
        this.bgPostRect = in.createFloatArray();
        this.name = in.readString();
        this.textPieceList = ParcelableGenericUtils.readList(in);
    }
}
