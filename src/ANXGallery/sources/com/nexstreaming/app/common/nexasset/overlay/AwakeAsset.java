package com.nexstreaming.app.common.nexasset.overlay;

import android.graphics.RectF;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;

public interface AwakeAsset {
    boolean needRendererReawakeOnEditResize();

    void onAsleep(LayerRenderer layerRenderer);

    boolean onRefresh(LayerRenderer layerRenderer, RectF rectF, String str);

    void onRender(LayerRenderer layerRenderer, OverlayMotion overlayMotion, int i, int i2);
}
