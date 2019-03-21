package com.miui.gallery.discovery;

import android.accounts.Account;
import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncStateUtil.CloudSpaceInfo;
import com.miui.gallery.model.PeopleContactInfo.Relation;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.MediaSortDateHelper;
import com.miui.gallery.provider.MediaSortDateHelper.SortDate;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.StorageUtils;
import java.util.List;
import java.util.Locale;

public class StatisticsJob extends AbstractJob {
    private void recordGallerySettings() {
        Account account = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
        boolean hasXiaomiAccount = account != null;
        BaseSamplingStatHelper.recordStringPropertyEvent("settings", "has_xiaomi_account", String.valueOf(hasXiaomiAccount));
        if (hasXiaomiAccount) {
            boolean isCloudBackupOn = ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider");
            boolean isLocalModeOn = LocalMode.isOnlyShowLocalPhoto();
            boolean isAIAlbumOn = AIAlbumStatusHelper.isAIAlbumEnabled();
            boolean isFaceAlbumOn = AIAlbumStatusHelper.isFaceAlbumEnabled();
            boolean isBackupOnlyWifi = Sync.getBackupOnlyInWifi();
            boolean isSearchUserSwitchOn = AIAlbumStatusHelper.isLocalSearchOpen(true);
            boolean isSearchBarEnabled = AIAlbumStatusHelper.isCloudControlSearchBarOpen();
            boolean isSearchAIAlbumEnabled = AIAlbumStatusHelper.isCloudControlSearchAIAlbumOpen();
            boolean isAutoDownload = Sync.isAutoDownload();
            DownloadType downloadType = Sync.getDownloadType();
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_cloud_backup_on_c", String.valueOf(isCloudBackupOn));
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_local_mode_on_c", String.valueOf(isLocalModeOn));
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_face_album_on_c", String.valueOf(isFaceAlbumOn));
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_backup_only_wifi_on_c", String.valueOf(isBackupOnlyWifi));
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_ai_album_on_c", String.valueOf(isAIAlbumOn));
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_search_ai_album_enabled_c", String.valueOf(isSearchAIAlbumEnabled));
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_search_bar_enabled_c", String.valueOf(isSearchBarEnabled));
            if (isSearchAIAlbumEnabled) {
                BaseSamplingStatHelper.recordStringPropertyEvent("settings", "is_search_user_switch_on_c", String.valueOf(isSearchUserSwitchOn));
            }
            BaseSamplingStatHelper.recordStringPropertyEvent("settings", "auto_download_on_c", String.valueOf(isAutoDownload));
            if (isAutoDownload) {
                BaseSamplingStatHelper.recordStringPropertyEvent("settings", "download_type_c", String.valueOf(downloadType));
            }
        }
    }

    private boolean isEverSynced() {
        return safeQueryCount(GalleryDBHelper.getInstance().getReadableDatabase(), "SELECT COUNT(*)  FROM cloud WHERE serverType IN (1,2) AND (localFlag = 0 AND serverStatus = 'custom')", null) > 0;
    }

