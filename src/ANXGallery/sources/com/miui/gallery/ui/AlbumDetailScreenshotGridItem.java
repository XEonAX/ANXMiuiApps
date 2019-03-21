package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.miui.gallery.Config.ScreenConfig;
import com.miui.gallery.util.Log;

public class AlbumDetailScreenshotGridItem extends AlbumDetailGridItem {
    public AlbumDetailScreenshotGridItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected boolean isSquareItem() {
        return false;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int screenHeight = Math.max(ScreenConfig.getRealScreenHeight(), ScreenConfig.getRealScreenWidth());
        int screenWidth = Math.min(ScreenConfig.getRealScreenHeight(), ScreenConfig.getRealScreenWidth());
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int height = (width * screenHeight) / screenWidth;
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(height, 1073741824));
        Log.d("AlbumDetailScreenshotGridItem", "onMeasure w: %d, h: %d", Integer.valueOf(width), Integer.valueOf(height));
    }
}
