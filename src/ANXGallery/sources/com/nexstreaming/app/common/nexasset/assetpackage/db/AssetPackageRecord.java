package com.nexstreaming.app.common.nexasset.assetpackage.db;

import com.nexstreaming.app.common.nexasset.assetpackage.InstallSourceType;
import com.nexstreaming.app.common.norm.b;
import com.nexstreaming.app.common.norm.b.a;
import com.nexstreaming.app.common.norm.b.c;
import com.nexstreaming.app.common.norm.b.d;
import com.nexstreaming.app.common.norm.b.e;
import com.nexstreaming.app.common.norm.b.g;
import java.io.File;
import java.util.Map;

public class AssetPackageRecord extends b implements com.nexstreaming.app.common.nexasset.assetpackage.b {
    public long _id;
    public Map<String, String> assetDesc;
    @g
    @e
    public String assetId;
    public int assetIdx;
    public Map<String, String> assetName;
    public String assetUrl;
    public CategoryRecord category;
    @a(a = 12)
    public long expireTime;
    @c
    @d
    public InstallSourceRecord installSource;
    @a(a = 12)
    public long installedTime;
    public String localPath;
    @a(a = 13)
    public int minVersion;
    public String packageURI;
    @a(a = 13)
    public int packageVersion;
    public String priceType;
    public SubCategoryRecord subCategory;
    public String thumbPath;
    public String thumbUrl;

    public int getAssetIdx() {
        return this.assetIdx;
    }

    public String getAssetId() {
        return this.assetId;
    }

    public String getAssetUrl() {
        return this.assetUrl;
    }

    public String getThumbUrl() {
        return this.thumbUrl;
    }

    public String getThumbPath() {
        return this.thumbPath;
    }

    public File getLocalPath() {
        return this.localPath == null ? null : new File(this.localPath);
    }

    public String getPackageURI() {
        return this.packageURI;
    }

    public String getPriceType() {
        return this.priceType;
    }

    public com.nexstreaming.app.common.nexasset.assetpackage.a getAssetCategory() {
        return this.category;
    }

    public com.nexstreaming.app.common.nexasset.assetpackage.d getAssetSubCategory() {
        return this.subCategory;
    }

    public Map<String, String> getAssetName() {
        return this.assetName;
    }

    public Map<String, String> getAssetDesc() {
        return this.assetDesc;
    }

    public InstallSourceType getInstallSourceType() {
        return this.installSource == null ? null : this.installSource.installSourceType;
    }

    public long getInstalledTime() {
        return this.installedTime;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public int getMinVersion() {
        return this.minVersion;
    }

    public int getPackageVersion() {
        return this.packageVersion;
    }

    public String toString() {
        return "AssetPackageRecord{_id=" + this._id + ", assetId='" + this.assetId + '\'' + ", assetIdx=" + this.assetIdx + ", assetUrl='" + this.assetUrl + '\'' + ", thumbUrl='" + this.thumbUrl + '\'' + ", thumbPath='" + this.thumbPath + '\'' + ", priceType='" + this.priceType + '\'' + ", localPath='" + this.localPath + '\'' + ", category=" + this.category + ", subCategory=" + this.subCategory + ", assetName=" + this.assetName + ", assetDesc=" + this.assetDesc + ", packageURI='" + this.packageURI + '\'' + ", installSource=" + this.installSource + '}';
    }
}
