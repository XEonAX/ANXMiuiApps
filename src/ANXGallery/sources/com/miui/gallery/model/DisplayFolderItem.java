package com.miui.gallery.model;

public class DisplayFolderItem {
    public int count;
    public String coverImagePath;
    public String imageJob;
    public boolean isNewlyCreate;
    public String localGroupId;
    public String name;
    public String thumbnailPath;

    public DisplayFolderItem(String aName, String aThumbnailPath, String aLocalGroupId) {
        this.name = aName;
        this.thumbnailPath = aThumbnailPath;
        this.localGroupId = aLocalGroupId;
    }

    public DisplayFolderItem(String aName, String aJob, int aCount, String aLocalGroupId, String aPath) {
        this.name = aName;
        this.imageJob = aJob;
        this.count = aCount;
        this.localGroupId = aLocalGroupId;
        this.coverImagePath = aPath;
        this.isNewlyCreate = false;
    }
}
