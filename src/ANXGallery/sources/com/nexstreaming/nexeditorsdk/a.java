package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: nexCollageDrawInfo */
class a implements nexCollageInfo, nexCollageInfoDraw {
    private static String d = "nexCollageDrawInfo";
    protected nexClip a;
    protected RectF b;
    protected CollageInfoChangedListener c;
    private float e;
    private float f;
    private RectF g;
    private List<PointF> h = new ArrayList();
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private int o = 0;
    private int p = 0;
    private float q;
    private Rect r;
    private RectF s;
    private RectF t;

    a() {
    }

    public void a(RectF rectF) {
        this.t = null;
        if (rectF != null) {
            this.t = new RectF(rectF);
        }
    }

    protected void a(CollageInfoChangedListener collageInfoChangedListener) {
        this.c = collageInfoChangedListener;
    }

    public boolean a() {
        if (this.j.compareTo("system") == 0 || this.j.compareTo("system_mt") == 0) {
            return true;
        }
        return false;
    }

    public boolean b() {
        if (this.j.compareTo("system_mt") == 0) {
            return true;
        }
        return false;
    }

    public String a(Context context) {
        return nexAssetPackageManager.getAssetPackageMediaPath(context, this.k);
    }

    public String getId() {
        return this.i;
    }

    public RectF getRectangle() {
        return this.g;
    }

    public List<PointF> getPositions() {
        return this.h;
    }

