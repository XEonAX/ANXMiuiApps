package com.miui.gallery.preference;

import android.content.SharedPreferences.Editor;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.syncstate.SyncStatus;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FeatureUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import miui.yellowpage.Tag.TagYellowPage;

public class GalleryPreferences {

    public static class Album {
        public static long getNextForceTopTime() {
            long time = PreferenceHelper.getLong(PrefKeys.ALBUM_NEXT_FORCE_TOP_TIME, -1002);
            PreferenceHelper.putLong(PrefKeys.ALBUM_NEXT_FORCE_TOP_TIME, time - 1);
            return time;
        }

        public static boolean isForceTopAlbumByTopTime(long time) {
            return time >= PreferenceHelper.getLong(PrefKeys.ALBUM_NEXT_FORCE_TOP_TIME, -1002) && time <= -1002;
        }

        public static void setVirtualAlbumSortBy(long albumId, long dateTaken) {
            PreferenceHelper.putLong(String.format(PrefKeys.ALBUM_VIRTUAL_ALBUM_PREFIX, new Object[]{Long.valueOf(albumId)}), dateTaken);
        }

        public static long getVirtualAlbumSortBy(long albumId, long defaultValue) {
            return PreferenceHelper.getLong(String.format(PrefKeys.ALBUM_VIRTUAL_ALBUM_PREFIX, new Object[]{Long.valueOf(albumId)}), defaultValue);
        }

        public static Set<String> getCachedSortByModifyAlbumPaths() {
            return PreferenceHelper.getStringSet(PrefKeys.ALBUM_CACHED_SORT_BY_MODIFY_ALBUM_PATHS, null);
        }

        public static void setCachedSortByModifyAlbumPaths(Set<String> values) {
            PreferenceHelper.putStringSet(PrefKeys.ALBUM_CACHED_SORT_BY_MODIFY_ALBUM_PATHS, values);
        }

        public static Set<String> getCachedSortByModifyAlbumIds() {
            return PreferenceHelper.getStringSet(PrefKeys.ALBUM_CACHED_SORT_BY_MODIFY_ALBUM_IDS, null);
        }

        public static void setCachedSortByModifyAlbumIds(Set<String> values) {
            PreferenceHelper.putStringSet(PrefKeys.ALBUM_CACHED_SORT_BY_MODIFY_ALBUM_IDS, values);
        }
    }

    public static class Assistant {
        public static long getLastTriggerTime() {
            return PreferenceHelper.getLong(PrefKeys.ASSISTANT_LAST_TRIGGER_TIME, 0);
        }

        public static void setLastTriggerTime(long lastRequestTime) {
            PreferenceHelper.putLong(PrefKeys.ASSISTANT_LAST_TRIGGER_TIME, lastRequestTime);
        }

        public static long getLastGuaranteeTriggerTime() {
            return PreferenceHelper.getLong(PrefKeys.ASSISTANT_LAST_GUARANTEE_TRIGGER_TIME, 0);
        }

        public static void setLastGuaranteeTriggerTime(long lastRequestTime) {
            PreferenceHelper.putLong(PrefKeys.ASSISTANT_LAST_GUARANTEE_TRIGGER_TIME, lastRequestTime);
        }

        public static boolean hasCardEver() {
            return PreferenceHelper.getBoolean(PrefKeys.ASSISTANT_HAS_CARD_EVER, false);
        }

        public static void setHasCardEver() {
            PreferenceHelper.putBoolean(PrefKeys.ASSISTANT_HAS_CARD_EVER, true);
        }

        public static boolean isFirstShowImageSelection() {
            return PreferenceHelper.getBoolean(PrefKeys.ASSISTANT_FIRST_SHOW_IMAGE_SELECTION, true);
        }

        public static void setIsFirstShowImageSelection(boolean isFirstAddSecret) {
            PreferenceHelper.putBoolean(PrefKeys.ASSISTANT_FIRST_SHOW_IMAGE_SELECTION, isFirstAddSecret);
        }

        public static long getLastImageFeatureTaskTime() {
            return PreferenceHelper.getLong(PrefKeys.ASSISTANT_LAST_IMAGE_FEATURE_TASK_TIME, 0);
        }

        public static void setLastImageFeatureTaskTime(long lastImageFeatureTaskTime) {
            PreferenceHelper.putLong(PrefKeys.ASSISTANT_LAST_IMAGE_FEATURE_TASK_TIME, lastImageFeatureTaskTime);
        }
    }

    public static class Baby {
        private static String createServerIdKeyForSaveServerTagOfNewPhoto(long albumUniformLocalId) {
            return PrefKeys.BABY_SERVER_TAG_SAVE_PREFIX + albumUniformLocalId;
        }

        public static void saveMinServerTagOfNewPhoto(long albumUniformLocalId, Long servertag) {
            PreferenceHelper.putLong(createServerIdKeyForSaveServerTagOfNewPhoto(albumUniformLocalId), servertag.longValue());
        }

        public static Long getMinServerTagOfNewPhoto(long albumUniformLocalId) {
            return Long.valueOf(PreferenceHelper.getLong(createServerIdKeyForSaveServerTagOfNewPhoto(albumUniformLocalId), 0));
        }

        private static boolean isMinServerTagOfNewPhotoKey(String key) {
            return key != null && key.startsWith(PrefKeys.BABY_SERVER_TAG_SAVE_PREFIX);
        }

        public static boolean getHasShowAutoUpdateTipWithoutSelectingAll(String key) {
            return PreferenceHelper.getBoolean(key, false);
        }

        public static void setHasShowAutoUpdateTipWithoutSelectingAll(String key) {
            PreferenceHelper.putBoolean(key, true);
        }

        public static long getLastClickBabyPhotosRecommandationTime(String key) {
            return PreferenceHelper.getLong(key, 0);
        }

        public static void setLastClickBabyPhotosRecommandationTime(String key) {
            PreferenceHelper.putLong(key, System.currentTimeMillis());
        }

        public static long getLastClickPeopleRecommandationTime(String key) {
            return PreferenceHelper.getLong(key, 0);
        }

        public static void setLastClickPeopleRecommandationTime(String key) {
            PreferenceHelper.putLong(key, System.currentTimeMillis());
        }

