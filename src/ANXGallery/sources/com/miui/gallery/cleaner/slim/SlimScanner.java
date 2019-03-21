package com.miui.gallery.cleaner.slim;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.activity.CleanerPhotoPickActivity;
import com.miui.gallery.cleaner.BaseScanner;
import com.miui.gallery.cleaner.ScanResult;
import com.miui.gallery.cleaner.ScanResult.Builder;
import com.miui.gallery.cleaner.ScanResult.OnScanResultClickListener;
import com.miui.gallery.cleaner.slim.SlimController.SpaceSlimObserver;
import com.miui.gallery.cloud.CloudTableUtils;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.ScreenUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SlimScanner extends BaseScanner implements SpaceSlimObserver {
    public static final String SLIM_SCAN_ORDER = String.format("%s DESC", new Object[]{"alias_create_time"});
    public static final String[] SLIM_SCAN_PROJECTION = new String[]{"_id", "localFile", "size", "exifImageWidth", "exifImageLength"};
    private static final String SLIM_SCAN_SELECTION = ("serverType = 1 AND mimeType != 'image/gif' AND localFile NOT NULL AND localFile != '' AND localGroupId != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1000) + " AND " + "localGroupId" + " != " + CloudTableUtils.getCloudIdForGroupWithoutRecord(1001));
    public static final String SYNCED_SLIM_SCAN_SELECTION = ("alias_sync_state = 0 AND " + SLIM_SCAN_SELECTION);
    private ArrayList<MediaItem> mMediaItems = new ArrayList();
    private OnScanResultClickListener mOnScanResultClickListener = new OnScanResultClickListener() {
        public void onClick(Context context) {
            Intent intent = new Intent(context, CleanerPhotoPickActivity.class);
            intent.putExtra("extra_cleaner_photo_pick_type", SlimScanner.this.mType);
            context.startActivity(intent);
            BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_result_slim_click");
        }
    };

    private static class MediaItem {
        public String mFilePath;
        public int mHeight;
        public long mId;
        public long mSize;
        public long mSlimSize;
        public int mWidth;

        private MediaItem() {
        }

        /* synthetic */ MediaItem(AnonymousClass1 x0) {
            this();
        }
    }

    public SlimScanner() {
        super(0);
    }

    public ScanResult scan() {
        List<MediaItem> list = (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Media.URI_OWNER_ALBUM_MEDIA, SLIM_SCAN_PROJECTION, SYNCED_SLIM_SCAN_SELECTION, null, SLIM_SCAN_ORDER, new QueryHandler<List<MediaItem>>() {
            public List<MediaItem> handle(Cursor cursor) {
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
                    item.mFilePath = cursor.getString(1);
                    item.mSize = cursor.getLong(2);
                    item.mWidth = cursor.getInt(3);
                    item.mHeight = cursor.getInt(4);
                    list.add(item);
                } while (cursor.moveToNext());
                return list;
            }
        });
        if (!BaseMiscUtil.isValid(list)) {
            return null;
        }
        int screenWidth = ScreenUtils.getScreenWidth();
        int screenHeight = ScreenUtils.getScreenHeight();
        for (MediaItem item : list) {
            if (Math.max(item.mWidth, item.mHeight) > screenWidth && FileUtils.isFileExist(item.mFilePath)) {
                long slimSize = item.mSize - ((long) ((((double) item.mSize) * Math.pow((double) BitmapUtils.computeThumbNailScaleSize(item.mWidth, item.mHeight, screenWidth, screenHeight), 2.0d)) * 0.4000000059604645d));
                if (slimSize > 0) {
                    item.mSlimSize = slimSize;
                    this.mMediaItems.add(item);
                }
            }
        }
        if (this.mMediaItems.isEmpty()) {
            return null;
        }
        SlimController.getInstance().registerObserver(this);
        return buildScanResult();
    }

    private ScanResult buildScanResult() {
        int count = 0;
        long size = 0;
        String[] paths = new String[4];
        synchronized (this.mMediaItems) {
            Iterator it = this.mMediaItems.iterator();
            while (it.hasNext()) {
                MediaItem item = (MediaItem) it.next();
                size += item.mSlimSize;
                if (count < paths.length) {
                    paths[count] = item.mFilePath;
                }
                count++;
            }
        }
        return new Builder(GalleryApp.sGetAndroidContext()).setType(this.mType).setTitle(R.string.cleaner_slim_title).setSize(size).setDescription(R.string.cleaner_slim_description).setPaths(paths).setAction(R.string.cleaner_slim_action).setCount(count).setOnScanResultClickListener(this.mOnScanResultClickListener).build();
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

    protected void onReset() {
        this.mMediaItems.clear();
        SlimController.getInstance().unregisterObserver(this);
    }

    public void onSlimProgress(long id, long releaseSize, int remainCount) {
        removeMediaItem(id);
    }

    public void onSlimPaused() {
    }

    public void onSlimResumed() {
    }

    public void onMediaItemDeleted(long id) {
        removeMediaItem(id);
    }

    private void removeMediaItem(long id) {
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
        if (found) {
            updateScanResult(buildScanResult());
        }
    }
}
