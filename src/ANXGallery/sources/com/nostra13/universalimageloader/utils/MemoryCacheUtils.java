package com.nostra13.universalimageloader.utils;

import android.graphics.RectF;
import android.text.TextUtils;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.io.File;
import java.util.Comparator;

public final class MemoryCacheUtils {
    public static String generateKey(String imageUri, ImageSize targetSize, RectF regionRect, DisplayImageOptions options) {
        StringBuilder result = new StringBuilder(imageUri);
        result.append("_").append(targetSize.getWidth()).append("x").append(targetSize.getHeight());
        if (regionRect != null) {
            result.append("R").append(regionRect.toShortString());
        }
        if (options != null) {
            if (options.isConsiderFileLength() && options.getFileLength() > 0) {
                result.append("L").append(options.getFileLength());
            }
            if (options.getBlurRadius() > 0) {
                result.append("B").append(options.getBlurRadius());
            }
            if (options.usingRegionDecoderFace()) {
                result.append("F");
            }
            if (options.isLoadOriginScaleThumbnail()) {
                result.append("_thumbnail");
            }
        }
        return result.toString();
    }

    public static String generateBigPhotoKey(String imageUri) {
        return imageUri;
    }

    public static String generateBigPhotoKey(String imageUri, long imageSize) {
        if (imageSize > 0) {
            return "L" + imageSize;
        }
        return generateBigPhotoKey(imageUri);
    }

    public static String generatePreviewPhotoKey(String imageUri) {
        return "_preview";
    }

    public static String generateThumbnailKey(String imageUri) {
        if (TextUtils.isEmpty(imageUri) || imageUri.endsWith("_thumbnail")) {
            return imageUri;
        }
        return imageUri + "_thumbnail";
    }

    private static StringBuilder appendFileSize(StringBuilder front, String uri) {
        if (!TextUtils.isEmpty(uri)) {
            String filePrefix = "file://";
            if (uri.startsWith("file://")) {
                long fileSize = new File(uri.substring(7)).length();
                if (fileSize > 0) {
                    front.append("L").append(fileSize);
                }
            }
        }
        return front;
    }

    public static Comparator<String> createFuzzyKeyComparator() {
        return new Comparator<String>() {
            public int compare(String key1, String key2) {
                return key1.substring(0, key1.lastIndexOf("_")).compareTo(key2.substring(0, key2.lastIndexOf("_")));
            }
        };
    }
}