        private static String createBabyShortcutKey(String babyName) {
            return "baby_shortcut_prefix" + babyName;
        }

        public static void recordBabyAlbumHasShortcut(String babyName) {
            PreferenceHelper.putString(createBabyShortcutKey(babyName), babyName);
        }

        private static boolean isBabyAlbumHasShortcutKey(String key) {
            return key != null && key.startsWith("baby_shortcut_prefix");
        }

        public static void removeBabyAlbumShortcut(String babyName) {
            PreferenceHelper.removeKey(createBabyShortcutKey(babyName));
        }

        public static ArrayList<String> getBabyAlbumsHasShortcut() {
            ArrayList<String> result = new ArrayList();
            for (String key : PreferenceHelper.getPreferences().getAll().keySet()) {
                if (isBabyAlbumHasShortcutKey(key)) {
                    result.add(PreferenceHelper.getString(key, ""));
                }
            }
            return result;
        }
    }

    public static class CTA extends com.miui.gallery.preference.BaseGalleryPreferences.CTA {
        public static void onCreateOrDestroyHomePage() {
            com.miui.gallery.preference.BaseGalleryPreferences.CTA.setCanConnectToNetworkTemp(false);
            com.miui.gallery.preference.BaseGalleryPreferences.CTA.setToAllowUseOnOfflineGlobal(false);
        }
    }

    public static class CloudControl {
        public static String getSyncToken() {
            return PreferenceHelper.getString(PrefKeys.CLOUD_CONTROL_SYNC_TOKEN, null);
        }

        public static void setSyncToken(String syncToken) {
            PreferenceHelper.putString(PrefKeys.CLOUD_CONTROL_SYNC_TOKEN, syncToken);
        }

        public static long getLastRequestTime() {
            return PreferenceHelper.getLong(PrefKeys.CLOUD_CONTROL_LAST_REQUEST_TIME, 0);
        }

        public static void setLastRequestTime(long lastRequestTime) {
            PreferenceHelper.putLong(PrefKeys.CLOUD_CONTROL_LAST_REQUEST_TIME, lastRequestTime);
        }

        public static long getLastRequestSucceedTime() {
            return PreferenceHelper.getLong(PrefKeys.CLOUD_CONTROL_LAST_REQUEST_SUCCEED_TIME, 0);
        }

        public static void setLastRequestSucceedTime(long lastSucceedTime) {
            PreferenceHelper.putLong(PrefKeys.CLOUD_CONTROL_LAST_REQUEST_SUCCEED_TIME, lastSucceedTime);
        }

        public static long getPushTag() {
            return PreferenceHelper.getLong(PrefKeys.CLOUD_CONTROL_PUSH_TAG, 0);
        }

        public static void setPushTag(long lastRequestTime) {
            PreferenceHelper.putLong(PrefKeys.CLOUD_CONTROL_PUSH_TAG, lastRequestTime);
        }

        public static void remove() {
            PreferenceHelper.getPreferences().edit().remove(PrefKeys.CLOUD_CONTROL_SYNC_TOKEN).remove(PrefKeys.CLOUD_CONTROL_LAST_REQUEST_SUCCEED_TIME).remove(PrefKeys.CLOUD_CONTROL_PUSH_TAG).apply();
        }
    }

    public static final class CloudGuide {
        private static void remove() {
            PreferenceHelper.getPreferences().edit().remove(PrefKeys.CLOUD_GUIDE_SLIM_NOTIFICATION_TIMES).remove(PrefKeys.CLOUD_GUIDE_SLIM_NOTIFICATION_CLICKED).remove(PrefKeys.CLOUD_GUIDE_TOPBAR_LAST_AUTO_SHOW_TIME).remove(PrefKeys.CLOUD_GUIDE_TOPBAR_AUTO_SHOW_TIMES).remove(PrefKeys.CLOUD_GUIDE_TOPBAR_CLICKED).remove(PrefKeys.CLOUD_GUIDE_TOPBAR_LAST_TEXT_ID).remove(PrefKeys.CLOUD_GUIDE_EVER_NOTIFY_SLIM_RESULT).apply();
        }

        public static void setCloudGuideTopbarClicked() {
            PreferenceHelper.putBoolean(PrefKeys.CLOUD_GUIDE_TOPBAR_CLICKED, true);
        }
    }

    public static class DataBase {
        public static boolean getEverFixedCameraAlbumAttributes() {
            return PreferenceHelper.getBoolean(PrefKeys.DATABASE_EVER_UPDATE_CAMERA_ALBUM_ATTRIBUTES, false);
        }

        public static void setEverFixedCameraAlbumAttributes() {
            PreferenceHelper.putBoolean(PrefKeys.DATABASE_EVER_UPDATE_CAMERA_ALBUM_ATTRIBUTES, true);
        }

        public static int getViewVerison(String viewName) {
            return PreferenceHelper.getInt(String.format(Locale.US, PrefKeys.DATABASE_VIEW_VERSION_PREFIX, new Object[]{viewName}), 0);
        }

        public static void setViewVersion(String viewName, int version) {
            PreferenceHelper.putInt(String.format(Locale.US, PrefKeys.DATABASE_VIEW_VERSION_PREFIX, new Object[]{viewName}), version);
        }
    }

    public static class Delete {
        public static boolean isFirstDeleteFromHomePage() {
            return isFirstDelete(PrefKeys.DELETE_FIRST_DELETE_FROM_HOMEPAGE);
        }

        public static boolean isFirstDeleteFromAlbum() {
            return isFirstDelete(PrefKeys.DELETE_FIRST_DELETE_FROM_ALBUM);
        }

        private static boolean isFirstDelete(String key) {
            boolean isFirst = PreferenceHelper.getBoolean(key, true);
            if (isFirst) {
                PreferenceHelper.putBoolean(key, false);
            }
            return isFirst;
        }
    }

    public static class Face {
        public static boolean isFaceSwitchSet() {
            return PreferenceHelper.contains(PrefKeys.FACE_CLOUD_STATUS);
        }

