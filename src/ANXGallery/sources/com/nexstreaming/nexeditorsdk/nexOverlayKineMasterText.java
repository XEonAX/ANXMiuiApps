package com.nexstreaming.nexeditorsdk;

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
import java.io.File;
import java.text.Bidi;

@Deprecated
public final class nexOverlayKineMasterText extends nexOverlayImage {
    private static final int DEFAULT_BACKGROUND_COLOR = -2013265920;
    private static final String LOG_TAG = "nexOverlayKineMasterText";
    private static final int MAX_TEX_SIZE = 2000;
    private static final int TEXT_WRAP_WIDTH = 1280;
    private static int number = 1;
    private int TextId = 0;
    private float actualScale = 1.0f;
    private boolean bUserFontMode;
    private int backgroundColor = DEFAULT_BACKGROUND_COLOR;
    private TextPaint cachedTextPaint;
    private boolean enableBackground = false;
    private boolean enableGlow = false;
    private boolean enableGradient = false;
    private boolean enableOutline = false;
    private boolean enableShadow = true;
    private boolean extendBackground = false;
    private String fontId;
    private int glowColor = -1426063446;
    private float glowRadius = 8.0f;
    private int glowType = 0;
    private int[] gradientColors;
    private transient int height;
    private String layerText = "";
    private Context mContext;
    private int outlineColor = -3355444;
    private float outlineWidth = 1.0f;
    final boolean serialKMText = true;
    private int shadowColor = -16777216;
    private float shadowDx = 3.0f;
    private float shadowDy = 3.0f;
    private float shadowRadius = 5.0f;
    private Alignment textAlign = Alignment.ALIGN_CENTER;
    private int textColor = -1;
    private transient StaticLayout textLayout;
    private float textSize = 50.0f;
    private transient boolean validDimensions;
    private transient int width;

    @Deprecated
    public nexOverlayKineMasterText(Context context) {
        super("nexOverlayStandardText");
        this.mContext = context;
        this.TextId = number;
        number++;
    }

    @Deprecated
    public nexOverlayKineMasterText(Context context, String str, int i) {
        super("nexOverlayStandardText");
        this.mContext = context;
        this.layerText = str;
        this.textSize = (float) i;
        this.TextId = number;
        number++;
    }

    public int getWidth() {
        calcDimensions();
        return this.width;
    }

    public int getHeight() {
        calcDimensions();
        return this.height;
    }

    protected Bitmap getUserBitmap() {
        return makeTextBitmap();
    }

    protected String getUserBitmapID() {
        return "KineMasterText-" + this.TextId;
    }

    @Deprecated
    public String getText() {
        return this.layerText == null ? "" : this.layerText;
    }

    @Deprecated
    public void setText(String str) {
        this.layerText = str;
        this.validDimensions = false;
        this.mUpdate = true;
    }

    @Deprecated
    public void setTextSize(float f) {
        this.textSize = f;
        this.validDimensions = false;
        this.mUpdate = true;
    }

    @Deprecated
    public void setTextColor(int i) {
        if (this.textColor != i) {
            this.textColor = i;
            this.mUpdate = true;
        }
    }

    @Deprecated
    public float getTextSize() {
        return this.textSize;
    }

    @Deprecated
    public int getTextColor() {
        return this.textColor;
    }

    @Deprecated
    public int getGlowColor() {
        return getGlowColor(true);
    }

    int getGlowColor(boolean z) {
        if (z) {
            return this.glowColor;
        }
        if (this.enableGlow) {
            return this.glowColor;
        }
        return 0;
    }

    @Deprecated
    public void setGlowColor(int i) {
        if (this.glowColor != i) {
            this.glowColor = i;
            if (this.enableGlow) {
                this.mUpdate = true;
            }
        }
    }

    @Deprecated
    public int getOutlineColor() {
        return getOutlineColor(true);
    }

    int getOutlineColor(boolean z) {
        if (z) {
            return this.outlineColor;
        }
        if (this.enableOutline) {
            return this.outlineColor;
        }
        return 0;
    }

    @Deprecated
    public void setOutlineColor(int i) {
        if (this.outlineColor != i) {
            this.outlineColor = i;
            if (this.enableOutline) {
                this.mUpdate = true;
            }
        }
    }

    @Deprecated
    public int getShadowColor() {
        return getShadowColor(true);
    }

    int getShadowColor(boolean z) {
        if (z) {
            return this.shadowColor;
        }
        if (this.enableShadow) {
            return this.shadowColor;
        }
        return 0;
    }

    @Deprecated
    public void setShadowColor(int i) {
        if (this.shadowColor != i) {
            this.shadowColor = i;
            if (this.enableShadow) {
                this.mUpdate = true;
            }
        }
    }

    @Deprecated
    public boolean isEnableShadow() {
        return this.enableShadow;
    }

    @Deprecated
    public void EnableShadow(boolean z) {
        if (this.enableShadow != z) {
            this.enableShadow = z;
            this.mUpdate = true;
        }
    }

    @Deprecated
    public boolean isEnableGlow() {
        return this.enableGlow;
    }

    @Deprecated
    public void EnableGlow(boolean z) {
        if (this.enableGlow != z) {
            this.enableGlow = z;
            this.mUpdate = true;
        }
    }

    @Deprecated
    public boolean isEnableOutline() {
        return this.enableOutline;
    }

    @Deprecated
    public void EnableOutline(boolean z) {
        if (this.enableOutline != z) {
            this.enableOutline = z;
            this.mUpdate = true;
        }
    }

