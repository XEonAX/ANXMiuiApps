package com.nexstreaming.app.common.nexasset.overlay;

import com.nexstreaming.app.common.nexasset.assetpackage.c;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.impl.AnimatedOverlayAsset;
import com.nexstreaming.app.common.nexasset.overlay.impl.BitmapOverlayAsset;
import com.nexstreaming.app.common.nexasset.overlay.impl.RenderItemOverlayAsset;
import com.nexstreaming.app.common.nexasset.overlay.impl.SVGOverlayAsset;
import com.nexstreaming.app.common.util.j;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class OverlayAssetFactory {
    private static Map<String, WeakReference<OverlayAsset>> cache = new HashMap();
    private static int deadRefCheck = 0;

    private OverlayAssetFactory() {
    }

    public static OverlayAsset forItem(String str) throws IOException, XmlPullParserException {
        OverlayAsset overlayAsset;
        WeakReference weakReference = (WeakReference) cache.get(str);
        if (weakReference != null) {
            overlayAsset = (OverlayAsset) weakReference.get();
            if (overlayAsset != null) {
                return overlayAsset;
            }
        }
        overlayAsset = null;
        f c = c.a().c(str);
        if (c == null) {
            throw new IOException("Asset not found: " + str);
        }
        switch (c.getType()) {
            case overlay:
                String filePath = c.getFilePath();
                String substring = filePath.substring(filePath.lastIndexOf(46) + 1);
                if (substring.equalsIgnoreCase("png") || substring.equalsIgnoreCase("jpeg") || substring.equalsIgnoreCase("jpg") || substring.equalsIgnoreCase("webp")) {
                    overlayAsset = new BitmapOverlayAsset(c);
                    break;
                } else if (substring.equalsIgnoreCase("svg")) {
                    overlayAsset = new SVGOverlayAsset(c);
                    break;
                } else if (substring.equalsIgnoreCase("xml")) {
                    overlayAsset = new AnimatedOverlayAsset(c);
                    break;
                } else {
                    throw new IOException("Asset load error: " + str + " (unknown overlay type for '" + filePath + "')");
                }
            case renderitem:
                return new RenderItemOverlayAsset(c);
        }
        if (overlayAsset == null) {
            return overlayAsset;
        }
        cache.put(str, new WeakReference(overlayAsset));
        int i = deadRefCheck;
        deadRefCheck = i + 1;
        if (i <= 32) {
            return overlayAsset;
        }
        j.a(cache);
        deadRefCheck = 0;
        return overlayAsset;
    }
}
