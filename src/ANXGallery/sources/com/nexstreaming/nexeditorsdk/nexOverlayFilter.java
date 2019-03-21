package com.nexstreaming.nexeditorsdk;

import android.graphics.Bitmap;
import android.graphics.Rect;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.e;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.OverlayAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayAssetFactory;
import com.nexstreaming.kminternal.kinemaster.config.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

public class nexOverlayFilter {
    private static final int kMaxStringTrackCount = 8;
    private String cacheEncodeOption = "";
    private OverlayAsset cachedOverlayAsset;
    private int height = 700;
    private String id;
    private boolean isRelativeHeight = true;
    private boolean isRelativeWidth = true;
    private String[] mTitles = null;
    private nexEffectOptions option;
    private float relativeHeight = 1.0f;
    private float relativeWidth = 1.0f;
    private boolean updateBound;
    private boolean updateOption;
    private int width = 700;

    nexOverlayFilter(String str) {
        this.id = str;
    }

    public String getId() {
        return this.id;
    }

    public String getName(String str) {
        f c = c.a().c(this.id);
        if (c != null) {
            return (String) c.getLabel().get("en");
        }
        return null;
    }

    public Bitmap getIcon() {
        if (this.id != null) {
            f c = c.a().c(this.id);
            if (c != null) {
                try {
                    return e.a(a.a().b(), c, 0, 0);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public void setTitle(int i, String str) {
        if (this.mTitles == null) {
            this.mTitles = new String[8];
        }
        if (i < 8) {
            this.mTitles[i] = str;
        }
    }

    public String getTitle(int i) {
        if (this.mTitles != null && i < 8) {
            return this.mTitles[i];
        }
        return null;
    }

    String[] getTitles() {
        return this.mTitles;
    }

    public void setWidth(int i) {
        this.isRelativeWidth = false;
        if (this.width != i) {
            this.updateBound = true;
        }
        this.width = i;
    }

    public void setHeight(int i) {
        this.isRelativeHeight = false;
        if (this.height != i) {
            this.updateBound = true;
        }
        this.height = i;
    }

    public int getWidth() {
        if (this.isRelativeWidth) {
            return (int) (((float) nexApplicationConfig.getAspectProfile().getWidth()) * this.relativeWidth);
        }
        return this.width;
    }

    public int getHeight() {
        if (this.isRelativeWidth) {
            return (int) (((float) nexApplicationConfig.getAspectProfile().getHeight()) * this.relativeHeight);
        }
        return this.height;
    }

    public float getRelativeWidth() {
        return this.relativeWidth;
    }

    public void setRelativeWidth(float f) {
        this.isRelativeWidth = true;
        if (this.relativeWidth != f) {
            this.updateBound = true;
        }
        this.relativeWidth = f;
    }

    public float getRelativeHeight() {
        return this.relativeHeight;
    }

    public void setRelativeHeight(float f) {
        this.isRelativeHeight = true;
        if (this.relativeHeight != f) {
            this.updateBound = true;
        }
        this.relativeHeight = f;
    }

    public nexEffectOptions getEffectOption() {
        if (this.option == null) {
            this.option = nexEffectLibrary.getEffectLibrary(a.a().b()).getEffectOptions(a.a().b(), this.id);
            this.option.setEffectType(5);
        }
        this.updateOption = true;
        return this.option;
    }

    OverlayAsset getOverlayAssetFilter() throws IOException, XmlPullParserException {
        if (this.cachedOverlayAsset == null) {
            this.cachedOverlayAsset = OverlayAssetFactory.forItem(this.id);
        }
        return this.cachedOverlayAsset;
    }

    String getEncodedEffectOptions() {
        if (this.option == null) {
            return "";
        }
        if (this.updateOption) {
            this.updateOption = false;
            this.option.clearUpadted();
            this.cacheEncodeOption = nexEffect.getTitleOptions(this.option);
        }
        return this.cacheEncodeOption;
    }

    void getBound(Rect rect) {
        rect.left = 0 - (getWidth() / 2);
        rect.top = 0 - (getHeight() / 2);
        rect.right = (getWidth() / 2) + 0;
        rect.bottom = (getHeight() / 2) + 0;
    }

    boolean isUpdated() {
        if (this.updateBound) {
            return true;
        }
        if (this.option == null) {
            return false;
        }
        return this.option.isUpdated();
    }
}
