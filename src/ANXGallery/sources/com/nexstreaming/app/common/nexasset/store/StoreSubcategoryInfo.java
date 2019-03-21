package com.nexstreaming.app.common.nexasset.store;

import java.util.Map;

public interface StoreSubcategoryInfo {
    int getCategoryIdx();

    String getSubcategoryAliasName();

    int getSubcategoryIdx();

    Map<String, String> getSubcategoryName();
}
