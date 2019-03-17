package com.xiaomi.scanner.module.code.codec;

import android.graphics.Rect;
import android.graphics.YuvImage;
import com.alibaba.fastjson.asm.Opcodes;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;

public class DecodeParams {
    private static final Tag TAG = new Tag("DecodeParams");
    private Rect decodeRect;
    private YuvImage mYuvImage;
    private byte[] previewData;
    private int previewFormat;
    private int previewHeight;
    private int previewOrientation;
    private int previewWidth;

    public DecodeParams(byte[] data, int format, int width, int height, int orientation, Rect rect) {
        this.previewData = data;
        this.previewFormat = format;
        this.previewWidth = width;
        this.previewHeight = height;
        this.previewOrientation = orientation;
        this.decodeRect = rect;
    }

    public YuvImage getYuvImage() {
        if (this.mYuvImage == null) {
            if (this.previewFormat != 17) {
                Log.e(TAG, "previewFormat:" + this.previewFormat);
            } else if (((this.previewHeight * this.previewHeight) * 3) / 2 > this.previewData.length) {
                return null;
            } else {
                Rect rect = this.decodeRect;
                if (rect != null) {
                    Rect rect2;
                    if (this.previewOrientation == 90 || this.previewOrientation == 270) {
                        rect2 = new Rect(0, 0, this.previewHeight, this.previewWidth);
                    } else {
                        rect2 = new Rect(0, 0, this.previewWidth, this.previewHeight);
                    }
                    if (!wholeImage.contains(rect)) {
                        throw new IllegalArgumentException("rectangle is not inside the image");
                    }
                } else if (this.previewOrientation == 90 || this.previewOrientation == 270) {
                    rect = new Rect(0, 0, this.previewHeight, this.previewWidth);
                } else {
                    rect = new Rect(0, 0, this.previewWidth, this.previewHeight);
                }
                rect.left &= -2;
                rect.top &= -2;
                rect.right &= -2;
                rect.bottom &= -2;
                int width = rect.width();
                int height = rect.height();
                byte[] rotatedData = new byte[(((width * height) * 3) / 2)];
                int y;
                int x;
                int uvheight;
                int uvwidth;
                int uoffset;
                int voffset;
                int uPerviewOffset;
                int vPerviewOffset;
                int uvPerviewHeight;
                int uvPerviewWidth;
                int uvleft;
                int uvtop;
                int source;
                int dest;
                if (this.previewOrientation == 90) {
                    for (y = 0; y < height; y++) {
                        for (x = 0; x < width; x++) {
                            rotatedData[(y * width) + x] = this.previewData[(this.previewWidth * ((this.previewHeight - 1) - (rect.left + x))) + (rect.top + y)];
                        }
                    }
                    uvheight = height / 2;
                    uvwidth = width / 2;
                    uoffset = width * height;
                    voffset = uoffset + 1;
                    uPerviewOffset = this.previewWidth * this.previewHeight;
                    vPerviewOffset = uPerviewOffset + 1;
                    uvPerviewHeight = this.previewHeight / 2;
                    uvPerviewWidth = this.previewWidth / 2;
                    uvleft = rect.left / 2;
                    uvtop = rect.top / 2;
                    for (y = 0; y < uvheight; y++) {
                        for (x = 0; x < uvwidth; x++) {
                            source = ((((uvPerviewHeight - 1) - (uvleft + x)) * uvPerviewWidth) + (uvtop + y)) * 2;
                            dest = ((y * uvwidth) + x) * 2;
                            rotatedData[uoffset + dest] = this.previewData[uPerviewOffset + source];
                            rotatedData[voffset + dest] = this.previewData[vPerviewOffset + source];
                        }
                    }
                } else if (this.previewOrientation == 270) {
                    for (y = 0; y < height; y++) {
                        for (x = 0; x < width; x++) {
                            rotatedData[(y * width) + x] = this.previewData[(this.previewWidth * (rect.left + x)) + ((this.previewWidth - 1) - (rect.top + y))];
                        }
                    }
                    uvheight = height / 2;
                    uvwidth = width / 2;
                    uoffset = width * height;
                    voffset = uoffset + 1;
                    uPerviewOffset = this.previewWidth * this.previewHeight;
                    vPerviewOffset = uPerviewOffset + 1;
                    uvPerviewWidth = this.previewWidth / 2;
                    uvleft = rect.left / 2;
                    uvtop = rect.top / 2;
                    for (y = 0; y < uvheight; y++) {
                        for (x = 0; x < uvwidth; x++) {
                            source = (((uvleft + x) * uvPerviewWidth) + ((uvPerviewWidth - 1) - (uvtop + y))) * 2;
                            dest = ((y * uvwidth) + x) * 2;
                            rotatedData[uoffset + dest] = this.previewData[uPerviewOffset + source];
                            rotatedData[voffset + dest] = this.previewData[vPerviewOffset + source];
                        }
                    }
                } else if (this.previewOrientation == Opcodes.GETFIELD) {
                    for (y = 0; y < height; y++) {
                        for (x = 0; x < width; x++) {
                            rotatedData[(y * width) + x] = this.previewData[(this.previewWidth * ((this.previewHeight - 1) - (rect.top + y))) + ((this.previewWidth - 1) - (rect.left + x))];
                        }
                    }
                    uvheight = height / 2;
                    uvwidth = width / 2;
                    uoffset = width * height;
                    voffset = uoffset + 1;
                    uPerviewOffset = this.previewWidth * this.previewHeight;
                    vPerviewOffset = uPerviewOffset + 1;
                    uvPerviewHeight = this.previewHeight / 2;
                    uvPerviewWidth = this.previewWidth / 2;
                    uvleft = rect.left / 2;
                    uvtop = rect.top / 2;
                    for (y = 0; y < uvheight; y++) {
                        for (x = 0; x < uvwidth; x++) {
                            source = ((((uvPerviewHeight - 1) - (uvtop + y)) * uvPerviewWidth) + ((uvPerviewWidth - 1) - (uvleft + x))) * 2;
                            dest = ((y * uvwidth) + x) * 2;
                            rotatedData[uoffset + dest] = this.previewData[uPerviewOffset + source];
                            rotatedData[voffset + dest] = this.previewData[vPerviewOffset + source];
                        }
                    }
                } else {
                    for (y = 0; y < height; y++) {
                        System.arraycopy(this.previewData, ((rect.top + y) * this.previewWidth) + rect.left, rotatedData, y * width, width);
                    }
                    uvheight = height / 2;
                    uPerviewOffset = this.previewWidth * this.previewHeight;
                    uvtop = rect.top / 2;
                    for (y = 0; y < uvheight; y++) {
                        System.arraycopy(this.previewData, ((this.previewWidth * (y + uvtop)) + uPerviewOffset) + rect.left, rotatedData, y * width, width);
                    }
                }
                this.mYuvImage = new YuvImage(rotatedData, 17, width, height, null);
            }
        }
        return this.mYuvImage;
    }
}
