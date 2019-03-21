package com.miui.gallery.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.miui.gallery.model.Album.AlbumType;
import java.util.ArrayList;

public class OtherAlbum extends Album {
    public static final Creator<OtherAlbum> CREATOR = new Creator<OtherAlbum>() {
        public OtherAlbum createFromParcel(Parcel source) {
            return new OtherAlbum(source);
        }

        public OtherAlbum[] newArray(int size) {
            return new OtherAlbum[size];
        }
    };
    private ArrayList<String> mAlbumNames;

    public OtherAlbum() {
        super(2147483641);
        super.setAlbumType(AlbumType.OTHER_ALBUMS);
    }

    public final void setAlbumType(AlbumType albumType) {
        super.setAlbumType(AlbumType.OTHER_ALBUMS);
    }

    public ArrayList<String> getAlbumNames() {
        return this.mAlbumNames;
    }

    public void setAlbumNames(ArrayList<String> albumNames) {
        this.mAlbumNames = albumNames;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeStringList(this.mAlbumNames);
    }

    protected OtherAlbum(Parcel in) {
        super(in);
        this.mAlbumNames = in.createStringArrayList();
    }
}
