package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.util.AttributeSet;
import com.nexstreaming.app.common.nexasset.preview.a;

public class nexEffectPreviewView extends a {
    nexEffectPreviewView(Context context) {
        super(context);
        super.setAspectRatio(nexApplicationConfig.getAspectRatio());
    }

    public nexEffectPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setAspectRatio(nexApplicationConfig.getAspectRatio());
    }

    public void setEffect(String str) {
        super.setEffect(str);
    }

    public void setEffectTime(int i) {
        super.setEffectTime(i);
    }

    public void setEffectOptions(String str) {
        super.setEffectOptions(str);
    }
}
