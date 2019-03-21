package com.miui.privacy;

interface IPrivacyWrapper {
    boolean isPrivacyPasswordEnabled();

    boolean isPrivateGalleryEnabled();

    void setPrivateGalleryEnabled(boolean z);
}
