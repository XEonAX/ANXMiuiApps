package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint.Style;
import android.text.TextPaint;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Category;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.Item;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.ItemMethodType;
import com.nexstreaming.nexeditorsdk.nexOverlayTitle.TitleInfoListener;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class nexOverlayManager {
    private static final String TAG = "nexOverlayManager";
    private static Context mAppContext;
    private static boolean sAutoAspectSelect = true;
    private static nexOverlayManager sSingleton = null;
    private List<Overlay> externalView_overlayEntries = null;
    private Object m_overlayEntryLock = new Object();
    private List<Overlay> overlayEntries = new ArrayList();
    private nexOverlayTitle overlayTitle = null;

    public static class Overlay extends c {
        private float[] aspect;
        private String[] ids;
        private int maxAspect;
        private int selectAspect;
        private int tag;

        private Overlay(Item item) {
            super(item);
        }

        public String id() {
            if (nexOverlayManager.sAutoAspectSelect) {
                selectAspect();
            }
            return this.ids[this.selectAspect];
        }

        public String name(String str) {
            String assetName = packageInfo().assetName(str);
            return assetName != null ? assetName : super.name(str);
        }

        public String getId() {
            return id();
        }

        public String getName(String str) {
            return name(str);
        }

        public Bitmap getIcon() {
            return icon();
        }

        public Bitmap getThumbnail() {
            return thumbnail();
        }

        public float getRatio() {
            if (nexOverlayManager.sAutoAspectSelect) {
                selectAspect();
            }
            return this.aspect[this.selectAspect];
        }

        public boolean includeSubtitle() {
            if (this.ids == null) {
                return false;
            }
            for (String contains : this.ids) {
                if (contains.contains("sub")) {
                    return true;
                }
            }
            return false;
        }

        public int getTag() {
            return this.tag;
        }

        public void setTag(int i) {
            this.tag = i;
        }

        private static Overlay promote(Item item) {
            if (item.category() == Category.overlay && item.type() == ItemMethodType.ItemTemplate) {
                return new Overlay(item);
            }
            return null;
        }

        public float[] getSupportedAspects() {
            float[] fArr = new float[this.maxAspect];
            for (int i = 0; i < fArr.length; i++) {
                fArr[i] = this.aspect[i];
            }
            return fArr;
        }

        public void selectAspect(int i) {
            if (this.maxAspect > i) {
                this.selectAspect = i;
            }
        }

        private void selectAspect() {
            float aspectRatio = nexApplicationConfig.getAspectRatio();
            float f = 3.0f;
            for (int i = 0; i < this.maxAspect; i++) {
                float f2 = aspectRatio - this.aspect[i];
                if (f2 < 0.0f) {
                    f2 *= -1.0f;
                }
                if (f > f2) {
                    this.selectAspect = i;
                    f = f2;
                }
            }
        }

        void setAspect(String str) {
            if (this.maxAspect < 5) {
                if (this.aspect == null) {
                    this.aspect = new float[5];
                    this.ids = new String[5];
                }
                if (str.contains("9v16")) {
                    this.aspect[this.maxAspect] = 0.5625f;
                } else if (str.contains("2v1")) {
                    this.aspect[this.maxAspect] = 2.0f;
                } else if (str.contains("1v2")) {
                    this.aspect[this.maxAspect] = 0.5f;
                } else if (str.contains("1v1")) {
                    this.aspect[this.maxAspect] = 1.0f;
                } else {
                    this.aspect[this.maxAspect] = 1.7777778f;
                }
                this.ids[this.maxAspect] = str;
                this.maxAspect++;
                selectAspect();
            }
        }
    }

    public static class nexTitleInfo {
        private TextPaint cachePaint;
        private boolean changeText;
        private String fontID;
        private int fontSize;
        private String group;
        private int id;
        private int overlayHeight;
        private int overlayWidth;
        private int realMaxFontSize;
        private String text;
        private String textDesc;
        private int textMaxLen;

        /* synthetic */ nexTitleInfo(int i, int i2, String str, AnonymousClass1 anonymousClass1) {
            this(i, i2, str);
        }

        private nexTitleInfo(int i, int i2, String str) {
            this.id = i;
            this.textMaxLen = i2;
            this.textDesc = str;
        }

        public int getId() {
            return this.id;
        }

        public String getText() {
            return this.text;
        }

        public void setText(String str) {
            this.text = str;
        }

        public String getTextDesc() {
            return this.textDesc;
        }

        public int getTextMaxLen() {
            return this.textMaxLen;
        }

        public String getFontID() {
            return this.fontID;
        }

        public void setFontID(String str) {
            this.fontID = str;
            this.changeText = true;
        }

        public int getFontSize() {
            return this.fontSize;
        }

        public void setFontSize(int i) {
            this.fontSize = i;
            this.changeText = true;
        }

        public int getOverlayWidth() {
            return this.overlayWidth;
        }

        public int getOverlayHeight() {
            return this.overlayHeight;
        }

        public int getMaxFontSize() {
            calcFontSize();
            return this.realMaxFontSize;
        }

        void setOverlayResolution(int i, int i2) {
            this.overlayWidth = i;
            this.overlayHeight = i2;
        }

        public int getTextWidth(String str) {
            TextPaint textPaint = new TextPaint();
            textPaint.setTypeface(nexFont.getTypeface(nexOverlayManager.mAppContext, this.fontID));
            textPaint.setTextSize((float) this.fontSize);
            return (int) textPaint.measureText(str);
        }

        private synchronized void calcFontSize() {
            if (this.changeText || this.realMaxFontSize <= 0) {
                if (this.cachePaint == null) {
                    this.cachePaint = new TextPaint();
                } else {
                    this.cachePaint.reset();
                }
                int i = this.overlayHeight - 4;
                this.cachePaint.setTextSize((float) i);
                this.cachePaint.setTypeface(nexFont.getTypeface(a.a().b(), this.fontID));
                this.cachePaint.setAntiAlias(true);
                this.cachePaint.setStyle(Style.FILL_AND_STROKE);
                while (((int) this.cachePaint.getFontSpacing()) >= this.overlayHeight - 4 && i >= 10) {
                    i -= 10;
                    this.cachePaint.setTextSize((float) i);
                }
                this.realMaxFontSize = i;
                this.changeText = false;
            }
        }

        public synchronized int getTextHeight(String str) {
            if (this.cachePaint == null) {
                this.cachePaint = new TextPaint();
            } else {
                this.cachePaint.reset();
            }
            this.cachePaint.setTextSize((float) this.fontSize);
            this.cachePaint.setTypeface(nexFont.getTypeface(a.a().b(), this.fontID));
            this.cachePaint.setAntiAlias(true);
            this.cachePaint.setStyle(Style.FILL_AND_STROKE);
            return (int) this.cachePaint.getFontSpacing();
        }

        String getGroup() {
            return this.group;
        }

        void setGroup(String str) {
            this.group = str;
        }
    }

    public static void setAutoSelectFromAspect(boolean z) {
        sAutoAspectSelect = z;
    }

    private nexOverlayManager(Context context, Context context2) {
        mAppContext = context;
    }

    public static nexOverlayManager getOverlayManager(Context context, Context context2) {
        if (sSingleton != null) {
            nexOverlayManager nexoverlaymanager = sSingleton;
            if (!mAppContext.getPackageName().equals(context.getPackageName())) {
                sSingleton = null;
            }
        }
        if (sSingleton == null) {
            sSingleton = new nexOverlayManager(context, context2);
        }
        return sSingleton;
    }

    private Overlay getAssetOverlay(String str) {
        for (Overlay overlay : this.overlayEntries) {
            if (overlay.packageInfo().assetId().compareTo(str) == 0) {
                return overlay;
            }
        }
        return null;
    }

    private void resolveOverlay() {
        synchronized (this.m_overlayEntryLock) {
            this.overlayEntries.clear();
            for (Item item : nexAssetPackageManager.getAssetPackageManager(a.a().b()).getInstalledAssetItems(Category.overlay)) {
                if (item.type() == ItemMethodType.ItemTemplate) {
                    Overlay assetOverlay = getAssetOverlay(item.packageInfo().assetId());
                    if (assetOverlay == null) {
                        assetOverlay = Overlay.promote(item);
                        this.overlayEntries.add(assetOverlay);
                    }
                    assetOverlay.setAspect(item.id());
                }
            }
        }
    }

    boolean updateOverlayTitle(boolean z, Item item) {
        synchronized (this.m_overlayEntryLock) {
            Overlay assetOverlay;
            if (!z) {
                for (Overlay assetOverlay2 : this.overlayEntries) {
                    if (assetOverlay2.packageInfo().assetId().compareTo(item.packageInfo().assetId()) == 0) {
                        this.overlayEntries.remove(assetOverlay2);
                        break;
                    }
                }
            }
            assetOverlay2 = getAssetOverlay(item.packageInfo().assetId());
            if (assetOverlay2 == null) {
                assetOverlay2 = Overlay.promote(item);
                this.overlayEntries.add(assetOverlay2);
            }
            assetOverlay2.setAspect(item.id());
        }
        return false;
    }

    public void loadOverlay() {
        resolveOverlay();
    }

    public List<Overlay> getOverlays(boolean z) {
        List<Overlay> arrayList;
        Log.d(TAG, "getOverlays total : " + this.overlayEntries.size() + " match : " + z);
        synchronized (this.m_overlayEntryLock) {
            arrayList = new ArrayList();
            float aspectRatio = nexApplicationConfig.getAspectRatio();
            for (Overlay overlay : this.overlayEntries) {
                if (!z) {
                    arrayList.add(overlay);
                } else if (overlay.getRatio() == aspectRatio) {
                    arrayList.add(overlay);
                }
            }
        }
        return arrayList;
    }

    public List<Overlay> getOverlays() {
        Log.d(TAG, "getOverlays total : " + this.overlayEntries.size());
        if (this.externalView_overlayEntries == null) {
            this.externalView_overlayEntries = Collections.unmodifiableList(this.overlayEntries);
        }
        return this.externalView_overlayEntries;
    }

    public boolean parseOverlay(String str, final List<nexTitleInfo> list) {
        this.overlayTitle = new nexOverlayTitle();
        if (str != null) {
            Log.d(TAG, "parseOverlay with : " + str);
        }
        try {
            if (AssetPackageJsonToString(str) != null) {
                String a = this.overlayTitle.a(new JSONObject(AssetPackageJsonToString(str)), new TitleInfoListener() {
                    public void OnTitleInfoListener(int i, String str, int i2, String str2, int i3, String str3, String str4, int i4, int i5) {
                        if (list != null) {
                            nexTitleInfo nextitleinfo = new nexTitleInfo(i, i3, str3, null);
                            nextitleinfo.setText(str2);
                            nextitleinfo.setFontID(str);
                            nextitleinfo.setFontSize(i2);
                            nextitleinfo.setGroup(str4);
                            nextitleinfo.setOverlayResolution(i4, i5);
                            list.add(nextitleinfo);
                        }
                    }
                });
                if (a == null) {
                    return true;
                }
                Log.d(TAG, "json parse failed" + a);
                list.clear();
                return false;
            }
            Log.d(TAG, "json create failed overlayid is null");
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d(TAG, "json create failed" + e.getMessage());
            return false;
        }
    }

    public boolean applyOverlayToProjectById(nexProject nexproject, String str, List<nexTitleInfo> list) {
        Log.d(TAG, "applyOverlayToProjectById with : " + str);
        parseOverlay(str, null);
        if (this.overlayTitle == null) {
            Log.d(TAG, "Overlay data did not exist");
            return false;
        } else if (this.overlayTitle.a(mAppContext, nexproject, (List) list) == null) {
            return true;
        } else {
            Log.d(TAG, "Overlay apply failed");
            return false;
        }
    }

    public boolean clearOverlayToProject(nexProject nexproject) {
        if (this.overlayTitle == null) {
            Log.d(TAG, "Overlay data did not exist");
            return false;
        } else if (this.overlayTitle.a(nexproject) == null) {
            return true;
        } else {
            Log.d(TAG, "Overlay apply failed");
            return false;
        }
    }

    public void uninstallPackageById(String str) {
        nexAssetPackageManager.getAssetPackageManager(a.a().b()).uninstallPackageById(str);
    }

    private String AssetPackageJsonToString(String str) {
        String str2 = null;
        f c = c.a().c(str);
        if (c == null) {
            Log.e(TAG, "AssetPackageJsonToString info fail=" + str);
        } else if (c.a().a(c.getAssetPackage())) {
            Log.e(TAG, "AssetPackageJsonToString expire id=" + str);
        } else {
            try {
                Closeable a = AssetPackageReader.a(a.a().b(), c.getPackageURI(), c.getAssetPackage().getAssetId());
                try {
                    InputStream a2 = a.a(c.getFilePath());
                    if (a2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a2));
                        StringBuilder stringBuilder = new StringBuilder();
                        while (true) {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuilder.append(readLine);
                            stringBuilder.append("\n");
                        }
                        a2.close();
                        str2 = stringBuilder.toString();
                    } else {
                        b.a(a);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    b.a(a);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return str2;
    }
}
