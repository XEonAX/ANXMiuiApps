package com.taobao.ma.qr.common.result;

import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;

public class MaQrResult extends MaResult {
    public int height;
    public int width;
    public int x;
    public int[] xCorner;
    public int y;
    public int[] yCorner;

    public MaQrResult(MaType type, String text) {
        super(type, text);
    }

    public MaQrResult(MaType type, String text, int[] xs, int[] ys, int x, int y, int width, int height) {
        this(type, text);
        this.xCorner = xs;
        this.yCorner = ys;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }
}
