package com.xiaomi.opensdk.file.model;

public class CommitParameter {
    private String mAwsString;
    private String mFileSHA1;
    private long mFileSize = -1;
    private String mKssString;
    private String mUploadId;

    public CommitParameter(String kssString, String awsString, String uploadId, String fileSha1, long fileSize) {
        this.mKssString = kssString;
        this.mAwsString = awsString;
        this.mUploadId = uploadId;
        this.mFileSHA1 = fileSha1;
        this.mFileSize = fileSize;
    }

    public String getKssString() {
        return this.mKssString;
    }

    public String getUploadId() {
        return this.mUploadId;
    }
}
