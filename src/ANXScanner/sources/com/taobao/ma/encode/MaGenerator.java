package com.taobao.ma.encode;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.taobao.ma.common.config.MaConfig;
import com.taobao.ma.common.log.MaLogger;
import com.taobao.ma.encode.InputParameters.Gen0InputParameters;
import com.taobao.ma.encode.InputParameters.Gen3InputParameters;
import com.taobao.ma.encode.InputParameters.LogoBWInputParameters;
import com.taobao.ma.encode.InputParameters.MaEncodeInputParameters;

public class MaGenerator {
    private static native byte[] generateBWQRCode(String str, String str2, int i, int i2, int i3, int i4, char c);

    private static native byte[] generateGen3Code(String str, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, char c, char c2, int i9, int i10, int i11);

    private static native byte[] generateLogoQRCode(String str, int i, int i2, int i3, byte[] bArr, int i4, int i5, int i6, int i7, int i8, int i9);

    static {
        MaLogger.v("MaGenerator: loading so files");
        if (!MaConfig.hasSoLoaded) {
            try {
                System.loadLibrary("tbdecode");
                MaConfig.hasSoLoaded = true;
            } catch (UnsatisfiedLinkError e) {
                MaLogger.e("Failed to load libtbdecode.so", e);
            }
        }
    }

    public static Bitmap facade(MaEncodeInputParameters inputParameters) {
        Log.v("masdk209", "facade");
        if (inputParameters.isLegal()) {
            try {
                int encodeWhat = inputParameters.type;
                if (encodeWhat == 0) {
                    Log.v("masdk209", "encodeWhat = " + inputParameters.type);
                    return __call_native_generateBWQRcode((Gen0InputParameters) inputParameters);
                } else if (encodeWhat == 1) {
                    return null;
                } else {
                    if (encodeWhat == 3) {
                        Log.v("masdk209", "encodeWhat = " + inputParameters.type);
                        return __call_native_generateGen3code((Gen3InputParameters) inputParameters);
                    } else if (encodeWhat == 4) {
                        return __call_native_generateLogoBWcode((LogoBWInputParameters) inputParameters);
                    } else {
                        return null;
                    }
                }
            } catch (Exception ex) {
                Log.v("Masdk_exception_log", ex.toString());
                return null;
            }
        }
        Log.v("masdk209", inputParameters.errorMsg);
        return null;
    }

    private static synchronized Bitmap __call_native_generateLogoBWcode(LogoBWInputParameters input) {
        Bitmap handleResult;
        synchronized (MaGenerator.class) {
            try {
                byte[] data = generateLogoQRCode(input.publicData, input.margin, input.qrSize, input.version, input.logoData, input.logoWidth, input.logoHeight, input.logoChannel, input.logoSize, input.logoX, input.logoY);
                int sqrt = (int) Math.sqrt((((double) data.length) / 3.0d) * 1.0d);
                handleResult = handleResult(data, sqrt, sqrt, 3);
            } catch (UnsatisfiedLinkError error) {
                MaLogger.v("Failed to load libtbdecode.so", error);
            } catch (Exception e) {
                MaLogger.v("Failed to load libtbdecode.so 2", e);
            }
        }
        return handleResult;
        handleResult = null;
        return handleResult;
    }

    private static synchronized Bitmap __call_native_generateGen3code(Gen3InputParameters input) {
        Bitmap handleResult;
        synchronized (MaGenerator.class) {
            try {
                byte[] data = generateGen3Code(input.publicData, input.bgImage_data, input.bgImage_width, input.bgImage_height, input.bgImage_channel, input.bgImage_step, input.qrX, input.qrY, input.qrSize, input.gen3format, input.domainIndex, input.errorCorrectionLevel, input.visual_level, input.version, input.type);
                int sqrt = (int) Math.sqrt((((double) data.length) / 3.0d) * 1.0d);
                handleResult = handleResult(data, sqrt, sqrt, input.bgImage_channel);
            } catch (Throwable error) {
                MaLogger.v("Failed to load libtbdecode.so", error);
            } catch (Throwable e) {
                MaLogger.v("Failed to load libtbdecode.so 2", e);
            }
        }
        return handleResult;
        handleResult = null;
        return handleResult;
    }

    private static synchronized Bitmap __call_native_generateBWQRcode(Gen0InputParameters input) {
        Bitmap handleGrayResult;
        synchronized (MaGenerator.class) {
            try {
                byte[] data = generateBWQRCode(input.publicData, input.hiddenData, input.margin, input.qrSize, input.version, input.rotation, input.errorCorrectionLevel);
                int sqrt = (int) Math.sqrt(((double) data.length) * 1.0d);
                handleGrayResult = handleGrayResult(data, sqrt, sqrt);
            } catch (UnsatisfiedLinkError error) {
                MaLogger.v("Failed to load libtbdecode.so", error);
            } catch (Exception e) {
                MaLogger.v("Failed to load libtbdecode.so 2", e);
            }
        }
        return handleGrayResult;
        handleGrayResult = null;
        return handleGrayResult;
    }

    private static Bitmap handleGrayResult(byte[] resultData, int width, int height) {
        if (resultData == null) {
            return null;
        }
        Bitmap resultBitm = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        int[] resultPixels = new int[(width * height)];
        int i = 0;
        int index = 0;
        while (i < resultData.length) {
            resultPixels[index] = ((ViewCompat.MEASURED_STATE_MASK + ((resultData[i] & 255) << 16)) + ((resultData[i] & 255) << 8)) + (resultData[i] & 255);
            i++;
            index++;
        }
        resultBitm.setPixels(resultPixels, 0, width, 0, 0, width, height);
        return resultBitm;
    }

    private static Bitmap handleResult(byte[] resultData, int width, int height, int numChannelForPixel) {
        if (resultData == null) {
            return null;
        }
        MaLogger.v("handle result not null , channel = " + numChannelForPixel + "w = " + width + "h = " + height + "length = " + resultData.length);
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
        MaLogger.v("before return result");
        return resultBitm;
    }
}
