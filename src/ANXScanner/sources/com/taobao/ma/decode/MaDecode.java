package com.taobao.ma.decode;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.support.v4.view.ViewCompat;
import com.taobao.ma.ar.ARInputParam;
import com.taobao.ma.ar.ARResult;
import com.taobao.ma.common.config.MaConfig;
import com.taobao.ma.common.log.MaLogger;
import com.taobao.ma.util.ImageTool;
import com.taobao.ma.util.StringEncodeUtils;
import com.taobao.ma.util.StringUtils;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import mtopsdk.common.util.SymbolExpUtil;

public class MaDecode {
    private static boolean isInDecoding = false;

    private static native DecodeResult codeDecodeWithQr(byte[] bArr, int i, int i2, int i3, int i4);

    private static native void detectMarkers(byte[] bArr, int i, int i2, int[] iArr, int[] iArr2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, ARResult aRResult);

    private static native byte[] encode(String str, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, char c, char c2, int i9, int i10, int i11);

    private static native void releaseMemory();

    private static native DecodeResult yuvcodeDecode(byte[] bArr, int i, int i2, int i3, Rect rect, int i4, String str, String[] strArr);

    public static void releaseStaticMemory() {
        releaseMemory();
    }

    static {
        MaLogger.v("Madecode: loading so files");
        if (!MaConfig.hasSoLoaded) {
            try {
                System.loadLibrary("tbdecode");
                MaConfig.hasSoLoaded = true;
            } catch (UnsatisfiedLinkError e) {
                MaLogger.e("Failed to load libtbdecode.so", e);
            }
        }
    }

    public static DecodeResult yuvcodeDecode(YuvImage yuvImage, Rect rect, int scanMode, String str4GLocalAddr, String[] whitelist) {
        return codeDecode(yuvImage.getYuvData(), yuvImage.getWidth(), yuvImage.getHeight(), yuvImage.getStrides()[0], rect, scanMode, str4GLocalAddr, whitelist);
    }

    private static synchronized DecodeResult codeDecode(byte[] data, int width, int height, int strides, Rect rect, int scanMode, String str4GLocalAddr, String[] whitelist) {
        DecodeResult result = null;
        synchronized (MaDecode.class) {
            if (!isInDecoding) {
                isInDecoding = true;
                if (data == null) {
                    MaLogger.w("codeDecode data is null");
                } else {
                    result = null;
                    try {
                        result = yuvcodeDecode(data, width, height, strides, rect, scanMode, str4GLocalAddr, whitelist);
                    } catch (UnsatisfiedLinkError error) {
                        MaLogger.e("Failed to load libtbdecode.so", error);
                    } catch (Throwable e) {
                        MaLogger.e(e);
                    }
                    result = handleDecodeResult(result);
                    isInDecoding = false;
                }
            }
        }
        return result;
    }