    private void recordSyncState() {
        long total;
        boolean isEverSynced = true;
        Account account = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
        BaseSamplingStatHelper.recordStringPropertyEvent("sync_state_analysis", "login_account", String.valueOf(account != null));
        if (account != null) {
            boolean masterSync = ContentResolver.getMasterSyncAutomatically();
            boolean gallerySync = ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider");
            BaseSamplingStatHelper.recordStringPropertyEvent("sync_state_analysis", "master_sync", String.valueOf(masterSync));
            if (masterSync) {
                BaseSamplingStatHelper.recordStringPropertyEvent("sync_state_analysis", "gallery_sync", String.valueOf(gallerySync));
            }
            if (!gallerySync) {
                isEverSynced = isEverSynced();
                BaseSamplingStatHelper.recordStringPropertyEvent("sync_state_analysis", "sync_off_ever_synced", String.valueOf(isEverSynced));
                CloudSpaceInfo info = SyncStateUtil.getCloudSpaceInfo(GalleryApp.sGetAndroidContext());
                total = info.getTotal();
                if (total > 0) {
                    BaseSamplingStatHelper.recordNumericPropertyEvent("sync_state_analysis", "sync_off_cloud_space_state", (long) ((int) ((100.0f * ((float) (total - info.getUsed()))) / ((float) total))));
                }
            }
        } else {
            isEverSynced = false;
        }
        if (!isEverSynced) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("sync_state_analysis", "sync_off_media_count", (long) queryMediaCountByAlbumLocalFile(GalleryDBHelper.getInstance().getReadableDatabase(), "DCIM/Camera", false));
            String primaryVolume = StorageUtils.getPrimaryStoragePath();
            total = StorageUtils.getTotalBytes(primaryVolume);
            if (total > 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("sync_state_analysis", "sync_off_local_space_state", (long) ((int) ((100.0f * ((float) StorageUtils.getAvailableBytes(primaryVolume))) / ((float) total))));
            }
        }
    }

    private void recordOtherProperties() {
        BaseSamplingStatHelper.recordStringPropertyEvent("Sync", "sync_auto_downloaded_property", String.valueOf(Sync.isEverAutoDownloaded()));
        Context context = GalleryApp.sGetAndroidContext();
        boolean hasExternalSDCard = StorageUtils.hasExternalSDCard(context);
        BaseSamplingStatHelper.recordStringPropertyEvent("storage", "storage_has_external_sd_card", String.valueOf(hasExternalSDCard));
        boolean isStoryFunctionOn = ImageFeatureManger.isStoryFunctionEnable();
        if (hasExternalSDCard) {
            BaseSamplingStatHelper.recordStringPropertyEvent("storage", "storage_is_external_sd_card_prior_storage", String.valueOf(StorageUtils.isExternalSDCardPriorStorage()));
            BaseSamplingStatHelper.recordStringPropertyEvent("storage", "storage_can_write_external_sd_card", String.valueOf(StorageUtils.canWrite(context, StorageUtils.getSecondaryStoragePath())));
        }
        if (isStoryFunctionOn) {
            BaseSamplingStatHelper.recordStringPropertyEvent("assistant", "assistant_card_function_status", String.valueOf(isStoryFunctionOn));
        }
    }

    private int safeQueryCount(SQLiteDatabase db, String sql, String[] selectionArgs) {
        int i = 0;
        Cursor cursor = null;
        try {
            cursor = db.rawQuery(sql, selectionArgs);
            if (cursor != null && cursor.moveToFirst()) {
                i = cursor.getInt(0);
                return i;
            } else if (cursor != null) {
                BaseMiscUtil.closeSilently(cursor);
                return 0;
            } else {
                BaseMiscUtil.closeSilently(cursor);
                return -1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private int queryMediaCountOfAllAlbums(SQLiteDatabase db, boolean includeHideMedia) {
        return safeQueryCount(db, "SELECT COUNT(*)  FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))" + (includeHideMedia ? "" : " AND attributes&16=0"), null);
    }

    private int queryMediaCountByAlbumLocalFile(SQLiteDatabase db, String albumLocalFile, boolean onlyVideo) {
        if (TextUtils.isEmpty(albumLocalFile)) {
            return -1;
        }
        return safeQueryCount(db, "SELECT COUNT(*) FROM cloud WHERE localGroupId = (SELECT _id FROM cloud WHERE LOWER(localFile) = ? LIMIT 1) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))" + (onlyVideo ? " AND serverType=2" : ""), new String[]{albumLocalFile.toLowerCase()});
    }

    private int queryMediaCountOfFavoritesAlbum(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*) FROM extended_cloud WHERE (isFavorite NOT NULL AND isFavorite > 0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", null);
    }

    private int queryVideoCountOfAll(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*)  FROM cloud WHERE serverType = 2 AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND attributes&16=0", null);
    }

    private int queryAlbumCountOfCloudBackup(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*) FROM cloud WHERE (serverType=0) AND (attributes & 1 != 0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", null);
    }

    private int querySpecialMediaCountOfSortByModifyAlbum(SQLiteDatabase db) {
        List<String> albumsOrderByDateModified = MediaSortDateHelper.getSortDateProvider().getAlbumPathsBySortDate(SortDate.MODIFY_TIME);
        if (BaseMiscUtil.isValid(albumsOrderByDateModified)) {
            return safeQueryCount(db, "SELECT COUNT(*) FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND STRFTIME('%Y%m%d',dateModified/1000, 'unixepoch', 'localtime')>STRFTIME('%Y%m%d', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, 'unixepoch', 'localtime') AND localGroupId IN (   SELECT _id   FROM cloud   WHERE (serverType=0)   AND (attributes & 4 != 0)   AND " + Cloud.ALIAS_NON_SYSTEM_ALBUM + "   AND " + "localFile" + " COLLATE NOCASE IN ('" + TextUtils.join("', '", albumsOrderByDateModified) + "')" + ")", null);
        }
        return -1;
    }

    private int queryAlbumCountOfOwnerCreate(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*) FROM cloud WHERE (serverType=0) AND localFile like '%MIUI/Gallery/cloud/owner%' AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", null);
    }

    private int queryAlbumCountOfOtherShare(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*)FROM shareAlbum WHERE serverId IS NOT NULL", null);
    }

    private int queryAlbumCountShowInAlbumPage(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*) FROM cloud WHERE (serverType=0) AND (attributes & 64 <> 0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", null);
    }

    private int queryAlbumCountShowInOtherAlbum(SQLiteDatabase db) {
        return safeQueryCount(db, "SELECT COUNT(*) FROM cloud WHERE (serverType=0) AND (attributes & 64 != 0) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", null);
    }

    public void recordMediaTypes() {
        try {
            Cursor cursor = GalleryDBHelper.getInstance().getReadableDatabase().rawQuery("SELECT mimeType, COUNT(*)  FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND attributes&16=0 GROUP BY mimeType", null);
            if (cursor == null || !cursor.moveToFirst()) {
                BaseMiscUtil.closeSilently(cursor);
            }
            do {
                BaseSamplingStatHelper.recordNumericPropertyEvent("media_type_count", "media_count_of_" + cursor.getString(0), (long) cursor.getInt(1));
            } while (cursor.moveToNext());
            BaseMiscUtil.closeSilently(cursor);
        } catch (Exception e) {
            e.printStackTrace();
            BaseMiscUtil.closeSilently(null);
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            throw th;
        }
    }

    private void recordAlbumsAndImagesCount() {
        SQLiteDatabase db = GalleryDBHelper.getInstance().getReadableDatabase();
        int mediaCountOfAllAlbums = queryMediaCountOfAllAlbums(db, false);
        int videoCountOfAllAlbums = queryVideoCountOfAll(db);
        int mediaCountOfCameraAlbum = queryMediaCountByAlbumLocalFile(db, "DCIM/Camera", false);
        int videoCountOfCameraAlbum = queryMediaCountByAlbumLocalFile(db, "DCIM/Camera", true);
        int mediaCountOfScreenshotAlbum = queryMediaCountByAlbumLocalFile(db, "DCIM/Screenshots", false);
        int mediaCountOfDownloadAlbum = queryMediaCountByAlbumLocalFile(db, "Download", false);
        int albumCountOfCloudBackup = queryAlbumCountOfCloudBackup(db);
        int albumCountOfOwnerCreate = queryAlbumCountOfOwnerCreate(db);
        int albumCountOfOtherShare = queryAlbumCountOfOtherShare(db);
        int albumCountShowInAlbumPage = queryAlbumCountShowInAlbumPage(db);
        int albumCountShowInOtherAlbum = queryAlbumCountShowInOtherAlbum(db);
        int mediaCountOfFavoritesAlbum = queryMediaCountOfFavoritesAlbum(db);
        int specialMediaCountOfSortByModifyAlbum = querySpecialMediaCountOfSortByModifyAlbum(db);
        if (mediaCountOfAllAlbums != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "image_count_of_all_albums", (long) mediaCountOfAllAlbums);
        }
        if (videoCountOfAllAlbums != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "video_count_of_all_albums", (long) videoCountOfAllAlbums);
        }
        if (mediaCountOfCameraAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "image_count_of_camera_album", (long) mediaCountOfCameraAlbum);
        }
        if (videoCountOfCameraAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "video_count_of_camera_album", (long) videoCountOfCameraAlbum);
        }
        if (mediaCountOfScreenshotAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "image_count_of_screenshot_album", (long) mediaCountOfScreenshotAlbum);
        }
        if (mediaCountOfDownloadAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "image_count_of_download_album", (long) mediaCountOfDownloadAlbum);
        }
        if (albumCountOfCloudBackup != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "album_count_of_cloud_backup", (long) albumCountOfCloudBackup);
        }
        if (albumCountOfOwnerCreate != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "album_count_of_owner_create", (long) albumCountOfOwnerCreate);
        }
        if (albumCountOfOtherShare != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "album_count_of_other_share", (long) albumCountOfOtherShare);
        }
        if (albumCountShowInAlbumPage != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "album_count_show_in_album_page", (long) albumCountShowInAlbumPage);
        }
        if (albumCountShowInOtherAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "album_count_show_in_other_album", (long) albumCountShowInOtherAlbum);
        }
        if (mediaCountOfFavoritesAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "image_count_of_favorites_album", (long) mediaCountOfFavoritesAlbum);
        }
        if (specialMediaCountOfSortByModifyAlbum != -1) {
            BaseSamplingStatHelper.recordNumericPropertyEvent("albums_and_images_count", "special_image_count_of_sort_by_modify_and_show_in_home_album", (long) specialMediaCountOfSortByModifyAlbum);
        }
    }

    private long queryMediaSpace(SQLiteDatabase db, String appendSelection) {
        long j;
        String sql = "SELECT SUM(size) FROM cloud WHERE serverType IN (1,2) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId NOT IN (SELECT _id FROM cloud WHERE (serverType=0) AND attributes&64!=0))";
        if (!TextUtils.isEmpty(appendSelection)) {
            j = ")";
            sql = sql + " AND (" + appendSelection + j;
        }
        Cursor cursor = null;
        try {
            cursor = db.rawQuery(sql, null);
            if (cursor != null && cursor.moveToFirst()) {
                j = cursor.getLong(0);
                return j;
            } else if (cursor != null) {
                BaseMiscUtil.closeSilently(cursor);
                return 0;
            } else {
                BaseMiscUtil.closeSilently(cursor);
                return -1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private int queryAlbumAttributes(SQLiteDatabase db, String albumPath) {
        int i = 0;
        Cursor cursor = null;
        try {
            cursor = db.rawQuery("SELECT attributes FROM cloud WHERE (serverType=0) AND localFile LIKE '" + albumPath + "'", null);
            if (cursor != null && cursor.moveToFirst()) {
                i = cursor.getInt(0);
                return i;
            } else if (cursor != null) {
                BaseMiscUtil.closeSilently(cursor);
                return 0;
            } else {
                BaseMiscUtil.closeSilently(cursor);
                return -1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
    }

    private void recordMediasSpace() {
        SQLiteDatabase db = GalleryDBHelper.getInstance().getReadableDatabase();
        long totalSpace = queryMediaSpace(db, null);
        if (totalSpace != -1) {
            BaseSamplingStatHelper.recordStringPropertyEvent("medias_space", "medias_space_of_all", formatSize(totalSpace));
            String albumFormat = "localGroupId IN (SELECT _id FROM cloud WHERE localFile LIKE '%s')";
            long photoSpace = queryMediaSpace(db, "serverType=1 AND " + String.format(Locale.US, albumFormat, new Object[]{"DCIM/Camera"}));
            if (photoSpace != -1) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("medias_space", String.format(Locale.US, "medias_space_ratio_of_album_%s", new Object[]{"Camera-Image"}), formatProportion((1.0f * ((float) photoSpace)) / ((float) totalSpace)));
            }
            photoSpace = queryMediaSpace(db, "serverType=2 AND " + String.format(Locale.US, albumFormat, new Object[]{"DCIM/Camera"}));
            if (photoSpace != -1) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("medias_space", String.format(Locale.US, "medias_space_ratio_of_album_%s", new Object[]{"Camera-Video"}), formatProportion((1.0f * ((float) photoSpace)) / ((float) totalSpace)));
            }
            long videoSpace = queryMediaSpace(db, "serverType=2");
            if (videoSpace != -1) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("medias_space", String.format(Locale.US, "medias_space_ratio_of_album_%s", new Object[]{"Video"}), formatProportion((1.0f * ((float) videoSpace)) / ((float) totalSpace)));
            }
            int attributes = queryAlbumAttributes(db, "tencent/micromsg/weixin");
            if (attributes != -1 && (((long) attributes) & 64) == 0) {
                long weChatSpace = queryMediaSpace(db, String.format(Locale.US, albumFormat, new Object[]{albumPath}));
                if (weChatSpace != -1) {
                    BaseSamplingStatHelper.recordNumericPropertyEvent("medias_space", String.format(Locale.US, "medias_space_ratio_of_album_%s", new Object[]{"weixin"}), formatProportion((1.0f * ((float) weChatSpace)) / ((float) totalSpace)));
                }
            }
        }
    }

    private String formatSize(long size) {
        float result = (1.0f * ((float) (size / 500000000))) / 2.0f;
        return String.format(Locale.US, "%.1fG", new Object[]{Float.valueOf(result)});
    }

    private long formatProportion(float proportion) {
        return (long) (100.0f * proportion);
    }

    private void recordPeopleProperties() {
        long j;
        List<Long> peopleUnderMyself = FaceManager.queryPeopleIdOfRelation(GalleryApp.sGetAndroidContext(), Relation.myself.getRelationType());
        String str = "people";
        String str2 = "people_count_under_myself";
        if (peopleUnderMyself == null) {
            j = 0;
        } else {
            j = (long) peopleUnderMyself.size();
        }
        BaseSamplingStatHelper.recordNumericPropertyEvent(str, str2, j);
    }

    public Object execJob() {
        recordGallerySettings();
        recordAlbumsAndImagesCount();
        recordMediaTypes();
        recordMediasSpace();
        recordSyncState();
        recordOtherProperties();
        recordPeopleProperties();
        return null;
    }

    public JobInfo getJobInfo(Context context, ComponentName cn) {
        return new Builder(this.mJobId, cn).setRequiredNetworkType(2).setPeriodic(604800000).setRequiresDeviceIdle(true).setRequiresCharging(true).build();
    }
}
