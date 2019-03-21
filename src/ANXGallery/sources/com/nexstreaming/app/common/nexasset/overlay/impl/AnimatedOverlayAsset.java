package com.nexstreaming.app.common.nexasset.overlay.impl;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.RectF;
import android.graphics.drawable.PictureDrawable;
import android.util.Log;
import android.util.LruCache;
import com.larvalabs.svgandroid.SVGParser;
import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.AwakeAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayMotion;
import com.nexstreaming.app.common.nexasset.overlay.OverlaySpec;
import com.nexstreaming.app.common.nexasset.overlay.OverlaySpec.Frame;
import com.nexstreaming.app.common.nexasset.overlay.OverlaySpec.Layer;
import com.nexstreaming.app.common.util.b;
import com.nexstreaming.app.common.util.i;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class AnimatedOverlayAsset extends AbstractOverlayAsset {
    private static final String LOG_TAG = "AnimOverlayAsset";
    private static final int MAX_TEX_SIZE = 2000;
    private String baseFile;
    private OverlaySpec overlaySpec;
    private AssetPackageReader reader;
    private float vectorScale;

    private static class AwakeAssetImpl implements AwakeAsset {
        private final String baseFile;
        private LruCache<String, Bitmap> bitmapCache = new LruCache<String, Bitmap>(41943040) {
            protected int sizeOf(String str, Bitmap bitmap) {
                return bitmap.getByteCount();
            }
        };
        private final RectF bounds;
        private final OverlaySpec overlaySpec;
        private final AssetPackageReader reader;
        private final float vectorScale;

        AwakeAssetImpl(RectF rectF, OverlaySpec overlaySpec, AssetPackageReader assetPackageReader, String str, float f) {
            this.bounds = new RectF(rectF);
            this.overlaySpec = overlaySpec;
            this.reader = assetPackageReader;
            this.baseFile = str;
            this.vectorScale = f;
        }

        public void onAsleep(LayerRenderer layerRenderer) {
            this.bitmapCache.evictAll();
            b.a(this.reader);
        }

        /* JADX WARNING: Removed duplicated region for block: B:39:0x0090 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x007c  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onRender(LayerRenderer layerRenderer, OverlayMotion overlayMotion, int i, int i2) {
            if (this.overlaySpec != null) {
                int g = ((layerRenderer.g() - i) * this.overlaySpec.fps) / 1000;
                int size = this.overlaySpec.layers.size();
                for (int i3 = 0; i3 < size; i3++) {
                    int i4;
                    int i5;
                    Bitmap image;
                    Layer layer = (Layer) this.overlaySpec.layers.get(i3);
                    if (layer.iterationCount < 0 || g <= (layer.iterationCount * layer.duration) - 1) {
                        i4 = g;
                    } else {
                        i4 = (layer.iterationCount * layer.duration) - 1;
                    }
                    Object obj = (i4 / layer.duration) % 2 == 0 ? 1 : null;
                    i4 %= layer.duration;
                    switch (layer.direction) {
                        case NORMAL:
                            i5 = i4;
                            break;
                        case REVERSE:
                            i5 = layer.duration - i4;
                            break;
                        case ALTERNATE:
                            if (obj == null) {
                                i5 = layer.duration - i4;
                                break;
                            }
                        case ALTERNATE_REVERSE:
                            if (obj != null) {
                                i5 = layer.duration - i4;
                                break;
                            }
                        default:
                            i5 = i4;
                            break;
                    }
                    int size2 = layer.frames.size();
                    Frame frame = null;
                    int i6 = 0;
                    int i7 = 0;
                    while (i7 < size2) {
                        frame = (Frame) layer.frames.get(i7);
                        if (i5 <= i6) {
                            if (!(frame == null || frame.blank)) {
                                image = getImage(frame.src);
                                if (image == null) {
                                    layerRenderer.a(image, this.bounds.left, this.bounds.top, this.bounds.right, this.bounds.bottom);
                                }
                            }
                        } else {
                            i6 += Math.max(1, frame.hold);
                            i7++;
                        }
                    }
                    image = getImage(frame.src);
                    if (image == null) {
                    }
                }
            }
        }

        public boolean needRendererReawakeOnEditResize() {
            return true;
        }

        public boolean onRefresh(LayerRenderer layerRenderer, RectF rectF, String str) {
            return false;
        }

        private Bitmap getImage(String str) {
            if (this.reader == null) {
                return null;
            }
            Bitmap bitmap = (Bitmap) this.bitmapCache.get(str);
            if (bitmap != null) {
                return bitmap;
            }
            bitmap = loadImage(str);
            if (bitmap == null) {
                return bitmap;
            }
            this.bitmapCache.put(str, bitmap);
            return bitmap;
        }

        private Bitmap loadImage(String str) {
            Closeable a;
            Throwable e;
            Throwable th;
            Bitmap bitmap = null;
            String b = i.b(this.baseFile, str);
            String a2 = i.a(str);
            try {
                a = this.reader.a(b);
                try {
                    if (a2.equalsIgnoreCase("svg")) {
                        bitmap = loadSVG(a);
                    } else {
                        bitmap = loadBitmap(a);
                    }
                    b.a(a);
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                e = e3;
                a = bitmap;
            } catch (Throwable e4) {
                a = bitmap;
                th = e4;
                b.a(a);
                throw th;
            }
            return bitmap;
            try {
                Log.e(AnimatedOverlayAsset.LOG_TAG, "Error reading frame image", e4);
                b.a(a);
                return bitmap;
            } catch (Throwable th2) {
                th = th2;
                b.a(a);
                throw th;
            }
        }

        private Bitmap loadBitmap(InputStream inputStream) {
            return BitmapFactory.decodeStream(inputStream);
        }

        private Bitmap loadSVG(InputStream inputStream) {
            PictureDrawable a = SVGParser.a(inputStream).a();
            Bitmap createBitmap = Bitmap.createBitmap((int) Math.floor((double) (((float) this.overlaySpec.width) * this.vectorScale)), (int) Math.floor((double) (((float) this.overlaySpec.height) * this.vectorScale)), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            a.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
            a.draw(canvas);
            return createBitmap;
        }
    }

    public AnimatedOverlayAsset(f fVar) throws IOException, XmlPullParserException {
        Throwable th;
        Closeable closeable = null;
        super(fVar);
        Closeable assetPackageReader;
        Closeable a;
        try {
            assetPackageReader = getAssetPackageReader();
            try {
                a = assetPackageReader.a(fVar.getFilePath());
                try {
                    this.overlaySpec = OverlaySpec.fromInputStream(a);
                    if ((this.overlaySpec.width <= 0 || this.overlaySpec.height <= 0) && this.overlaySpec.layers != null && this.overlaySpec.layers.size() > 0) {
                        Layer layer = (Layer) this.overlaySpec.layers.get(0);
                        if (layer.frames != null && layer.frames.size() > 0) {
                            Frame frame = (Frame) layer.frames.get(0);
                            if (!frame.blank) {
                                closeable = assetPackageReader.a(frame.src);
                                Picture b = SVGParser.a((InputStream) closeable).b();
                                this.overlaySpec.width = b.getWidth();
                                this.overlaySpec.height = b.getHeight();
                            }
                        }
                    }
                    if (this.overlaySpec.width <= 0 || this.overlaySpec.height <= 0) {
                        this.overlaySpec.width = 100;
                        this.overlaySpec.height = 100;
                    }
                    b.a(closeable);
                    b.a(a);
                    b.a(assetPackageReader);
                } catch (Throwable th2) {
                    th = th2;
                    b.a(null);
                    b.a(a);
                    b.a(assetPackageReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                a = null;
            }
        } catch (Throwable th4) {
            th = th4;
            assetPackageReader = null;
            a = null;
        }
    }

    public int getIntrinsicWidth() {
        return this.overlaySpec.width;
    }

    public int getIntrinsicHeight() {
        return this.overlaySpec.height;
    }

    public int getDefaultDuration() {
        if (this.overlaySpec.duration > 0) {
            return (this.overlaySpec.duration * 1000) / this.overlaySpec.fps;
        }
        int i = 0;
        for (Layer layer : this.overlaySpec.layers) {
            if (layer.iterationCount < 0) {
                return 0;
            }
            i = Math.max(i, ((layer.iterationCount * layer.duration) * 1000) / this.overlaySpec.fps);
        }
        if (i > 30000) {
            return 0;
        }
        if (i < 1000) {
            return 1000;
        }
        return i;
    }

    public AwakeAsset onAwake(LayerRenderer layerRenderer, RectF rectF, String str, Map<String, String> map) {
        AssetPackageReader assetPackageReader = null;
        try {
            assetPackageReader = getAssetPackageReader();
        } catch (Throwable e) {
            Log.e(LOG_TAG, "Error getting package reader", e);
        }
        float max = (float) (2000 / Math.max(this.overlaySpec.width, this.overlaySpec.height));
        return new AwakeAssetImpl(rectF, this.overlaySpec, assetPackageReader, getItemInfo().getFilePath(), 1.0f);
    }
}
