package com.miui.gallery.search.core.display.icon;

import android.content.Context;
import android.database.Cursor;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Handler;
import com.miui.gallery.search.SearchContract.Icon;
import com.miui.gallery.search.core.Consumer;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.face.FaceRegionRectF;

public class IconLoaderTask implements Job<Void> {
    private static final RectF DEFAULT_RECT = new RectF(0.0f, 0.0f, 1.0f, 1.0f);
    private static final String[] PROJECTION = new String[]{"file_path", "download_uri", "decode_region_orientation", "decode_region_x", "decode_region_y", "decode_region_w", "decode_region_h"};
    private final Consumer<IconLoaderResult> mConsumer;
    private final Context mContext;
    private final Handler mHandler;
    private final Uri mIconUri;

    public static class IconLoaderResult {
        public Uri downloadUri;
        public RectF facePositionRect;
        public Uri iconUri;
        public String localFilePath;

        public IconLoaderResult(Uri iconUri, String localFilePath, Uri downloadUri) {
            this.facePositionRect = IconLoaderTask.DEFAULT_RECT;
            this.iconUri = iconUri;
            this.localFilePath = localFilePath;
            this.downloadUri = downloadUri;
        }

        public IconLoaderResult(Uri iconUri, String localFilePath, Uri downloadUri, RectF facePositionRect) {
            this(iconUri, localFilePath, downloadUri);
            if (facePositionRect != null) {
                this.facePositionRect = facePositionRect;
            }
        }

        public boolean isValid() {
            return (this.localFilePath == null && this.downloadUri == null) ? false : true;
        }
    }

    public IconLoaderTask(Context context, Uri iconUri, Consumer<IconLoaderResult> consumer, Handler handler) {
        this.mContext = context;
        this.mIconUri = iconUri;
        this.mConsumer = consumer;
        this.mHandler = handler;
    }

    public Void run(JobContext jc) {
        IconLoaderResult result = null;
        Cursor cursor = null;
        try {
            cursor = this.mContext.getContentResolver().query(Icon.URI.buildUpon().appendQueryParameter("icon_uri", this.mIconUri.toString()).build(), PROJECTION, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                String filePath = cursor.getString(0);
                String downloadUri = cursor.getString(1);
                RectF regionDecode = null;
                if (!cursor.isNull(5)) {
                    regionDecode = new FaceRegionRectF(cursor.getFloat(3), cursor.getFloat(4), cursor.getFloat(5) + cursor.getFloat(3), cursor.getFloat(6) + cursor.getFloat(4), cursor.getInt(2));
                }
                result = new IconLoaderResult(this.mIconUri, filePath, downloadUri == null ? null : Uri.parse(downloadUri), regionDecode);
            }
            if (cursor != null) {
                cursor.close();
            }
            consumeResult(result);
            return null;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private void consumeResult(final IconLoaderResult result) {
        if (this.mHandler == null) {
            this.mConsumer.consume(result);
        } else {
            this.mHandler.post(new Runnable() {
                public void run() {
                    IconLoaderTask.this.mConsumer.consume(result);
                }
            });
        }
    }
}
