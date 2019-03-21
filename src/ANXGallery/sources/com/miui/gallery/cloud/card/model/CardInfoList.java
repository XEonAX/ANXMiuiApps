package com.miui.gallery.cloud.card.model;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

public class CardInfoList {
    @SerializedName("galleryCards")
    private ArrayList<CardInfo> galleryCards;
    @SerializedName("lastPage")
    private boolean lastPage;
    @SerializedName("syncExtraInfo")
    private String syncExtraInfo;
    @SerializedName("syncTag")
    private long syncTag;

    public long getSyncTag() {
        return this.syncTag;
    }

    public boolean isLastPage() {
        return this.lastPage;
    }

    public ArrayList<CardInfo> getGalleryCards() {
        return this.galleryCards;
    }

    public String getSyncExtraInfo() {
        return this.syncExtraInfo;
    }
}
