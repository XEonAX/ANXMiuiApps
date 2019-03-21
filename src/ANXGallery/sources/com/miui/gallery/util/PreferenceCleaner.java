package com.miui.gallery.util;

import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.preference.GalleryPreferences.HiddenAlbum;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.preference.GalleryPreferences.SlideShow;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.util.deprecated.BaseDeprecatedPreference;
import com.miui.gallery.util.deprecated.Preference;

public class PreferenceCleaner {
    public static void clean() {
        transferOldPreference();
    }

    private static void transferOldPreference() {
        boolean remindNever = true;
        if (!PreferenceHelper.getBoolean(PrefKeys.UPGRADE_OLD_PREFERENCES_TRANSFERED, false)) {
            PreferenceHelper.putBoolean(PrefKeys.UPGRADE_OLD_PREFERENCES_TRANSFERED, true);
            SlideShow.setSlideShowInterval(Math.min(Math.max(Preference.sGetSlideshowInterval() / 1000, 3), 3600));
            HiddenAlbum.setShowHiddenAlbum(Preference.sIsShowHidden());
            Sync.setBackupOnlyInWifi(Preference.sOnlySyncInWifi());
            PreferenceHelper.removeKey(PrefKeys.FACE_CLOUD_STATUS);
            PreferenceHelper.putLong(PrefKeys.FACE_CLOUD_STATUS_NEXT_CHECK_TIME, Preference.sGetCloudFaceStatusNextCheckTime());
            PreferenceHelper.putBoolean(PrefKeys.FACE_FEATURE_SWITCH_PENDING, Preference.sGetFaceFeaturePending());
            PreferenceHelper.putString(PrefKeys.FACE_URL_FOR_QUEUING, Preference.sGetFaceUrlForQueuing());
            PreferenceHelper.putString(PrefKeys.FACE_URL_FOR_WAITING, Preference.sGetFaceUrlForWaiting());
            boolean canConnectNetwork = BaseDeprecatedPreference.sCanConnectNetworkByImpunity();
            if (Preference.sGetImpunityDeclarationEveryTime()) {
                remindNever = false;
            }
            if (canConnectNetwork && remindNever) {
                CTA.setCanConnectNetwork(remindNever);
            }
        }
    }
}
