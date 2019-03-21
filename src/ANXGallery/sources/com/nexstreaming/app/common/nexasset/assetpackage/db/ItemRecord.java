package com.nexstreaming.app.common.nexasset.assetpackage.db;

import com.nexstreaming.app.common.nexasset.assetpackage.ItemCategory;
import com.nexstreaming.app.common.nexasset.assetpackage.ItemType;
import com.nexstreaming.app.common.nexasset.assetpackage.f;
import com.nexstreaming.app.common.norm.b;
import com.nexstreaming.app.common.norm.b.c;
import com.nexstreaming.app.common.norm.b.d;
import com.nexstreaming.app.common.norm.b.e;
import com.nexstreaming.app.common.norm.b.g;
import java.util.Collections;
import java.util.Map;

public class ItemRecord extends b implements f {
    public long _id;
    @c
    @d
    public AssetPackageRecord assetPackageRecord;
    public String filePath;
    public boolean hidden;
    public String iconPath;
    public ItemCategory itemCategory;
    @g
    @e
    public String itemId;
    public ItemType itemType;
    public Map<String, String> label;
    public String packageURI;
    public String sampleText;
    public String thumbPath;

    public String getId() {
        return this.itemId;
    }

    public String getPackageURI() {
        return this.packageURI;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getIconPath() {
        return this.iconPath;
    }

    public String getThumbPath() {
        return this.thumbPath;
    }

    public Map<String, String> getLabel() {
        if (this.label == null || this.label.isEmpty()) {
            return Collections.singletonMap("en", this.itemId);
        }
        return this.label;
    }

    public String getSampleText() {
        return this.sampleText;
    }

    public ItemType getType() {
        return this.itemType;
    }

    public ItemCategory getCategory() {
        return this.itemCategory;
    }

    public com.nexstreaming.app.common.nexasset.assetpackage.b getAssetPackage() {
        return this.assetPackageRecord;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public String toString() {
        return "ItemRecord{_id=" + this._id + ", itemId='" + this.itemId + '\'' + ", packageURI='" + this.packageURI + '\'' + ", filePath='" + this.filePath + '\'' + ", iconPath='" + this.iconPath + '\'' + ", thumbPath='" + this.thumbPath + '\'' + ", label=" + this.label + ", itemType=" + this.itemType + ", itemCategory=" + this.itemCategory + ", assetPackageRecord=" + this.assetPackageRecord + '}';
    }
}
