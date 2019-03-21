package com.miui.gallery.model;

import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;

public class ImageLoadParams implements Parcelable {
    public static final Creator<ImageLoadParams> CREATOR = new Creator<ImageLoadParams>() {
        public ImageLoadParams createFromParcel(Parcel parcel) {
            return new ImageLoadParams(parcel);
        }

        public ImageLoadParams[] newArray(int size) {
            return new ImageLoadParams[size];
        }
    };
    private DisplayImageOptions mDisplayOptions;
    private long mFileLength;
    private String mFilePath;
    private boolean mFromCamera;
    private boolean mFromFace;
    private int mInitPosition;
    private long mKey;
    private String mMimeType;
    private RectF mRegionRect;
    private byte[] mSecretKey;
    private ImageSize mTargetSize;

    public ImageLoadParams(long key, String filePath, ImageSize targetSize, RectF regionRect, int position, String mimeType, long fileLength) {
        this.mKey = key;
        this.mFilePath = filePath;
        this.mTargetSize = targetSize;
        this.mRegionRect = regionRect;
        this.mInitPosition = position;
        this.mMimeType = mimeType;
        this.mFileLength = fileLength;
    }

    public ImageLoadParams(long key, String filePath, ImageSize targetSize, RectF regionRect, int position, String mimeType, boolean fromFace, long fileLength) {
        this(key, filePath, targetSize, regionRect, position, mimeType, fileLength);
        this.mFromFace = fromFace;
    }

    public ImageLoadParams(long key, String filePath, ImageSize targetSize, RectF regionRect, int position, String mimeType, byte[] secretKey, long fileLength) {
        this(key, filePath, targetSize, regionRect, position, mimeType, fileLength);
        this.mSecretKey = secretKey;
    }

    protected ImageLoadParams(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.mKey = parcel.readLong();
        this.mFilePath = parcel.readString();
        this.mTargetSize = (ImageSize) parcel.readSerializable();
        this.mRegionRect = (RectF) parcel.readParcelable(RectF.class.getClassLoader());
        this.mInitPosition = parcel.readInt();
        this.mMimeType = parcel.readString();
        int byteLength = parcel.readInt();
        if (byteLength > 0) {
            this.mSecretKey = new byte[byteLength];
            parcel.readByteArray(this.mSecretKey);
        }
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mFromFace = z;
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.mFromCamera = z2;
        this.mFileLength = parcel.readLong();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        int length;
        int i;
        int i2 = 1;
        dest.writeLong(this.mKey);
        dest.writeString(this.mFilePath);
        dest.writeSerializable(this.mTargetSize);
        dest.writeParcelable(this.mRegionRect, flags);
        dest.writeInt(this.mInitPosition);
        dest.writeString(this.mMimeType);
        if (this.mSecretKey != null) {
            length = this.mSecretKey.length;
        } else {
            length = 0;
        }
        dest.writeInt(length);
        if (this.mSecretKey != null) {
            dest.writeByteArray(this.mSecretKey);
        }
        if (this.mFromFace) {
            i = 1;
        } else {
            i = 0;
        }
        dest.writeInt(i);
        if (!this.mFromCamera) {
            i2 = 0;
        }
        dest.writeInt(i2);
        dest.writeLong(this.mFileLength);
    }

    public void updatePosition(int pos) {
        this.mInitPosition = pos;
    }

    public long getKey() {
        return this.mKey;
    }

    public int getPos() {
        return this.mInitPosition;
    }

    public String getPath() {
        return this.mFilePath;
    }

    public void setPath(String path) {
        this.mFilePath = path;
    }

    public ImageSize getTargetSize() {
        return this.mTargetSize;
    }

    public RectF getRegionRectF() {
        return this.mRegionRect;
    }

    public boolean isVideo() {
        return BaseFileMimeUtil.isVideoFromMimeType(this.mMimeType);
    }

    public boolean isGif() {
        return BaseFileMimeUtil.isGifFromMimeType(this.mMimeType);
    }

    public boolean isFromFace() {
        return this.mFromFace;
    }

    public long getFileLength() {
        return this.mFileLength;
    }

    public boolean match(BaseDataItem item, int position) {
        if (item == null) {
            if (position == this.mInitPosition) {
                return true;
            }
            return false;
        } else if (this.mKey != item.getKey()) {
            return false;
        } else {
            return true;
        }
    }

    public boolean isSecret() {
        return this.mSecretKey != null && this.mSecretKey.length > 0;
    }

    public byte[] getSecretKey() {
        return this.mSecretKey;
    }

    public void setDisplayImageOptions(DisplayImageOptions options) {
        this.mDisplayOptions = options;
    }

    public DisplayImageOptions getDisplayImageOptions() {
        return this.mDisplayOptions;
    }

    public void setFromCamera(boolean fromCamera) {
        this.mFromCamera = fromCamera;
    }

    public boolean equals(Object o) {
        return o != null && (o instanceof ImageLoadParams) && getKey() == ((ImageLoadParams) o).getKey();
    }

    public int hashCode() {
        return new Long(getKey()).hashCode();
    }
}
