package com.nexstreaming.app.common.nexasset.assetpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.Log;
import com.larvalabs.svgandroid.SVGParser;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

/* compiled from: IconHelper */
public class e {
    public static Bitmap a(Context context, f fVar, int i, int i2) throws IOException {
        return a(context, fVar, fVar.getIconPath(), i, i2);
    }

    public static Bitmap b(Context context, f fVar, int i, int i2) throws IOException {
        return a(context, fVar, fVar.getThumbPath(), i, i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0104  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static Bitmap a(Context context, f fVar, String str, int i, int i2) throws IOException {
        Bitmap bitmap;
        Throwable th;
        Paint paint;
        Bitmap bitmap2;
        Throwable th2;
        try {
            InputStream a = AssetPackageReader.a(context, fVar.getPackageURI(), fVar.getAssetPackage().getAssetId()).a(str);
            Bitmap bitmap3 = null;
            Canvas canvas;
            try {
                if (str.toLowerCase(Locale.ENGLISH).endsWith(".svg")) {
                    Picture b = SVGParser.a(a).b();
                    if (i <= 0 || i2 <= 0) {
                        bitmap3 = Bitmap.createBitmap(b.getWidth(), b.getHeight(), Config.ARGB_8888);
                        canvas = new Canvas(bitmap3);
                        b.draw(canvas);
                    } else {
                        int width = (int) ((((float) i) / ((float) b.getWidth())) * ((float) b.getHeight()));
                        bitmap3 = Bitmap.createBitmap(i, width, Config.ARGB_8888);
                        try {
                            canvas = new Canvas(bitmap3);
                        } catch (Throwable e) {
                            bitmap = bitmap3;
                            th = e;
                            canvas = null;
                            try {
                                Log.e("IconHelper", th.getMessage(), th);
                                a.close();
                                if (fVar.getCategory() != ItemCategory.transition) {
                                    return bitmap;
                                }
                                paint = new Paint();
                                if (canvas == null) {
                                    canvas = new Canvas(bitmap);
                                }
                                paint.setColor(-1);
                                paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                                canvas.drawRect(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight(), paint);
                                return bitmap;
                            } catch (Throwable th3) {
                                bitmap2 = bitmap;
                                th2 = th3;
                                a.close();
                                if (fVar.getCategory() == ItemCategory.transition) {
                                    paint = new Paint();
                                    if (canvas == null) {
                                        canvas = new Canvas(bitmap2);
                                    }
                                    paint.setColor(-1);
                                    paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                                    canvas.drawRect(0.0f, 0.0f, (float) bitmap2.getWidth(), (float) bitmap2.getHeight(), paint);
                                }
                                throw th2;
                            }
                        } catch (Throwable e2) {
                            th2 = e2;
                            bitmap2 = bitmap3;
                            canvas = null;
                            a.close();
                            if (fVar.getCategory() == ItemCategory.transition) {
                            }
                            throw th2;
                        }
                        try {
                            canvas.drawPicture(b, new RectF(0.0f, 0.0f, (float) i, (float) width));
                        } catch (Throwable e3) {
                            bitmap = bitmap3;
                            th3 = e3;
                        } catch (Throwable e32) {
                            th2 = e32;
                            bitmap2 = bitmap3;
                            a.close();
                            if (fVar.getCategory() == ItemCategory.transition) {
                            }
                            throw th2;
                        }
                    }
                    bitmap = bitmap3;
                } else {
                    canvas = null;
                    bitmap = BitmapFactory.decodeStream(a).copy(Config.ARGB_8888, true);
                }
                a.close();
                if (fVar.getCategory() != ItemCategory.transition) {
                    return bitmap;
                }
                paint = new Paint();
                if (canvas == null) {
                    canvas = new Canvas(bitmap);
                }
                paint.setColor(-1);
                paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
                canvas.drawRect(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight(), paint);
                return bitmap;
            } catch (Throwable e22) {
                bitmap = bitmap3;
                th3 = e22;
                canvas = null;
            } catch (Throwable e222) {
                th2 = e222;
                bitmap2 = bitmap3;
                canvas = null;
                a.close();
                if (fVar.getCategory() == ItemCategory.transition) {
                }
                throw th2;
            }
        } catch (FileNotFoundException e4) {
            return null;
        }
    }
}
