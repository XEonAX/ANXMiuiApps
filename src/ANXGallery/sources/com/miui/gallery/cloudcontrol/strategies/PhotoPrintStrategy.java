package com.miui.gallery.cloudcontrol.strategies;

import com.google.gson.annotations.SerializedName;

public class PhotoPrintStrategy extends BaseStrategy {
    @SerializedName("photo_print_package_name")
    private String mPhotoPrintPackageName;

    public String getPhotoPrintPackageName() {
        return this.mPhotoPrintPackageName;
    }
}
