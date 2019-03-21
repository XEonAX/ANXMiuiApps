package com.miui.gallery.collage.core;

import android.content.Context;
import android.graphics.Bitmap;
import com.miui.gallery.collage.BitmapManager;

public abstract class RenderEngine {
    protected final BitmapManager mBitmapManager;
    protected final Context mContext;

    public abstract Bitmap render(RenderData renderData);

    protected RenderEngine(Context context, BitmapManager bitmapManager) {
        this.mContext = context.getApplicationContext();
        this.mBitmapManager = bitmapManager;
    }
}
