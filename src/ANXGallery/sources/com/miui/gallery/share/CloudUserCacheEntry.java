package com.miui.gallery.share;

public class CloudUserCacheEntry {
    public final String mAlbumId;
    public final long mCreateTime;
    public final String mPhone;
    public final String mRelation;
    public final String mRelationText;
    public final String mServerStatus;
    public final String mUserId;

    public CloudUserCacheEntry(String albumId, String userId, long createTime, String relation, String relationText, String serverStatus, String phone) {
        this.mAlbumId = albumId;
        this.mUserId = userId;
        this.mCreateTime = createTime;
        this.mRelation = relation;
        this.mRelationText = relationText;
        this.mServerStatus = serverStatus;
        this.mPhone = phone;
    }
}