        public static boolean getFaceSwitchEnabled() {
            boolean z = false;
            if (!isFaceSwitchSet()) {
                return true;
            }
            int faceStatus = PreferenceHelper.getInt(PrefKeys.FACE_CLOUD_STATUS, 0);
            if (faceStatus == 2 || faceStatus == 4) {
                z = true;
            }
            return z;
        }

        public static void setFaceSwitchStatus(boolean enabled) {
            PreferenceHelper.putInt(PrefKeys.FACE_CLOUD_STATUS, enabled ? 2 : 0);
        }

        public static void setFaceRecommendGroupHidden(String albumServerId, boolean value) {
            PreferenceHelper.putBoolean(PrefKeys.FACE_RECOMMEND_GROUP_HIDDEN + albumServerId, value);
        }

        public static boolean isFaceRecommendGroupHidden(String albumServerId) {
            return PreferenceHelper.getBoolean(PrefKeys.FACE_RECOMMEND_GROUP_HIDDEN + albumServerId, false);
        }

        public static void setShowRecommendConfirmDialog(boolean value) {
            PreferenceHelper.putBoolean(PrefKeys.FACE_FIRST_CONFIRM_RECOMMEND_FACE, value);
        }

        public static boolean isShowRecommendConfirmDialog() {
            return PreferenceHelper.getBoolean(PrefKeys.FACE_FIRST_CONFIRM_RECOMMEND_FACE, true);
        }

        public static int getMarkMyselfTriggeredCount() {
            return PreferenceHelper.getInt(PrefKeys.FACE_MARK_MYSELF_TRIGGERED_COUNT, 0);
        }

        public static void onMarkMyselfTriggered() {
            PreferenceHelper.putInt(PrefKeys.FACE_MARK_MYSELF_TRIGGERED_COUNT, getMarkMyselfTriggeredCount() + 1);
        }

        public static void setMarkMyselfResult(boolean result) {
            PreferenceHelper.putBoolean(PrefKeys.FACE_MARK_MYSELF_RESULT, result);
        }

        public static boolean isFirstSyncCompleted() {
            return PreferenceHelper.getBoolean(PrefKeys.FACE_FIRST_SYNC_COMPLETED, false);
        }

        public static void setFirstSyncCompleted() {
            PreferenceHelper.putBoolean(PrefKeys.FACE_FIRST_SYNC_COMPLETED, true);
        }

        public static void remove() {
            PreferenceHelper.getPreferences().edit().remove(PrefKeys.FACE_CLOUD_STATUS).remove(PrefKeys.FACE_CLOUD_STATUS_NEXT_CHECK_TIME).remove(PrefKeys.FACE_FEATURE_SWITCH_PENDING).remove(PrefKeys.FACE_URL_FOR_QUEUING).remove(PrefKeys.FACE_URL_FOR_WAITING).remove(PrefKeys.FACE_CLOUD_STATUS_SYNC_TIME).remove(PrefKeys.FACE_MARK_MYSELF_TRIGGERED_COUNT).remove(PrefKeys.FACE_MARK_MYSELF_RESULT).remove(PrefKeys.FACE_FIRST_SYNC_COMPLETED).apply();
        }
    }

    public static class Favorites {
        public static boolean isFirstTimeAddToFavorites() {
            boolean ret = PreferenceHelper.getBoolean(PrefKeys.FIRST_TIME_ADD_TO_FAVORITES, true);
            if (ret) {
                PreferenceHelper.putBoolean(PrefKeys.FIRST_TIME_ADD_TO_FAVORITES, false);
            }
            return ret;
        }
    }

    public static class FeatureRedDot {
        public static boolean hasUpdateFeatureUsed(String featureName) {
            return PreferenceHelper.getBoolean(PrefKeys.FEATURE_EVER_DISPLAYED + featureName, false);
        }

        public static void setUpdateFeatureUsed(String featureName, boolean hasDisplayed) {
            PreferenceHelper.putBoolean(PrefKeys.FEATURE_EVER_DISPLAYED + featureName, hasDisplayed);
        }

        public static void setFeatureRedDotValidTime(String featureName, long startTime, long endTime) {
            PreferenceHelper.putLong(PrefKeys.FEATURE_RED_DOT_VALID_START_TIME + featureName, startTime);
            PreferenceHelper.putLong(PrefKeys.FEATURE_RED_DOT_VALID_END_TIME + featureName, endTime);
        }

        public static boolean isFeatureRedDotValid(String featureName, long curTime) {
            return curTime >= PreferenceHelper.getLong(new StringBuilder().append(PrefKeys.FEATURE_RED_DOT_VALID_START_TIME).append(featureName).toString(), 0) && curTime <= PreferenceHelper.getLong(PrefKeys.FEATURE_RED_DOT_VALID_END_TIME + featureName, 0);
        }

        public static boolean isUpdateFeatureStated(String featureName) {
            return PreferenceHelper.getBoolean(PrefKeys.UPDATE_FEATURE_STATED + featureName, false);
        }

        public static void setUpdateFeatureStated(String featureName, boolean stated) {
            PreferenceHelper.putBoolean(PrefKeys.UPDATE_FEATURE_STATED + featureName, stated);
        }
    }

    public static class FileDownload {
        private static String getConnTimeoutKey(DownloadType type) {
            return String.format(Locale.US, PrefKeys.FILE_DOWNLOAD_CONN_TIMEOUT_FORMAT, new Object[]{type.name()});
        }

        public static int getConnTimeout(DownloadType type) {
            return MemoryPreferenceHelper.getInt(getConnTimeoutKey(type), 5000);
        }

        public static boolean setConnTimeout(DownloadType type, int timeout) {
            int validTimeout = clampConnTimeout(timeout);
            MemoryPreferenceHelper.putInt(getConnTimeoutKey(type), validTimeout);
            return timeout == validTimeout;
        }

        public static int clampConnTimeout(int timeout) {
            return BaseMiscUtil.clamp(timeout, 5000, 30000);
        }
    }

    public static class HiddenAlbum {
        public static boolean isShowHiddenAlbum() {
            return PreferenceHelper.getBoolean(PrefKeys.HIDDEN_ALBUM_SHOW, false);
        }

