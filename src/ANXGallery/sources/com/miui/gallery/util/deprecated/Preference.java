package com.miui.gallery.util.deprecated;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.miui.gallery.preference.BaseGalleryPreferences;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.util.Log;
import com.miui.internal.vip.VipConstants;

public class Preference extends BaseDeprecatedPreference {
    public static void setDBUpgradeTo42() {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("database_upgrade_to_42_clean_data", true).apply();
    }

    @Deprecated
    public static boolean sIsShowHidden() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean(PrefKeys.HIDDEN_ALBUM_SHOW, false);
    }

    @Deprecated
    public static int sGetSlideshowInterval() {
        int interval = 2;
        try {
            interval = Integer.valueOf(BaseDeprecatedPreference.sGetDefaultPreferences().getString(PrefKeys.SLIDESHOW_INTERVAL, "")).intValue();
        } catch (Exception e) {
        }
        return Math.max(1, interval) * 1000;
    }

    @Deprecated
    public static long sGetCloudFaceStatusNextCheckTime() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getLong(PrefKeys.FACE_CLOUD_STATUS_NEXT_CHECK_TIME, 0);
    }

    @Deprecated
    public static boolean sGetFaceFeaturePending() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean(PrefKeys.FACE_FEATURE_SWITCH_PENDING, false);
    }

    @Deprecated
    public static String sGetFaceUrlForWaiting() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getString(PrefKeys.FACE_URL_FOR_WAITING, "");
    }

    @Deprecated
    public static String sGetFaceUrlForQueuing() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getString(PrefKeys.FACE_URL_FOR_QUEUING, "");
    }

    public static boolean getSyncFetchSyncExtraInfoFromV2ToV3() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("sync_fetch_syncextreinfo_from_v2_to_v3", false);
    }

    public static void setSyncFetchSyncExtraInfoFromV2ToV3(boolean fetch) {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("sync_fetch_syncextreinfo_from_v2_to_v3", fetch).apply();
    }

    public static boolean getSyncFetchAllPrivateData() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("sync_fetch_all_private_data", false);
    }

    public static void setSyncFetchAllPrivateData() {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("sync_fetch_all_private_data", true).commit();
    }

    public static void sSetCloudGallerySpaceFull(boolean isFull) {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("cloud_gallery_space_full", isFull).putLong("cloud_gallery_space_full_time", System.currentTimeMillis()).commit();
    }

    public static boolean sGetCloudGallerySpaceFull() {
        long spaceFullTime = BaseDeprecatedPreference.sGetDefaultPreferences().getLong("cloud_gallery_space_full_time", 0);
        long now = System.currentTimeMillis();
        if (now - spaceFullTime >= VipConstants.HOUR || now < spaceFullTime) {
            return false;
        }
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("cloud_gallery_space_full", false);
    }

    public static void sSetCloudGalleryRecyclebinFull(boolean isFull) {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("cloud_gallery_recyclebin_full", isFull).commit();
    }

    public static boolean sGetCloudGalleryRecyclebinFull() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("cloud_gallery_recyclebin_full", false);
    }

    public static void sSetIsInternationalAccount(int state) {
        BaseDeprecatedPreference.sGetDefaultEditor().putInt("is_international_account", state).commit();
    }

    public static int sIsInternationalAccount() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getInt("is_international_account", 2);
    }

    public static boolean getSyncShouldClearDataBase() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("sync_should_clean_data", false);
    }

    public static void setSyncShouldClearDataBase(boolean shouldClear) {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("sync_should_clean_data", shouldClear).commit();
    }

    public static void setSyncRetryTimes(int times) {
        Log.i("Preference", "setSyncRetryTimes, times=" + times);
        BaseDeprecatedPreference.sGetDefaultEditor().putInt("sync_retry_times", times).commit();
    }

    public static boolean sIsFirstSynced() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("first_synced", false);
    }

    public static void sSetFirstSynced() {
        BaseDeprecatedPreference.sGetDefaultEditor().putBoolean("first_synced", true).commit();
    }

    @Deprecated
    public static boolean sOnlySyncInWifi() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean("sync_only_in_wifi", true);
    }

    public static void sRemoveCloudSettings() {
        BaseDeprecatedPreference.sGetDefaultEditor().remove("last_slowscan_time").remove("cloud_gallery_space_full").remove("cloud_gallery_recyclebin_full").remove("sync_only_in_wifi").remove("sync_fetch_syncextreinfo_from_v2_to_v3").remove("sync_fetch_all_private_data").remove("first_synced").remove("is_international_account").remove(PrefKeys.FACE_CLOUD_STATUS).remove(PrefKeys.FACE_CLOUD_STATUS_NEXT_CHECK_TIME).remove(PrefKeys.FACE_FEATURE_SWITCH_PENDING).remove(PrefKeys.FACE_URL_FOR_WAITING).remove(PrefKeys.FACE_URL_FOR_QUEUING).remove("micloud_vip_level").remove("has_ever_synced_system_album").commit();
        Editor editor = BaseDeprecatedPreference.sGetDefaultEditor();
        for (String key : BaseDeprecatedPreference.sGetDefaultPreferences().getAll().keySet()) {
            if (isAutoUploadAlbumPreferenceKey(key)) {
                editor.remove(key);
            }
        }
        editor.commit();
    }

    public static boolean sGetImpunityDeclarationEveryTime() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean(BaseGalleryPreferences.PrefKeys.CTA_IMPUNITY_DECLARATION_EVERY_TIME, true);
    }

    public static long sGetFilterMinSize() {
        long minSize = 0;
        try {
            return Long.parseLong(BaseDeprecatedPreference.sGetDefaultPreferences().getString("filter_min_size", String.valueOf(minSize)));
        } catch (NumberFormatException e) {
            return minSize;
        }
    }

    public static boolean sGetIsAlbumAutoUploadOpen(String albumKey) {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean(createAutoUploadAlbumPreferenceKey(albumKey), false);
    }

    public static boolean sGetIsScreenShotAutoUploadOpen() {
        return BaseDeprecatedPreference.sGetDefaultPreferences().getBoolean(createAutoUploadAlbumPreferenceKey("auto-upload-screenshot"), true);
    }

    private static boolean isAutoUploadAlbumPreferenceKey(String key) {
        return key.startsWith("auto_upload_album_preference_key_prefix_");
    }

    public static String createAutoUploadAlbumPreferenceKey(String albumKey) {
        return "auto_upload_album_preference_key_prefix_" + albumKey;
    }

    public static void sSetLastSlowScanTime(long lastTime) {
        BaseDeprecatedPreference.sGetDefaultEditor().putLong("last_slowscan_time", lastTime).apply();
    }

    private static SharedPreferences getMultiProcessSharedPreferences(Context context) {
        return context.getSharedPreferences(context.getPackageName() + "_preferences_multi", 4);
    }

    public static boolean sHaveCheckBabyForNewService(Context context) {
        return getMultiProcessSharedPreferences(context).getBoolean("have_check_baby_for_new_face_service", false);
    }

    public static void sSetHaveCheckBabyForNewService(Context context) {
        getMultiProcessSharedPreferences(context).edit().putBoolean("have_check_baby_for_new_face_service", true).commit();
    }
}
