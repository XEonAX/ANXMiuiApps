package com.miui.gallery.cleaner;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.activity.CleanerPhotoPickActivity;
import com.miui.gallery.cleaner.ScanResult.Builder;
import com.miui.gallery.cleaner.ScanResult.OnScanResultClickListener;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseFileUtils;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public class ScreenshotScanner extends BaseScanner {
    public static final String SCREEN_SHOT_SCAN_ORDER = String.format("%s DESC", new Object[]{"alias_create_time"});
    public static final String[] SCREEN_SHOT_SCAN_PROJECTION = new String[]{"_id", "size", "localFile", "thumbnailFile", "sha1"};
    public static final String SCREEN_SHOT_SCAN_SELECTION = ("localGroupId = %d AND " + VALID_FILE);
    public static final String VALID_FILE = ("(" + Cloud.ALIAS_THUMBNAIL_VALID + " OR " + Cloud.ALIAS_ORIGIN_FILE_VALID + ")");
    private ArrayList<MediaItem> mMediaItems = new ArrayList();
    private OnScanResultClickListener mOnScanResultClickListener = new OnScanResultClickListener() {
        public void onClick(Context context) {
            Intent intent = new Intent(context, CleanerPhotoPickActivity.class);
            intent.putExtra("extra_cleaner_photo_pick_type", ScreenshotScanner.this.mType);
            context.startActivity(intent);
            BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_result_screenshot_click");
        }
    };
    private int mScreenshotLocalId = -1;

    private static class MediaItem {
        public long mId;
        public String mPath;
        public String mSha1;
        public long mSize;

        private MediaItem() {
        }

        /* synthetic */ MediaItem(AnonymousClass1 x0) {
            this();
        }
    }

    public ScreenshotScanner() {
        super(1);
    }

    public ScanResult scan() {
        Context context = GalleryApp.sGetAndroidContext();
        if (this.mScreenshotLocalId == -1) {
            this.mScreenshotLocalId = queryScreenshotAlbumId(context);
            if (this.mScreenshotLocalId == -1) {
                return null;
            }
        }
        ArrayList<MediaItem> list = (ArrayList) SafeDBUtil.safeQuery(context, Media.URI_OWNER_ALBUM_MEDIA, SCREEN_SHOT_SCAN_PROJECTION, String.format(Locale.US, SCREEN_SHOT_SCAN_SELECTION, new Object[]{Integer.valueOf(this.mScreenshotLocalId)}), null, SCREEN_SHOT_SCAN_ORDER, new QueryHandler<ArrayList<MediaItem>>() {
            public ArrayList<MediaItem> handle(Cursor cursor) {
                ArrayList<MediaItem> list = null;
                if (cursor == null || !cursor.moveToFirst()) {
                    return list;
                }
                do {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    MediaItem item = new MediaItem();
                    item.mId = cursor.getLong(0);
                    item.mSize = cursor.getLong(1);
                    item.mPath = cursor.getString(2);
                    if (TextUtils.isEmpty(item.mPath)) {
                        item.mPath = cursor.getString(3);
                    }
                    if (!TextUtils.isEmpty(item.mPath) && FileUtils.isFileExist(item.mPath)) {
                        item.mSha1 = cursor.getString(4);
                        list.add(item);
                    }
                } while (cursor.moveToNext());
                return list;
            }
        });
        if (!BaseMiscUtil.isValid(list)) {
            return null;
        }
        this.mMediaItems = list;
        return buildScanResult();
    }

    private int queryScreenshotAlbumId(Context context) {
        return ((Integer) SafeDBUtil.safeQuery(context, GalleryContract.Cloud.CLOUD_URI, new String[]{"_id"}, "serverId = 2 AND (serverType=0)", null, null, new QueryHandler<Integer>() {
            public Integer handle(Cursor cursor) {
                int albumId = -1;
                if (cursor != null && cursor.moveToFirst()) {
                    albumId = cursor.getInt(0);
                }
                if (albumId <= 0) {
                    albumId = -1;
                }
                return Integer.valueOf(albumId);
            }
        })).intValue();
    }

    private ScanResult buildScanResult() {
        int count = 0;
        long size = 0;
        String[] paths = new String[4];
        synchronized (this.mMediaItems) {
            Iterator it = this.mMediaItems.iterator();
            while (it.hasNext()) {
                MediaItem item = (MediaItem) it.next();
                size += item.mSize;
                if (count < paths.length) {
                    paths[count] = item.mPath;
                    if (TextUtils.isEmpty(paths[count])) {
                        paths[count] = BaseFileUtils.concat(StorageUtils.getPriorMicroThumbnailDirectory(), CloudUtils.getThumbnailNameBySha1(item.mSha1));
                    }
                }
                count++;
            }
        }
        return new Builder(GalleryApp.sGetAndroidContext()).setType(this.mType).setTitle(R.string.cleaner_screen_shot_title).setDescription(R.string.cleaner_screen_shot_description).setSize(size).setPaths(paths).setAction(R.string.cleaner_screen_shot_action).setCount(count).setOnScanResultClickListener(this.mOnScanResultClickListener).build();
    }

    protected void onReset() {
        this.mMediaItems.clear();
    }

    public void onMediaItemDeleted(long id) {
        if (removeItem(id)) {
            updateScanResult(buildScanResult());
        }
    }

    public void removeItems(long[] ids) {
        if (ids != null) {
            synchronized (this.mMediaItems) {
                for (long id : ids) {
                    if (removeItem(id)) {
                        updateScanResult((long) ((int) id), buildScanResult());
                    }
                }
            }
        }
    }

    private boolean removeItem(long id) {
        boolean found = false;
        synchronized (this.mMediaItems) {
            Iterator<MediaItem> iterator = this.mMediaItems.iterator();
            while (iterator.hasNext()) {
                if (((MediaItem) iterator.next()).mId == id) {
                    iterator.remove();
                    found = true;
                    break;
                }
            }
        }
        return found;
    }

    public long[] getScanResultIds() {
        long[] ids;
        synchronized (this.mMediaItems) {
            int count = this.mMediaItems.size();
            ids = new long[count];
            for (int i = 0; i < count; i++) {
                ids[i] = ((MediaItem) this.mMediaItems.get(i)).mId;
            }
        }
        return ids;
    }
}
