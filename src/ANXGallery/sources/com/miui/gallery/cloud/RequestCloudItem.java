package com.miui.gallery.cloud;

import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.LocalUbifocus;
import com.miui.gallery.data.UbiIndexMapper;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExtraTextUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.StorageUtils;
import java.io.File;
import java.util.ArrayList;

public class RequestCloudItem extends RequestItemBase {
    public DBImage dbCloud;

    public RequestCloudItem(int type, DBImage dbCloud) {
        this(type, dbCloud, false);
    }

    public RequestCloudItem(int type, DBImage dbCloud, boolean noDelay) {
        super(type, noDelay ? 0 : RequestItemBase.getDelay(dbCloud));
        this.dbCloud = dbCloud;
        init();
    }

    public ArrayList<RequestItemBase> getItems() {
        ArrayList<RequestItemBase> items = new ArrayList();
        items.add(this);
        return items;
    }

    public String getIdentity() {
        return this.dbCloud.getTagId();
    }

    public boolean isSecretItem() {
        return this.dbCloud.isSecretItem();
    }

    public String getFileName() {
        String fileName = "";
        switch (getDownloadType()) {
            case 1:
                if (isSecretItem()) {
                    return this.dbCloud.getSha1ThumbnailSA();
                }
                return this.dbCloud.getSha1Thumbnail();
            case 2:
                if (isSecretItem()) {
                    return this.dbCloud.getSha1ThumbnailSA();
                }
                return DownloadPathHelper.getThumbnailDownloadFileNameNotSecret(this.dbCloud);
            case 3:
            case 4:
                if (isSecretItem()) {
                    return this.dbCloud.getEncodedFileName();
                }
                return DownloadPathHelper.getOriginDownloadFileNameNotSecret(this.dbCloud);
            default:
                throw new UnsupportedOperationException("bad checktype, checktype=" + getDownloadType());
        }
    }

    public String getFolderPathForWrite() {
        switch (getDownloadType()) {
            case 1:
                return StorageUtils.getPriorMicroThumbnailDirectory();
            case 2:
            case 3:
            case 4:
                return DownloadPathHelper.getDownloadFolderPath(this.dbCloud);
            default:
                return "";
        }
    }

    public static boolean shouldHideDownloadFolder(String folderPath) {
        String relativePath = StorageUtils.getRelativePath(GalleryApp.sGetAndroidContext(), folderPath);
        return ExtraTextUtils.startsWithIgnoreCase(relativePath, "MIUI/Gallery/cloud/.microthumbnailFile") || ExtraTextUtils.startsWithIgnoreCase(relativePath, "MIUI/Gallery/cloud/.secretAlbum");
    }

    public String getDownloadFilePathForWrite() {
        String fileName = getFileName();
        if (getDownloadType() == 3 && (this.dbCloud.isUbiFocus() || this.dbCloud.isSubUbiFocus())) {
            fileName = LocalUbifocus.createInnerFileName(fileName, UbiIndexMapper.cloudToLocal(this.dbCloud.getSubUbiIndex(), this.dbCloud.getSubUbiImageCount() + 1), this.dbCloud.getSubUbiImageCount() + 1);
        }
        return getFolderPathForWrite() + File.separator + fileName;
    }

    public String getDownloadFilePathForRead() {
        switch (getDownloadType()) {
            case 1:
                String microThumbnailFileFromDB = this.dbCloud.getMicroThumbnailFile();
                if (new File(microThumbnailFileFromDB).exists()) {
                    return microThumbnailFileFromDB;
                }
                return DownloadPathHelper.getFilePathForRead(StorageUtils.getMicroThumbnailDirectories(GalleryApp.sGetAndroidContext()), getFileName());
            case 2:
                String thumbnailFileFromDB = this.dbCloud.getThumbnailFile();
                if (new File(thumbnailFileFromDB).exists()) {
                    return thumbnailFileFromDB;
                }
                return DownloadPathHelper.getFilePathForRead(DownloadPathHelper.getDownloadFolderRelativePath(this.dbCloud), getFileName());
            case 3:
            case 4:
                String downloadFileFromDB = this.dbCloud.getLocalFile();
                if (isOriginFileValidate(downloadFileFromDB)) {
                    return downloadFileFromDB;
                }
                downloadFileFromDB = DownloadPathHelper.getFilePathForRead(DownloadPathHelper.getDownloadFolderRelativePath(this.dbCloud), getFileName());
                if (isOriginFileValidate(downloadFileFromDB)) {
                    return downloadFileFromDB;
                }
                break;
        }
        return "";
    }

