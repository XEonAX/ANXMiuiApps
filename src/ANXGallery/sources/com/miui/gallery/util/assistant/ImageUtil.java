package com.miui.gallery.util.assistant;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import java.nio.ByteBuffer;

public class ImageUtil {
    public static int calculateInSampleSize(Options options, int maxWidth, int maxHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        while (true) {
            width >>= 1;
            if (width < maxWidth) {
                break;
            }
            height >>= 1;
            if (height < maxHeight) {
                break;
            }
            inSampleSize <<= 1;
        }
        return inSampleSize;
    }

    public static byte[] getPixelsBGR(Bitmap image) {
        ByteBuffer buffer = ByteBuffer.allocate(image.getByteCount());
        image.copyPixelsToBuffer(buffer);
        byte[] temp = buffer.array();
        byte[] pixels = new byte[((temp.length / 4) * 3)];
        for (int i = 0; i < temp.length / 4; i++) {
            pixels[i * 3] = temp[(i * 4) + 2];
            pixels[(i * 3) + 1] = temp[(i * 4) + 1];
            pixels[(i * 3) + 2] = temp[i * 4];
        }
        return pixels;
    }
}
