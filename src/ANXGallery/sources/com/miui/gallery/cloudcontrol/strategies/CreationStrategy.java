package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

public class CreationStrategy extends BaseStrategy {
    @SerializedName("collage_entry")
    private boolean mIsCollageEntryEnable;
    @SerializedName("photo_movie_entry")
    private boolean mIsPhotoMovieEntryEnable;
    @SerializedName("print_entry")
    private boolean mIsPrintEntryEnable;
    @SerializedName("min_print_version_code")
    private int mMinPrintVersionCode = 34;
    @SerializedName("print_intent_uri")
    private String mPrintIntentUri = "xiaomiprint://start.uri.activity?action=createWork";
    @SerializedName("print_max_image_count")
    private int mPrintMaxImageCount = 200;

    public CreationStrategy(boolean isCollageEntryEnable, boolean isPhotoMovieEntryEnable, boolean isPrintEntryEnable) {
        this.mIsCollageEntryEnable = isCollageEntryEnable;
        this.mIsPhotoMovieEntryEnable = isPhotoMovieEntryEnable;
        this.mIsPrintEntryEnable = isPrintEntryEnable;
    }

    public String getPrintIntentUri() {
        return this.mPrintIntentUri;
    }

    public boolean isCollageEntryEnable() {
        return this.mIsCollageEntryEnable;
    }

    public boolean isPhotoMovieEntryEnable() {
        return this.mIsPhotoMovieEntryEnable;
    }

    public boolean isPrintEntryEnable() {
        return this.mIsPrintEntryEnable;
    }

    public int getMinPrintVersionCode() {
        return this.mMinPrintVersionCode;
    }

    public int getPrintMaxImageCount() {
        return this.mPrintMaxImageCount > 0 ? this.mPrintMaxImageCount : 200;
    }

    public static CreationStrategy createDefault() {
        return new CreationStrategy(true, true, false);
    }

    public void doAdditionalProcessing() {
        if (TextUtils.isEmpty(this.mPrintIntentUri)) {
            this.mPrintIntentUri = "xiaomiprint://start.uri.activity?action=createWork";
        }
        if (this.mMinPrintVersionCode <= 0) {
            this.mMinPrintVersionCode = 34;
        }
        if (this.mPrintMaxImageCount <= 0) {
            this.mPrintMaxImageCount = 200;
        }
    }
}
