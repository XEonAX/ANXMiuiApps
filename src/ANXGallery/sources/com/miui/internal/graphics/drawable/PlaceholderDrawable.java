package com.miui.internal.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import com.miui.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class PlaceholderDrawable extends Drawable {
    private Rect ep;
    public int mHeight = -1;
    public int mWidth = -1;

    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next != 1) {
                int depth2 = xmlPullParser.getDepth();
                if (depth2 < depth && next == 3) {
                    return;
                }
                if (next == 2) {
                    if (depth2 <= depth) {
                        String name = xmlPullParser.getName();
                        TypedArray obtainAttributes;
                        if (name.equals("size")) {
                            obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.PlaceholderDrawableSize);
                            this.mWidth = obtainAttributes.getDimensionPixelSize(R.styleable.PlaceholderDrawableSize_android_width, -1);
                            this.mHeight = obtainAttributes.getDimensionPixelSize(R.styleable.PlaceholderDrawableSize_android_height, -1);
                            obtainAttributes.recycle();
                        } else if (name.equals("padding")) {
                            obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.PlaceholderDrawablePadding);
                            this.ep = new Rect(obtainAttributes.getDimensionPixelOffset(R.styleable.PlaceholderDrawablePadding_android_left, 0), obtainAttributes.getDimensionPixelOffset(R.styleable.PlaceholderDrawablePadding_android_top, 0), obtainAttributes.getDimensionPixelOffset(R.styleable.PlaceholderDrawablePadding_android_right, 0), obtainAttributes.getDimensionPixelOffset(R.styleable.PlaceholderDrawablePadding_android_bottom, 0));
                            obtainAttributes.recycle();
                        } else {
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("Bad element under <placeholder>: ");
                            stringBuilder.append(name);
                            Log.w("drawable", stringBuilder.toString());
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    public void draw(Canvas canvas) {
    }

    public void setAlpha(int i) {
    }

    public void setColorFilter(ColorFilter colorFilter) {
    }

    public int getOpacity() {
        return 0;
    }

    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    public boolean getPadding(Rect rect) {
        if (this.ep == null) {
            return super.getPadding(rect);
        }
        rect.set(this.ep);
        return true;
    }
}
