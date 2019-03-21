package com.miui.gallery.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Video.Media;
import com.miui.gallery.photosapi.PhotosOemApi;
import com.miui.gallery.photosapi.ProcessingMetadataQuery.ProgressStatus;

public class ProcessingMedia {
    private final long mMediaStoreId;
    private final int mMediaType;
    private final String mPath;
    private final ProcessingMetadata mProcessingMetadata;
    private final String mSpecialTypeId;
    private final Uri mUri;

    static final class Factory {
        private final Context context;

        Factory(Context context) {
            this.context = context;
        }

        ProcessingMedia build(long mediaStoreId, String path, int mediaType, ProcessingMetadata processingMetadata) {
            return new ProcessingMedia(mediaType == 0 ? getProcessingUri(mediaStoreId) : getMediaStoreUri(mediaStoreId, mediaType), mediaStoreId, path, null, mediaType, processingMetadata);
        }

        private Uri getMediaStoreUri(long mediaStoreId, int mediaType) {
            if (mediaType == 3) {
                return Media.EXTERNAL_CONTENT_URI.buildUpon().appendPath(String.valueOf(mediaStoreId)).build();
            }
            return Images.Media.EXTERNAL_CONTENT_URI.buildUpon().appendPath(String.valueOf(mediaStoreId)).build();
        }

        private Uri getProcessingUri(long mediaStoreId) {
            return PhotosOemApi.getQueryProcessingUri(this.context, mediaStoreId);
        }
    }

    public static final class ProcessingMetadata {
        private final int mProgressPercentage;
        private final ProgressStatus mProgressStatus;

        ProcessingMetadata(ProgressStatus progressStatus, int progressPercentage) {
            this.mProgressStatus = progressStatus;
            this.mProgressPercentage = progressPercentage;
        }

        public ProgressStatus getProgressStatus() {
            return this.mProgressStatus;
        }

        public int getProgressPercentage() {
            return this.mProgressPercentage;
        }

        public String toString() {
            return "ProcessingMetadata{mProgressStatus=" + this.mProgressStatus + ", mProgressPercentage=" + this.mProgressPercentage + '}';
        }
    }

    private ProcessingMedia(Uri uri, long mediaStoreId, String path, String specialTypeId, int mediaType, ProcessingMetadata processingMetadata) {
        this.mUri = uri;
        this.mMediaStoreId = mediaStoreId;
        this.mPath = path;
        this.mSpecialTypeId = specialTypeId;
        this.mMediaType = mediaType;
        this.mProcessingMetadata = processingMetadata;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getPath() {
        return this.mPath;
    }

    public ProcessingMetadata getProcessingMetadata() {
        return this.mProcessingMetadata;
    }

    public String toString() {
        return "ProcessingMedia{mUri=" + this.mUri + ", mMediaStoreId=" + this.mMediaStoreId + ", mPath='" + this.mPath + '\'' + ", mSpecialTypeId='" + this.mSpecialTypeId + '\'' + ", mMediaType=" + this.mMediaType + ", mProcessingMetadata=" + this.mProcessingMetadata + '}';
    }
}
