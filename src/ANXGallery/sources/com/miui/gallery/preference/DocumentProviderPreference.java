package com.miui.gallery.preference;

import com.miui.gallery.util.StorageUtils;

public class DocumentProviderPreference {
    public static int getOpenExternalDocumentCount() {
        return PreferenceHelper.getInt("document_provider_access_intent_count_" + StorageUtils.getSecondaryStoragePath(), 0);
    }

    public static void setOpenExternalDocumentCount(int i) {
        PreferenceHelper.putInt("document_provider_access_intent_count_" + StorageUtils.getSecondaryStoragePath(), i);
    }

    public static boolean isFirstEntrance() {
        return PreferenceHelper.getBoolean("document_provider_first_entrance_sdcard_permission_" + StorageUtils.getSecondaryStoragePath(), true);
    }

    public static void setFirstEntrance(boolean isFirstEntrance) {
        PreferenceHelper.putBoolean("document_provider_first_entrance_sdcard_permission_" + StorageUtils.getSecondaryStoragePath(), isFirstEntrance);
    }
}
