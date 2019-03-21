package com.miui.gallery.preference;

import android.content.Intent;
import android.support.annotation.Keep;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.util.StaticContext;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.deprecated.BaseDeprecatedPreference;
import java.util.Random;

public class BaseGalleryPreferences {

    public static class Agreement {
        public static boolean isRequiredAgreementsAllowed() {
            return PreferenceHelper.getBoolean(PrefKeys.REQUIRED_AGREEMENTS_ALLOWED, false);
        }

        public static void setRequiredAgreementsAllowed(boolean allowed) {
            PreferenceHelper.putBoolean(PrefKeys.REQUIRED_AGREEMENTS_ALLOWED, allowed);
        }
    }

    public static class BaseDocumentProvider {
        public static String getUri(String path) {
            return PreferenceHelper.getString(PrefKeys.DOCUMENT_PROVIDER_URI_PREFIX + path, null);
        }

        public static void setUri(String path, String uri) {
            PreferenceHelper.putString(PrefKeys.DOCUMENT_PROVIDER_URI_PREFIX + path, uri);
        }

        public static String getExternalSDCardUri() {
            return getUri(StorageUtils.getSecondaryStoragePath());
        }

        public static void setExternalSDCardUri(String uri) {
            setUri(StorageUtils.getSecondaryStoragePath(), uri);
        }
    }

    public static class CTA {
        private static boolean sAllowUseOnOfflineGlobal = false;
        private static boolean sCanConnectToNetworkTemp = false;

        public static void setRemindConnectNetworkEveryTime(boolean show) {
            PreferenceHelper.putBoolean(PrefKeys.CTA_IMPUNITY_DECLARATION_EVERY_TIME, show);
            if (show) {
                PreferenceHelper.putBoolean(PrefKeys.CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY, false);
            }
        }

        public static boolean remindConnectNetworkEveryTime() {
            return PreferenceHelper.getBoolean(PrefKeys.CTA_IMPUNITY_DECLARATION_EVERY_TIME, true);
        }

        public static void setCanConnectNetwork(boolean remindNever) {
            if (remindNever) {
                sCanConnectToNetworkTemp = false;
                PreferenceHelper.putBoolean(PrefKeys.CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY, true);
                PreferenceHelper.putBoolean(PrefKeys.CTA_IMPUNITY_DECLARATION_EVERY_TIME, false);
            } else {
                sCanConnectToNetworkTemp = true;
                PreferenceHelper.putBoolean(PrefKeys.CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY, false);
            }
            LocalBroadcastManager.getInstance(StaticContext.sGetAndroidContext()).sendBroadcast(new Intent("com.miui.gallery.action.CTA_CHANGED"));
        }

        public static boolean canConnectNetwork() {
            return PreferenceHelper.getBoolean(PrefKeys.CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY, BaseDeprecatedPreference.sCanConnectNetworkByImpunity()) || sCanConnectToNetworkTemp;
        }

        public static void setToAllowUseOnOfflineGlobal(boolean allow) {
            sAllowUseOnOfflineGlobal = allow;
        }

        public static boolean allowUseOnOfflineGlobal() {
            return sAllowUseOnOfflineGlobal;
        }

        public static void setCanConnectToNetworkTemp(boolean canConnectToNetworkTemp) {
            sCanConnectToNetworkTemp = canConnectToNetworkTemp;
        }
    }

    public static class PermissionIntroduction {
        public static void setCtaPrivacyPermissionsAllowed(String permission, boolean isAllowed) {
            PreferenceHelper.putBoolean(PrefKeys.CTA_PRIVACY_PERMISSIONS_ALLOWED + permission, isAllowed);
        }

        public static boolean isCtaPrivacyPermissionsAllowed(String permission) {
            return PreferenceHelper.getBoolean(PrefKeys.CTA_PRIVACY_PERMISSIONS_ALLOWED + permission, false);
        }

        public static void setRuntimePermissionsIntroduced(boolean isAllowed) {
            PreferenceHelper.putBoolean(PrefKeys.RUNTIME_PERMISSIONS_INTRODUCED, isAllowed);
        }

        public static boolean isRuntimePermissionsIntroduced() {
            return PreferenceHelper.getBoolean(PrefKeys.RUNTIME_PERMISSIONS_INTRODUCED, false);
        }
    }

    @Keep
    public interface PrefKeys {
        public static final String CTA_CAN_CONNECT_NETWORK_BY_IMPUNITY = "can_connect_network";
        public static final String CTA_IMPUNITY_DECLARATION_EVERY_TIME = "impunity_declaration_every_time";
        public static final String CTA_PRIVACY_PERMISSIONS_ALLOWED = "cta_privacy_permissions_allowed";
        public static final String DOCUMENT_PROVIDER_URI_PREFIX = "document_provider_uri_";
        public static final String REQUIRED_AGREEMENTS_ALLOWED = "required_agreements_allowed";
        public static final String RUNTIME_PERMISSIONS_INTRODUCED = "runtime_permissions_introduced";
        public static final String STAT_USER_INFO_FROM_SELF_SHOOT = "user_info_self_shoot";
        public static final String STAT_USER_UNIQ_ID = "user_uniq_id";
    }

    public static class SampleStatistic {
        public static boolean hasUploadUserInfo() {
            return PreferenceHelper.getBoolean(PrefKeys.STAT_USER_INFO_FROM_SELF_SHOOT, false);
        }

        public static void setUploadedUserInfo(boolean uploaded) {
            PreferenceHelper.putBoolean(PrefKeys.STAT_USER_INFO_FROM_SELF_SHOOT, uploaded);
        }

        public static long getUniqId() {
            long randomKey = PreferenceHelper.getLong(PrefKeys.STAT_USER_UNIQ_ID, 0);
            if (randomKey != 0) {
                return randomKey;
            }
            randomKey = new Random().nextLong();
            PreferenceHelper.putLong(PrefKeys.STAT_USER_UNIQ_ID, randomKey);
            return randomKey;
        }
    }
}
