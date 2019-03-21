package com.miui.gallery.collage.core.stitching;

import android.graphics.Bitmap;
import com.miui.gallery.collage.render.CollageRender.BitmapRenderData;
import com.miui.gallery.collage.widget.CollageStitchingLayout.BitmapPositionHolder;

public class StitchingModel {
    public float horizontalOffset;
    public boolean isSquare;
    public String mask;
    public String name;
    public int radius;
    public String relativePath;
    public float verticalOffset;

    private interface BitmapCollection {
        Bitmap get(int i);

        int size();
    }

    public void countHeight(int width, BitmapPositionHolder bitmapPositionHolder, final BitmapRenderData[] bitmaps) {
        countHeight(width, this, bitmapPositionHolder, new BitmapCollection() {
            public int size() {
                return bitmaps.length;
            }

            public Bitmap get(int index) {
                return bitmaps[index].bitmap;
            }
        });
    }

    public void countHeight(int width, BitmapPositionHolder bitmapPositionHolder, final Bitmap[] bitmaps) {
        countHeight(width, this, bitmapPositionHolder, new BitmapCollection() {
            public int size() {
                return bitmaps.length;
            }

            public Bitmap get(int index) {
                return bitmaps[index];
            }
        });
    }

    private static void countHeight(int width, StitchingModel stitchingModel, BitmapPositionHolder bitmapPositionHolder, BitmapCollection bitmaps) {
        int height = 0;
        int horizontalOffset = Math.round(stitchingModel.horizontalOffset * ((float) width));
        int verticalOffset = Math.round(stitchingModel.verticalOffset * ((float) width));
        boolean isSquare = stitchingModel.isSquare;
        int bitmapWidth = width - (horizontalOffset * 2);
        if (bitmaps != null && bitmaps.size() > 0) {
            for (int i = 0; i < bitmaps.size(); i++) {
                Bitmap bitmap = bitmaps.get(i);
                int bitmapHeight = isSquare ? bitmapWidth : Math.round(((float) bitmapWidth) * (((float) bitmap.getHeight()) / ((float) bitmap.getWidth())));
                height += bitmapHeight;
                bitmapPositionHolder.bitmapHeights[i] = bitmapHeight;
            }
            height = horizontalOffset > 0 ? height + ((bitmaps.size() + 1) * verticalOffset) : height + ((bitmaps.size() - 1) * verticalOffset);
        }
        bitmapPositionHolder.bitmapWidth = bitmapWidth;
        bitmapPositionHolder.verticalOffset = verticalOffset;
        bitmapPositionHolder.horizontalOffset = horizontalOffset;
        bitmapPositionHolder.height = height;
    }
}
