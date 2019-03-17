package com.taobao.ma.ar;

public class ARInputParam {
    public final byte[] imageData;
    public final int imageHeight;
    public final int imageWidth;
    public final int interestP1_X;
    public final int interestP1_Y;
    public final int interestP2_X;
    public final int interestP2_Y;
    public final int preDim;
    public final int preInCount;
    public final int[] preXCoords;
    public final int[] preYCoords;

    public ARInputParam(byte[] imgData, int imgWidth, int imgHeight, int[] preXCoords, int[] preYCoords, int interestP1_X, int interestP1_Y, int interestP2_X, int interestP2_Y, int preInCount, int preDim) {
        this.imageData = imgData;
        this.imageWidth = imgWidth;
        this.imageHeight = imgHeight;
        this.preXCoords = preXCoords;
        this.preYCoords = preYCoords;
        this.interestP1_X = interestP1_X;
        this.interestP1_Y = interestP1_Y;
        this.interestP2_X = interestP2_X;
        this.interestP2_Y = interestP2_Y;
        this.preInCount = preInCount;
        this.preDim = preDim;
    }
}