    @Deprecated
    public void setFontId(String str) {
        if (str == null) {
            this.bUserFontMode = false;
            this.fontId = null;
            this.validDimensions = false;
            this.mUpdate = true;
            calcDimensions();
        } else if (this.fontId == str) {
        } else {
            if (str.charAt(0) == '/') {
                int lastIndexOf = str.lastIndexOf(46);
                if (lastIndexOf != -1 && str.substring(lastIndexOf).compareToIgnoreCase(".ttf") == 0 && new File(str).isFile()) {
                    this.bUserFontMode = true;
                    this.fontId = str;
                    this.validDimensions = false;
                    this.mUpdate = true;
                    calcDimensions();
                }
            } else if (nexFont.isLoadedFont(str)) {
                this.bUserFontMode = false;
                this.fontId = str;
                this.validDimensions = false;
                this.mUpdate = true;
                calcDimensions();
            }
        }
    }

    @Deprecated
    public String getFontId() {
        return getFontIdInternal(true);
    }

    String getFontIdInternal(boolean z) {
        if (z) {
            return this.fontId;
        }
        if (this.bUserFontMode) {
            return null;
        }
        return this.fontId;
    }

    private synchronized Bitmap makeTextBitmap() {
        Bitmap bitmap = null;
        synchronized (this) {
            calcDimensions();
            int shadowPadding = getShadowPadding();
            int i = (int) (((float) this.width) * this.actualScale);
            int i2 = (int) (((float) this.height) * this.actualScale);
            if (i > 0 && i2 > 0) {
                bitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                canvas.scale(this.actualScale, this.actualScale);
                canvas.translate((float) shadowPadding, (float) shadowPadding);
                TextPaint paint = this.textLayout.getPaint();
                paint.setTextAlign(Align.LEFT);
                paint.setStyle(Style.FILL);
                if (this.enableShadow) {
                    paint.setMaskFilter(new BlurMaskFilter(this.shadowRadius / this.actualScale, Blur.NORMAL));
                    paint.setColor(this.shadowColor);
                    canvas.save();
                    canvas.translate(this.shadowDx, this.shadowDy);
                    this.textLayout.draw(canvas);
                    canvas.restore();
                }
                if (this.enableGlow) {
                    paint.setMaskFilter(new BlurMaskFilter(this.glowRadius / this.actualScale, Blur.OUTER));
                    paint.setColor(this.glowColor);
                    this.textLayout.draw(canvas);
                }
                paint.setMaskFilter(null);
                paint.setColor(this.textColor);
                this.textLayout.draw(canvas);
                if (this.enableOutline) {
                    this.textLayout.getPaint().setStyle(Style.STROKE);
                    paint.setColor(this.outlineColor);
                    paint.setStrokeWidth(this.outlineWidth / this.actualScale);
                    this.textLayout.draw(canvas);
                }
            }
        }
        return bitmap;
    }

    private TextPaint getPaint() {
        if (this.cachedTextPaint == null) {
            this.cachedTextPaint = new TextPaint();
        } else {
            this.cachedTextPaint.reset();
        }
        TextPaint textPaint = this.cachedTextPaint;
        textPaint.setTextSize(this.textSize);
        textPaint.setAntiAlias(true);
        textPaint.setColor(-1);
        textPaint.setStrokeWidth(this.outlineWidth);
        textPaint.setStyle(Style.FILL_AND_STROKE);
        Typeface typeface = null;
        if (this.fontId != null) {
            if (this.bUserFontMode) {
                typeface = Typeface.createFromFile(this.fontId);
            } else {
                typeface = nexFont.getTypeface(this.mContext, this.fontId);
            }
        }
        if (typeface != null) {
            textPaint.setTypeface(typeface);
        }
        return textPaint;
    }

    private int getShadowPadding() {
        return (int) Math.ceil((double) Math.max(this.outlineWidth, Math.max(this.glowRadius, this.shadowRadius + Math.max(Math.abs(this.shadowDx), Math.abs(this.shadowDy)))));
    }

    private synchronized void calcDimensions() {
        if (!this.validDimensions || this.textLayout == null) {
            TextPaint paint = getPaint();
            CharSequence text = getText();
            int min = (int) Math.min((float) nexApplicationConfig.getAspectProfile().getWidth(), StaticLayout.getDesiredWidth(text, paint) + 1.0f);
            Bidi bidi = new Bidi(text, -2);
            if (this.textAlign.equals(Alignment.ALIGN_CENTER) || bidi.baseIsLeftToRight()) {
                this.textLayout = new StaticLayout(text, 0, this.layerText.length(), paint, min, this.textAlign, 1.0f, 0.0f, true);
            } else if (!bidi.baseIsLeftToRight() && this.textAlign.equals(Alignment.ALIGN_NORMAL)) {
                this.textLayout = new StaticLayout(text, 0, this.layerText.length(), paint, min, Alignment.ALIGN_OPPOSITE, 1.0f, 0.0f, true);
            } else if (!bidi.baseIsLeftToRight() && this.textAlign.equals(Alignment.ALIGN_OPPOSITE)) {
                this.textLayout = new StaticLayout(text, 0, this.layerText.length(), paint, min, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            int shadowPadding = getShadowPadding();
            this.width = Math.max(1, this.textLayout.getWidth()) + (shadowPadding * 2);
            this.height = (shadowPadding * 2) + Math.max(1, this.textLayout.getHeight());
            this.validDimensions = true;
        }
    }
}