        public static void setShowHiddenAlbum(boolean show) {
            PreferenceHelper.putBoolean(PrefKeys.HIDDEN_ALBUM_SHOW, show);
        }
    }

    public static class HomePage {
        public static String getHomePageImageIds() {
            return PreferenceHelper.getString(PrefKeys.HOME_PAGE_IMAGE_IDS, "");
        }

        public static void setHomePageImageIds(String ids) {
            PreferenceHelper.putString(PrefKeys.HOME_PAGE_IMAGE_IDS, ids);
        }
    }

    public static class LocalMode {
        public static synchronized boolean isOnlyShowLocalPhoto() {
            boolean z = false;
            synchronized (LocalMode.class) {
                if (PreferenceHelper.getBoolean(PrefKeys.LOCAL_MODE_ONLY_SHOW_LOCAL_PHOTO, false) && SyncUtil.existXiaomiAccount(GalleryApp.sGetAndroidContext())) {
                    z = true;
                }
            }
            return z;
        }

        public static synchronized void setOnlyShowLocalPhoto(boolean flag) {
            synchronized (LocalMode.class) {
                PreferenceHelper.putBoolean(PrefKeys.LOCAL_MODE_ONLY_SHOW_LOCAL_PHOTO, flag);
            }
        }
    }

    public static class LocationManager {
        public static int getLocationDetailsVersion(int defaultValue) {
            return PreferenceHelper.getInt(PrefKeys.ADDRESS_VERSION, defaultValue);
        }

        public static void setLocationDetailsVersion(int value) {
            PreferenceHelper.putInt(PrefKeys.ADDRESS_VERSION, value);
        }

        public static void remove() {
            PreferenceHelper.removeKey(PrefKeys.ADDRESS_VERSION);
        }
    }

    public static class MediaScanner {
        public static boolean getEverCleanUnsupportUploadItems() {
            return PreferenceHelper.getBoolean(PrefKeys.SCANNER_EVER_CLEAN_UNSUPPORT_UPLOAD_ITEMS, false);
        }

        public static void setEverCleanUnsupportUploadItems() {
            PreferenceHelper.putBoolean(PrefKeys.SCANNER_EVER_CLEAN_UNSUPPORT_UPLOAD_ITEMS, true);
        }

        public static boolean isEverRestoreSecretItems() {
            return PreferenceHelper.getBoolean(PrefKeys.SCANNER_EVER_RESTORE_SECRET_ITEMS, false);
        }

        public static void setHasRestoredSecretItems() {
            PreferenceHelper.putBoolean(PrefKeys.SCANNER_EVER_RESTORE_SECRET_ITEMS, true);
        }

        public static boolean isEverFillSpecialTypeFlags() {
            return PreferenceHelper.getBoolean(String.format(Locale.US, PrefKeys.SCANNER_EVER_FILL_SPECIAL_TYPE_FLAGS_PREFIX, new Object[]{Integer.valueOf(1)}), false);
        }

        public static void setEverFillSpecialTypeFlags() {
            PreferenceHelper.putBoolean(String.format(Locale.US, PrefKeys.SCANNER_EVER_FILL_SPECIAL_TYPE_FLAGS_PREFIX, new Object[]{Integer.valueOf(1)}), true);
        }

        public static long getLastImagesScanTime() {
            long ret = PreferenceHelper.getLong(PrefKeys.SCANNER_LAST_IMAGES_SCAN_TIME, 0);
            if (ret != 0) {
                return ret;
            }
            ret = System.currentTimeMillis();
            setLastImagesScanTime(ret);
            return ret;
        }

        public static long getLastVideosScanTime() {
            long ret = PreferenceHelper.getLong(PrefKeys.SCANNER_LAST_VIDEOS_SCAN_TIME, 0);
            if (ret != 0) {
                return ret;
            }
            ret = System.currentTimeMillis();
            setLastVideosScanTime(ret);
            return ret;
        }

        public static void setLastImagesScanTime(long time) {
            PreferenceHelper.putLong(PrefKeys.SCANNER_LAST_IMAGES_SCAN_TIME, time);
        }

        public static void setLastVideosScanTime(long time) {
            PreferenceHelper.putLong(PrefKeys.SCANNER_LAST_VIDEOS_SCAN_TIME, time);
        }
    }

    public static class PhotoEditor {
        public static boolean isCropTipsShow() {
            return PreferenceHelper.getInt(PrefKeys.PHOTO_EDITOR_CROP_TIPS_TIMES, 0) < 3;
        }

        public static void addCropTipsShowTimes() {
            PreferenceHelper.putInt(PrefKeys.PHOTO_EDITOR_CROP_TIPS_TIMES, PreferenceHelper.getInt(PrefKeys.PHOTO_EDITOR_CROP_TIPS_TIMES, 0) + 1);
        }
    }

    public static class PhotoPrint {
        public static void increaseSilentInstallTimes() {
            setSilentInstallTimes(getSilentInstallTimes() + 1);
        }

        public static int getSilentInstallTimes() {
            return PreferenceHelper.getInt(PrefKeys.PHOTO_PRINT_SILENT_INSTALL_TIMES, 0);
        }

        public static void setSilentInstallTimes(int times) {
            PreferenceHelper.putInt(PrefKeys.PHOTO_PRINT_SILENT_INSTALL_TIMES, times);
        }

        public static boolean isPrintFirstClicked() {
            return PreferenceHelper.getBoolean(PrefKeys.PRINT_FIRST_CLICKED, true);
        }

        public static void setIsPrintFirstClicked(boolean isFirst) {
            PreferenceHelper.putBoolean(PrefKeys.PRINT_FIRST_CLICKED, isFirst);
        }
    }

    public static class PhotoSlim {
        public static void setIsFirstUsePhotoSlim(Boolean isFirst) {
            PreferenceHelper.putBoolean(PrefKeys.PHOTO_SLIM_FIRST_USE, isFirst.booleanValue());
        }

        public static boolean isFirstUsePhotoSlim() {
            return PreferenceHelper.getBoolean(PrefKeys.PHOTO_SLIM_FIRST_USE, true);
        }
    }

