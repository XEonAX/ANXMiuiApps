package com.nexstreaming.kminternal.nexvideoeditor;

import android.graphics.Bitmap;
import android.util.Log;

public class NexImage {
    private final Bitmap a;
    private final int b;
    private final int c;
    private final int d;

    public NexImage(Bitmap bitmap, int i, int i2, int i3) {
        Log.d("NexImage", "new NexImage(" + bitmap + "," + i + "," + i2 + "," + i3 + ")");
        this.a = bitmap;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public NexImage(Bitmap bitmap, int i, int i2) {
        Log.d("NexImage", "new NexImage(" + bitmap + "," + i + "," + i2 + ")");
        this.a = bitmap;
        this.b = i;
        this.c = i2;
        this.d = 1;
    }

    public int getWidth() {
        return this.b;
    }

    public int getHeight() {
        return this.c;
    }

    public int getLoadedType() {
        return this.d;
    }

    public void getPixels(int[] iArr) {
        if (this.a != null) {
            try {
                this.a.getPixels(iArr, 0, this.b, 0, 0, this.b, this.c);
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ArrayIndexOutOfBoundsException("w=" + this.b + " h=" + this.c + " bm=" + this.a.getWidth() + "x" + this.a.getHeight() + " pixels=" + (iArr == null ? "null" : Integer.valueOf(iArr.length)));
            }
        }
    }

    public void getPixels(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.a != null) {
            if (i4 + i6 > this.a.getHeight()) {
                Log.d("NexImage", "getPixels() WARNING: y + height exceeds bitmap height!!; offset=" + i + "; stride=" + i2 + "; x,y=" + i3 + "," + i4 + "; width,height=" + i5 + "," + i6 + "; mWidth,mHeight=" + this.b + "," + this.c + "; pixels.length=" + iArr.length + "; mBitmap {width=" + this.a.getWidth() + "; height=" + this.a.getHeight() + "}");
            } else if (i3 + i5 > this.a.getWidth()) {
                Log.d("NexImage", "getPixels() WARNING: y + height exceeds bitmap height!!; offset=" + i + "; stride=" + i2 + "; x,y=" + i3 + "," + i4 + "; width,height=" + i5 + "," + i6 + "; mWidth,mHeight=" + this.b + "," + this.c + "; pixels.length=" + iArr.length + "; mBitmap {width=" + this.a.getWidth() + "; height=" + this.a.getHeight() + "}");
            } else {
                this.a.getPixels(iArr, i, i2, i3, i4, i5, i6);
            }
        }
    }

    public Bitmap getBitmap() {
        return this.a;
    }

    public void recycle() {
        this.a.recycle();
        Log.d("NexImage", "recycle Bitmap from native");
    }
}
