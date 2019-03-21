package com.nexstreaming.app.common.nexasset.overlay.impl;

import com.nexstreaming.app.common.nexasset.assetpackage.AssetPackageReader;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.nexasset.overlay.OverlayAsset;
import com.nexstreaming.kminternal.kinemaster.config.a;
import java.io.IOException;

public abstract class AbstractOverlayAsset implements OverlayAsset {
    private final f itemInfo;

    public AbstractOverlayAsset(f fVar) {
        this.itemInfo = fVar;
    }

    protected f getItemInfo() {
        return this.itemInfo;
    }

    protected AssetPackageReader getAssetPackageReader() throws IOException {
        return AssetPackageReader.a(a.a().b(), this.itemInfo.getPackageURI(), this.itemInfo.getAssetPackage().getAssetId());
    }
}
