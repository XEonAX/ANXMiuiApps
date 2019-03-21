package com.miui.gallery.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;

public class VideoSeekBar extends SeekBar {
    public VideoSeekBar(Context context) {
        super(context);
    }

    public VideoSeekBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public VideoSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setProgressDrawable(Drawable drawable) {
        if (drawable instanceof LayerDrawable) {
            int i;
            boolean hasNinePatch = false;
            LayerDrawable layers = (LayerDrawable) drawable;
            int count = layers.getNumberOfLayers();
            Drawable[] outDrawables = new Drawable[count];
            for (i = 0; i < count; i++) {
                int id = layers.getId(i);
                Drawable child = layers.getDrawable(i);
                if ((id == 16908301 || id == 16908303) && (child instanceof NinePatchDrawable)) {
                    hasNinePatch = true;
                    child = new LevelNinePathDrawable((NinePatchDrawable) child);
                }
                outDrawables[i] = child;
            }
            if (hasNinePatch) {
                Drawable newLayers = new LayerDrawable(outDrawables);
                for (i = 0; i < count; i++) {
                    newLayers.setId(i, layers.getId(i));
                }
                drawable = newLayers;
            }
        }
        super.setProgressDrawable(drawable);
    }
}
