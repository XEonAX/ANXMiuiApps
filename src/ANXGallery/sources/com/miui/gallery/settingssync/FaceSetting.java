package com.miui.gallery.settingssync;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.SyncableSetting;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AIAlbumStatusHelper;

class FaceSetting implements SyncableSetting {
    FaceSetting() {
    }

    public String getName() {
        return "face";
    }

    public Boolean isEnabled() {
        return AIAlbumStatusHelper.isFaceSwitchSet() ? Boolean.valueOf(AIAlbumStatusHelper.isFaceAlbumEnabled()) : null;
    }

    public String getValue() {
        return null;
    }

    public boolean isExport() {
        return true;
    }

    public void writeValue(Boolean isEnabled, Object value) {
        if (isEnabled != null) {
            if (!isEnabled.booleanValue() && AIAlbumStatusHelper.isFaceSwitchSet() && AIAlbumStatusHelper.isFaceAlbumEnabled()) {
                BaseSamplingStatHelper.recordCountEvent("face", "settings_sync_face_status_to_close");
            }
            AIAlbumStatusHelper.setFaceAlbumStatus(GalleryApp.sGetAndroidContext(), isEnabled.booleanValue());
        }
    }
}
