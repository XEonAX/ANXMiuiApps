package com.miui.gallery.sdk.uploadstatus;

import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.sdk.SyncStatus;

public class UploadStatusItem extends SyncItem {
    private final ItemType mItemType;
    private final String mLocalId;

    public UploadStatusItem(ItemType itemType, String localId) {
        super(SyncStatus.STATUS_NONE);
        this.mItemType = itemType;
        this.mLocalId = localId;
    }

    public UploadStatusItem(RequestCloudItem requestItem) {
        super(SyncStatus.toSyncStatus(requestItem.getStatus()));
        UriAdapter uriAdapter = SyncProxy.getInstance().getUriAdapter();
        DBImage dbImage = requestItem.dbCloud;
        this.mItemType = uriAdapter.getItemTypeBySdkBaseUri(dbImage.getBaseUri());
        this.mLocalId = dbImage.getId();
    }

    public Uri getUserUri() {
        return SyncProxy.getInstance().getUriAdapter().getUserUri(this.mItemType, this.mLocalId);
    }

    public ItemType getItemType() {
        return this.mItemType;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UploadStatusItem)) {
            return false;
        }
        UploadStatusItem another = (UploadStatusItem) obj;
        if (this.mItemType == another.mItemType && TextUtils.equals(this.mLocalId, another.mLocalId)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.format("[mItemType: %s, mLocalId: %s, mStatus: %s]", new Object[]{this.mItemType.toString(), this.mLocalId, this.mStatus.toString()});
    }
}
