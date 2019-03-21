package com.nexstreaming.app.common.nexasset.overlay.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.RectF;
import android.util.Log;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.AwakeAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayMotion;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import java.io.Closeable;
import java.io.IOException;
import java.util.Map;

public class BitmapOverlayAsset extends AbstractOverlayAsset {
    private static final String LOG_TAG = "BitmapOverlayAsset";
    private static final int MAX_TEX_SIZE = 2000;
    private int height;
    private int width;

    public BitmapOverlayAsset(f fVar) throws IOException {
        super(fVar);
        Options options = new Options();
        options.inJustDecodeBounds = true;
        Closeable a = getAssetPackageReader().a(fVar.getFilePath());
        try {
            BitmapFactory.decodeStream(a, null, options);
            this.width = options.outWidth;
            this.height = options.outHeight;
        } finally {
            b.a(a);
        }
    }

    public int getIntrinsicWidth() {
        return this.width;
    }

    public int getIntrinsicHeight() {
        return this.height;
    }

    public int getDefaultDuration() {
        return 0;
    }

    private Bitmap loadBitmap(Options options) {
        Throwable th;
        Bitmap bitmap = null;
        Closeable a;
        try {
            a = getAssetPackageReader().a(getItemInfo().getFilePath());
            try {
                bitmap = BitmapFactory.decodeStream(a, null, options);
                b.a(a);
            } catch (IOException e) {
                try {
                    Log.e(LOG_TAG, "");
                    b.a(a);
                    return bitmap;
                } catch (Throwable th2) {
                    th = th2;
                    b.a(a);
                    throw th;
                }
            }
        } catch (IOException e2) {
            a = bitmap;
            Log.e(LOG_TAG, "");
            b.a(a);
            return bitmap;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            a = bitmap;
            th = th4;
            b.a(a);
            throw th;
        }
        return bitmap;
    }

    public AwakeAsset onAwake(LayerRenderer layerRenderer, final RectF rectF, String str, Map<String, String> map) {
        Options options = new Options();
        options.inSampleSize = 1;
        while (options.inSampleSize < 16 && (this.width / options.inSampleSize > 2000 || this.height / options.inSampleSize > 2000)) {
            options.inSampleSize *= 2;
        }
        final Bitmap loadBitmap = loadBitmap(options);
        return new AwakeAsset() {
            public void onAsleep(LayerRenderer layerRenderer) {
            }

            public void onRender(LayerRenderer layerRenderer, OverlayMotion overlayMotion, int i, int i2) {
                if (rectF.left == 0.0f && rectF.top == 0.0f && rectF.right == 0.0f && rectF.bottom == 0.0f) {
                    layerRenderer.a(loadBitmap, 0.0f, 0.0f);
                    return;
                }
                layerRenderer.a(loadBitmap, rectF.left, rectF.top, rectF.right, rectF.bottom);
            }

            public boolean needRendererReawakeOnEditResize() {
                return false;
            }

            public boolean onRefresh(LayerRenderer layerRenderer, RectF rectF, String str) {
                return false;
            }
        };
    }

    public Bitmap getBitmap(float f, int i) {
        Options options = new Options();
        options.inSampleSize = 1;
        while (options.inSampleSize < 16 && (this.width / options.inSampleSize > 2000 || this.height / options.inSampleSize > 2000)) {
            options.inSampleSize *= 2;
        }
        return loadBitmap(options);
    }
}
