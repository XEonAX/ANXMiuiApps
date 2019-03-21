package com.xiaomi.opensdk.file.model;

public class RequestUploadParameter {
    private String mAwsString;
    private String mFileMimeType = null;
    private String mFileName;
    private String mFileSHA1;
    private long mFileSize = -1;
    private String mKssString;

    public RequestUploadParameter(String kssString, String awsString, String fileSha1, long fileSize, String fileName) {
        this.mKssString = kssString;
        this.mAwsString = awsString;
        this.mFileSHA1 = fileSha1;
        this.mFileSize = fileSize;
        this.mFileName = fileName;
    }

    public String getKssString() {
        return this.mKssString;
    }

    public String getFileSHA1() {
        return this.mFileSHA1;
    }
}
