package com.miui.gallery.cloud;

import android.media.ExifInterface;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseDocumentProviderUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.GalleryTimeUtils;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import miui.os.FileUtils;

public class ThumbnailMetaWriter {
    private final String mDateTime;
    private final String mGPSDateStamp;
    private final String mGPSTimeStamp;
    private final long mMixDateTime;
    private final String mOriginalFileName;
    private final String mSha1;

    public ThumbnailMetaWriter(DBImage dbImage) {
        this(dbImage, dbImage.getSha1(), dbImage.getFileName());
    }

    public ThumbnailMetaWriter(DBImage dbImage, String sha1, String originalFileName) {
        this.mSha1 = sha1;
        this.mOriginalFileName = originalFileName;
        this.mMixDateTime = dbImage.getMixedDateTime();
        this.mDateTime = dbImage.getJsonExifString("dateTime");
        this.mGPSDateStamp = dbImage.getJsonExifString("GPSDateStamp");
        this.mGPSTimeStamp = dbImage.getJsonExifString("GPSTimeStamp");
    }

    public ThumbnailMetaWriter(String sha1, String originalFileName, long mixDateTime, String dateTime, String gpsDateStamp, String gpsTimeStamp) {
        this.mSha1 = sha1;
        this.mOriginalFileName = originalFileName;
        this.mMixDateTime = mixDateTime;
        this.mDateTime = dateTime;
        this.mGPSDateStamp = gpsDateStamp;
        this.mGPSTimeStamp = gpsTimeStamp;
    }

    public boolean write(String filePath) {
        Exception exception = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        boolean z;
        try {
            ExifInterface exif;
            if (BaseDocumentProviderUtils.needUseDocumentProvider(filePath)) {
                parcelFileDescriptor = BaseDocumentProviderUtils.openFileDescriptor(GalleryApp.sGetAndroidContext(), filePath);
                if (parcelFileDescriptor == null) {
                    Log.w("ThumbnailMetaWriter", "Failed to open file descriptor  of %s", filePath);
                    z = false;
                    return z;
                }
                exif = (ExifInterface) ExifUtil.sMediaExifCreator.create(parcelFileDescriptor.getFileDescriptor());
            } else {
                exif = (ExifInterface) ExifUtil.sMediaExifCreator.create(filePath);
            }
            ExifUtil.setUserCommentData(exif, new UserCommentData(this.mSha1, FileUtils.getExtension(this.mOriginalFileName)));
            long time = -1;
            if (!(TextUtils.isEmpty(this.mGPSDateStamp) || TextUtils.isEmpty(this.mGPSTimeStamp))) {
                exif.setAttribute("GPSDateStamp", this.mGPSDateStamp);
                exif.setAttribute("GPSTimeStamp", this.mGPSTimeStamp);
                time = GalleryTimeUtils.getGpsDateTime(this.mGPSDateStamp, this.mGPSTimeStamp);
            }
            if (!TextUtils.isEmpty(this.mDateTime)) {
                ExifUtil.setDateTime(exif, this.mDateTime);
                if (time < 0) {
                    time = GalleryTimeUtils.getDateTime(this.mDateTime);
                }
            }
            if (TextUtils.isEmpty(this.mDateTime) || (ExifUtil.getDateTime(exif) == -1 && this.mMixDateTime >= 0)) {
                ExifUtil.setDateTime(exif, GalleryTimeUtils.getDefaultDateFormat().format(new Date(this.mMixDateTime)));
                if (time < 0) {
                    time = this.mMixDateTime;
                }
            }
            exif.saveAttributes();
            String newSha1 = ExifUtil.getUserCommentSha1(filePath);
            if ((TextUtils.isEmpty(newSha1) && TextUtils.isEmpty(this.mSha1)) || TextUtils.equals(newSha1, this.mSha1)) {
                if (time >= 0 && !new File(filePath).setLastModified(time)) {
                    Log.w("ThumbnailMetaWriter", "failed to set last modified for thumbnail");
                }
                BaseMiscUtil.closeSilently(parcelFileDescriptor);
                return true;
            }
            BaseMiscUtil.closeSilently(parcelFileDescriptor);
            Map<String, String> params = new HashMap();
            params.put("model", Build.MODEL);
            params.put("version", VERSION.INCREMENTAL);
            params.put(nexExportFormat.TAG_FORMAT_PATH, filePath);
            params.put("exception", exception != null ? exception.toString() + " " + filePath : "");
            BaseSamplingStatHelper.recordCountEvent("exif_parser", "exif_write_error", params);
            return false;
        } catch (Throwable e) {
            exception = e;
            z = "ThumbnailMetaWriter";
            Log.e((String) z, e);
        } finally {
            BaseMiscUtil.closeSilently(parcelFileDescriptor);
        }
    }
}