    @Keep
    public interface PrefKeys {
        public static final String ADDRESS_VERSION = "address_version";
        public static final String ADD_TO_ALBUM_DELETE_ORIGIN_CHECKED = "add_to_album_delete_origin_checked";
        public static final String ALBUM_CACHED_SORT_BY_MODIFY_ALBUM_IDS = "key_cached_album_sort_by_modify_album_ids";
        public static final String ALBUM_CACHED_SORT_BY_MODIFY_ALBUM_PATHS = "key_cached_album_sort_by_modify_album_paths";
        public static final String ALBUM_NEXT_FORCE_TOP_TIME = "key_next_force_top_create_time";
        public static final String ALBUM_VIRTUAL_ALBUM_PREFIX = "key_virtual_album_prefix_%d";
        public static final String ALBUM_VISIT_PREFIX = "key_album_visit_prefix_%d";
        public static final String ASSISTANT_FIRST_SHOW_IMAGE_SELECTION = "assistant_first_show_image_selection";
        public static final String ASSISTANT_HAS_CARD_EVER = "assistant_has_card_ever";
        public static final String ASSISTANT_LAST_GUARANTEE_TRIGGER_TIME = "assistant_last_guarantee_trigger_time";
        public static final String ASSISTANT_LAST_IMAGE_FEATURE_TASK_TIME = "assistant_last_image_feature_task_time";
        public static final String ASSISTANT_LAST_TRIGGER_TIME = "assistant_last_trigger_time";
        public static final String BABY_SERVER_TAG_SAVE_PREFIX = "save_server_tag_of_new_image_prefix";
        public static final String CARD_ADDED_TIME = "card_added_time";
        public static final String CARD_OPERATION_SYNC_TOKEN = "card_operation_sync_token";
        public static final String CARD_OPERATION_WATERMARK = "card_operation_watermark";
        public static final String CLOUD_CONTROL_LAST_REQUEST_SUCCEED_TIME = "cloud_control_last_request_succeed_time";
        public static final String CLOUD_CONTROL_LAST_REQUEST_TIME = "cloud_control_last_request_time";
        public static final String CLOUD_CONTROL_PUSH_TAG = "cloud_control_push_tag";
        public static final String CLOUD_CONTROL_SYNC_TOKEN = "cloud_control_sync_token";
        public static final String CLOUD_GUIDE_EVER_NOTIFY_SLIM_RESULT = "ever_notify_slim_result";
        public static final String CLOUD_GUIDE_SLIM_NOTIFICATION_CLICKED = "slim_notification_clicked";
        public static final String CLOUD_GUIDE_SLIM_NOTIFICATION_TIMES = "slim_notification_times";
        public static final String CLOUD_GUIDE_TOPBAR_AUTO_SHOW_TIMES = "cloud_guide_topbar_auto_show_times";
        public static final String CLOUD_GUIDE_TOPBAR_CLICKED = "cloud_guide_topbar_clicked";
        public static final String CLOUD_GUIDE_TOPBAR_LAST_AUTO_SHOW_TIME = "cloud_guide_topbar_last_auto_show_time";
        public static final String CLOUD_GUIDE_TOPBAR_LAST_TEXT_ID = "cloud_guide_topbar_last_text_id";
        public static final String DATABASE_EVER_UPDATE_CAMERA_ALBUM_ATTRIBUTES = "ever_update_camera_album_attributes";
        public static final String DATABASE_VIEW_VERSION_PREFIX = "view_version_prefix_%s";
        public static final String DELETE_FIRST_DELETE_FROM_ALBUM = "first_delete_from_album";
        public static final String DELETE_FIRST_DELETE_FROM_HOMEPAGE = "first_delete_from_homepage";
        public static final String FACE_CLOUD_STATUS = "cloud_face_status";
        public static final String FACE_CLOUD_STATUS_NEXT_CHECK_TIME = "cloud_face_status_retry_time";
        public static final String FACE_CLOUD_STATUS_SYNC_TIME = "cloud_face_status_sync_time";
        public static final String FACE_FEATURE_SWITCH_PENDING = "face_feature_switch_pending";
        public static final String FACE_FIRST_CONFIRM_RECOMMEND_FACE = "first_confirm_recommend_face";
        public static final String FACE_FIRST_SYNC_COMPLETED = "face_first_sync_completed";
        public static final String FACE_HAS_TOAST_SET_GROUP = "has_toast_how_to_set_group";
        public static final String FACE_MARK_MYSELF_RESULT = "face_mark_myself_result";
        public static final String FACE_MARK_MYSELF_TRIGGERED_COUNT = "face_mark_myself_triggered_count";
        public static final String FACE_RECOMMEND_GROUP_HIDDEN = "face_recommend_group_hidden";
        public static final String FACE_URL_FOR_QUEUING = "face_url_for_queuing";
        public static final String FACE_URL_FOR_WAITING = "face_url_for_waiting";
        public static final String FEATURE_EVER_DISPLAYED = "feature_ever_displayed";
        public static final String FEATURE_EVER_USED_FORMATTER = "new_feature_ever_used_%s";
        public static final String FEATURE_RED_DOT_VALID_END_TIME = "feature_red_dot_valid_end_time";
        public static final String FEATURE_RED_DOT_VALID_START_TIME = "feature_red_dot_valid_start_time";
        public static final String FILE_DOWNLOAD_CONN_TIMEOUT_FORMAT = "file_download_conn_timeout_%s";
        public static final String FIRST_TIME_ADD_TO_FAVORITES = "first_time_add_to_favorites";
        @AutoBackup
        public static final String HIDDEN_ALBUM_SHOW = "show_hidden_album";
        public static final String HOME_PAGE_IMAGE_IDS = "home_page_image_ids";
        @AutoBackup
        public static final String LOCAL_MODE_ONLY_SHOW_LOCAL_PHOTO = "only_show_local_photo";
        public static final String MONTH_VIEW_HAS_SHOWN_TIP = "month_view_has_shown_tip";
        public static final String PHOTO_EDITOR_CROP_TIPS_TIMES = "photo_editor_crop_tips_times";
        public static final String PHOTO_EDITOR_DOODLE_COLOR_LOCATION = "photo_editor_doodle_color_location";
        public static final String PHOTO_PRINT_SILENT_INSTALL_TIMES = "photo_print_silent_install_times";
        public static final String PHOTO_SLIM_FIRST_USE = "photo_slim_first_use";
        public static final String PRINT_FIRST_CLICKED = "print_first_clicked";
        public static final String PROJECTION_DEVICE_KEY_PREFIX = "big_screen_device_key_prefix_";
        public static final String SCANNER_EVER_CLEAN_UNSUPPORT_UPLOAD_ITEMS = "ever_clean_unsupport_upload_items";
        public static final String SCANNER_EVER_FILL_SPECIAL_TYPE_FLAGS_PREFIX = "ever_fill_special_type_flags_v%d";
        public static final String SCANNER_EVER_RESTORE_SECRET_ITEMS = "ever_restore_secret_items";
        public static final String SCANNER_LAST_IMAGES_SCAN_TIME = "last_images_scan_time";
        public static final String SCANNER_LAST_VIDEOS_SCAN_TIME = "last_videos_scan_time";
        public static final String SEARCH_CACHE_STATUS = "search_cache_status";
        public static final String SEARCH_FEEDBACK_SHOULD_SHOW_POLICY = "search_feedback_task_should_show_policy";
        public static final String SEARCH_FEEDBACK_TASK_REPORTED_TAGS = "search_feedback_task_reported_tags";
        public static final String SEARCH_USER_LAST_REQUEST_OPEN_TIME = "search_user_last_request_open_time";
        public static final String SEARCH_USER_SWITCH_STATUS = "search_user_switch_status";
        public static final String SECRET_FIRST_ADD_SECRET = "first_add_secret";
        public static final String SECRET_FIRST_USE_PRIVACY_PASSWORD = "first_use_privacy_password";
        public static final String SERVER_CONTROL_LIST_EVER_CLEAR_OLD_FILE = "ever_clear_old_file";
        public static final String SETTINGS_SYNC_FIRST_UPLOAD_COMPLETE = "settings_sync_first_upload_complete";
        public static final String SETTINGS_SYNC_IS_DIRTY = "settings_sync_is_dirty";
        @AutoBackup
        public static final String SLIDESHOW_INTERVAL = "slideshow_interval";
        public static final String SMART_VIDEO_GUIDE_COMPLETED = "smart_video_guide_completed";
        public static final String SYNC_AUTO_DOWNLOAD = "auto_download";
        public static final String SYNC_AUTO_DOWNLOAD_TIME = "auto_download_time";
        @AutoBackup
        public static final String SYNC_BACKUP_ONLY_IN_WIFI = "backup_only_in_wifi";
        public static final String SYNC_COMPLETELY_FINISH = "sync_completely_finish";
        public static final String SYNC_DEVICE_STORAGE_LOW = "device_storage_low";
        public static final String SYNC_DOWNLOAD_TYPE = "download_type";
        public static final String SYNC_EVER_AUTO_DOWNLOADED = "ever_auto_download";
        public static final String SYNC_EVER_REFILL_LOCAL_GROUP_ID = "ever_refill_local_group_id";
        public static final String SYNC_EVER_RESET_SLIM_SWITCH = "ever_reset_slim_switch";
        public static final String SYNC_EVER_SYNCED_SYSTEM_ALBUM = "ever_synced_system_album";
        public static final String SYNC_IS_PLUGGED = "is_plugged";
        public static final String SYNC_POWER_CAN_SYNC = "power_can_sync";
        @AutoBackup
        public static final String SYNC_SLIM_AFTER_BACKUPED = "slim_after_backuped_v2";
        public static final String TOP_BAR_CANNOT_SYNC_PREFIX = "top_bar_cannot_sync_";
        public static final String UNIQUE_ID = "unique_id";
        public static final String UPDATE_FEATURE_STATED = "update_feature_stated";
        public static final String UPGRADE_OLD_CACHE_CLEANED = "old_cache_cleaned";
        public static final String UPGRADE_OLD_PREFERENCES_TRANSFERED = "old_preferences_transfered";
        public static final String UPGRADE_OLD_THUMBNAIL_TRANSFERED = "old_thumbnail_transfered";
    }

