package com.miui.gallery.video.editor;

import android.graphics.Bitmap;

public class VideoThumbnail {
    private int endTime;
    private int intrinsicTime;
    private int startTime;
    private Bitmap thumbnail;

    public VideoThumbnail(Bitmap thumbnail, int intrinsicTime) {
        this.thumbnail = thumbnail;
        this.intrinsicTime = intrinsicTime;
    }

    public VideoThumbnail(int startTime, int endTime, int intrinsicTime, Bitmap thumbnail) {
        this.startTime = startTime;
        this.endTime = endTime;
        this.intrinsicTime = intrinsicTime;
        this.thumbnail = thumbnail;
    }

    public int getIntrinsicTime() {
        return this.intrinsicTime;
    }

    public Bitmap getThumbnail() {
        return this.thumbnail;
    }
}
