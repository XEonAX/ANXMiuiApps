package com.miui.internal.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class OutsideCompoundDrawable extends Drawable implements Callback {
    private static int eo = 0;
    private Drawable el;
    private Drawable em;
    private Drawable en;

    public OutsideCompoundDrawable() {
        if (eo == 0) {
            try {
                eo = Class.forName("com.android.internal.R$attr").getDeclaredField("drawable").getInt(null);
            } catch (Exception e) {
            }
        }
    }

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
                        Drawable drawable;
                        String name = xmlPullParser.getName();
                        int i = 0;
                        if (name.equals("item-top")) {
                            next = 0;
                        } else if (name.equals("item-base")) {
                            next = 1;
                        } else if (name.equals("item-bottom")) {
                            next = 2;
                        } else {
                            continue;
                        }
                        depth2 = attributeSet.getAttributeCount();
                        int i2 = 0;
                        while (i2 < depth2) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            if (attributeNameResource == 0) {
                                break;
                            } else if (attributeNameResource == eo) {
                                i = attributeSet.getAttributeResourceValue(i2, 0);
                                break;
                            } else {
                                i2++;
                            }
                        }
                        if (i != 0) {
                            drawable = resources.getDrawable(i);
                        } else {
                            while (true) {
                                depth2 = xmlPullParser.next();
                                if (depth2 != 4) {
                                    break;
                                }
                            }
                            if (depth2 == 2) {
                                drawable = Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet);
                            } else {
                                StringBuilder stringBuilder = new StringBuilder();
                                stringBuilder.append(xmlPullParser.getPositionDescription());
                                stringBuilder.append(": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                                throw new XmlPullParserException(stringBuilder.toString());
                            }
                        }
                        if (drawable != null) {
                            if (next == 0) {
                                this.el = drawable;
                                this.el.setCallback(this);
                            } else if (next == 1) {
                                this.em = drawable;
                                this.em.setCallback(this);
                            } else if (next == 2) {
                                this.en = drawable;
                                this.en.setCallback(this);
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    public void draw(Canvas canvas) {
        if (this.em != null) {
            this.em.draw(canvas);
        }
        if (this.el != null) {
            this.el.draw(canvas);
        }
        if (this.en != null) {
            this.en.draw(canvas);
        }
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        if (this.em != null) {
            this.em.setBounds(i, i2, i3, i4);
        }
        if (this.el != null) {
            int intrinsicHeight = this.el.getIntrinsicHeight();
            if (intrinsicHeight <= 0) {
                intrinsicHeight = 1;
            }
            this.el.setBounds(i, i2 - intrinsicHeight, i3, i2);
        }
        if (this.en != null) {
            i2 = this.en.getIntrinsicHeight();
            if (i2 <= 0) {
                i2 = 1;
            }
            this.en.setBounds(i, i4, i3, i2 + i4);
        }
    }

    public boolean isStateful() {
        return (this.el != null && this.el.isStateful()) || ((this.em != null && this.em.isStateful()) || (this.en != null && this.en.isStateful()));
    }

    public void setAlpha(int i) {
        if (this.el != null) {
            this.el.setAlpha(i);
        }
        if (this.em != null) {
            this.em.setAlpha(i);
        }
        if (this.en != null) {
            this.en.setAlpha(i);
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        if (this.el != null) {
            this.el.setColorFilter(colorFilter);
        }
        if (this.em != null) {
            this.em.setColorFilter(colorFilter);
        }
        if (this.en != null) {
            this.en.setColorFilter(colorFilter);
        }
    }

    public boolean onStateChange(int[] iArr) {
        boolean z = this.el != null && this.el.isStateful() && this.el.setState(iArr);
        if (this.em != null && this.em.isStateful()) {
            z = this.em.setState(iArr) || z;
        }
        if (this.en == null || !this.en.isStateful()) {
            return z;
        }
        return this.en.setState(iArr) || z;
    }

    protected boolean onLevelChange(int i) {
        boolean z = this.el != null && this.el.setLevel(i);
        if (this.em != null) {
            z = this.em.setLevel(i) || z;
        }
        if (this.en != null) {
            return this.en.setLevel(i) || z;
        } else {
            return z;
        }
    }

    public void jumpToCurrentState() {
        if (this.el != null) {
            this.el.jumpToCurrentState();
        }
        if (this.em != null) {
            this.em.jumpToCurrentState();
        }
        if (this.en != null) {
            this.en.jumpToCurrentState();
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        if (this.el != null) {
            this.el.setVisible(z, z2);
        }
        if (this.em != null) {
            this.em.setVisible(z, z2);
        }
        if (this.en != null) {
            this.en.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    public int getOpacity() {
        if (this.em == null || !this.em.isVisible()) {
            return -2;
        }
        return this.em.getOpacity();
    }

    public int getIntrinsicWidth() {
        return this.em == null ? -1 : this.em.getIntrinsicWidth();
    }

    public int getIntrinsicHeight() {
        return this.em == null ? -1 : this.em.getIntrinsicHeight();
    }

    public boolean getPadding(Rect rect) {
        if (this.em != null) {
            return this.em.getPadding(rect);
        }
        rect.set(0, 0, 0, 0);
        return false;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j);
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