    public static class SampleStatistic extends com.miui.gallery.preference.BaseGalleryPreferences.SampleStatistic {
    }

    public static class Search {
        public static boolean isUserSearchSwitchOpen(boolean defaultValue) {
            return PreferenceHelper.getBoolean(PrefKeys.SEARCH_USER_SWITCH_STATUS, defaultValue);
        }

        public static void setIsUserSearchSwitchOpen(boolean value) {
            PreferenceHelper.putBoolean(PrefKeys.SEARCH_USER_SWITCH_STATUS, value);
        }

        public static boolean isUserSearchSwitchSet() {
            return PreferenceHelper.contains(PrefKeys.SEARCH_USER_SWITCH_STATUS);
        }

        public static long getUserLastRequestOpenTime() {
            return PreferenceHelper.getLong(PrefKeys.SEARCH_USER_LAST_REQUEST_OPEN_TIME, -1);
        }

        public static void setUserLastRequestOpenTime(long value) {
            PreferenceHelper.putLong(PrefKeys.SEARCH_USER_LAST_REQUEST_OPEN_TIME, value);
        }

        public static void removeIsUserSearchSwitchOpen() {
            PreferenceHelper.removeKey(PrefKeys.SEARCH_USER_SWITCH_STATUS);
        }

        public static String getFeedbackReportedTags() {
            return PreferenceHelper.getString(PrefKeys.SEARCH_FEEDBACK_TASK_REPORTED_TAGS, null);
        }

        public static void setFeedbackReportedTags(String tags) {
            PreferenceHelper.putString(PrefKeys.SEARCH_FEEDBACK_TASK_REPORTED_TAGS, tags);
        }

        public static boolean shouldShowFeedbackPolicy() {
            return PreferenceHelper.getBoolean(PrefKeys.SEARCH_FEEDBACK_SHOULD_SHOW_POLICY, true);
        }

        public static void setShouldShowFeedbackPolicy(boolean value) {
            PreferenceHelper.putBoolean(PrefKeys.SEARCH_FEEDBACK_SHOULD_SHOW_POLICY, value);
        }

