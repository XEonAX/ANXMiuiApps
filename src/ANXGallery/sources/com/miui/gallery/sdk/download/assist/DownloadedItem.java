package com.miui.gallery.sdk.download.assist;

public class DownloadedItem {
    private byte[] mFileCipher;
    private String mFilePath;

    public DownloadedItem(String filePath, byte[] fileCipher) {
        this.mFilePath = filePath;
        this.mFileCipher = fileCipher;
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    public byte[] getFileCipher() {
        return this.mFileCipher;
    }
}
