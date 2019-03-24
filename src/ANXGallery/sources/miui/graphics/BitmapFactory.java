package miui.graphics;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import com.miui.internal.R;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.regex.Pattern;
import miui.io.ResettableInputStream;
import miui.util.AppConstants;
import miui.util.AttributeResolver;
import miui.util.Utf8TextUtils;
import miui.util.ViewUtils;

public class BitmapFactory extends android.graphics.BitmapFactory {
    public static final int BITMAP_COLOR_MODE_DARK = 0;
    public static final int BITMAP_COLOR_MODE_LIGHT = 2;
    public static final int BITMAP_COLOR_MODE_MEDIUM = 1;
    public static final int MODE_DARK = 1;
    public static final int MODE_DAYNIGHT = 2;
    public static final int MODE_LIGHT = 0;
    static RenderScript yd;
    static Object ye = new Object();
    private static byte[] yf = new byte[]{(byte) -119, (byte) 80, (byte) 78, (byte) 71, (byte) 13, (byte) 10, (byte) 26, (byte) 10};
    private static final ThreadLocal<Canvas> yg = new ThreadLocal();
    private static final Paint yh = new Paint(1);
    private static final Pattern yi = Pattern.compile("[㄀-ㄭㆠ-ㆺ一-鿌㐀-䶵豈-龎⼀-⿕⺀-⻳㇀-㇣ᄀ-ᇿꥠ-ꥼힰ-ퟻㄱ-ㆎ가-힣぀-ゟ゠-ヿㇰ-ㇿ㆐-㆟ꀀ-ꒌ꒐-꓆]");
    private static final String[] yj = new String[]{"老师", "先生", "老板", "仔", "手机", "叔", "阿姨", "宅", "伯", "伯母", "伯父", "哥", "姐", "弟", "妹", "舅", "姑", "父", "主任", "经理", "工作", "同事", "律师", "司机", "师傅", "师父", "爷", "奶", "中介", "董", "总", "太太", "保姆", "某", "秘书", "处长", "局长", "班长", "兄", "助理"};

    public static class CropOption {
        public int borderColor;
        public int borderWidth;
        public int rx;
        public int ry;
        public Rect srcBmpDrawingArea;

        public CropOption(int i, int i2, int i3, int i4) {
            this.rx = i;
            this.ry = i2;
            this.borderWidth = i3;
            this.borderColor = i4;
        }

        public CropOption(CropOption cropOption) {
            this.rx = cropOption.rx;
            this.ry = cropOption.ry;
            this.borderWidth = cropOption.borderWidth;
            this.borderColor = cropOption.borderColor;
            this.srcBmpDrawingArea = cropOption.srcBmpDrawingArea;
        }
    }

    private static native void native_fastBlur(Bitmap bitmap, Bitmap bitmap2, int i);

    static {
        if (VERSION.SDK_INT < 17) {
            System.loadLibrary("miuiimageutilities");
        }
        yh.setFilterBitmap(true);
        yh.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
    }

    protected BitmapFactory() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    private static int a(ResettableInputStream resettableInputStream, int i) {
        if (i <= 0) {
            return 1;
        }
        Options bitmapSize = getBitmapSize(resettableInputStream);
        return (int) Math.sqrt((((double) bitmapSize.outWidth) * ((double) bitmapSize.outHeight)) / ((double) i));
    }

