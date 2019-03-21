package com.meicam.themehelper;

import android.graphics.RectF;

public class NvsImageFileDesc {
    public boolean alternative = false;
    public RectF faceRect = null;
    public long fileLastTime = -1;
    public String filePath = null;
    public boolean hasFace = false;
    public float imgRatio = 0.0f;
    public boolean isCover = false;
    public boolean isLargeImg = false;
    public float score = 0.0f;
    public boolean show = false;

    public NvsImageFileDesc copy() {
        NvsImageFileDesc obj = new NvsImageFileDesc();
        obj.hasFace = this.hasFace;
        obj.isCover = this.isCover;
        obj.show = this.show;
        obj.alternative = this.alternative;
        obj.score = this.score;
        obj.fileLastTime = this.fileLastTime;
        obj.filePath = this.filePath;
        obj.imgRatio = this.imgRatio;
        obj.isLargeImg = this.isLargeImg;
        if (this.faceRect != null) {
            obj.faceRect = new RectF();
            obj.faceRect.left = this.faceRect.left;
            obj.faceRect.top = this.faceRect.top;
            obj.faceRect.right = this.faceRect.right;
            obj.faceRect.bottom = this.faceRect.bottom;
        }
        return obj;
    }
}
