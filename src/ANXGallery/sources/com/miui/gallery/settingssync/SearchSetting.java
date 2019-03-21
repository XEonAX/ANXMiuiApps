package com.miui.gallery.settingssync;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.SyncableSetting;
import com.miui.gallery.ui.AIAlbumStatusHelper;

class SearchSetting implements SyncableSetting {
    SearchSetting() {
    }

    public String getName() {
        return "search";
    }

    public Boolean isEnabled() {
        if (AIAlbumStatusHelper.isLocalSearchSet()) {
            return Boolean.valueOf(AIAlbumStatusHelper.isLocalSearchOpen(true));
        }
        return null;
    }

    public String getValue() {
        return null;
    }

    public boolean isExport() {
        return true;
    }

    public void writeValue(Boolean isEnabled, Object value) {
        if (isEnabled == null) {
            return;
        }
        if (AIAlbumStatusHelper.isLocalSearchSet() || isEnabled.booleanValue()) {
            AIAlbumStatusHelper.setLocalSearchStatus(GalleryApp.sGetAndroidContext(), isEnabled.booleanValue());
        }
    }
}
