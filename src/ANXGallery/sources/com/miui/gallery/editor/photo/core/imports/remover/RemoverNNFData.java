package com.miui.gallery.editor.photo.core.imports.remover;

import android.os.MemoryFile;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.miui.gallery.editor.photo.utils.MemoryFileUtils;
import com.miui.gallery.util.BaseMiscUtil;
import java.io.FileInputStream;
import java.io.IOException;

public class RemoverNNFData implements Parcelable {
    public static final Creator<RemoverNNFData> CREATOR = new Creator<RemoverNNFData>() {
        public RemoverNNFData createFromParcel(Parcel source) {
            return new RemoverNNFData(source);
        }

        public RemoverNNFData[] newArray(int size) {
            return new RemoverNNFData[size];
        }
    };
    int count;
    ParcelFileDescriptor fileDescriptor;
    int height;
    int index;
    int length;
    MemoryFile memoryFile;
    byte[] nnf;
    int width;

    protected RemoverNNFData(Parcel in) {
        this.height = in.readInt();
        this.width = in.readInt();
        this.index = in.readInt();
        this.fileDescriptor = (ParcelFileDescriptor) in.readParcelable(ParcelFileDescriptor.class.getClassLoader());
        this.length = in.readInt();
        this.count = in.readInt();
        getDataFromParcel();
    }

    public int describeContents() {
        return 0;
    }

    void saveDataForParcel() {
        this.count = this.nnf.length;
        this.length = this.count;
        this.memoryFile = MemoryFileUtils.createMemoryFile("remove", this.length);
        try {
            this.memoryFile.writeBytes(this.nnf, 0, 0, this.nnf.length);
            this.memoryFile.allowPurging(false);
            this.fileDescriptor = MemoryFileUtils.getParcelFileDescriptor(this.memoryFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    void getDataFromParcel() {
        FileInputStream memoryFileInputSteam = MemoryFileUtils.getInputStream(this.fileDescriptor);
        try {
            this.nnf = new byte[this.count];
            memoryFileInputSteam.read(this.nnf, 0, this.count);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            BaseMiscUtil.closeSilently(memoryFileInputSteam);
        }
    }

    public void releaseMemoryFile() {
        if (this.memoryFile != null) {
            this.memoryFile.close();
        }
    }

    public void writeToParcel(Parcel dest, int flags) {
        saveDataForParcel();
        dest.writeInt(this.height);
        dest.writeInt(this.width);
        dest.writeInt(this.index);
        dest.writeParcelable(this.fileDescriptor, flags);
        dest.writeInt(this.length);
        dest.writeInt(this.count);
    }
}