    private boolean isOriginFileValidate(String originPath) {
        return !TextUtils.isEmpty(originPath) && new File(originPath).length() >= this.dbCloud.getSize();
    }

    public String getVerifiedDownloadFilePathForRead() {
        String filePath = getDownloadFilePathForRead();
        String verifiedFilePath = filePath;
        String filePathColumnName = "";
        int type = getDownloadType();
        if (!TextUtils.isEmpty(filePath)) {
            if (type == 1) {
                if (!filePath.equalsIgnoreCase(this.dbCloud.getMicroThumbnailFile())) {
                    filePathColumnName = "microthumbfile";
                }
            } else if (type == 2) {
                if (!filePath.equalsIgnoreCase(this.dbCloud.getThumbnailFile())) {
                    if (isSecretItem() || TextUtils.equals(this.dbCloud.getSha1(), ExifUtil.getUserCommentSha1(filePath))) {
                        filePathColumnName = "thumbnailFile";
                        this.dbCloud.setThumbnailFile(verifiedFilePath);
                    } else {
                        verifiedFilePath = "";
                    }
                }
            } else if ((type == 3 || type == 4) && !filePath.equalsIgnoreCase(this.dbCloud.getLocalFile())) {
                if (isSecretItem()) {
                    filePathColumnName = "localFile";
                    this.dbCloud.setLocalFile(verifiedFilePath);
                } else if (TextUtils.equals(ExifUtil.getUserCommentSha1(filePath), this.dbCloud.getSha1())) {
                    if (!filePath.equalsIgnoreCase(this.dbCloud.getThumbnailFile())) {
                        filePathColumnName = "thumbnailFile";
                        this.dbCloud.setThumbnailFile(verifiedFilePath);
                    }
                    verifiedFilePath = "";
                } else if (TextUtils.equals(this.dbCloud.getSha1(), FileUtils.getSha1(filePath))) {
                    filePathColumnName = "localFile";
                    this.dbCloud.setLocalFile(verifiedFilePath);
                } else {
                    verifiedFilePath = "";
                }
            }
        }
        if (!TextUtils.isEmpty(filePathColumnName)) {
            ContentValues values = new ContentValues();
            values.put(filePathColumnName, filePath);
            CloudUtils.updateToLocalDB(this.dbCloud.getBaseUri(), values, this.dbCloud.getId());
        }
        return verifiedFilePath;
    }

    public String getDownloadTempFilePath() {
        switch (getDownloadType()) {
            case 1:
                return getDownloadFilePathForWrite() + ".temp";
            case 2:
                return BaseFileUtils.concat(StorageUtils.getThumbnailTempDirectory(), this.dbCloud.getSha1());
            case 3:
            case 4:
                return BaseFileUtils.concat(StorageUtils.getOriginTempDirectory(), this.dbCloud.getSha1());
            default:
                return "";
        }
    }

    public static String getDownloadOriginalFilePath(DBImage dbCloud) {
        return new RequestCloudItem(dbCloud.isVideoType() ? 9 : 10, dbCloud).getVerifiedDownloadFilePathForRead();
    }

    public boolean isInSameAlbum(RequestItemBase another) {
        RequestCloudItem anotherRequestCloudItem = (RequestCloudItem) another;
        if (anotherRequestCloudItem.getDownloadType() == 1 && getDownloadType() == 1 && anotherRequestCloudItem.dbCloud.isShareItem() && this.dbCloud.isShareItem()) {
            return TextUtils.equals(anotherRequestCloudItem.dbCloud.getShareAlbumId(), this.dbCloud.getShareAlbumId());
        }
        return true;
    }

    public boolean supportMultiRequest() {
        return getDownloadType() == 1;
    }

    public int getRequestLimitAGroup() {
        return 10;
    }
}
