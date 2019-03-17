package com.taobao.ma.encode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

public class ImageHelper {
    public static byte[] getPixelDataRGB(Bitmap image, int width, int height, int numChannelForPixel) {
        int size = width * height;
        byte[] pixelData = new byte[(size * 3)];
        int[] pixels = new int[size];
        image.getPixels(pixels, 0, width, 0, 0, width, height);
        int i = 0;
        int index = 0;
        while (i < size) {
            int value = pixels[i];
            byte a = (byte) ((value >> 24) & 255);
            byte g = (byte) ((value >> 8) & 255);
            byte b = (byte) (value & 255);
            pixelData[index] = (byte) ((value >> 16) & 255);
            pixelData[index + 1] = g;
            pixelData[index + 2] = b;
            i++;
            index += 3;
        }
        return pixelData;
    }

    public static byte[] getPixelData(Bitmap image, int width, int height, int numChannelForPixel) {
        int size = width * height;
        byte[] pixelData = new byte[(numChannelForPixel * size)];
        int[] pixels = new int[size];
        image.getPixels(pixels, 0, width, 0, 0, width, height);
        int i = 0;
        int index = 0;
        while (i < size) {
            int value = pixels[i];
            byte a = (byte) ((value >> 24) & 255);
            byte g = (byte) ((value >> 8) & 255);
            byte b = (byte) (value & 255);
            pixelData[index] = (byte) ((value >> 16) & 255);
            pixelData[index + 1] = g;
            pixelData[index + 2] = b;
            if (numChannelForPixel == 4) {
                pixelData[index + 3] = a;
            }
            i++;
            index += numChannelForPixel;
        }
        return pixelData;
    }

    public static Bitmap Bytes2Bitmap(byte[] b) {
        if (b.length != 0) {
            return BitmapFactory.decodeByteArray(b, 0, b.length);
        }
        return null;
    }
}
