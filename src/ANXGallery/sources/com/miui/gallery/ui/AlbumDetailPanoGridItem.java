package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.miui.gallery.R;
import com.miui.gallery.util.Log;

public class AlbumDetailPanoGridItem extends AlbumDetailGridItem {
    public AlbumDetailPanoGridItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected boolean isSquareItem() {
        return false;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int heightScale = getResources().getInteger(R.integer.album_detail_pano_item_height_scale);
        int widthScale = getResources().getInteger(R.integer.album_detail_pano_item_width_scale);
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int height = (width * heightScale) / widthScale;
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(height, 1073741824));
        Log.d("AlbumDetailPanoGridItem", "onMeasure w: %d, h: %d", Integer.valueOf(width), Integer.valueOf(height));
    }
}
