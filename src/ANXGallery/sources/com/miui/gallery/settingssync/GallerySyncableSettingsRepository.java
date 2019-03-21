package com.miui.gallery.settingssync;

import com.miui.gallery.settingssync.GallerySettingsSyncContract.Repository;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.SyncableSetting;
import java.util.ArrayList;
import java.util.List;

public class GallerySyncableSettingsRepository implements Repository {
    private static List<SyncableSetting> sSyncableSettings = new ArrayList();

    static {
        sSyncableSettings.add(new FaceSetting());
        sSyncableSettings.add(new SearchSetting());
    }

    public List<SyncableSetting> getSyncableSettings() {
        return sSyncableSettings;
    }
}
