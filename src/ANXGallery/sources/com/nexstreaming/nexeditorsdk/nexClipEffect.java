package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.e;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.util.n;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.exception.InvalidRangeException;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexEffectOf;
import java.io.IOException;

public final class nexClipEffect extends nexEffect implements Cloneable {
    private int mShowEndTime;
    private int mShowStartTime;

    protected static nexClipEffect clone(nexClipEffect nexclipeffect) {
        nexClipEffect nexclipeffect2;
        CloneNotSupportedException e;
        try {
            nexclipeffect2 = (nexClipEffect) nexclipeffect.clone();
            try {
                nexclipeffect2.mShowEndTime = nexclipeffect.mShowEndTime;
                nexclipeffect2.mShowStartTime = nexclipeffect.mShowStartTime;
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return nexclipeffect2;
            }
        } catch (CloneNotSupportedException e3) {
            CloneNotSupportedException cloneNotSupportedException = e3;
            nexclipeffect2 = null;
            e = cloneNotSupportedException;
            e.printStackTrace();
            return nexclipeffect2;
        }
        return nexclipeffect2;
    }

    nexClipEffect() {
        this.mShowStartTime = 0;
        this.mShowEndTime = 10000;
        this.mType = 1;
    }

    nexClipEffect(String str) {
        this.mShowStartTime = 0;
        this.mShowEndTime = 10000;
        this.mID = str;
        this.mType = 2;
    }

    public void setEffect(String str) {
        super.setEffect(str, 2);
    }

    public void setTitle(String str) {
        this.mUpdated = true;
        setTitle(0, str);
    }

    public String getTitle() {
        return getTitle(0);
    }

    public String getName(Context context) {
        if (this.mType == 0) {
            return "None Clip Effect";
        }
        if (this.mType == 1) {
            return "Theme Clip Effect";
        }
        f c = c.a().c(this.mID);
        if (c != null) {
            if (context != null) {
                this.mName = n.a(context, c.getLabel());
                if (this.mName == null) {
                    this.mName = (String) c.getLabel().get("en");
                }
            } else {
                this.mName = (String) c.getLabel().get("en");
            }
        }
        return this.mName;
    }

    public String getDesc(Context context) {
        if (this.mType == 0) {
            return "None Clip Effect";
        }
        if (this.mType == 1) {
            return "Theme Clip Effect";
        }
        if (context == null) {
            return null;
        }
        f c = c.a().c(this.mID);
        if (c != null) {
            return (String) c.getLabel().get("en");
        }
        return null;
    }

    public Bitmap getIcon() {
        if (this.mID != null) {
            f c = c.a().c(this.mID);
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

    public void setShowStartTime(int i) {
        if (this.mShowEndTime < i) {
            throw new InvalidRangeException(i, this.mShowEndTime);
        }
        this.mShowStartTime = i;
    }

    public void setShowEndTime(int i) {
        if (this.mShowStartTime > i) {
            throw new InvalidRangeException(this.mShowStartTime, i);
        }
        this.mShowEndTime = i;
    }

    public void setEffectShowTime(int i, int i2) {
        if (i2 < i) {
            throw new InvalidRangeException(i, i2);
        }
        this.mShowStartTime = i;
        this.mShowEndTime = i2;
    }

    public int getShowStartTime() {
        return this.mShowStartTime;
    }

    public int getShowEndTime() {
        return this.mShowEndTime;
    }

    public void setAutoTheme() {
        this.mType = 1;
    }

    public String getCategoryTitle(Context context) {
        if (this.mType == 0) {
            return "None";
        }
        if (this.mType == 1) {
            return "Theme";
        }
        f c = c.a().c(this.mID);
        if (c != null) {
            return c.getCategory().toString();
        }
        return null;
    }

    nexEffectOf getSaveData() {
        nexEffectOf nexeffectof = new nexEffectOf();
        nexeffectof.mID = this.mID;
        nexeffectof.mAutoID = this.mAutoID;
        nexeffectof.mName = this.mName;
        nexeffectof.mType = this.mType;
        nexeffectof.mDuration = this.mDuration;
        nexeffectof.itemMethodType = this.itemMethodType;
        nexeffectof.mIsResolveOptions = this.mIsResolveOptions;
        nexeffectof.mOptionsUpdate = this.mOptionsUpdate;
        nexeffectof.m_effectOptions = this.m_effectOptions;
        nexeffectof.mShowStartTime = this.mShowStartTime;
        nexeffectof.mShowEndTime = this.mShowEndTime;
        nexeffectof.mMinDuration = 0;
        nexeffectof.mMaxDuration = 0;
        nexeffectof.mEffectOffset = 0;
        nexeffectof.mEffectOverlap = 0;
        return nexeffectof;
    }

    nexClipEffect(nexEffectOf nexeffectof) {
        this.mShowStartTime = 0;
        this.mShowEndTime = 10000;
        this.mID = nexeffectof.mID;
        this.mAutoID = nexeffectof.mAutoID;
        this.mName = nexeffectof.mName;
        this.mType = nexeffectof.mType;
        this.mDuration = nexeffectof.mDuration;
        this.itemMethodType = nexeffectof.itemMethodType;
        this.mIsResolveOptions = nexeffectof.mIsResolveOptions;
        this.mOptionsUpdate = nexeffectof.mOptionsUpdate;
        this.m_effectOptions = nexeffectof.m_effectOptions;
        this.mShowStartTime = nexeffectof.mShowStartTime;
        this.mShowEndTime = nexeffectof.mShowEndTime;
    }
}
