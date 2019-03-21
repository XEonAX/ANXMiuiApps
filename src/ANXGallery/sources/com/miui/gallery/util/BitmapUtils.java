package com.miui.gallery.util;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.util.Log;
import com.miui.gallery.util.uil.CryptUtil;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;

public class BitmapUtils {
    static final /* synthetic */ boolean $assertionsDisabled = (!BitmapUtils.class.desiredAssertionStatus());
    private static final HashSet<String> REGION_DECODER_SUPPORTED_MIMETYPES = new HashSet();

    /* renamed from: com.miui.gallery.util.BitmapUtils$1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config = new int[Config.values().length];

        static {
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ARGB_4444.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.ARGB_8888.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Config.RGB_565.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public static class BitmapDimension {
        public int height;
        public int width;
    }

    static {
        REGION_DECODER_SUPPORTED_MIMETYPES.add("image/png");
        REGION_DECODER_SUPPORTED_MIMETYPES.add("image/jpeg");
        REGION_DECODER_SUPPORTED_MIMETYPES.add("image/jpg");
    }

    private BitmapUtils() {
    }

    public static float computeThumbNailScaleSize(int bitmapWidth, int bitmapHeight, int screenWidth, int screenHeight) {
        int minO = Math.min(bitmapWidth, bitmapHeight);
        int maxO = Math.max(bitmapWidth, bitmapHeight);
        return Math.min((((float) Math.min(screenWidth, screenHeight)) * 1.0f) / ((float) minO), (((float) Math.max(screenWidth, screenHeight)) * 1.0f) / ((float) maxO));
    }

    public static int computeThumbNailSampleSize(int bitmapWidth, int bitmapHeight, int screenWidth, int screenHeight) {
        return reviseSampleSize((int) Math.floor((double) (1.0f / computeThumbNailScaleSize(bitmapWidth, bitmapHeight, screenWidth, screenHeight))));
    }

    private static int reviseSampleSize(int sampleSize) {
        if (sampleSize <= 1) {
            sampleSize = 1;
        }
        if (sampleSize <= 8) {
            return Utils.prevPowerOf2(sampleSize);
        }
        return (sampleSize / 8) * 8;
    }

    public static Bitmap resizeBitmapByScale(Bitmap bitmap, float scale, boolean recycle) {
        int width = Math.round(((float) bitmap.getWidth()) * scale);
        int height = Math.round(((float) bitmap.getHeight()) * scale);
        if (width == bitmap.getWidth() && height == bitmap.getHeight()) {
            return bitmap;
        }
        Bitmap target = safeCreateBitmap(width, height, getConfig(bitmap));
        if (target != null) {
            Canvas canvas = new Canvas(target);
            canvas.scale(scale, scale);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(2));
            if (recycle) {
                bitmap.recycle();
            }
        }
        return target;
    }

    public static Config getConfig(Bitmap bitmap) {
        Config config = bitmap.getConfig();
        if (config == null) {
            return Config.ARGB_8888;
        }
        return config;
    }

    public static Bitmap fitBitmapToScreen(Bitmap bitmap, int screenWidth, int screenHeight, boolean recycle) {
        return resizeBitmapByScale(bitmap, computeThumbNailScaleSize(bitmap.getWidth(), bitmap.getHeight(), screenWidth, screenHeight), recycle);
    }

    public static boolean isBitmapInScreen(int bitmapWidth, int bitmapHeight, int screenWidth, int screenHeight) {
        return Math.min(bitmapWidth, bitmapHeight) <= Math.min(screenWidth, screenHeight) && Math.max(bitmapWidth, bitmapHeight) <= Math.max(screenWidth, screenHeight);
    }

    public static boolean isSupportedByRegionDecoder(String mimeType) {
        return REGION_DECODER_SUPPORTED_MIMETYPES.contains(mimeType);
    }

    public static boolean isRotationSupported(String mimeType) {
        if (mimeType == null) {
            return false;
        }
        mimeType = mimeType.toLowerCase();
        if (mimeType.equals("image/jpeg") || mimeType.equals("image/png") || mimeType.equals("image/bmp")) {
            return true;
        }
        return false;
    }

    public static byte[] compressToBytes(Bitmap bitmap, int quality) {
        if (!isValidate(bitmap)) {
            return null;
        }
        ByteArrayOutputStream baos = new ByteArrayOutputStream(65536);
        bitmap.compress(CompressFormat.JPEG, quality, baos);
        return baos.toByteArray();
    }

    public static Bitmap safeCreateBitmap(int width, int height, Config config) {
        Bitmap result = null;
        try {
            return Bitmap.createBitmap(width, height, config);
        } catch (OutOfMemoryError e) {
            Log.e("BitmapUtils", "safeCreateBitmap() failed OOM: %s", e);
            return result;
        } catch (Exception e2) {
            Log.e("BitmapUtils", "safeCreateBitmap() failed: %s", e2);
            return result;
        }
    }

    public static Bitmap safeCreateBitmap(Bitmap source, int x, int y, int width, int height) {
        Bitmap result = null;
        try {
            return Bitmap.createBitmap(source, x, y, width, height);
        } catch (OutOfMemoryError e) {
            Log.e("BitmapUtils", "safeCreateBitmap() failed OOM %s", e);
            return result;
        }
    }

    public static Bitmap safeDecodeRegion(BitmapRegionDecoder regionDecoder, Rect rect, Options options) {
        Bitmap result = null;
        try {
            return regionDecoder.decodeRegion(rect, options);
        } catch (OutOfMemoryError e) {
            Log.e("BitmapUtils", "safeDecodeRegion() failed OOM %s", e);
            return result;
        } catch (Exception e2) {
            Log.e("BitmapUtils", "safeDecodeRegion() failed %s", e2);
            return result;
        }
    }

    public static BitmapRegionDecoder safeCreateBitmapRegionDecoder(String path, boolean shareable, byte[] secretKey) {
        BitmapRegionDecoder decoder = null;
        InputStream inputStream = null;
        try {
            inputStream = createInputStream(path, secretKey);
            decoder = BitmapRegionDecoder.newInstance(inputStream, shareable);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e);
                }
            }
        } catch (OutOfMemoryError e2) {
            Log.e("BitmapUtils", "safeCreateBitmapRegionDecoder() failed OOM %s", e2);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e3);
                }
            }
        } catch (Exception e4) {
            Log.e("BitmapUtils", "safeCreateBitmapRegionDecoder() failed %s", e4);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e32) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e32);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e322) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e322);
                }
            }
        }
        return decoder;
    }

    public static Bitmap safeDecodeBitmap(String path, Options options, byte[] secretKey) {
        Bitmap bitmap = null;
        InputStream inputStream = null;
        try {
            inputStream = createInputStream(path, secretKey);
            bitmap = BitmapFactory.decodeStream(inputStream, null, options);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e);
                }
            }
        } catch (OutOfMemoryError e2) {
            Log.e("BitmapUtils", "safeDecodeBitmap() failed OOM %s", e2);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e3);
                }
            }
        } catch (Exception e4) {
            Log.e("BitmapUtils", "safeDecodeBitmap() failed %s", e4);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e32) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e32);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e322) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e322);
                }
            }
        }
        return bitmap;
    }

    public static Bitmap safeDecodeBitmap(ContentResolver cr, Uri url) {
        Bitmap bitmap = null;
        InputStream inputStream = null;
        try {
            inputStream = cr.openInputStream(url);
            bitmap = BitmapFactory.decodeStream(inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e);
                }
            }
        } catch (OutOfMemoryError e2) {
            Log.e("BitmapUtils", "safeDecodeBitmap() failed OOM %s", e2);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e3);
                }
            }
        } catch (Exception e4) {
            Log.e("BitmapUtils", "safeDecodeBitmap() failed %s", e4);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e32) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e32);
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e322) {
                    Log.e("BitmapUtils", "close inputStream failed %s", e322);
                }
            }
        }
        return bitmap;
    }

    public static InputStream createInputStream(String filePath, byte[] secretKey) throws IOException {
        if (secretKey != null) {
            return CryptUtil.getDecryptCipherInputStream(filePath, secretKey);
        }
        return new FileInputStream(filePath);
    }

    public static Bitmap safeCreateBitmap(Bitmap source, int x, int y, int width, int height, Matrix m, boolean filter, Config newConfig) {
        if (!isValidate(source)) {
            return null;
        }
        if (!source.isMutable() && source.getConfig() == newConfig && x == 0 && y == 0 && width == source.getWidth() && height == source.getHeight() && (m == null || m.isIdentity())) {
            return source;
        }
        Bitmap bitmap;
        Paint paint;
        int neww = width;
        int newh = height;
        RectF deviceR = null;
        Rect srcR = new Rect(x, y, x + width, y + height);
        RectF dstR = new RectF(0.0f, 0.0f, (float) width, (float) height);
        if (m == null || m.isIdentity()) {
            bitmap = Bitmap.createBitmap(neww, newh, newConfig);
            paint = null;
        } else {
            boolean transformed = !m.rectStaysRect();
            deviceR = new RectF();
            m.mapRect(deviceR, dstR);
            bitmap = Bitmap.createBitmap(Math.round(deviceR.width()), Math.round(deviceR.height()), newConfig);
            paint = new Paint();
            paint.setFilterBitmap(filter);
            if (transformed) {
                paint.setAntiAlias(true);
            }
        }
        bitmap.setDensity(source.getDensity());
        boolean z = (bitmap.getConfig() == Config.ARGB_8888 && bitmap.hasAlpha()) || source.isPremultiplied();
        bitmap.setPremultiplied(z);
        Canvas canvas = new Canvas(bitmap);
        if (deviceR != null) {
            canvas.translate(-deviceR.left, -deviceR.top);
            canvas.concat(m);
        }
        canvas.drawBitmap(source, srcR, dstR, paint);
        canvas.setBitmap(null);
        return bitmap;
    }

    public static boolean isValidate(Bitmap bitmap) {
        return (bitmap == null || bitmap.isRecycled()) ? false : true;
    }

    public static boolean isValidate(BitmapRegionDecoder regionDecoder) {
        return (regionDecoder == null || regionDecoder.isRecycled()) ? false : true;
    }

    public static short getConfigSize(Config config) {
        switch (AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()]) {
            case 1:
                return (short) 1;
            case 2:
            case 5:
                return (short) 2;
            case 3:
                return (short) 4;
            case 4:
                return (short) 8;
            default:
                return (short) 0;
        }
    }
}
