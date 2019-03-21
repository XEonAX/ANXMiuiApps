package com.nexstreaming.app.common.nexasset.assetpackage.db;

import android.content.Context;
import com.nexstreaming.app.common.norm.a;
import com.nexstreaming.app.common.norm.b;

public class AssetPackageDb extends a {
    public AssetPackageDb(Context context) {
        super(context, "com.kinemaster.asset_package.db", 13);
    }

    protected Class<? extends b>[] getTableClasses() {
        return new Class[]{AssetPackageRecord.class, ItemRecord.class, CategoryRecord.class, SubCategoryRecord.class, InstallSourceRecord.class};
    }
}
