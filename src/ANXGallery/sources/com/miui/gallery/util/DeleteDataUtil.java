package com.miui.gallery.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.cloud.CloudAlbumSortUtil;
import com.miui.gallery.cloud.CloudTableUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CloudUtils.Insertable;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.preference.GalleryPreferences;
import com.miui.gallery.preference.ThumbnailPreference;
import com.miui.gallery.provider.GalleryContract.Favorites;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.cache.SearchHistoryManager;
import com.miui.gallery.provider.cloudmanager.MediaRemarkManager;
import com.miui.gallery.provider.peoplecover.PeopleCoverManager;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.sdk.download.ImageDownloader;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.deprecated.Preference;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;

public class DeleteDataUtil {
    public static boolean delete(Context context, int policy) {
        SyncUtil.stopSync(context);
        ImageDownloader.getInstance().cancelAll();
        boolean result = ((true & deleteFile(context, policy)) & deleteDB(context, policy)) & deletePreferences();
        MediaScannerUtil.scanAllAlbumDirectories(GalleryApp.sGetAndroidContext(), 5, true);
        return result;
    }

    private static boolean deleteFile(Context context, int policy) {
        switch (policy) {
            case 0:
                return true;
            case 1:
                return deleteHiddenFiles(context);
            case 2:
                return deleteSyncedFile(context);
            default:
                throw new IllegalArgumentException("unsupported policy: " + policy);
        }
    }

    private static boolean deleteDB(Context context, int policy) {
        Preference.setSyncShouldClearDataBase(true);
        boolean ret = resetCloudDataBase();
        if (ret) {
            SyncLog.d("DeleteDataUtil", "delete cloud success");
            Preference.setSyncShouldClearDataBase(false);
        } else {
            SyncLog.e("DeleteDataUtil", "delete cloud failed");
        }
        ret &= resetMediaRemarkInfo();
        if (ret) {
            SyncLog.d("DeleteDataUtil", "delete MediaRemarkInfo end.");
        } else {
            SyncLog.e("DeleteDataUtil", "delete MediaRemarkInfo DB failed!");
        }
        ret &= resetCloudControlData();
        if (ret) {
            SyncLog.d("DeleteDataUtil", "delete CloudControl DB end.");
        } else {
            SyncLog.e("DeleteDataUtil", "delete CloudControl DB failed!");
        }
        ret &= resetFavoritesData();
        if (ret) {
            SyncLog.d("DeleteDataUtil", "delete Favorites DB end.");
        } else {
            SyncLog.e("DeleteDataUtil", "delete Favorites DB failed!");
        }
        CardManager.getInstance().onAccountDelete();
        PersistentResponseHelper.clearData();
        PeopleCoverManager.getInstance().onAccountDelete();
        SearchHistoryManager.getInstance().deleteAll();
        return ret;
    }

    private static boolean deletePreferences() {
        IntentUtil.removeAllShortCutForBabyAlbums(GalleryApp.sGetAndroidContext());
        Preference.sRemoveCloudSettings();
        GalleryPreferences.sRemoveCloudSettings();
        ThumbnailPreference.clear();
        SyncLog.d("DeleteDataUtil", "removed cloud settings.");
        CloudAlbumSortUtil.sRemoveCloudAlbumSortByFactor();
        return true;
    }

    private static boolean resetCloudControlData() {
        CloudControlManager.getInstance().clearCloudCache();
        for (String tableName : GalleryDBHelper.getCloudControlTables()) {
            SyncLog.d("DeleteDataUtil", String.format("clean %s finished, deleted rows=%d", new Object[]{GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), Integer.valueOf(GalleryUtils.safeDelete(GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), null, null))}));
            if (GalleryUtils.safeDelete(GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), null, null) == -1) {
                return false;
            }
        }
        return true;
    }

    private static boolean resetFavoritesData() {
        SyncLog.d("DeleteDataUtil", String.format(Locale.US, "clean favorites finished, deleted rows=%d", new Object[]{Integer.valueOf(GalleryUtils.safeDelete(Favorites.URI, null, null))}));
        if (GalleryUtils.safeDelete(Favorites.URI, null, null) != -1) {
            return true;
        }
        return false;
    }

    private static boolean resetMediaRemarkInfo() {
        return MediaRemarkManager.onAccountDelete();
    }

    private static boolean resetCloudDataBase() {
        for (String tableName : GalleryDBHelper.getCloudTables()) {
            SyncLog.d("DeleteDataUtil", String.format("clean %s finished, deleted rows=%d", new Object[]{GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), Integer.valueOf(GalleryUtils.safeDelete(GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), null, null))}));
            if (GalleryUtils.safeDelete(GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), null, null) == -1) {
                return false;
            }
        }
        CloudUtils.addRecordsForCameraAndScreenshots(new Insertable() {
            public long insert(Uri uri, String table, String nullColumnHack, ContentValues values) {
                return GalleryUtils.safeInsert(uri, values) == null ? 0 : 1;
            }
        });
        return true;
    }

    private static boolean deleteHiddenFiles(Context context) {
        String[] cloudFolders = StorageUtils.getPathsInExternalStorage(context, "MIUI/Gallery/cloud");
        boolean result = true;
        if (cloudFolders != null) {
            for (String cloudFolder : cloudFolders) {
                File[] children = new File(cloudFolder).listFiles();
                if (children != null) {
                    for (File child : children) {
                        if (child.isHidden()) {
                            boolean deleted = FileUtils.deleteFile(child);
                            result &= deleted;
                            SyncLog.d("DeleteDataUtil", "delete %s result %s", child.getName(), Boolean.valueOf(deleted));
                        }
                    }
                }
            }
        }
        return result;
    }

    private static boolean deleteSyncedFile(Context context) {
        Uri[] uris = new Uri[]{GalleryCloudUtils.CLOUD_URI, GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, GalleryCloudUtils.SHARE_IMAGE_URI, GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI};
        final ArrayList<File> deletingFiles = new ArrayList(100);
        final File[] tmp = new File[100];
        for (Uri safeQuery : uris) {
            GalleryUtils.safeQuery(safeQuery, new String[]{"microthumbfile", "thumbnailFile", "localFile"}, "serverStatus = 'custom' AND (" + CloudTableUtils.sItemIsNotGroup + ")", null, null, new QueryHandler<Void>() {
                public Void handle(Cursor cursor) {
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            String microThumbFilePath = cursor.getString(0);
                            String thumbnailFilePath = cursor.getString(1);
                            String localFilePath = cursor.getString(2);
                            if (microThumbFilePath != null) {
                                deletingFiles.add(new File(microThumbFilePath));
                            }
                            if (thumbnailFilePath != null) {
                                deletingFiles.add(new File(thumbnailFilePath));
                            }
                            if (localFilePath != null) {
                                deletingFiles.add(new File(localFilePath));
                            }
                            if (deletingFiles.size() + 3 > 100 || (cursor.isLast() && !deletingFiles.isEmpty())) {
                                deletingFiles.toArray(tmp);
                                MediaFileUtils.deleteFileType(FileType.NORMAL, tmp);
                                deletingFiles.clear();
                            }
                        }
                    }
                    return null;
                }
            });
        }
        return true;
    }
}
