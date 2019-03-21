package com.nexstreaming.app.common.nexasset.assetpackage.db;

import com.nexstreaming.app.common.nexasset.assetpackage.d;
import com.nexstreaming.app.common.norm.b;
import com.nexstreaming.app.common.norm.b.e;
import com.nexstreaming.app.common.norm.b.g;
import java.util.Map;

public class SubCategoryRecord extends b implements d {
    public long _id;
    public String subCategoryAlias;
    @g
    @e
    public long subCategoryId;
    public Map<String, String> subCategoryName;

    public long getSubCategoryId() {
        return this.subCategoryId;
    }

    public Map<String, String> getSubCategoryName() {
        return this.subCategoryName;
    }

    public String getSubCategoryAlias() {
        return this.subCategoryAlias;
    }
}
