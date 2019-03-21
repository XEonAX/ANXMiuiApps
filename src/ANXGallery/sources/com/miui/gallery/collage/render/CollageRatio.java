package com.miui.gallery.collage.render;

import com.miui.gallery.R;

public enum CollageRatio {
    RATIO_3_4(R.drawable.collage_ratio_3_4, 0.75f),
    RATIO_1_1(R.drawable.collage_ratio_1_1, 1.0f);
    
    public final int iconRes;
    public final float ratio;

    private CollageRatio(int iconRes, float ratio) {
        this.iconRes = iconRes;
        this.ratio = ratio;
    }
}
