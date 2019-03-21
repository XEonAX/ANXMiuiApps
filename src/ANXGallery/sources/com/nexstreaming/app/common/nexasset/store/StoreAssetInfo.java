package com.nexstreaming.app.common.nexasset.store;

import java.util.List;
import java.util.Map;

public interface StoreAssetInfo {
    String getAssetDescription();

    Map<String, String> getAssetDescriptionMap();

    int getAssetFilesize();

    String getAssetId();

    int getAssetIndex();

    Map<String, String> getAssetNameMap();

    String getAssetPackageDownloadURL();

    int getAssetScopeVersion();

    String getAssetThumbnailURL();

    String getAssetThumbnailURL_L();

    String getAssetThumbnailURL_S();

    String getAssetTitle();

    int getAssetVersion();

    String getAssetVideoURL();

    String getCategoryAliasName();

    String getCategoryIconURL();

    int getCategoryIndex();

    long getExpireTime();

    String getPriceType();

    String getSubCategoryAliasName();

    int getSubCategoryIndex();

    Map<String, String> getSubCategoryNameMap();

    List<String> getThumbnailPaths();

    int getUpdateTime();
}