        public static boolean isSearchCacheStatusOpen(boolean defaultValue) {
            return PreferenceHelper.getBoolean(PrefKeys.SEARCH_CACHE_STATUS, defaultValue);
        }

        public static void setIsSearchCacheStatusOpen(boolean value) {
            PreferenceHelper.putBoolean(PrefKeys.SEARCH_CACHE_STATUS, value);
        }

        public static void removeSearchCacheStatus() {
            PreferenceHelper.removeKey(PrefKeys.SEARCH_CACHE_STATUS);
        }

        public static void remove() {
            removeIsUserSearchSwitchOpen();
            PreferenceHelper.removeKey(PrefKeys.SEARCH_FEEDBACK_TASK_REPORTED_TAGS);
            PreferenceHelper.removeKey(PrefKeys.SEARCH_USER_LAST_REQUEST_OPEN_TIME);
            removeSearchCacheStatus();
        }
    }

    public static class Secret {
        public static boolean isFirstAddSecret() {
            return PreferenceHelper.getBoolean(PrefKeys.SECRET_FIRST_ADD_SECRET, true);
        }

        public static boolean isFirstUsePrivacyPassword() {
            return PreferenceHelper.getBoolean(PrefKeys.SECRET_FIRST_USE_PRIVACY_PASSWORD, true);
        }

        public static void setIsFirstUsePrivacyPassword(boolean isFirstUse) {
            PreferenceHelper.putBoolean(PrefKeys.SECRET_FIRST_USE_PRIVACY_PASSWORD, isFirstUse);
        }

        public static void setIsFirstAddSecret(boolean isFirstAddSecret) {
            PreferenceHelper.putBoolean(PrefKeys.SECRET_FIRST_ADD_SECRET, isFirstAddSecret);
        }
    }

    public static class SettingsSync {
        public static boolean isDirty() {
            return PreferenceHelper.getBoolean(PrefKeys.SETTINGS_SYNC_IS_DIRTY, false);
        }

        public static void markDirty(boolean value) {
            PreferenceHelper.putBoolean(PrefKeys.SETTINGS_SYNC_IS_DIRTY, value);
        }

        public static boolean isFirstUploadComplete() {
            return PreferenceHelper.getBoolean(PrefKeys.SETTINGS_SYNC_FIRST_UPLOAD_COMPLETE, false);
        }

        public static void setFirstUploadComplete() {
            PreferenceHelper.putBoolean(PrefKeys.SETTINGS_SYNC_FIRST_UPLOAD_COMPLETE, true);
        }

        public static void remove() {
            PreferenceHelper.removeKey(PrefKeys.SETTINGS_SYNC_IS_DIRTY);
            PreferenceHelper.removeKey(PrefKeys.SETTINGS_SYNC_FIRST_UPLOAD_COMPLETE);
        }
    }

    public static class SlideShow {
        public static int getSlideShowInterval() {
            return PreferenceHelper.getInt(PrefKeys.SLIDESHOW_INTERVAL, 3);
        }

        public static void setSlideShowInterval(int interval) {
            PreferenceHelper.putInt(PrefKeys.SLIDESHOW_INTERVAL, interval);
        }
    }

    public static class SmartVideoGuide {
        public static boolean hasGuided() {
            return PreferenceHelper.getBoolean(PrefKeys.SMART_VIDEO_GUIDE_COMPLETED, false);
        }

        public static void setSmartVideoGuided(boolean hasGuided) {
            PreferenceHelper.putBoolean(PrefKeys.SMART_VIDEO_GUIDE_COMPLETED, hasGuided);
        }
    }

    public static class Sync {
        private static final boolean DEFAULT_AUTO_BATCH_DOWNLOAD = CloudControlStrategyHelper.getSyncStrategy().isAutoDownload();
        private static final String DEFAULT_DOWNLOAD_TYPE = (CloudControlStrategyHelper.getSyncStrategy().getAutoDownloadType() == 0 ? TagYellowPage.THUMBNAIL : "origin");

        public static void setPowerCanSync(boolean powerCanSync) {
            MemoryPreferenceHelper.putBoolean(PrefKeys.SYNC_POWER_CAN_SYNC, powerCanSync);
        }

        public static boolean getPowerCanSync() {
            return MemoryPreferenceHelper.getBoolean(PrefKeys.SYNC_POWER_CAN_SYNC, false);
        }

        public static void setIsPlugged(boolean isPlugged) {
            MemoryPreferenceHelper.putBoolean(PrefKeys.SYNC_IS_PLUGGED, isPlugged);
        }

        public static boolean getIsPlugged() {
            return MemoryPreferenceHelper.getBoolean(PrefKeys.SYNC_IS_PLUGGED, false);
        }

        public static void setSyncCompletelyFinish(boolean syncCompletelyFinish) {
            PreferenceHelper.putBoolean(PrefKeys.SYNC_COMPLETELY_FINISH, syncCompletelyFinish);
        }

        public static boolean getSyncCompletelyFinish() {
            return PreferenceHelper.getBoolean(PrefKeys.SYNC_COMPLETELY_FINISH, false);
        }

        public static void setBackupOnlyInWifi(boolean onlyInWifi) {
            if (FeatureUtil.isSupportBackupOnlyWifi()) {
                PreferenceHelper.putBoolean(PrefKeys.SYNC_BACKUP_ONLY_IN_WIFI, onlyInWifi);
            }
        }

        public static boolean getBackupOnlyInWifi() {
            if (FeatureUtil.isSupportBackupOnlyWifi()) {
                return PreferenceHelper.getBoolean(PrefKeys.SYNC_BACKUP_ONLY_IN_WIFI, true);
            }
            return true;
        }

        public static boolean getEverRefillLocalGroupId() {
            return PreferenceHelper.getBoolean(PrefKeys.SYNC_EVER_REFILL_LOCAL_GROUP_ID, false);
        }

        public static void setEverRefillLocalGroupId() {
            PreferenceHelper.putBoolean(PrefKeys.SYNC_EVER_REFILL_LOCAL_GROUP_ID, true);
        }

        public static boolean getEverSyncedSystemAlbum() {
            return PreferenceHelper.getBoolean(PrefKeys.SYNC_EVER_SYNCED_SYSTEM_ALBUM, false);
        }

