package com.nexstreaming.app.common.nexasset.overlay;

import android.graphics.RectF;
import com.nexstreaming.kminternal.nexvideoeditor.LayerRenderer;
import java.util.Map;

public interface OverlayAsset {
    int getDefaultDuration();

    int getIntrinsicHeight();

    int getIntrinsicWidth();

    AwakeAsset onAwake(LayerRenderer layerRenderer, RectF rectF, String str, Map<String, String> map);
}
