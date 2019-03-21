package com.miui.gallery.movie.entity;

import com.miui.gallery.movie.ui.factory.AudioFactory;

public class AudioResource extends MovieResource {
    private int resType;

    public AudioResource(int resType, String srcPath, int imageId, int stringId) {
        super(srcPath, imageId, stringId);
        this.resType = resType;
        this.isPackageAssets = true;
        this.downloadState = 17;
    }

    public AudioResource(String path) {
        this.srcPath = path;
        this.nameKey = "local";
        this.resType = 2;
        this.isPackageAssets = true;
    }

    public String getDownloadSrcPath() {
        if (this.isPackageAssets) {
            return this.srcPath;
        }
        return AudioFactory.getAudioDownloadPath(this.pathKey);
    }

    public int getResType() {
        return this.resType;
    }

    public String getStatTypeString() {
        return "audio";
    }

    public String getStatNameString() {
        return "audio-" + this.label;
    }
}
