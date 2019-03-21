package com.nexstreaming.app.common.nexasset.store;

import java.util.List;
import java.util.Map;

public class FeaturedCategoryInfo implements StoreCategoryInfo {
    public String getIconURL() {
        return null;
    }

    public String getSelectedIconURL() {
        return null;
    }

    public int getCategoryIdx() {
        return -1;
    }

    public Map<String, String> getCategoryName() {
        return null;
    }

    public String getCategoryAliasName() {
        return "Featured";
    }

    public List<StoreSubcategoryInfo> getSubCategories() {
        return null;
    }
}
