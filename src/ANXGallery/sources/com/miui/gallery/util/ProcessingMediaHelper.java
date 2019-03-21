package com.miui.gallery.util;

import android.content.ContentUris;
import android.net.Uri;
import android.provider.MediaStore.Files;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.text.TextUtils;
import android.util.LongSparseArray;

public class ProcessingMediaHelper {
    private static final String EXTERNAL_FILES_PREFIX = Files.getContentUri("external").toString();
    private static final String EXTERNAL_IMAGES_PREFIX = Media.getContentUri("external").toString();
    private static final String EXTERNAL_VIDEO_PREFIX = Video.Media.getContentUri("external").toString();
    private static final Object sLock = new Object();
    private LongSparseArray<String> mProcessingItems;

    private static class SingletonHolder {
        static final ProcessingMediaHelper INSTANCE = new ProcessingMediaHelper();
    }

    private ProcessingMediaHelper() {
        this.mProcessingItems = new LongSparseArray();
    }

    public static ProcessingMediaHelper getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void addProcessingItem(long mediaStoreId, String filePath) {
        synchronized (sLock) {
            this.mProcessingItems.put(mediaStoreId, filePath);
        }
    }

    public void removeProcessingItem(long mediaStoreId) {
        synchronized (sLock) {
            this.mProcessingItems.remove(mediaStoreId);
        }
    }

    public boolean isMediaInProcessing(String fileUri) {
        if (TextUtils.isEmpty(fileUri)) {
            return false;
        }
        if (fileUri.startsWith(EXTERNAL_FILES_PREFIX) || fileUri.startsWith(EXTERNAL_IMAGES_PREFIX) || fileUri.startsWith(EXTERNAL_VIDEO_PREFIX)) {
            try {
                long id = ContentUris.parseId(Uri.parse(fileUri));
                synchronized (sLock) {
                    if (this.mProcessingItems.get(id) != null) {
                        return true;
                    }
                }
            } catch (Throwable e) {
                Log.w("ProcessingMediaHelper", "Illegal Uri format: %s", fileUri);
                Log.w("ProcessingMediaHelper", e);
                return false;
            }
        } else if (fileUri.startsWith("file://")) {
            String filePath = fileUri.substring("file://".length());
            synchronized (sLock) {
                for (int i = 0; i < this.mProcessingItems.size(); i++) {
                    if (TextUtils.equals(filePath, (CharSequence) this.mProcessingItems.valueAt(i))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