    private static DecodeResult handleDecodeResult(DecodeResult result) {
        if (result == null || result.bytes == null || result.bytes.length <= 0) {
            return null;
        }
        try {
            String encode = StringEncodeUtils.getStringEncode(result.bytes);
            if (StringUtils.isEmpty(encode)) {
                result.strCode = new String(result.bytes, SymbolExpUtil.CHARSET_UTF8);
            } else {
                result.strCode = new String(result.bytes, encode);
            }
            result.bytes = null;
            if (StringUtils.isEmpty(result.strCode)) {
                return null;
            }
            return result;
        } catch (UnsupportedEncodingException e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public static synchronized DecodeResult codeDecodePictureWithQr(String path) {
        DecodeResult codeDecodePictureWithQr;
        synchronized (MaDecode.class) {
            codeDecodePictureWithQr = codeDecodePictureWithQr(path, 512);
        }
        return codeDecodePictureWithQr;
    }

    public static synchronized DecodeResult codeDecodePictureWithQr(String path, int scanMode) {
        DecodeResult decodeResult = null;
        synchronized (MaDecode.class) {
            try {
                if (!StringUtils.isEmpty(path)) {
                    File srcImageFile = new File(path);
                    if (srcImageFile != null && srcImageFile.exists()) {
                        decodeResult = codeDecodePictureWithQr(ImageTool.createThumbnail(srcImageFile, 1024, 1024), scanMode);
                    }
                }
            } catch (Exception e) {
            }
        }
        return decodeResult;
    }

    public static synchronized DecodeResult codeDecodePictureWithQr(Bitmap bitmap, int scanMode) {
        DecodeResult result;
        synchronized (MaDecode.class) {
            Bitmap b = bitmap;
            result = null;
            try {
                if (b.getConfig() != Config.ARGB_8888) {
                    Bitmap bb = b.copy(Config.ARGB_8888, true);
                    b.recycle();
                    b = bb;
                }
                ByteBuffer buf = ByteBuffer.allocate(b.getHeight() * b.getRowBytes());
                buf.order(ByteOrder.BIG_ENDIAN);
                b.copyPixelsToBuffer(buf);
                try {
                    result = codeDecodeWithQr(buf.array(), b.getWidth(), b.getHeight(), b.getRowBytes(), scanMode);
                } catch (UnsatisfiedLinkError error) {
                    MaLogger.e("Failed to load libtbdecode.so", error);
                } catch (Throwable e) {
                    MaLogger.e(e);
                }
                result = handleDecodeResult(result);
            } catch (OutOfMemoryError e2) {
            }
        }
        return result;
    }

    private static byte[] getPixelData(Bitmap image, int width, int height, int numChannelForPixel) {
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

    private static Bitmap handleResult(byte[] resultData, int width, int height, int numChannelForPixel) {
        if (resultData == null) {
            return null;
        }
        Bitmap resultBitm = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        int[] resultPixels = new int[(width * height)];
        int i = 0;
        int index = 0;
        while (i < resultData.length) {
            resultPixels[index] = (((numChannelForPixel == 4 ? (resultData[i + 3] & 255) << 24 : ViewCompat.MEASURED_STATE_MASK) + ((resultData[i] & 255) << 16)) + ((resultData[i + 1] & 255) << 8)) + (resultData[i + 2] & 255);
            i += numChannelForPixel;
            index++;
        }
        resultBitm.setPixels(resultPixels, 0, width, 0, 0, width, height);
        return resultBitm;
    }

    public static synchronized Bitmap encode(String content, Bitmap bitmap, int maType, char domain) {
        Bitmap handleResult;
        synchronized (MaDecode.class) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int numChannelForPixel = bitmap.hasAlpha() ? 4 : 3;
            handleResult = handleResult(encode(content, getPixelData(bitmap, width, height, numChannelForPixel), width, height, numChannelForPixel, maType, domain), width, height, numChannelForPixel);
        }
        return handleResult;
    }

    private static synchronized byte[] encode(String content, byte[] pixelData, int width, int height, int numChannelForPixel, int maType, char domain) {
        byte[] result;
        synchronized (MaDecode.class) {
            char domainIndex = maType == 3 ? domain : '0';
            char[] cArr = new char[4];
            cArr = new char[]{'Q', 'Q', 'L', 'L'};
            int pixels = 0;
            if (width > height) {
                pixels = width;
            } else if (width < height) {
                pixels = height;
            } else if (width == height) {
                pixels = width;
            }
            result = null;
            try {
                result = encode(content, pixelData, width, height, numChannelForPixel, numChannelForPixel * width, 0, 0, 0, 0, domainIndex, cArr[maType], 2, pixels >= 350 ? 4 : 3, maType);
            } catch (Throwable error) {
                MaLogger.e("Failed to load libtbdecode.so", error);
            } catch (Throwable e) {
                MaLogger.e(e);
            }
        }
        return result;
    }

    public static synchronized ARResult detectGen3Markers(ARInputParam inputParam) {
        ARResult convertId;
        synchronized (MaDecode.class) {
            ARResult result = new ARResult();
            detectMarkers(inputParam.imageData, inputParam.imageWidth, inputParam.imageHeight, inputParam.preXCoords, inputParam.preYCoords, inputParam.preDim, inputParam.preInCount, -1, inputParam.interestP1_X, inputParam.interestP1_Y, inputParam.interestP2_X, inputParam.interestP2_Y, result);
            convertId = result.pointNum == 0 ? null : result.convertId();
        }
        return convertId;
    }
}