    public static Options getBitmapSize(ResettableInputStream resettableInputStream) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        decodeStream(resettableInputStream, null, options);
        return options;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Options getBitmapSize(String str) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(str);
            try {
                Options bitmapSize = getBitmapSize(resettableInputStream2);
                resettableInputStream2.close();
                return bitmapSize;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Options getBitmapSize(Context context, Uri uri) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(context, uri);
            try {
                Options bitmapSize = getBitmapSize(resettableInputStream2);
                resettableInputStream2.close();
                return bitmapSize;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0017  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeBitmap(String str, boolean z) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(str);
            try {
                Bitmap decodeBitmap = decodeBitmap(resettableInputStream2, -1, z);
                resettableInputStream2.close();
                return decodeBitmap;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                    resettableInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeBitmap(String str, int i, int i2, boolean z) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(str);
            try {
                Bitmap decodeBitmap = decodeBitmap(resettableInputStream2, i, i2, z);
                resettableInputStream2.close();
                return decodeBitmap;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0017  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeBitmap(Context context, Uri uri, boolean z) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(context, uri);
            try {
                Bitmap decodeBitmap = decodeBitmap(resettableInputStream2, -1, z);
                resettableInputStream2.close();
                return decodeBitmap;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                    resettableInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeBitmap(Context context, Uri uri, int i, int i2, boolean z) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(context, uri);
            try {
                Bitmap decodeBitmap = decodeBitmap(resettableInputStream2, i, i2, z);
                resettableInputStream2.close();
                return decodeBitmap;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeBitmap(String str, int i, boolean z) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(str);
            try {
                Bitmap decodeBitmap = decodeBitmap(resettableInputStream2, i, z);
                resettableInputStream2.close();
                return decodeBitmap;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeBitmap(Context context, Uri uri, int i, boolean z) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(context, uri);
            try {
                Bitmap decodeBitmap = decodeBitmap(resettableInputStream2, i, z);
                resettableInputStream2.close();
                return decodeBitmap;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    public static Bitmap decodeBitmap(ResettableInputStream resettableInputStream, int i, boolean z) throws IOException {
        Bitmap bitmap;
        Options options = new Options();
        options.inSampleSize = 1;
        int i2 = 0;
        options.inScaled = false;
        options.inSampleSize = a(resettableInputStream, i);
        while (true) {
            i = i2 + 1;
            bitmap = null;
            if (i2 >= 3) {
                break;
            }
            try {
                resettableInputStream.reset();
                bitmap = decodeStream(resettableInputStream, null, options);
                break;
            } catch (OutOfMemoryError e) {
                if (z) {
                    options.inSampleSize *= 2;
                    i2 = i;
                } else {
                    throw e;
                }
            }
        }
        return bitmap;
    }

    public static Bitmap decodeBitmap(ResettableInputStream resettableInputStream, int i, int i2, boolean z) throws IOException {
        int i3 = i * i2;
        if (i <= 0 || i2 <= 0) {
            i3 = -1;
        }
        Bitmap decodeBitmap = decodeBitmap(resettableInputStream, i3, z);
        if (decodeBitmap == null) {
            return null;
        }
        if (i3 > 0) {
            Bitmap scaleBitmap = scaleBitmap(decodeBitmap, i, i2);
            if (decodeBitmap != scaleBitmap) {
                decodeBitmap.recycle();
            }
            decodeBitmap = scaleBitmap;
        }
        return decodeBitmap;
    }

    public static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        if (bitmap == null) {
            return null;
        }
        if (!(bitmap.getWidth() == i && bitmap.getHeight() == i2)) {
            Config config = Config.ARGB_8888;
            if (bitmap.getConfig() != null) {
                config = bitmap.getConfig();
            }
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
            scaleBitmap(bitmap, createBitmap);
            bitmap = createBitmap;
        }
        return bitmap;
    }

    public static Bitmap scaleBitmap(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null || bitmap2 == null) {
            return null;
        }
        if (!(bitmap.getWidth() == bitmap2.getWidth() && bitmap.getHeight() == bitmap2.getHeight())) {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawARGB(0, 0, 0, 0);
            Paint paint = new Paint();
            paint.setFilterBitmap(true);
            paint.setAntiAlias(true);
            paint.setDither(true);
            canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight()), paint);
            bitmap = bitmap2;
        }
        return bitmap;
    }

    public static Bitmap cropBitmap(Bitmap bitmap, CropOption cropOption) {
        if (bitmap != null) {
            return cropBitmap(bitmap, a(bitmap), cropOption);
        }
        return null;
    }

    public static Bitmap cropBitmap(Bitmap bitmap, Bitmap bitmap2, CropOption cropOption) {
        Bitmap bitmap3 = bitmap2;
        if (bitmap == null || bitmap3 == null) {
            return null;
        }
        CropOption cropOption2;
        if (cropOption == null) {
            cropOption2 = new CropOption();
        } else {
            cropOption2 = cropOption;
        }
        Rect rect = cropOption2.srcBmpDrawingArea;
        if (rect == null) {
            rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        int d = d(0, bitmap.getWidth() - 1, rect.left);
        int d2 = d(d, bitmap.getWidth(), rect.right);
        int d3 = d(0, bitmap.getHeight() - 1, rect.top);
        int d4 = d(d3, bitmap.getHeight(), rect.bottom);
        int i = d2 - d;
        int i2 = d4 - d3;
        int width = bitmap2.getWidth();
        int height = bitmap2.getHeight();
        cropOption2.borderWidth = d(0, Math.min(width, height) / 2, cropOption2.borderWidth);
        cropOption2.rx = d(0, width / 2, cropOption2.rx);
        cropOption2.ry = d(0, height / 2, cropOption2.ry);
        Paint paint = new Paint();
        paint.setFilterBitmap(true);
        paint.setAntiAlias(true);
        paint.setDither(true);
        Canvas canvas = new Canvas(bitmap3);
        canvas.drawARGB(0, 0, 0, 0);
        if (cropOption2.rx - cropOption2.borderWidth > 0 && cropOption2.ry - cropOption2.borderWidth > 0) {
            canvas.drawRoundRect(new RectF((float) cropOption2.borderWidth, (float) cropOption2.borderWidth, (float) (width - cropOption2.borderWidth), (float) (height - cropOption2.borderWidth)), (float) (cropOption2.rx - cropOption2.borderWidth), (float) (cropOption2.ry - cropOption2.borderWidth), paint);
            paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        }
        float f = (float) i;
        float f2 = (float) (width - (2 * cropOption2.borderWidth));
        float f3 = (float) i2;
        float f4 = (float) (height - (2 * cropOption2.borderWidth));
        float min = Math.min((1.0f * f) / f2, (1.0f * f3) / f4);
        int i3 = (int) ((f - (f2 * min)) / 2.0f);
        int i4 = (int) ((f3 - (f4 * min)) / 2.0f);
        canvas.drawBitmap(bitmap, new Rect(d + i3, d3 + i4, d2 - i3, d4 - i4), new Rect(cropOption2.borderWidth, cropOption2.borderWidth, width - cropOption2.borderWidth, height - cropOption2.borderWidth), paint);
        if (cropOption2.borderWidth > 0 && (cropOption2.borderColor >>> 24) != 0) {
            paint.setColor(cropOption2.borderColor);
            paint.setXfermode(new PorterDuffXfermode(Mode.DST_OVER));
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, (float) width, (float) height), (float) cropOption2.rx, (float) cropOption2.ry, paint);
        }
        return bitmap2;
    }

    private static int d(int i, int i2, int i3) {
        return Math.min(i2, Math.max(i, i3));
    }

    public static boolean saveToFile(Bitmap bitmap, String str) throws IOException {
        return saveToFile(bitmap, str, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0020  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean saveToFile(Bitmap bitmap, String str, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        Throwable th;
        if (bitmap == null) {
            return false;
        }
        try {
            CompressFormat compressFormat;
            fileOutputStream = new FileOutputStream(str);
            if (z) {
                try {
                    compressFormat = CompressFormat.PNG;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            }
            compressFormat = CompressFormat.JPEG;
            bitmap.compress(compressFormat, 100, fileOutputStream);
            fileOutputStream.close();
            return true;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isPngFormat(Context context, Uri uri) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(context, uri);
            try {
                boolean isPngFormat = isPngFormat(resettableInputStream2);
                resettableInputStream2.close();
                return isPngFormat;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0016  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean isPngFormat(String str) throws IOException {
        Throwable th;
        ResettableInputStream resettableInputStream = null;
        try {
            ResettableInputStream resettableInputStream2 = new ResettableInputStream(str);
            try {
                boolean isPngFormat = isPngFormat(resettableInputStream2);
                resettableInputStream2.close();
                return isPngFormat;
            } catch (Throwable th2) {
                th = th2;
                resettableInputStream = resettableInputStream2;
                if (resettableInputStream != null) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (resettableInputStream != null) {
                resettableInputStream.close();
            }
            throw th;
        }
    }

    public static boolean isPngFormat(ResettableInputStream resettableInputStream) throws IOException {
        byte[] bArr = new byte[yf.length];
        if (resettableInputStream.read(bArr) >= bArr.length) {
            return a(bArr);
        }
        return false;
    }

    private static boolean a(byte[] bArr) {
        if (bArr == null || bArr.length < yf.length) {
            return false;
        }
        for (int i = 0; i < yf.length; i++) {
            if (bArr[i] != yf[i]) {
                return false;
            }
        }
        return true;
    }

    private static Bitmap a(Bitmap bitmap) {
        Config config = Config.ARGB_8888;
        if (bitmap.getConfig() != null) {
            config = bitmap.getConfig();
        }
        return Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), config);
    }

    public static Bitmap fastBlur(Bitmap bitmap, int i) {
        Bitmap a = a(bitmap);
        fastBlur(bitmap, a, i);
        return a;
    }

    public static Bitmap fastBlur(Bitmap bitmap, Bitmap bitmap2, int i) {
        if (bitmap == null) {
            return null;
        }
        if (!(bitmap2 != null && bitmap.getWidth() == bitmap2.getWidth() && bitmap.getHeight() == bitmap2.getHeight())) {
            bitmap2 = a(bitmap);
        }
        if (VERSION.SDK_INT >= 17) {
            a(bitmap, bitmap2, i);
        } else {
            native_fastBlur(bitmap, bitmap2, i);
        }
        return bitmap2;
    }

    private static Bitmap a(Bitmap bitmap, Bitmap bitmap2, int i) {
        Bitmap bitmap3;
        int i2 = 1;
        while (i > 25) {
            i2 *= 2;
            i /= 2;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i2 == 1) {
            bitmap3 = bitmap;
        } else {
            bitmap3 = scaleBitmap(bitmap, Math.max(width / i2, 1), Math.max(height / i2, 1));
        }
        Context currentApplication = AppConstants.getCurrentApplication();
        if (currentApplication.getApplicationContext() == null) {
            currentApplication = new ContextWrapper(currentApplication) {
                public Context getApplicationContext() {
                    return this;
                }
            };
        }
        try {
            for (Object obj : currentApplication.getClassLoader().loadClass("android.graphics.Bitmap$Config").getEnumConstants()) {
                Enum enumR = (Enum) obj;
                if ("RGBA_F16".equals(enumR.name()) && bitmap3.getConfig() == enumR) {
                    bitmap3 = b(bitmap3);
                    break;
                }
            }
        } catch (Exception e) {
        }
        synchronized (ye) {
            if (yd == null) {
                yd = RenderScript.create(currentApplication);
            }
            Bitmap bitmap4 = i2 == 1 ? bitmap2 : bitmap3;
            if (bitmap3.getRowBytes() != bitmap4.getRowBytes()) {
                bitmap3 = bitmap3.copy(Config.ARGB_8888, true);
            }
            Allocation createFromBitmap = Allocation.createFromBitmap(yd, bitmap3);
            Allocation createTyped = Allocation.createTyped(yd, createFromBitmap.getType());
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(yd, Element.U8_4(yd));
            create.setRadius((float) i);
            create.setInput(createFromBitmap);
            create.forEach(createTyped);
            createTyped.copyTo(bitmap4);
            if (bitmap4 != bitmap2) {
                scaleBitmap(bitmap4, bitmap2);
            }
            if (bitmap3 != bitmap) {
                bitmap3.recycle();
            }
            if (bitmap4 != bitmap2) {
                bitmap4.recycle();
            }
            createFromBitmap.destroy();
            createTyped.destroy();
            create.destroy();
        }
        return bitmap2;
    }

    private static Bitmap b(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width == 0 || height == 0) {
            return bitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setFlags(3);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    private static Canvas cm() {
        Canvas canvas = (Canvas) yg.get();
        if (canvas != null) {
            return canvas;
        }
        canvas = new Canvas();
        yg.set(canvas);
        return canvas;
    }

    public static Bitmap createPhoto(Context context, Bitmap bitmap) {
        return createPhoto(context, bitmap, context.getResources().getDimensionPixelSize(R.dimen.contact_photo_width));
    }

    public static Bitmap createPhoto(Context context, Bitmap bitmap, int i) {
        Resources resources = context.getResources();
        return composeBitmap(bitmap, null, resources.getDrawable(R.drawable.ic_contact_photo_mask), resources.getDrawable(R.drawable.ic_contact_photo_fg), resources.getDrawable(R.drawable.ic_contact_photo_bg), i);
    }

    public static Bitmap composeBitmap(Bitmap bitmap, Bitmap bitmap2, Drawable drawable, Drawable drawable2, Drawable drawable3) {
        Rect rect;
        Rect rect2 = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        if (bitmap2 != null) {
            rect = new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
        } else {
            rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        return composeBitmap(bitmap, bitmap2, drawable, drawable2, drawable3, rect2, rect);
    }

    public static Bitmap composeBitmap(Bitmap bitmap, Bitmap bitmap2, Drawable drawable, Drawable drawable2, Drawable drawable3, int i) {
        return composeBitmap(bitmap, bitmap2, drawable, drawable2, drawable3, null, new Rect(0, 0, i, i));
    }

    public static Bitmap composeBitmap(Bitmap bitmap, Bitmap bitmap2, Drawable drawable, Drawable drawable2, Drawable drawable3, Rect rect, Rect rect2) {
        if (bitmap2 == null && rect2 == null) {
            return null;
        }
        if (bitmap2 == null) {
            if (rect2.height() <= 0 || rect2.width() <= 0) {
                return null;
            }
            bitmap2 = Bitmap.createBitmap(rect2.width(), rect2.height(), Config.ARGB_8888);
        } else if (rect2 == null) {
            rect2 = new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
        }
        bitmap = maskOutBitmap(bitmap, drawable, null, rect, rect2);
        Canvas cm = cm();
        cm.setBitmap(bitmap2);
        if (drawable3 != null) {
            drawable3.setBounds(rect2);
            drawable3.draw(cm);
        }
        cm.drawBitmap(bitmap, rect2, rect2, null);
        bitmap.recycle();
        if (drawable2 != null) {
            drawable2.setBounds(rect2);
            drawable2.draw(cm);
        }
        return bitmap2;
    }

    public static Bitmap maskOutBitmap(Bitmap bitmap, Drawable drawable, Bitmap bitmap2, Rect rect, Rect rect2) {
        if (bitmap2 == null && rect2 == null) {
            return null;
        }
        int i = 0;
        if (bitmap2 == null) {
            if (rect2.height() <= 0 || rect2.width() <= 0) {
                return null;
            }
            bitmap2 = Bitmap.createBitmap(rect2.width(), rect2.height(), Config.ARGB_8888);
        } else if (rect2 == null) {
            rect2 = new Rect(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
        }
        Canvas cm = cm();
        cm.setBitmap(bitmap2);
        cm.drawColor(0, Mode.CLEAR);
        if (drawable != null) {
            drawable.setBounds(rect2);
            drawable.draw(cm);
        }
        if (rect == null) {
            int i2;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            float height2 = (float) rect2.height();
            float width2 = (float) rect2.width();
            float f = height2 / width2;
            float f2 = (float) width;
            width2 = f2 / width2;
            float f3 = (float) height;
            height2 = f3 / height2;
            if (width2 > height2) {
                i2 = (int) (f3 / f);
                i = (width - i2) / 2;
                width = i2;
                i2 = height;
                height = 0;
            } else if (width2 < height2) {
                i2 = (int) (f * f2);
                height = (height - i2) / 2;
            } else {
                i2 = height;
                height = 0;
            }
            rect = new Rect(i, height, width + i, i2 + height);
        }
        cm.drawBitmap(bitmap, rect, rect2, yh);
        return bitmap2;
    }

    @Deprecated
    public static Bitmap createNameBitmap(Context context, String str, int i) {
        return createNameBitmap(context, str, i, 0, 0);
    }

    @Deprecated
    public static Bitmap createNameBitmap(Context context, String str, int i, int i2, int i3) {
        return createNameBitmap(context, str, i, i2, i3, 0);
    }

    public static Bitmap createNameBitmap(Context context, String str, int i, int i2) {
        return createNameBitmap(context, str, i, 0, 0, i2);
    }

    public static Bitmap createNameBitmap(Context context, String str, int i, int i2, int i3, int i4) {
        if (str == null) {
            return null;
        }
        str = v(str.trim());
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Drawable drawable;
        StringBuilder stringBuilder;
        int color;
        if (i2 != 0) {
            drawable = context.getResources().getDrawable(i2);
        } else if (i4 == 0) {
            drawable = context.getResources().getDrawable(R.drawable.word_photo_bg_light);
        } else if (1 == i4) {
            drawable = context.getResources().getDrawable(R.drawable.word_photo_bg_dark);
        } else if (2 == i4) {
            drawable = AttributeResolver.resolveDrawable(context, R.attr.wordPhotoBackground);
            if (drawable == null) {
                if (ViewUtils.isNightMode(context)) {
                    drawable = context.getResources().getDrawable(R.drawable.word_photo_bg_dark);
                } else {
                    drawable = context.getResources().getDrawable(R.drawable.word_photo_bg_light);
                }
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("unknown mode when get drawable: ");
            stringBuilder.append(i4);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        drawable.setBounds(new Rect(0, 0, i, i));
        if (i3 != 0) {
            color = context.getResources().getColor(i3);
        } else if (i4 == 0) {
            color = context.getResources().getColor(miui.R.color.word_photo_color);
        } else if (1 == i4) {
            color = context.getResources().getColor(R.color.word_photo_color_dark);
        } else if (2 == i4) {
            try {
                i4 = AttributeResolver.resolveColor(context, R.attr.wordPhotoTextColor);
            } catch (Exception e) {
                i4 = -1;
            }
            if (i4 != -1) {
                color = i4;
            } else if (ViewUtils.isNightMode(context)) {
                color = context.getResources().getColor(R.color.word_photo_color_dark);
            } else {
                color = context.getResources().getColor(miui.R.color.word_photo_color);
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("unknown mode when get photo color: ");
            stringBuilder.append(i4);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.draw(canvas);
        Paint paint = new Paint(1);
        paint.setFilterBitmap(true);
        paint.setColor(color);
        paint.setTextSize(((float) i) * 0.6f);
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, (float) ((int) (((double) (i - (rect.right + rect.left))) * 0.5d)), (float) ((int) (((double) (i - (rect.top + rect.bottom))) * 0.5d)), paint);
        return createBitmap;
    }

    private static String v(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!w(str)) {
            return Utf8TextUtils.subString(str, 0, 1).toUpperCase();
        }
        str = x(str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int length = str.length();
        return str.substring(length - 1, length).trim();
    }

    private static boolean w(String str) {
        return yi.matcher(str).find();
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0058 A:{LOOP_END, LOOP:1: B:6:0x000f->B:17:0x0058} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x005b A:{SYNTHETIC, EDGE_INSN: B:31:0x005b->B:18:0x005b ?: BREAK  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static String x(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = str;
        do {
            String str3 = str2;
            int i = 0;
            int i2 = i;
            while (i < yj.length) {
                if (str3.endsWith(yj[i])) {
                    str3 = str3.substring(0, str3.length() - yj[i].length());
                } else {
                    if (!w(String.valueOf(str3.charAt(str3.length() - 1)))) {
                        str3 = str3.substring(0, str3.length() - 1);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        break;
                    }
                    i++;
                }
                i2 = 1;
                if (!TextUtils.isEmpty(str3)) {
                }
            }
            str2 = str3;
            if (i2 == 0) {
                break;
            }
        } while (!TextUtils.isEmpty(str2));
        if (str2 != null) {
            str2 = str2.trim();
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = str.substring(str.length() - 1);
        }
        return str2;
    }

    public static int getBitmapColorMode(Bitmap bitmap, int i) {
        Bitmap bitmap2 = bitmap;
        int height = bitmap.getHeight() / i;
        int width = bitmap.getWidth() / i;
        int i2 = (width * height) / 5;
        Bitmap scaleBitmap = scaleBitmap(bitmap2, width, height);
        int i3 = 2;
        int i4 = 0;
        int i5 = i4;
        while (i4 < width) {
            int i6 = i3;
            for (i3 = 0; i3 < height; i3++) {
                int pixel = scaleBitmap.getPixel(i4, i3);
                if (((int) (((((double) ((float) ((16711680 & pixel) >> 16))) * 0.3d) + (((double) ((float) ((65280 & pixel) >> 8))) * 0.59d)) + (((double) ((float) (pixel & 255))) * 0.11d))) < nexClip.kClip_Rotate_180) {
                    i5++;
                    if (i5 > i2) {
                        i6 = 1;
                    }
                    if (i5 > i2 * 2) {
                        i3 = 0;
                        break;
                    }
                }
            }
            i3 = i6;
            i4++;
        }
        if (scaleBitmap != bitmap2) {
            scaleBitmap.recycle();
        }
        return i3;
    }
}
