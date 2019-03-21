package com.miui.gallery.settingssync;

import android.content.Context;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.Model;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.Repository;
import com.miui.gallery.settingssync.GallerySettingsSyncContract.SyncAdapter;

public class GallerySettingsSyncHelper {
    public static void doSync(Context context) {
        getSyncAdapter(context, getModel(getRepository())).performSync(null);
    }

    public static SyncAdapter getSyncAdapter(Context context, Model model) {
        return new GallerySettingsSyncAdapter(context, model);
    }

    public static Model getModel(Repository repository) {
        return new GallerySettingSyncModel(repository);
    }

    public static Repository getRepository() {
        return new GallerySyncableSettingsRepository();
    }
}