        public static void setEverSyncedSystemAlbum() {
            PreferenceHelper.putBoolean(PrefKeys.SYNC_EVER_SYNCED_SYSTEM_ALBUM, true);
        }

        public static boolean isEverAutoDownloaded() {
            return PreferenceHelper.getBoolean(PrefKeys.SYNC_EVER_AUTO_DOWNLOADED, false);
        }

        public static void setEverAutoDownloaded() {
            PreferenceHelper.putBoolean(PrefKeys.SYNC_EVER_AUTO_DOWNLOADED, true);
        }

        public static long getAutoDownloadTime() {
            return PreferenceHelper.getLong(PrefKeys.SYNC_AUTO_DOWNLOAD_TIME, -1);
        }

        public static void setAutoDownloadTime(long time) {
            PreferenceHelper.putLong(PrefKeys.SYNC_AUTO_DOWNLOAD_TIME, time);
        }

        public static boolean isAutoDownload() {
            return PreferenceHelper.getBoolean(PrefKeys.SYNC_AUTO_DOWNLOAD, DEFAULT_AUTO_BATCH_DOWNLOAD);
        }

        public static void setAutoDownload(boolean autoDownload) {
            PreferenceHelper.putBoolean(PrefKeys.SYNC_AUTO_DOWNLOAD, autoDownload);
        }

        public static DownloadType getDownloadType() {
            String type = PreferenceHelper.getString(PrefKeys.SYNC_DOWNLOAD_TYPE, DEFAULT_DOWNLOAD_TYPE);
            if (TagYellowPage.THUMBNAIL.equals(type)) {
                return DownloadType.THUMBNAIL;
            }
            if ("origin".equals(type)) {
                return DownloadType.ORIGIN;
            }
            return null;
        }

        public static void setDownloadType(DownloadType type) {
            DownloadType old = getDownloadType();
            if (type == DownloadType.THUMBNAIL) {
                PreferenceHelper.putString(PrefKeys.SYNC_DOWNLOAD_TYPE, TagYellowPage.THUMBNAIL);
            } else if (type == DownloadType.ORIGIN) {
                PreferenceHelper.putString(PrefKeys.SYNC_DOWNLOAD_TYPE, "origin");
            }
            if (old != type) {
                PreferenceHelper.removeKey(PrefKeys.SYNC_AUTO_DOWNLOAD_TIME);
                PreferenceHelper.removeKey(PrefKeys.SYNC_EVER_AUTO_DOWNLOADED);
            }
        }

        public static boolean isDeviceStorageLow() {
            return MemoryPreferenceHelper.getBoolean(PrefKeys.SYNC_DEVICE_STORAGE_LOW, false);
        }

        public static void setDeviceStorageLow(boolean low) {
            MemoryPreferenceHelper.putBoolean(PrefKeys.SYNC_DEVICE_STORAGE_LOW, low);
        }

        public static void remove() {
            PreferenceHelper.getPreferences().edit().remove(PrefKeys.SYNC_BACKUP_ONLY_IN_WIFI).remove(PrefKeys.SYNC_COMPLETELY_FINISH).remove(PrefKeys.SYNC_SLIM_AFTER_BACKUPED).remove(PrefKeys.SYNC_EVER_SYNCED_SYSTEM_ALBUM).remove(PrefKeys.SYNC_EVER_AUTO_DOWNLOADED).remove(PrefKeys.SYNC_AUTO_DOWNLOAD_TIME).remove(PrefKeys.SYNC_DOWNLOAD_TYPE).remove(PrefKeys.SYNC_AUTO_DOWNLOAD).apply();
        }
    }

    public static class TopBar {
        private static String getSyncStatusTipKey(SyncStatus status) {
            return PrefKeys.TOP_BAR_CANNOT_SYNC_PREFIX + status.name();
        }

        public static boolean hasShowedSyncStatusTip(SyncStatus status) {
            return PreferenceHelper.getBoolean(getSyncStatusTipKey(status), false);
        }

        public static void setHasShowedSyncStatusTip(SyncStatus status, boolean hasShowed) {
            PreferenceHelper.putBoolean(getSyncStatusTipKey(status), hasShowed);
        }

        static void remove() {
            Editor editor = PreferenceHelper.getPreferences().edit();
            for (String key : PreferenceHelper.getPreferences().getAll().keySet()) {
                if (!TextUtils.isEmpty(key) && key.startsWith(PrefKeys.TOP_BAR_CANNOT_SYNC_PREFIX)) {
                    editor.remove(key);
                }
            }
            editor.apply();
        }
    }

    public static class UUID {
        public static String get() {
            String uuid = PreferenceHelper.getString(PrefKeys.UNIQUE_ID, null);
            if (!TextUtils.isEmpty(uuid)) {
                return uuid;
            }
            uuid = java.util.UUID.randomUUID().toString();
            PreferenceHelper.putString(PrefKeys.UNIQUE_ID, uuid);
            return uuid;
        }
    }

    public static List<String> getAutoBackupPrefKeys() {
        List<String> keys = null;
        Field[] fields = PrefKeys.class.getDeclaredFields();
        if (fields != null) {
            keys = new LinkedList();
            try {
                for (Field field : fields) {
                    if (field.isAnnotationPresent(AutoBackup.class)) {
                        keys.add(field.get(null).toString());
                    }
                }
            } catch (Throwable e) {
                Log.e("GalleryPreferences", e);
            } catch (Throwable e2) {
                Log.e("GalleryPreferences", e2);
            }
        }
        return keys;
    }

    public static void sRemoveCloudSettings() {
        Face.remove();
        Sync.remove();
        CloudGuide.remove();
        TopBar.remove();
        Search.remove();
        CloudControl.remove();
        SettingsSync.remove();
        LocationManager.remove();
        Editor editor = PreferenceHelper.getPreferences().edit();
        for (String key : PreferenceHelper.getPreferences().getAll().keySet()) {
            if (Baby.isMinServerTagOfNewPhotoKey(key)) {
                editor.remove(key);
            }
        }
        editor.apply();
        MemoryPreferenceHelper.clear();
    }
}
