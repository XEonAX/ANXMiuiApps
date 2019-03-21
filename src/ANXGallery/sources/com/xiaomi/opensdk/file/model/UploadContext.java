package com.xiaomi.opensdk.file.model;

import java.io.File;

public class UploadContext {
    private boolean isNeedRequestUpload;
    private String mCommitString;
    private String mKssString;
    private final MiCloudFileListener mListener;
    private final File mLocalFile;
    private long mMaxChunkSize;
    private String mSha1;
    private String mUploadID;
    private UploadParameter mUploadParam;

    public UploadContext(File localFile, MiCloudFileListener listener) {
        this(localFile, listener, 4194304);
    }

    public UploadContext(File localFile, MiCloudFileListener listener, long size) {
        this.mLocalFile = localFile;
        this.mListener = listener;
        this.mMaxChunkSize = size;
    }

    public File getLocalFile() {
        return this.mLocalFile;
    }

    public String getFilePath() {
        return this.mLocalFile.getAbsolutePath();
    }

    public long getFileSize() {
        return this.mLocalFile.length();
    }

    public MiCloudFileListener getListener() {
        return this.mListener;
    }

    public UploadParameter getUploadParam() {
        return this.mUploadParam;
    }

    public void setUploadParam(UploadParameter mUploadParam) {
        this.mUploadParam = mUploadParam;
    }

    public boolean isNeedRequestUpload() {
        return this.isNeedRequestUpload;
    }

    public void setNeedRequestUpload(boolean isNeedRequestUpload) {
        this.isNeedRequestUpload = isNeedRequestUpload;
    }

    public String getKssString() {
        return this.mKssString;
    }

    public void setKssString(String mKssString) {
        this.mKssString = mKssString;
    }

    public String getSha1() {
        return this.mSha1;
    }

    public void setSha1(String mSha1) {
        this.mSha1 = mSha1;
    }

    public String getCommitString() {
        return this.mCommitString;
    }

    public void setCommitString(String mCommitString) {
        this.mCommitString = mCommitString;
    }

    public void setUploadId(String mUploadID) {
        this.mUploadID = mUploadID;
    }

    public String getUploadId() {
        return this.mUploadID;
    }

    public long getMaxChunkSize() {
        return this.mMaxChunkSize;
    }
}
