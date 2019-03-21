package com.nexstreaming.app.common.nexasset.store;

import java.util.List;

public interface StoreFeaturedAssetInfo {
    String getFeatuedAssetLayoutType();

    List<StoreAssetInfo> getFeaturedAssetList();

    long getServerTimestamp();
}
