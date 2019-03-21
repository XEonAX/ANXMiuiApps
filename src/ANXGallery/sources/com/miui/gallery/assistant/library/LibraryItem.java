package com.miui.gallery.assistant.library;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.net.download.Verifier.Sha1;
import com.miui.gallery.util.FileUtils;
import java.io.File;

public class LibraryItem {
    @SerializedName("extraInfo")
    private String mExtraInfo;
    @SerializedName("id")
    private long mId;
    private transient boolean mIsLoaded = false;
    private transient boolean mIsLocal = false;
    @SerializedName("text")
    private String mName;
    @SerializedName("parentId")
    private long mParentId;
    @SerializedName("sha1Base16")
    private String mSha1;
    @SerializedName("type")
    private String mType;

    public String getName() {
        return this.mName;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public long getId() {
        return this.mId;
    }

    public long getParentId() {
        return this.mParentId;
    }

    public String getExtraInfo() {
        return this.mExtraInfo;
    }

    public boolean isLocal() {
        return this.mIsLocal;
    }

    public boolean isLoaded() {
        return this.mIsLoaded;
    }

    public void setLoaded(boolean isLoaded) {
        this.mIsLoaded = isLoaded;
    }

    public boolean isExist() {
        return isLocal() || isLibraryExist(GalleryApp.sGetAndroidContext());
    }

    private boolean isLibraryExist(Context context) {
        File destFile = new File(getTargetPath(context));
        return destFile.exists() && new Sha1(this.mSha1).verify(FileUtils.getFileSha1(destFile.getAbsolutePath()));
    }

    public String getTargetPath(Context context) {
        return context.getDir("libs", 0).getAbsolutePath() + File.separator + this.mName;
    }

    public String getDirPath(Context context) {
        return context.getDir("libs", 0).getAbsolutePath();
    }

    public boolean isTypeSo() {
        return TextUtils.equals(this.mType, "so");
    }
}
