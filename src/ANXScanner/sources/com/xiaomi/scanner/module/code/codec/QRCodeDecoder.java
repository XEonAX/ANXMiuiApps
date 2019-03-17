package com.xiaomi.scanner.module.code.codec;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.YuvImage;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.FileNotFoundException;
import java.util.Hashtable;
import java.util.Vector;

public class QRCodeDecoder {
    private static final Tag TAG = new Tag("QRCodeDecoder");

    private static class PlanarYUVLuminanceSource extends LuminanceSource {
        private final YuvImage mYuvImage;

        public PlanarYUVLuminanceSource(YuvImage yuvImage) {
            super(yuvImage.getWidth(), yuvImage.getHeight());
            this.mYuvImage = yuvImage;
        }

        public byte[] getRow(int y, byte[] row) {
            if (y < 0 || y >= getHeight()) {
                throw new IllegalArgumentException("Requested row is outside the image: " + y);
            }
            int width = getWidth();
            if (row == null || row.length < width) {
                row = new byte[width];
            }
            System.arraycopy(this.mYuvImage.getYuvData(), y * width, row, 0, width);
            return row;
        }

        public byte[] getMatrix() {
            return this.mYuvImage.getYuvData();
        }
    }

    private static class RGBLuminanceSource extends LuminanceSource {
        private final byte[] luminances;

        public RGBLuminanceSource(String path) throws FileNotFoundException {
            this(loadBitmap(path));
        }

        public RGBLuminanceSource(Bitmap bitmap) {
            super(bitmap.getWidth(), bitmap.getHeight());
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] pixels = new int[(width * height)];
            bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
            this.luminances = new byte[(width * height)];
            for (int y = 0; y < height; y++) {
                int offset = y * width;
                for (int x = 0; x < width; x++) {
                    int pixel = pixels[offset + x];
                    int r = (pixel >> 16) & 255;
                    int g = (pixel >> 8) & 255;
                    int b = pixel & 255;
                    if (r == g && g == b) {
                        this.luminances[offset + x] = (byte) r;
                    } else {
                        this.luminances[offset + x] = (byte) ((((r + g) + g) + b) >> 2);
                    }
                }
            }
        }

        public byte[] getRow(int y, byte[] row) {
            if (y < 0 || y >= getHeight()) {
                throw new IllegalArgumentException("Requested row is outside the image: " + y);
            }
            int width = getWidth();
            if (row == null || row.length < width) {
                row = new byte[width];
            }
            System.arraycopy(this.luminances, y * width, row, 0, width);
            return row;
        }

        public byte[] getMatrix() {
            return this.luminances;
        }

        private static Bitmap loadBitmap(String path) throws FileNotFoundException {
            Bitmap bitmap = BitmapFactory.decodeFile(path);
            if (bitmap != null) {
                return bitmap;
            }
            throw new FileNotFoundException("Couldn't open " + path);
        }
    }

    public static Result decode(Context context, YuvImage yuvImage, Hashtable<DecodeHintType, Object> hints) {
        Result result = null;
        BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(new PlanarYUVLuminanceSource(yuvImage)));
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        multiFormatReader.setHints(hints);
        try {
            result = multiFormatReader.decodeWithState(bitmap);
        } catch (ReaderException e) {
            Log.w(TAG, "ReaderException", e);
        } catch (OutOfMemoryError oom) {
            Log.e(TAG, "decode oom, crop size", oom);
        } finally {
            multiFormatReader.reset();
        }
        return result;
    }

    public static Result decode(String path) {
        if (path == null || path.length() == 0) {
            Log.w(TAG, "path is null");
            return null;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        options.inJustDecodeBounds = false;
        int realWidth = ScannerApp.getAndroidContext().getResources().getDimensionPixelSize(R.dimen.framingRectWidth);
        options.inSampleSize = calculateInSampleSize(options, realWidth, realWidth);
        Bitmap bmp = BitmapFactory.decodeFile(path, options);
        Result result = decode(bmp);
        if (bmp == null || bmp.isRecycled()) {
            return result;
        }
        bmp.recycle();
        return result;
    }

    private static int calculateInSampleSize(Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        while (height / inSampleSize > reqHeight && width / inSampleSize > reqWidth) {
            inSampleSize *= 2;
        }
        return inSampleSize;
    }

    public static Result decode(Bitmap bmp) {
        if (bmp == null) {
            Log.w(TAG, "bmp is null");
            return null;
        }
        Result result = null;
        BinaryBitmap binary = new BinaryBitmap(new HybridBinarizer(new RGBLuminanceSource(bmp)));
        MultiFormatReader reader = new MultiFormatReader();
        Hashtable<DecodeHintType, Object> hints = new Hashtable();
        Vector<BarcodeFormat> decodeFormats = new Vector();
        decodeFormats.addAll(DecodeFormat.ONE_D_FORMATS);
        decodeFormats.addAll(DecodeFormat.QR_CODE_FORMATS);
        decodeFormats.addAll(DecodeFormat.DATA_MATRIX_FORMATS);
        hints.put(DecodeHintType.POSSIBLE_FORMATS, decodeFormats);
        hints.put(DecodeHintType.CHARACTER_SET, "UTF-8");
        try {
            reader.setHints(hints);
            return reader.decodeWithState(binary);
        } catch (Exception e) {
            Log.e(TAG, "Exception", e);
            return result;
        }
    }
}
