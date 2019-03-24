package com.miui.gallery.cloud;

import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.data.DBShareSubUbiImage;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class DownloadPathHelper {
    public static String getDownloadFolderPath(DBImage dbImage) {
        String folderRelativePath = getDownloadFolderRelativePath(dbImage);
        if (folderRelativePath == null) {
            return "";
        }
        return StorageUtils.getSafePathInPriorStorage(folderRelativePath);
    }

    public static String getDownloadFolderRelativePath(DBImage dbImage) {
        if (dbImage == null) {
            Log.e("DownloadPathHelper", "dbImage is null!");
            return null;
        }
        String folderRelativePath;
        if (dbImage.isShareItem()) {
            folderRelativePath = "MIUI/Gallery/cloud/sharer";
        } else {
            if (dbImage.getServerType() != 0 || TextUtils.isEmpty(dbImage.getLocalFile())) {
                String localGroupId;
                String albumId;
                if (dbImage.getServerType() == 0) {
                    localGroupId = dbImage.getId();
                    albumId = dbImage.getServerId();
                } else {
                    localGroupId = dbImage.getLocalGroupId();
                    albumId = String.valueOf(dbImage.getGroupId());
                }
                if (CloudTableUtils.isCameraGroup(albumId)) {
                    folderRelativePath = CloudUtils.getCameraLocalFile();
                } else if (CloudTableUtils.isScreenshotGroup(albumId)) {
                    folderRelativePath = CloudUtils.getScreenshotsLocalFile();
                } else if (CloudTableUtils.isSecretAlbum(albumId, localGroupId)) {
                    folderRelativePath = "MIUI/Gallery/cloud/.secretAlbum";
                } else if (dbImage.getServerType() != 0) {
                    return getDownloadFolderRelativePath(CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, GalleryApp.sGetAndroidContext(), "_id", localGroupId));
                } else {
                    folderRelativePath = CloudUtils.getOwnerAlbumLocalFile(dbImage.getFileName(), dbImage.getAppKey());
                }
            } else {
                folderRelativePath = dbImage.getLocalFile();
            }
            if (TextUtils.equals(folderRelativePath, StorageUtils.KEY_FOR_EMPTY_RELATIVE_PATH)) {
                return "";
            }
        }
        if (dbImage.isSubUbiFocus()) {
            return folderRelativePath + File.separator + ".ubifocus";
        }
        return folderRelativePath;
    }

    public static String getFolderRelativePathInCloud(String albumName) {
        return ("MIUI/Gallery/cloud/owner" + File.separator + albumName).toLowerCase();
    }

    public static String getShareFolderRelativePathInCloud() {
        return "MIUI/Gallery/cloud/sharer";
    }

    public static String getOriginDownloadFileNameNotSecret(DBImage dbImage) {
        if (dbImage != null) {
            return getDownloadFileNameNotSecret(dbImage, dbImage.getFileName());
        }
        Log.e("DownloadPathHelper", "dbImage is null!");
        return "";
    }

    public static String getThumbnailDownloadFileNameNotSecret(DBImage dbImage) {
        if (dbImage == null) {
            Log.e("DownloadPathHelper", "dbImage is null!");
            return "";
        }
        return FileUtils.getFileNameWithoutExtension(getDownloadFileNameNotSecret(dbImage, dbImage.getFileName())) + ".jpg";
    }

    public static String getDownloadFileNameNotSecret(DBImage dbImage, String fileName) {
        if (dbImage == null) {
            Log.e("DownloadPathHelper", "dbImage is null!");
            return "";
        } else if (!dbImage.isShareItem()) {
            return fileName;
        } else {
            DBImage mainDBImage;
            if (dbImage.isSubUbiFocus()) {
                mainDBImage = CloudUtils.getItem(GalleryCloudUtils.SHARE_IMAGE_URI, GalleryApp.sGetAndroidContext(), "_id", ((DBShareSubUbiImage) dbImage).getUbiLocalId());
                if (mainDBImage == null) {
                    Log.e("DownloadPathHelper", "mainDBImage is null!");
                    return "";
                }
            }
            mainDBImage = dbImage;
            String albumId = mainDBImage.getAlbumId();
            if (TextUtils.isEmpty(albumId)) {
                DBShareAlbum dbShareAlbum = CloudUtils.getDBShareAlbumByLocalId(mainDBImage.getLocalGroupId());
                if (dbShareAlbum == null) {
                    Log.e("DownloadPathHelper", "dbShareAlbum should not be null!");
                    return "";
                }
                albumId = dbShareAlbum.getAlbumId();
            }
            return addPostfixToFileName(fileName, albumId);
        }
    }

    public static String addPostfixToFileName(String fileName, String postfix) {
        String fileNameWithoutExt = FileUtils.getFileNameWithoutExtension(fileName) + "_" + postfix;
        String ext = miui.os.FileUtils.getExtension(fileName);
        return TextUtils.isEmpty(ext) ? fileNameWithoutExt : fileNameWithoutExt + "." + ext;
    }

    public static boolean isShareFolderRelativePath(String relativePath) {
        return ExtraTextUtils.startsWithIgnoreCase(relativePath, "MIUI/Gallery/cloud/sharer");
    }

    public static String getFilePathForRead(String[] candidateFolders, String fileName) {
        if (candidateFolders != null) {
            for (String folder : candidateFolders) {
                String filePath = folder + File.separator + fileName;
                if (new File(filePath).exists()) {
                    return filePath;
                }
            }
        }
        return "";
    }

    public static List<String> getAllFilePathForRead(String[] candidateFolders, String fileName) {
        List<String> filePaths = new ArrayList();
        if (candidateFolders != null) {
            for (String folder : candidateFolders) {
                String filePath = folder + File.separator + fileName;
                if (new File(filePath).exists()) {
                    filePaths.add(filePath);
                }
            }
        }
        return filePaths;
    }

    public static String getFilePathForRead(String folderRelativePath, String fileName) {
        if (folderRelativePath == null) {
            return "";
        }
        return getFilePathForRead(StorageUtils.getPathsInExternalStorage(GalleryApp.sGetAndroidContext(), folderRelativePath), fileName);
    }
}
