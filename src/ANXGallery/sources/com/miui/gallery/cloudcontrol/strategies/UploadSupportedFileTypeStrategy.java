package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class UploadSupportedFileTypeStrategy extends BaseStrategy {
    @SerializedName("image")
    private List<FileType> mImageFileTypes;
    @SerializedName("video")
    private List<FileType> mVideoFileTypes;

    static class FileType {
        @SerializedName("extension")
        public String extension;
        @SerializedName("mime-type")
        public String mimeType;

        public FileType(String extension, String mimeType) {
            this.extension = extension;
            this.mimeType = mimeType;
        }
    }

    public HashMap<String, String> getSupportedFileTypeMap() {
        HashMap<String, String> result = new HashMap();
        if (BaseMiscUtil.isValid(this.mImageFileTypes)) {
            for (FileType fileType : this.mImageFileTypes) {
                if (!(TextUtils.isEmpty(fileType.extension) || TextUtils.isEmpty(fileType.mimeType))) {
                    result.put(fileType.extension, fileType.mimeType);
                }
            }
        }
        if (BaseMiscUtil.isValid(this.mVideoFileTypes)) {
            for (FileType fileType2 : this.mVideoFileTypes) {
                if (!(TextUtils.isEmpty(fileType2.extension) || TextUtils.isEmpty(fileType2.mimeType))) {
                    result.put(fileType2.extension, fileType2.mimeType);
                }
            }
        }
        return result;
    }

    public static UploadSupportedFileTypeStrategy createDefault() {
        UploadSupportedFileTypeStrategy strategy = new UploadSupportedFileTypeStrategy();
        strategy.mImageFileTypes = Arrays.asList(new FileType[]{new FileType("JPG", "image/jpeg"), new FileType("JPEG", "image/jpeg"), new FileType("GIF", "image/gif"), new FileType("PNG", "image/png"), new FileType("BMP", "image/x-ms-bmp"), new FileType("WEBP", "image/webp"), new FileType("WBMP", "image/vnd.wap.wbmp")});
        strategy.mVideoFileTypes = Arrays.asList(new FileType[]{new FileType("MP4", "video/mp4"), new FileType("MOV", "video/quicktime"), new FileType("3GP", "video/3gpp")});
        return strategy;
    }
}
