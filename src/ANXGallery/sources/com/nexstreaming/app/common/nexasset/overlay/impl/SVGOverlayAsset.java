package com.nexstreaming.app.common.nexasset.overlay.impl;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.RectF;
import android.util.Log;
import com.larvalabs.svgandroid.SVGParseException;
import com.larvalabs.svgandroid.SVGParser;
import com.larvalabs.svgandroid.b;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.AwakeAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayMotion;
import com.nexstreaming.app.common.util.c;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class SVGOverlayAsset extends AbstractOverlayAsset {
    public static final int COLOR_REPLACEMENT_TOLERANCE = 50;
    private static final String LOG_TAG = "SVGOverlayAsset";
    private static final int MAX_TEX_SIZE = 2000;
    private static int serial = 0;
    private int height;
    private int width;

    public SVGOverlayAsset(f fVar) throws IOException {
        super(fVar);
        b svg = getSVG(null);
        if (svg != null) {
            this.width = svg.b().getWidth();
            this.height = svg.b().getHeight();
        }
    }

    private b getSVG(Map<String, String> map) throws IOException {
        Map hashMap;
        Closeable a;
        Throwable e;
        Object a2;
        b bVar = null;
        Object hashMap2;
        if (map != null) {
            b bVar2 = bVar;
            for (Entry entry : map.entrySet()) {
                if (((String) entry.getKey()).startsWith("color:svgcolor_")) {
                    int a3 = c.a(((String) entry.getKey()).replace("color:svgcolor_", "#"));
                    int a4 = c.a((String) entry.getValue());
                    if (bVar2 == null) {
                        hashMap2 = new HashMap();
                    } else {
                        hashMap2 = bVar2;
                    }
                    hashMap2.put(Integer.valueOf(a3), Integer.valueOf(a4));
                } else {
                    hashMap2 = bVar2;
                }
                Object bVar22 = hashMap2;
            }
            hashMap2 = bVar22;
        } else {
            hashMap2 = bVar;
        }
        Closeable assetPackageReader;
        try {
            assetPackageReader = getAssetPackageReader();
            try {
                a2 = assetPackageReader.a(getItemInfo().getFilePath());
            } catch (SVGParseException e2) {
                e = e2;
                a2 = bVar;
                try {
                    Log.e(LOG_TAG, e.getMessage(), e);
                    com.nexstreaming.app.common.util.b.a(a2);
                    com.nexstreaming.app.common.util.b.a(assetPackageReader);
                    return bVar;
                } catch (Throwable th) {
                    e = th;
                    com.nexstreaming.app.common.util.b.a(a2);
                    com.nexstreaming.app.common.util.b.a(assetPackageReader);
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
                a2 = bVar;
                com.nexstreaming.app.common.util.b.a(a2);
                com.nexstreaming.app.common.util.b.a(assetPackageReader);
                throw e;
            }
            try {
                bVar = SVGParser.a((InputStream) a2, hashMap2, 50);
                com.nexstreaming.app.common.util.b.a(a2);
                com.nexstreaming.app.common.util.b.a(assetPackageReader);
            } catch (SVGParseException e3) {
                e = e3;
                Log.e(LOG_TAG, e.getMessage(), e);
                com.nexstreaming.app.common.util.b.a(a2);
                com.nexstreaming.app.common.util.b.a(assetPackageReader);
                return bVar;
            }
        } catch (SVGParseException e4) {
            e = e4;
            a2 = bVar;
            assetPackageReader = bVar;
        } catch (Throwable th3) {
            e = th3;
            a2 = bVar;
            assetPackageReader = bVar;
            com.nexstreaming.app.common.util.b.a(a2);
            com.nexstreaming.app.common.util.b.a(assetPackageReader);
            throw e;
        }
        return bVar;
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

    public AwakeAsset onAwake(LayerRenderer layerRenderer, final RectF rectF, String str, Map<String, String> map) {
        final int i = serial;
        serial = i + 1;
        try {
            b svg = getSVG(map);
            if (svg == null) {
                return null;
            }
            float max = (float) (2000 / Math.max(this.width, this.height));
            Picture b = svg.b();
            final Bitmap createBitmap = Bitmap.createBitmap((int) Math.floor((double) (((float) this.width) * 1.0f)), (int) Math.floor((double) (((float) this.height) * 1.0f)), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            canvas.scale(1.0f, 1.0f);
            b.draw(canvas);
            Log.d(LOG_TAG, "onAwake OUT : [#" + i + "] actualScale=" + 1.0f + " bm=" + createBitmap.getWidth() + "x" + createBitmap.getHeight());
            return new AwakeAsset() {
                public void onAsleep(LayerRenderer layerRenderer) {
                    Log.d(SVGOverlayAsset.LOG_TAG, "onAsleep [#" + i + "]");
                }

                public void onRender(LayerRenderer layerRenderer, OverlayMotion overlayMotion, int i, int i2) {
                    Log.d(SVGOverlayAsset.LOG_TAG, "onRender [#" + i + "]=" + rectF.toString());
                    layerRenderer.a(createBitmap, rectF.left, rectF.top, rectF.right, rectF.bottom);
                }

                public boolean needRendererReawakeOnEditResize() {
                    return true;
                }

                public boolean onRefresh(LayerRenderer layerRenderer, RectF rectF, String str) {
                    return false;
                }
            };
        } catch (Throwable e) {
            Log.e(LOG_TAG, "Error loading asset", e);
            return null;
        }
    }
}
