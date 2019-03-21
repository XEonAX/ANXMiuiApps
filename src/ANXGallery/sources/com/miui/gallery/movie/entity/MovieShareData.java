package com.miui.gallery.movie.entity;

public class MovieShareData {
    private boolean mIsShortVideo;
    private String mLongVideoPath;
    private String mShortVideoPath;

    public void setShortVideo(boolean shortVideo) {
        this.mIsShortVideo = shortVideo;
    }

    public void setVideoPath(String path, boolean isShortVideo) {
        this.mIsShortVideo = isShortVideo;
        if (isShortVideo) {
            this.mShortVideoPath = path;
        } else {
            this.mLongVideoPath = path;
        }
    }

    public void reset(boolean shortVideo) {
        this.mIsShortVideo = shortVideo;
        this.mShortVideoPath = "";
        this.mLongVideoPath = "";
    }

    public String getVideoPath() {
        return this.mIsShortVideo ? this.mShortVideoPath : this.mLongVideoPath;
    }
}
