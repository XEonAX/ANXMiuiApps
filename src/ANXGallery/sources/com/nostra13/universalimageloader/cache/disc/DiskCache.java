package com.nostra13.universalimageloader.cache.disc;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.utils.IoUtils.CopyListener;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public interface DiskCache {
    public static final DiskCache DUMMY = new DiskCache() {
        public File get(String imageUri) {
            return null;
        }

        public Bitmap getBitmap(String imageUri) {
            return null;
        }

        public boolean save(String imageUri, InputStream imageStream, CopyListener listener) throws IOException {
            return false;
        }

        public boolean save(String imageUri, Bitmap bitmap) throws IOException {
            return false;
        }
    };

    File get(String str);

    Bitmap getBitmap(String str);

    boolean save(String str, Bitmap bitmap) throws IOException;

    boolean save(String str, InputStream inputStream, CopyListener copyListener) throws IOException;
}