    public int getTagID() {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return 0;
        }
        return ((nexDrawInfo) this.a.getDrawInfos().get(0)).getID();
    }

    private Rect a(nexDrawInfo nexdrawinfo, Rect rect, int i, int i2) {
        int userTranslateX = (nexdrawinfo.getUserTranslateX() * i) / nexCrop.ABSTRACT_DIMENSION;
        int userTranslateY = (nexdrawinfo.getUserTranslateY() * i2) / nexCrop.ABSTRACT_DIMENSION;
        float width = ((float) rect.width()) * 0.5f;
        float height = ((float) rect.height()) * 0.5f;
        float f = -width;
        float f2 = -height;
        float f3 = -((float) Math.toRadians((double) nexdrawinfo.getUserRotateState()));
        float cos = (float) Math.cos((double) f3);
        f3 = (float) Math.sin((double) f3);
        float f4 = (cos * f) - (f3 * f2);
        float f5 = (f3 * f) + (cos * f2);
        float f6 = (cos * width) - (f3 * f2);
        f2 = (f2 * cos) + (f3 * width);
        float f7 = (cos * f) - (f3 * height);
        f = (f * f3) + (cos * height);
        float f8 = (cos * width) - (f3 * height);
        f3 = (f3 * width) + (cos * height);
        cos = Math.min(Math.min(Math.min(f4, f6), f7), f8);
        float min = Math.min(Math.min(Math.min(f5, f2), f), f3);
        f4 = Math.max(Math.max(Math.max(f4, f6), f7), f8);
        f = Math.max(Math.max(Math.max(f5, f2), f), f3);
        Rect rect2 = new Rect();
        rect2.left = (((int) (cos + width)) + userTranslateX) + rect.left;
        rect2.top = (((int) (min + height)) + userTranslateY) + rect.top;
        rect2.right = (userTranslateX + ((int) (width + f4))) + rect.left;
        rect2.bottom = (((int) (f + height)) + userTranslateY) + rect.top;
        return rect2;
    }

    private void h() {
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = this.a.getHeight();
                height = this.a.getWidth();
            }
            if (this.r == null) {
                this.r = new Rect(nexdrawinfo.getStartRect());
                nexCollage.a(this.r, width, height);
            }
            Rect rect = new Rect(this.r);
            Rect a = a(nexdrawinfo, rect, width, height);
            float exactCenterX = a.exactCenterX();
            float exactCenterY = a.exactCenterY();
            float f = 1.0f;
            float width2 = ((float) a.width()) * 0.5f;
            float height2 = ((float) a.height()) * 0.5f;
            if (a.left < 0) {
                f = Math.min(exactCenterX / width2, 1.0f);
            }
            if (a.right > width) {
                f = Math.min((((float) width) - exactCenterX) / width2, f);
            }
            if (a.top < 0) {
                f = Math.min(exactCenterY / height2, f);
            }
            if (a.bottom > height) {
                f = Math.min((((float) height) - exactCenterY) / height2, f);
            }
            f *= ((float) rect.height()) * 0.5f;
            float f2 = this.q * f;
            exactCenterX = rect.exactCenterX();
            exactCenterY = rect.exactCenterY();
            this.s.left = exactCenterX - f2;
            this.s.right = f2 + exactCenterX;
            this.s.top = exactCenterY - f;
            this.s.bottom = f + exactCenterY;
            this.s.round(rect);
            nexCollage.b(rect, width, height);
            nexdrawinfo.setStartRect(rect);
            nexdrawinfo.setEndRect(rect);
        }
    }

    private void i() {
        int i = 0;
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            int i2;
            nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = this.a.getHeight();
                height = this.a.getWidth();
            }
            Rect rect = new Rect();
            rect.set((int) this.s.left, (int) this.s.top, (int) this.s.right, (int) this.s.bottom);
            Rect a = a(nexdrawinfo, rect, width, height);
            if (a.left < 0) {
                i2 = 0 - a.left;
            } else {
                i2 = 0;
            }
            if (a.right > width) {
                i2 -= a.right - width;
            }
            if (a.top < 0) {
                i = 0 - a.top;
            }
            if (a.bottom > height) {
                i -= a.bottom - height;
            }
            if (i2 != 0 || i != 0) {
                RectF rectF = this.s;
                rectF.left += (float) i2;
                rectF = this.s;
                rectF.right = ((float) i2) + rectF.right;
                RectF rectF2 = this.s;
                rectF2.top += (float) i;
                rectF2 = this.s;
                rectF2.bottom = ((float) i) + rectF2.bottom;
                this.s.round(rect);
                nexCollage.b(rect, width, height);
                nexdrawinfo.setStartRect(rect);
                nexdrawinfo.setEndRect(rect);
            }
        }
    }

    private boolean j() {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        int width = this.a.getWidth();
        int height = this.a.getHeight();
        if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
            width = this.a.getHeight();
            height = this.a.getWidth();
        }
        Rect rect = new Rect(nexdrawinfo.getStartRect());
        nexCollage.a(rect, width, height);
        Rect a = a(nexdrawinfo, rect, width, height);
        Log.d(d, "aabb:" + a.toString() + " width:" + width + " height:" + height + " r:" + rect.toString());
        if (a.width() > width) {
            return false;
        }
        if (a.height() > height) {
            return false;
        }
        Log.d(d, "aabb checkTranformOk");
        return true;
    }

    private void k() {
        int i = 0;
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            int i2;
            nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = this.a.getHeight();
                height = this.a.getWidth();
            }
            Rect rect = new Rect(nexdrawinfo.getStartRect());
            nexCollage.a(rect, width, height);
            Rect a = a(nexdrawinfo, rect, width, height);
            if (a.left < 0) {
                i2 = 0 - a.left;
            } else {
                i2 = 0;
            }
            if (a.right > width) {
                i2 -= a.right - width;
            }
            if (a.top < 0) {
                i = 0 - a.top;
            }
            if (a.bottom > height) {
                i -= a.bottom - height;
            }
            if (i2 != 0 || i != 0) {
                nexdrawinfo.setUserTranslate(((i2 + ((nexdrawinfo.getUserTranslateX() * width) / nexCrop.ABSTRACT_DIMENSION)) * nexCrop.ABSTRACT_DIMENSION) / width, ((((nexdrawinfo.getUserTranslateY() * height) / nexCrop.ABSTRACT_DIMENSION) + i) * nexCrop.ABSTRACT_DIMENSION) / height);
            }
        }
    }

    private void l() {
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            if (this.t == null) {
                this.t = new RectF(this.s);
            }
            ((nexDrawInfo) this.a.getDrawInfos().get(0)).setRealScale((float) Math.sqrt(((double) (this.t.width() * this.t.height())) / ((double) (this.s.width() * this.s.height()))));
        }
    }

    private void a(Rect rect) {
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            if (this.t == null) {
                this.t = new RectF(this.s);
            }
            ((nexDrawInfo) this.a.getDrawInfos().get(0)).setRealScale((float) Math.sqrt(((double) (this.t.width() * this.t.height())) / ((double) (rect.width() * rect.height()))));
        }
    }

    public boolean setTranslate(int i, int i2, int i3, int i4) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        float f = -((float) Math.toRadians((double) nexdrawinfo.getUserRotateState()));
        float cos = (float) Math.cos((double) f);
        f = (float) Math.sin((double) f);
        float f2 = (((float) i) * cos) - (((float) i2) * f);
        float f3 = (f * ((float) i)) + (cos * ((float) i2));
        int width = this.a.getWidth();
        int height = this.a.getHeight();
        if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
            width = this.a.getHeight();
            height = this.a.getWidth();
        }
        if (this.s == null) {
            Rect rect = new Rect(nexdrawinfo.getStartRect());
            nexCollage.a(rect, width, height);
            this.s = new RectF(rect);
        }
        float sqrt = (float) Math.sqrt(((double) (this.s.width() * this.s.height())) / ((double) (this.o * this.p)));
        nexdrawinfo.setUserTranslate(((((int) (f2 * sqrt)) * nexCrop.ABSTRACT_DIMENSION) / width) + nexdrawinfo.getUserTranslateX(), ((((int) (f3 * sqrt)) * nexCrop.ABSTRACT_DIMENSION) / height) + nexdrawinfo.getUserTranslateY());
        k();
        if (this.c != null) {
            this.c.DrawInfoChanged(nexdrawinfo);
        }
        return true;
    }

    public int getRotate() {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return 0;
        }
        return ((nexDrawInfo) this.a.getDrawInfos().get(0)).getUserRotateState();
    }

    public boolean setRotate(int i, int i2) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        Log.d(d, String.format("setRotate: %d %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        if (i == 1 || i == 2) {
            return true;
        }
        if (this.s == null) {
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = this.a.getHeight();
                height = this.a.getWidth();
            }
            Rect rect = new Rect(nexdrawinfo.getStartRect());
            nexCollage.a(rect, width, height);
            this.s = new RectF(rect);
        }
        nexdrawinfo.setUserRotateState(i2);
        h();
        l();
        if (this.c != null) {
            this.c.DrawInfoChanged(nexdrawinfo);
        }
        return true;
    }

    public boolean setFlip(int i) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        int rotateState = nexdrawinfo.getRotateState();
        if (i == 0) {
            rotateState &= -196609;
        } else {
            if ((i & 1) == 1) {
                if ((rotateState & 65536) == 65536) {
                    rotateState &= -65537;
                } else {
                    rotateState |= 65536;
                }
            }
            if ((i & 2) == 2) {
                if ((rotateState & nexEngine.ExportHEVCHighTierLevel51) == nexEngine.ExportHEVCHighTierLevel51) {
                    rotateState &= -131073;
                } else {
                    rotateState |= nexEngine.ExportHEVCHighTierLevel51;
                }
            }
        }
        nexdrawinfo.setRotateState(rotateState);
        if (this.c != null) {
            this.c.DrawInfoChanged(nexdrawinfo);
        }
        return true;
    }

    public void a(boolean z) {
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            int height;
            int width = this.a.getWidth();
            int height2 = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                height = this.a.getHeight();
                width = this.a.getWidth();
            } else {
                height = width;
                width = height2;
            }
            nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
            if (this.t == null) {
                Rect rect = new Rect(0, 0, height, width);
                nexCollage.a(rect, this.q);
                a(new RectF(rect));
            }
            float centerX = this.t.centerX();
            float centerY = this.t.centerY();
            Rect rect2 = new Rect(nexdrawinfo.getStartRect());
            nexCollage.a(rect2, height, width);
            if (z) {
                a(rect2);
            }
            float realScale = nexdrawinfo.getRealScale();
            float width2 = this.t.width() / realScale;
            realScale = this.t.height() / realScale;
            float exactCenterX = rect2.exactCenterX();
            float exactCenterY = rect2.exactCenterY();
            rect2.left = (int) (((double) centerX) - (((double) width2) / 2.0d));
            rect2.top = (int) (((double) centerY) - (((double) realScale) / 2.0d));
            rect2.right = (int) (((double) centerX) + (((double) width2) / 2.0d));
            rect2.bottom = (int) ((((double) realScale) / 2.0d) + ((double) centerY));
            nexCollage.a(rect2, this.q);
            int exactCenterX2 = (int) (exactCenterX - rect2.exactCenterX());
            int exactCenterY2 = (int) (exactCenterY - rect2.exactCenterY());
            rect2.left += exactCenterX2;
            rect2.right = exactCenterX2 + rect2.right;
            rect2.top += exactCenterY2;
            rect2.bottom += exactCenterY2;
            this.s = new RectF(rect2);
            nexCollage.b(rect2, height, width);
            nexdrawinfo.setStartRect(rect2);
            nexdrawinfo.setEndRect(rect2);
            this.r = null;
            i();
            h();
            if (z) {
                l();
                this.r = null;
            }
        }
    }

    public void a(float f) {
        if (this.a != null && this.a.getDrawInfos() != null && this.a.getDrawInfos().size() > 0) {
            nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = this.a.getHeight();
                height = this.a.getWidth();
            }
            if (this.t == null) {
                this.t = new RectF(this.s);
            }
            float sqrt = (float) Math.sqrt(((double) (this.t.width() * this.t.height())) / ((double) (this.s.width() * this.s.height())));
            Log.d(d, "scale_chk:" + sqrt + " display_rect:" + this.s.toString());
            float centerX = this.s.centerX();
            float centerY = this.s.centerY();
            float width2 = this.s.width() * 0.5f;
            width2 = this.s.height() * 0.5f;
            if (f > 0.0f) {
                if (sqrt <= 2.0f) {
                    sqrt = 0.97f * width2;
                    width2 = this.q * sqrt;
                } else {
                    return;
                }
            } else if (sqrt >= 0.2f) {
                sqrt = 1.03f * width2;
                width2 = this.q * sqrt;
            } else {
                return;
            }
            this.s.left = centerX - width2;
            this.s.right = width2 + centerX;
            this.s.top = centerY - sqrt;
            this.s.bottom = sqrt + centerY;
            Rect rect = new Rect();
            this.s.round(rect);
            nexCollage.b(rect, width, height);
            nexdrawinfo.setStartRect(rect);
            nexdrawinfo.setEndRect(rect);
            this.r = null;
        }
    }

    public boolean setScale(float f) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        if (f == 0.0f) {
            return true;
        }
        Log.d(d, String.format("setScale %f", new Object[]{Float.valueOf(f)}));
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        if (this.s == null) {
            int width = this.a.getWidth();
            int height = this.a.getHeight();
            if (this.a.getRotateInMeta() == 90 || this.a.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = this.a.getHeight();
                height = this.a.getWidth();
            }
            Rect rect = new Rect(nexdrawinfo.getStartRect());
            nexCollage.a(rect, width, height);
            this.s = new RectF(rect);
            this.t = new RectF(this.s);
        }
        RectF rectF = new RectF(this.s);
        Rect rect2 = new Rect(nexdrawinfo.getStartRect());
        int userTranslateX = nexdrawinfo.getUserTranslateX();
        int userTranslateY = nexdrawinfo.getUserTranslateY();
        a(f);
        k();
        if (!j()) {
            this.s = rectF;
            nexdrawinfo.setStartRect(rect2);
            nexdrawinfo.setEndRect(rect2);
            nexdrawinfo.setUserTranslate(userTranslateX, userTranslateY);
        }
        l();
        if (this.c != null) {
            this.c.DrawInfoChanged(nexdrawinfo);
        }
        return true;
    }

    public String getLut() {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return null;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        return nexdrawinfo != null ? nexdrawinfo.getUserLUT() : null;
    }

    public boolean setLut(String str) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        if (str == null || str.compareTo("none") == 0) {
            nexdrawinfo.setUserLUT(null);
            nexdrawinfo.setLUT(0);
            if (this.c != null) {
                this.c.DrawInfoChanged(nexdrawinfo);
            }
            return true;
        } else if (str.compareTo("default") == 0) {
            nexdrawinfo.setUserLUT(null);
            if (e() == null || e().compareTo("none") == 0) {
                nexdrawinfo.setLUT(0);
            } else {
                nexColorEffect lutColorEffect = nexColorEffect.getLutColorEffect(e());
                if (lutColorEffect != null) {
                    nexdrawinfo.setLUT(lutColorEffect.getLUTId());
                }
            }
            if (this.c != null) {
                this.c.DrawInfoChanged(nexdrawinfo);
            }
            return true;
        } else {
            if (!(str.compareTo("none") == 0 && str.compareTo("null") == 0)) {
                nexColorEffect lutColorEffect2 = nexColorEffect.getLutColorEffect(str);
                if (lutColorEffect2 != null) {
                    nexdrawinfo.setLUT(lutColorEffect2.getLUTId());
                    nexdrawinfo.setUserLUT(str);
                    if (this.c != null) {
                        this.c.DrawInfoChanged(nexdrawinfo);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public boolean getVisible() {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        if (nexdrawinfo == null) {
            return false;
        }
        if (nexdrawinfo.getBrightness() == -255) {
            return false;
        }
        return true;
    }

    public boolean setVisible(boolean z) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        if (nexdrawinfo == null) {
            return false;
        }
        if (z) {
            nexdrawinfo.setBrightness(0);
        } else {
            nexdrawinfo.setBrightness(-255);
        }
        if (this.c != null) {
            this.c.DrawInfoChanged(nexdrawinfo);
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x017f  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0185  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x010a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean changeSource(nexClip nexclip) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        nexDrawInfo nexdrawinfo = (nexDrawInfo) this.a.getDrawInfos().get(0);
        if (nexdrawinfo == null) {
            return false;
        }
        Rect rect;
        nexClip nexclip2;
        nexclip.clearDrawInfos();
        nexclip.addDrawInfo(nexdrawinfo);
        nexclip.mStartTime = this.a.mStartTime;
        nexclip.mEndTime = this.a.mEndTime;
        if (nexclip.getClipType() == 4) {
            nexclip.setAudioOnOff(false);
        } else if (nexclip.getClipType() != 1) {
            return false;
        } else {
            nexclip.setImageClipDuration(this.a.getProjectDuration());
        }
        int width = nexclip.getWidth();
        int height = nexclip.getHeight();
        if (nexclip.getRotateInMeta() == 90 || nexclip.getRotateInMeta() == nexClip.kClip_Rotate_270) {
            width = nexclip.getHeight();
            height = nexclip.getWidth();
        }
        Rect rect2 = new Rect(0, 0, width, height);
        Rect rect3 = new Rect(0, 0, 1, 1);
        if (nexclip.getClipType() == 1) {
            RectF rectF = new RectF();
            if (this.c != null) {
                rectF = this.c.FaceRect(nexclip.getPath());
            }
            rect2.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
            if (rect2.isEmpty()) {
                rect = new Rect(0, 0, width, height);
                nexCollage.a(rect, this.q);
                nexCollage.b(rect, width, height);
                nexCollage.b(rect3, width, height);
                nexdrawinfo.setStartRect(rect);
                nexdrawinfo.setEndRect(rect);
                nexdrawinfo.setFaceRect(rect3);
                if (nexclip.getClipType() != 4) {
                    nexdrawinfo.setRotateState(nexclip.getRotateInMeta());
                } else {
                    nexdrawinfo.setRotateState(0);
                }
                nexdrawinfo.setUserRotateState(0);
                nexdrawinfo.setUserTranslate(0, 0);
                nexdrawinfo.setRealScale(1.0f);
                nexdrawinfo.setBrightness(0);
                this.r = null;
                this.s = null;
                this.b = new RectF(0.0f, 0.0f, (float) width, (float) height);
                nexclip2 = this.a;
                this.a = nexclip;
                this.t = null;
                a(true);
                if (this.c != null) {
                    return false;
                }
                this.c.SourceChanged(nexclip2, this.a);
                return true;
            }
            rect3.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
            int i = (rect2.right - rect2.left) / 2;
            rect2.left -= i;
            rect2.right = i + rect2.right;
            if (rect2.left < 0) {
                rect2.left = 0;
            }
            if (rect2.right > width) {
                rect2.right = width;
            }
            i = (rect2.bottom - rect2.top) / 2;
            rect2.top -= i;
            rect2.bottom = i + rect2.bottom;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
            if (rect2.bottom > height) {
                rect2.bottom = height;
            }
        }
        rect = rect2;
        nexCollage.a(rect, this.q);
        nexCollage.b(rect, width, height);
        nexCollage.b(rect3, width, height);
        nexdrawinfo.setStartRect(rect);
        nexdrawinfo.setEndRect(rect);
        nexdrawinfo.setFaceRect(rect3);
        if (nexclip.getClipType() != 4) {
        }
        nexdrawinfo.setUserRotateState(0);
        nexdrawinfo.setUserTranslate(0, 0);
        nexdrawinfo.setRealScale(1.0f);
        nexdrawinfo.setBrightness(0);
        this.r = null;
        this.s = null;
        this.b = new RectF(0.0f, 0.0f, (float) width, (float) height);
        nexclip2 = this.a;
        this.a = nexclip;
        this.t = null;
        a(true);
        if (this.c != null) {
        }
    }

    public boolean a(nexClip nexclip, nexDrawInfo nexdrawinfo) {
        if (nexclip == null || nexdrawinfo == null || this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return false;
        }
        Rect rect;
        nexclip.clearDrawInfos();
        nexclip.addDrawInfo(nexdrawinfo);
        nexclip.mStartTime = this.a.mStartTime;
        nexclip.mEndTime = this.a.mEndTime;
        if (nexclip.getClipType() == 1) {
            nexclip.setImageClipDuration(this.a.getProjectDuration());
        }
        int width = nexclip.getWidth();
        int height = nexclip.getHeight();
        if (nexclip.getRotateInMeta() == 90 || nexclip.getRotateInMeta() == nexClip.kClip_Rotate_270) {
            width = nexclip.getHeight();
            height = nexclip.getWidth();
        }
        this.b = new RectF(0.0f, 0.0f, (float) width, (float) height);
        this.a = nexclip;
        Rect rect2 = new Rect(0, 0, width, height);
        Rect rect3 = new Rect(0, 0, 1, 1);
        if (nexclip.getClipType() == 1) {
            RectF rectF = new RectF();
            if (this.c != null) {
                rectF = this.c.FaceRect(nexclip.getPath());
            }
            rect2.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
            if (rect2.isEmpty()) {
                rect = new Rect(0, 0, width, height);
                nexCollage.a(rect, this.q);
                nexCollage.b(rect, width, height);
                nexCollage.b(rect3, width, height);
                nexdrawinfo.setStartRect(rect);
                nexdrawinfo.setEndRect(rect);
                nexdrawinfo.setFaceRect(rect3);
                this.r = null;
                this.s = null;
                this.b = new RectF(0.0f, 0.0f, (float) width, (float) height);
                this.t = null;
                a(false);
                return true;
            }
            rect3.set((int) (rectF.left * ((float) width)), (int) (rectF.top * ((float) height)), (int) (rectF.right * ((float) width)), (int) (rectF.bottom * ((float) height)));
            int i = (rect2.right - rect2.left) / 2;
            rect2.left -= i;
            rect2.right = i + rect2.right;
            if (rect2.left < 0) {
                rect2.left = 0;
            }
            if (rect2.right > width) {
                rect2.right = width;
            }
            i = (rect2.bottom - rect2.top) / 2;
            rect2.top -= i;
            rect2.bottom = i + rect2.bottom;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
            if (rect2.bottom > height) {
                rect2.bottom = height;
            }
        }
        rect = rect2;
        nexCollage.a(rect, this.q);
        nexCollage.b(rect, width, height);
        nexCollage.b(rect3, width, height);
        nexdrawinfo.setStartRect(rect);
        nexdrawinfo.setEndRect(rect);
        nexdrawinfo.setFaceRect(rect3);
        this.r = null;
        this.s = null;
        this.b = new RectF(0.0f, 0.0f, (float) width, (float) height);
        this.t = null;
        a(false);
        return true;
    }

    public nexClip getBindSource() {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0) {
            return null;
        }
        return this.a;
    }

    public boolean setAudioVolume(int i) {
        if (this.a == null || this.a.getDrawInfos() == null || this.a.getDrawInfos().size() <= 0 || this.a.getClipType() == 1) {
            return false;
        }
        if (i == 0) {
            this.a.setAudioOnOff(false);
            return true;
        }
        this.a.setAudioOnOff(true);
        this.a.setClipVolume(i);
        return true;
    }

    public float c() {
        return this.e;
    }

    public float d() {
        return this.f;
    }

    public String e() {
        return this.l;
    }

    float a(PointF pointF, PointF pointF2, PointF pointF3) {
        return ((pointF2.x - pointF.x) * (pointF3.y - pointF.y)) - ((pointF3.x - pointF.x) * (pointF2.y - pointF.y));
    }

    int a(PointF pointF, List<PointF> list) {
        int i = 0;
        int i2 = 0;
        while (i < list.size() - 1) {
            if (((PointF) list.get(i)).y <= pointF.y) {
                if (((PointF) list.get(i + 1)).y > pointF.y && a((PointF) list.get(i), (PointF) list.get(i + 1), pointF) > 0.0f) {
                    i2++;
                }
            } else if (((PointF) list.get(i + 1)).y <= pointF.y && a((PointF) list.get(i), (PointF) list.get(i + 1), pointF) < 0.0f) {
                i2--;
            }
            i++;
            i2 = i2;
        }
        return i2;
    }

    public boolean a(float f, float f2) {
        if (this.h == null || this.h.size() <= 0) {
            if (this.g != null) {
                return this.g.contains(f, f2);
            }
            return false;
        } else if (a(new PointF(f, f2), this.h) > 0) {
            return true;
        } else {
            return false;
        }
    }

    protected void a(nexClip nexclip) {
        this.a = nexclip;
        if (this.a != null) {
            int width = nexclip.getWidth();
            int height = nexclip.getHeight();
            if (nexclip.getRotateInMeta() == 90 || nexclip.getRotateInMeta() == nexClip.kClip_Rotate_270) {
                width = nexclip.getHeight();
                height = nexclip.getWidth();
            }
            this.b = new RectF(0.0f, 0.0f, (float) width, (float) height);
        }
    }

    protected void b(float f) {
        this.q = f;
    }

    protected String a(String str) {
        if (this.a == null) {
            return "";
        }
        return new SimpleDateFormat(str).format(new Date(new File(this.a.getPath()).lastModified()));
    }

    protected String a(nexProject nexproject, int i) {
        int i2 = (int) (this.e * ((float) i));
        int i3 = ((int) (this.f * ((float) i))) - i2;
        if (!(this.m == null || this.m.length() <= 0 || this.m.equals("none"))) {
            nexproject.updateProject();
            nexClip supportedClip = nexClip.getSupportedClip(nexAssetPackageManager.getAssetPackageMediaPath(com.nexstreaming.kminternal.kinemaster.config.a.a().b(), this.m));
            if (supportedClip != null) {
                int totalTime = supportedClip.getTotalTime();
                int parseFloat = (int) (Float.parseFloat(this.n) * ((float) i));
                supportedClip.setCollageDrawInfoID(this.i);
                supportedClip.setAssetResource(true);
                nexproject.addAudio(supportedClip, i2 + parseFloat, (i2 + parseFloat) + totalTime);
            }
        }
        return null;
    }

    int f() {
        return this.o;
    }

    int g() {
        return this.p;
    }

    String a(JSONObject jSONObject) {
        float f = Float.MAX_VALUE;
        try {
            this.e = Float.parseFloat(jSONObject.getString("start"));
            this.f = Float.parseFloat(jSONObject.getString("end"));
            if (jSONObject.has("position")) {
                String[] split = jSONObject.getString("position").replace(" ", "").split(",");
                if (split == null) {
                    return "Wrong position data of drawinfo";
                }
                this.h.clear();
                float parseFloat;
                float parseFloat2;
                float parseFloat3;
                if (split.length == 4) {
                    parseFloat = Float.parseFloat(split[0]);
                    parseFloat2 = Float.parseFloat(split[1]);
                    f = Float.parseFloat(split[2]);
                    parseFloat3 = Float.parseFloat(split[3]);
                    PointF pointF = new PointF(parseFloat, parseFloat2);
                    PointF pointF2 = new PointF(f, parseFloat2);
                    PointF pointF3 = new PointF(f, parseFloat3);
                    PointF pointF4 = new PointF(parseFloat, parseFloat3);
                    this.h.add(pointF);
                    this.h.add(pointF2);
                    this.h.add(pointF3);
                    this.h.add(pointF4);
                    this.h.add(pointF);
                    this.g = new RectF(parseFloat, parseFloat2, f, parseFloat3);
                } else {
                    parseFloat3 = Float.MIN_VALUE;
                    float f2 = Float.MAX_VALUE;
                    parseFloat = Float.MIN_VALUE;
                    for (int i = 0; i < split.length; i += 2) {
                        float parseFloat4 = Float.parseFloat(split[i]);
                        parseFloat2 = Float.parseFloat(split[i + 1]);
                        if (f2 > parseFloat4) {
                            f2 = parseFloat4;
                        }
                        if (parseFloat3 < parseFloat4) {
                            parseFloat3 = parseFloat4;
                        }
                        if (f > parseFloat2) {
                            f = parseFloat2;
                        }
                        if (parseFloat < parseFloat2) {
                            parseFloat = parseFloat2;
                        }
                        this.h.add(new PointF(parseFloat4, parseFloat2));
                    }
                    this.g = new RectF(f2, f, parseFloat3, parseFloat);
                }
            }
            this.i = jSONObject.getString("draw_id");
            this.j = jSONObject.getString("source_type");
            this.k = jSONObject.getString("source_default");
            this.l = jSONObject.getString("lut");
            this.m = jSONObject.getString("audio_res");
            this.n = jSONObject.getString("audio_res_pos");
            if (jSONObject.has("draw_width")) {
                this.o = Integer.parseInt(jSONObject.getString("draw_width"));
            }
            if (jSONObject.has("draw_height")) {
                this.p = Integer.parseInt(jSONObject.getString("draw_height"));
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(d, "parse Collage failed : " + e.getMessage());
            return e.getMessage();
        }
    }
}
