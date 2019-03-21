package com.miui.gallery.model;

import com.miui.gallery.cloud.baby.BabyInfo;

public class SendToCloudFolderItem {
    private BabyInfo babyInfo;
    private final int count;
    private String folderName;
    private final boolean isShareAlbum;
    private final String localGroupId;

    public SendToCloudFolderItem(int count, String localGroupId, boolean isShareAlbum) {
        this.count = count;
        this.localGroupId = localGroupId;
        this.isShareAlbum = isShareAlbum;
    }

    public SendToCloudFolderItem(int count, String localGroupId, boolean isShareAlbum, String folderName, BabyInfo babyInfo) {
        this(count, localGroupId, isShareAlbum);
        this.folderName = folderName;
        this.babyInfo = babyInfo;
    }

    public String getLocalGroupId() {
        return this.localGroupId;
    }

    public boolean isShareAlbum() {
        return this.isShareAlbum;
    }

    public String getFolderName() {
        return this.folderName;
    }
}
