package com.miui.gallery.video.editor.model;

public class VideoEditorBaseModel {
    protected int mDownloadState = 19;
    protected boolean mExtra;
    protected long mID;
    protected String mIconUrl;
    protected boolean mIsTemplate;
    protected String mLabel = "";
    protected String mNameKey;
    protected String mType;
    protected String mUnZipPath;

    public String getLabel() {
        return this.mLabel;
    }

    public long getId() {
        return this.mID;
    }

    public String getIconUrl() {
        return this.mIconUrl;
    }

    public void setUnZipPath(String unZipPath) {
        this.mUnZipPath = unZipPath;
    }

    public void setDownloadState(int downloadState) {
        this.mDownloadState = downloadState;
    }

    public boolean isDownloadSuccess() {
        return this.mDownloadState == 0;
    }

    public boolean isDownloaded() {
        return this.mDownloadState == 17;
    }

    public boolean isDownloading() {
        return this.mDownloadState == 18;
    }

    public int getDownloadState() {
        return this.mDownloadState;
    }

    public boolean isLocal() {
        return "ve_type_local".equals(this.mType);
    }

    public boolean isCustom() {
        return "ve_type_custom".equals(this.mType);
    }

    public boolean isNone() {
        return "ve_type_none".equals(this.mType);
    }

    public boolean isExtra() {
        return this.mExtra;
    }

    public boolean isTemplate() {
        return this.mIsTemplate;
    }
}
