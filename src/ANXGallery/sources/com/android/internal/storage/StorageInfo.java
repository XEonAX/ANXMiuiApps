package com.android.internal.storage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;

public class StorageInfo {
    private boolean isMounted;
    private boolean isPrimary;
    private boolean isSd;
    private boolean isUsb;
    private boolean isVisible;
    private boolean isXspace;
    private String mDescription;
    private String mPath;
    private Object mWrapped;

    public StorageInfo(String path) {
        this.mPath = path;
    }

    public void setDescription(String description) {
        this.mDescription = description;
    }

    public void setMounted(boolean mounted) {
        this.isMounted = mounted;
    }

    void setPath(String path) {
        this.mPath = path;
    }

    void setPrimary(boolean primary) {
        this.isPrimary = primary;
    }

    void setSd(boolean sd) {
        this.isSd = sd;
    }

    void setUsb(boolean usb) {
        this.isUsb = usb;
    }

    public void setXspace(boolean xspace) {
        this.isXspace = xspace;
    }

    void setVisible(boolean visible) {
        this.isVisible = visible;
    }

    void setWrapped(Object wrapped) {
        this.mWrapped = wrapped;
    }

    public String getPath() {
        return this.mPath;
    }

    public String getDescription() {
        return this.mDescription == null ? "" : this.mDescription;
    }

    public boolean isMounted() {
        return this.isMounted;
    }

    public boolean isPrimary() {
        return this.isPrimary;
    }

    public boolean isSd() {
        return this.isSd;
    }

    public boolean isUsb() {
        return this.isUsb;
    }

    public boolean isXspace() {
        return this.isXspace;
    }

    @TargetApi(24)
    public Intent createAccessIntent(Context context) {
        StorageVolume volume = null;
        if (this.mWrapped instanceof VolumeInfo) {
            volume = ((VolumeInfo) this.mWrapped).buildStorageVolume(context, context.getUserId(), false);
        } else if (this.mWrapped instanceof StorageVolume) {
            volume = this.mWrapped;
        }
        if (volume != null) {
            return volume.createAccessIntent(null);
        }
        return null;
    }

    public String toString() {
        StringBuilder builder = new StringBuilder("Storage{ ");
        builder.append("mPath=").append(this.mPath).append(",");
        builder.append("mDescription=").append(this.mDescription).append(",");
        builder.append("isMounted=").append(this.isMounted).append(",");
        builder.append("isPrimary=").append(this.isPrimary).append(",");
        builder.append("isSD=").append(this.isSd).append(",");
        builder.append("isUsb=").append(this.isUsb).append(",");
        builder.append("isXspace=").append(this.isXspace);
        builder.append(" }");
        return builder.toString();
    }
}
