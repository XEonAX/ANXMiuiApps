package com.nexstreaming.app.common.nexasset.assetpackage.db;

import com.nexstreaming.app.common.nexasset.assetpackage.a;
import com.nexstreaming.app.common.norm.b;
import com.nexstreaming.app.common.norm.b.e;
import com.nexstreaming.app.common.norm.b.g;

public class CategoryRecord extends b implements a {
    public long _id;
    public String categoryIconURL;
    @g
    @e
    public long categoryId;
    public String categoryName;
    public String categoryURL;

    public long getCategoryId() {
        return this.categoryId;
    }

    public String getCategoryIconURL() {
        return this.categoryIconURL;
    }

    public String getCategoryURL() {
        return this.categoryURL;
    }

    public String getCategoryAlias() {
        return this.categoryName;
    }
}
