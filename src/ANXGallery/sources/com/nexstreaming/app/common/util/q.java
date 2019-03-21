package com.nexstreaming.app.common.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BlurMaskFilter;
import android.graphics.BlurMaskFilter.Blur;
import android.graphics.Canvas;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Log;
import com.nexstreaming.nexeditorsdk.nexFont;
import com.nexstreaming.nexeditorsdk.nexOverlayImage.runTimeMakeBitMap;

/* compiled from: utilityTextOverlay */
public class q implements runTimeMakeBitMap {
    private Context a;
    private String b;
    private int c;
    private int d;
    private int e;
    private transient int f;
    private transient int g;
    private transient boolean h;
    private transient StaticLayout i;
    private float j;
    private a k = null;
    private c l = null;
    private b m = null;
    private d n;
    private TextPaint o;

    /* compiled from: utilityTextOverlay */
    private class a {
        private float b;
        private Align c;
        private int d;
        private String e;
        private int f;

        public a(float f, int i, Align align, String str, int i2) {
            this.b = f;
            this.d = i;
            this.c = align;
            this.e = str;
            this.f = i2;
        }
    }

    /* compiled from: utilityTextOverlay */
    private class b {
        private boolean b;
        private int c;
        private float d;

        public b(boolean z, int i, float f) {
            this.b = z;
            this.c = i;
            this.d = f;
        }
    }

    /* compiled from: utilityTextOverlay */
    private class c {
        private boolean b;
        private int c;
        private float d;

        public c(boolean z, int i, float f) {
            this.b = z;
            this.c = i;
            this.d = f;
        }
    }

    /* compiled from: utilityTextOverlay */
    private class d {
        private boolean b;
        private int c;
        private float d;
        private float e;
        private float f;

        public d(boolean z, int i, float f, float f2, float f3) {
            this.b = z;
            this.c = i;
            this.d = f;
            this.e = f2;
            this.f = f3;
        }
    }

    public q(Context context, String str, int i, int i2, float f) {
        this.a = context;
        this.b = str;
        this.d = i;
        this.e = i2;
        this.j = f;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(float f, int i, Align align, String str, int i2) {
        this.k = new a(f, i, align, str, i2);
    }

    public void a(boolean z, int i, float f) {
        this.l = new c(z, i, f);
    }

    public void b(boolean z, int i, float f) {
        this.m = new b(z, i, f);
    }

    public void a(boolean z, int i, float f, float f2, float f3) {
        this.n = new d(z, i, f, f2, f3);
    }

    private Bitmap a() {
        d();
        Bitmap createBitmap = Bitmap.createBitmap((int) (((float) this.f) * this.j), (int) (((float) this.e) * this.j), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(this.j, this.j);
        canvas.translate((float) c(), (float) c());
        Typeface typeface = nexFont.getTypeface(this.a, this.k.e);
        if (typeface == null) {
            typeface = Typeface.createFromAsset(this.a.getAssets(), this.k.e);
        }
        TextPaint paint = this.i.getPaint();
        paint.setStyle(Style.FILL);
        paint.setTypeface(typeface);
        if (this.k.c == Align.RIGHT) {
            paint.setTextAlign(Align.LEFT);
        }
        if (this.k.f != 1) {
            if (this.k.f == 2) {
                canvas.translate(0.0f, ((((float) this.e) * this.j) - (((float) this.g) * this.j)) / 2.0f);
            } else if (this.k.f == 3) {
                canvas.translate(0.0f, (((float) this.e) * this.j) - (((float) this.g) * this.j));
            }
        }
        if (this.n != null) {
            paint.setMaskFilter(new BlurMaskFilter(this.n.d / this.j, Blur.NORMAL));
            paint.setColor(this.n.c);
            canvas.save();
            canvas.translate(this.n.e, this.n.f);
            this.i.draw(canvas);
            canvas.restore();
        }
        if (this.m != null) {
            paint.setMaskFilter(new BlurMaskFilter(this.m.d / this.j, Blur.OUTER));
            paint.setColor(this.m.c);
            this.i.draw(canvas);
        }
        if (this.k != null) {
            paint.setMaskFilter(null);
            paint.setTextSize(this.k.b);
            paint.setColor(this.k.d);
            this.i.draw(canvas);
        }
        if (this.l != null) {
            paint.setMaskFilter(null);
            this.i.getPaint().setStyle(Style.STROKE);
            paint.setColor(this.l.c);
            paint.setStrokeWidth(this.l.d / this.j);
            this.i.draw(canvas);
        }
        return createBitmap;
    }

    private TextPaint b() {
        if (this.o == null) {
            this.o = new TextPaint();
        } else {
            this.o.reset();
        }
        if (this.k != null) {
            this.o.setTextSize(this.k.b);
            this.o.setColor(this.k.d);
            Typeface typeface = nexFont.getTypeface(this.a, this.k.e);
            if (typeface == null) {
                typeface = Typeface.createFromAsset(this.a.getAssets(), this.k.e);
            }
            this.o.setTypeface(typeface);
        }
        if (this.l != null) {
            this.o.setStrokeWidth(this.l.d / this.j);
        }
        this.o.setAntiAlias(true);
        this.o.setStyle(Style.FILL_AND_STROKE);
        this.o.setTextAlign(Align.LEFT);
        return this.o;
    }

    private int c() {
        float max;
        float a;
        float f = 0.0f;
        if (this.n != null) {
            max = Math.max(Math.abs(this.n.e), Math.abs(this.n.f));
        } else {
            max = 0.0f;
        }
        if (this.m != null) {
            a = this.m.d;
        } else {
            a = 0.0f;
        }
        if (this.l != null) {
            f = this.l.d;
        }
        return (int) Math.ceil((double) Math.max(f, Math.max(a, max)));
    }

    private void d() {
        if (!this.h || this.i == null) {
            int c = c();
            TextPaint b = b();
            this.f = this.d;
            this.g = this.e + 1;
            Alignment alignment = Alignment.ALIGN_CENTER;
            if (this.k.c == Align.CENTER) {
                alignment = Alignment.ALIGN_CENTER;
            } else if (this.k.c == Align.LEFT) {
                alignment = Alignment.ALIGN_NORMAL;
            } else if (this.k.c == Align.RIGHT) {
                alignment = Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout staticLayout = null;
            Log.d("utilityTextOverlay", String.format("calcDimension(%s, %d %d)", new Object[]{alignment.toString(), Integer.valueOf(this.g), Integer.valueOf(this.e)}));
            while (this.g > this.e) {
                staticLayout = new StaticLayout(this.b, 0, this.b.length(), b, this.d - (c * 2), alignment, 1.0f, 0.0f, true);
                this.g = Math.max(1, staticLayout.getHeight()) + (c * 2);
                float textSize = b.getTextSize();
                if (this.g <= this.e) {
                    break;
                }
                b.setTextSize(textSize - 1.0f);
            }
            this.i = staticLayout;
            this.f = Math.max(1, this.i.getWidth()) + (c * 2);
            this.g = Math.max(1, this.i.getHeight()) + (c * 2);
            this.h = true;
        }
    }

    public boolean isAniMate() {
        return false;
    }

    public int getBitmapID() {
        return this.c;
    }

    public Bitmap makeBitmap() {
        return a();
    }
}
