package com.miui.gallery.cleaner.slim;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Process;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.ThumbnailMetaWriter;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.UserCommentData;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.deleterecorder.DeleteRecord;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.CopyOnWriteArraySet;

public class SlimController {
    public static final int[] TIME_COST_STAGE = new int[]{5, 10, 15, 25, 40, 60, nexClip.kClip_Rotate_180, 300};
    private static SlimController instance;
    private long[] mIds;
    private volatile boolean mIsRemainItemsToInit;
    private SpaceSlimObserverHolder mObserverHolder = new SpaceSlimObserverHolder();
    private long mReleaseSize;
    private int mRemainCount;
    private LinkedList<MediaItem> mRemainItems;
    private Object mRemainItemsLock = new Object();
    private SlimWorkerPool mSlimWorkerPool;
    private long mStartTime;

    private static class MediaItem {
        public static final String[] PROJECTION = new String[]{"_id", "fileName", "sha1", "exifOrientation", "exifDateTime", "exifGPSDateStamp", "exifGPSTimeStamp", "mixedDateTime", "localFile", "thumbnailFile", "serverType"};
        public String dateTime;
        public String fileName;
        public String gpsDateStamp;
        public String gpsTimeStamp;
        public int id;
        public String localFilePath;
        public long mixDateTime;
        public int orientation;
        public int serverType;
        public String sha1;
        public String thumbnailFilePath;

        private MediaItem() {
        }

        public static MediaItem cursorToEntity(Cursor cursor) {
            int i = 0;
            MediaItem item = new MediaItem();
            item.id = cursor.getInt(0);
            item.fileName = cursor.getString(1);
            item.sha1 = cursor.getString(2);
            if (!cursor.isNull(3)) {
                i = cursor.getInt(3);
            }
            item.orientation = i;
            item.dateTime = cursor.getString(4);
            item.gpsDateStamp = cursor.getString(5);
            item.gpsTimeStamp = cursor.getString(6);
            item.mixDateTime = cursor.getLong(7);
            item.localFilePath = cursor.getString(8);
            item.thumbnailFilePath = cursor.getString(9);
            item.serverType = cursor.getInt(10);
            return item;
        }
    }

    private interface OnSlimDoneListener {
        void onSlimDone(long j);
    }

    private class SlimWorker extends Thread {
        private volatile boolean mIsCanceled;
        private volatile boolean mIsPaused;
        private OnSlimDoneListener mOnSlimDoneListener;
        private Object mSlimLock;

        private SlimWorker() {
            this.mIsCanceled = false;
            this.mIsPaused = false;
            this.mSlimLock = new Object();
        }

        /* synthetic */ SlimWorker(SlimController x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            Process.setThreadPriority(10);
            if (!this.mIsCanceled) {
                if (this.mIsPaused) {
                    doPause();
                }
                if (SlimController.this.mIsRemainItemsToInit) {
                    synchronized (SlimController.this.mRemainItemsLock) {
                        if (SlimController.this.mIsRemainItemsToInit) {
                            SlimController.this.mRemainItems = SlimController.this.queryMediaItem(SlimController.this.mIds);
                            SlimController.this.mIsRemainItemsToInit = false;
                        }
                    }
                }
                if (isRemainItemsValid()) {
                    Collection deleteRecords = new ArrayList();
                    long slimTotalTime = 0;
                    while (true) {
                        MediaItem item = getNextRemainItem();
                        if (item == null) {
                            onDone(slimTotalTime);
                            if (BaseMiscUtil.isValid(deleteRecords)) {
                                DeleteRecorder.record(deleteRecords);
                                return;
                            }
                            return;
                        } else if (!this.mIsCanceled) {
                            if (this.mIsPaused) {
                                doPause();
                            }
                            long start = System.currentTimeMillis();
                            long releaseSize = SlimController.this.handleSlim(item, deleteRecords);
                            slimTotalTime += System.currentTimeMillis() - start;
                            synchronized (SlimController.this) {
                                if (!this.mIsCanceled) {
                                    SlimController.this.mReleaseSize = SlimController.this.mReleaseSize + releaseSize;
                                    SlimController.this.mRemainCount = SlimController.this.mRemainCount - 1;
                                }
                                SlimController.this.onSlimProgress(item.id);
                            }
                        } else {
                            return;
                        }
                    }
                }
                SlimController.this.onSlimProgress(0);
                onDone(0);
            }
        }

        private MediaItem getNextRemainItem() {
            MediaItem item;
            synchronized (SlimController.this.mRemainItemsLock) {
                if (BaseMiscUtil.isValid(SlimController.this.mRemainItems)) {
                    item = (MediaItem) SlimController.this.mRemainItems.remove(0);
                    SlimController.this.mRemainItems.remove(item);
                } else {
                    item = null;
                }
            }
            return item;
        }

        private boolean isRemainItemsValid() {
            boolean isValid;
            synchronized (SlimController.this.mRemainItemsLock) {
                isValid = BaseMiscUtil.isValid(SlimController.this.mRemainItems);
            }
            return isValid;
        }

        public void doPause() {
            synchronized (this.mSlimLock) {
                if (this.mIsPaused) {
                    try {
                        this.mSlimLock.wait();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        private void onDone(long time) {
            if (!this.mIsCanceled && this.mOnSlimDoneListener != null) {
                this.mOnSlimDoneListener.onSlimDone(time);
            }
        }

        public boolean isCanceled() {
            return this.mIsCanceled;
        }

        public boolean isPaused() {
            return this.mIsPaused;
        }

        public void cancel() {
            this.mIsCanceled = true;
        }

        public void pauseSlim() {
            this.mIsPaused = true;
            SlimController.this.onSlimPaused();
        }

        public void resumeSlim() {
            this.mIsPaused = false;
            synchronized (this.mSlimLock) {
                this.mSlimLock.notifyAll();
            }
            SlimController.this.onSlimResumed();
        }

        public void setOnSlimDoneListener(OnSlimDoneListener listener) {
            this.mOnSlimDoneListener = listener;
        }
    }

    private class SlimWorkerPool {
        private OnSlimDoneListener mOnSlimDoneListener;
        private SlimWorker[] mSlimWorkers;

        private SlimWorkerPool() {
            this.mOnSlimDoneListener = new OnSlimDoneListener() {
                private int mDoneCount = 0;
                private long mTimeCost = 0;

                /* JADX WARNING: Missing block: B:17:?, code:
            return;
     */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public void onSlimDone(long timeCost) {
                    synchronized (SlimWorkerPool.this) {
                        if (SlimWorkerPool.this.mSlimWorkers == null) {
                            return;
                        }
                        if (this.mTimeCost < timeCost) {
                            this.mTimeCost = timeCost;
                        }
                        this.mDoneCount++;
                        if (this.mDoneCount == 4) {
                            SlimWorkerPool.this.stop();
                            HashMap<String, String> params = new HashMap();
                            params.put("timeCost", BaseSamplingStatHelper.formatValueStage((float) (this.mTimeCost / 1000), SlimController.TIME_COST_STAGE));
                            BaseSamplingStatHelper.recordCountEvent("cleaner", "slim_finish", params);
                        }
                    }
                }
            };
        }

        /* synthetic */ SlimWorkerPool(SlimController x0, AnonymousClass1 x1) {
            this();
        }

        public synchronized void start() {
            this.mSlimWorkers = new SlimWorker[4];
            for (int i = 0; i < 4; i++) {
                this.mSlimWorkers[i] = new SlimWorker(SlimController.this, null);
                this.mSlimWorkers[i].setOnSlimDoneListener(this.mOnSlimDoneListener);
                this.mSlimWorkers[i].start();
            }
        }

        public synchronized void stop() {
            if (this.mSlimWorkers != null) {
                for (int i = 0; i < 4; i++) {
                    this.mSlimWorkers[i].cancel();
                    this.mSlimWorkers[i] = null;
                }
                this.mSlimWorkers = null;
                SlimController.this.mSlimWorkerPool = null;
            }
        }

        public synchronized void resume() {
            if (this.mSlimWorkers != null) {
                for (int i = 0; i < 4; i++) {
                    this.mSlimWorkers[i].resumeSlim();
                }
            }
        }

        public synchronized void pause() {
            if (this.mSlimWorkers != null) {
                for (int i = 0; i < 4; i++) {
                    this.mSlimWorkers[i].pauseSlim();
                }
            }
        }

        public synchronized boolean isPaused() {
            boolean z = false;
            synchronized (this) {
                if (!(this.mSlimWorkers == null || this.mSlimWorkers[0].isCanceled() || !this.mSlimWorkers[0].isPaused())) {
                    z = true;
                }
            }
            return z;
        }
    }

    public interface SpaceSlimObserver {
        void onSlimPaused();

        void onSlimProgress(long j, long j2, int i);

        void onSlimResumed();
    }

    private static class SpaceSlimObserverHolder implements SpaceSlimObserver {
        CopyOnWriteArraySet<SpaceSlimObserver> observers;

        private SpaceSlimObserverHolder() {
            this.observers = new CopyOnWriteArraySet();
        }

        /* synthetic */ SpaceSlimObserverHolder(AnonymousClass1 x0) {
            this();
        }

        public void onSlimProgress(long id, long releaseSize, int remainCount) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((SpaceSlimObserver) it.next()).onSlimProgress(id, releaseSize, remainCount);
            }
        }

        public void onSlimResumed() {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((SpaceSlimObserver) it.next()).onSlimResumed();
            }
        }

        public void onSlimPaused() {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((SpaceSlimObserver) it.next()).onSlimPaused();
            }
        }
    }

    private SlimController() {
    }

    public static synchronized SlimController getInstance() {
        SlimController slimController;
        synchronized (SlimController.class) {
            if (instance == null) {
                instance = new SlimController();
            }
            slimController = instance;
        }
        return slimController;
    }

    public void registerObserver(SpaceSlimObserver observer) {
        this.mObserverHolder.observers.add(observer);
    }

    public void unregisterObserver(SpaceSlimObserver observer) {
        this.mObserverHolder.observers.remove(observer);
    }

    public synchronized void start(long[] ids) {
        stop();
        if (!(ids == null || ids.length == 0)) {
            Log.d("SlimController", "start slim");
            this.mIds = ids;
            this.mRemainCount = this.mIds.length;
            synchronized (this.mRemainItemsLock) {
                this.mIsRemainItemsToInit = true;
            }
            this.mSlimWorkerPool = new SlimWorkerPool(this, null);
            this.mSlimWorkerPool.start();
            this.mStartTime = System.currentTimeMillis();
        }
    }

    public synchronized void resume() {
        if (this.mSlimWorkerPool != null) {
            this.mSlimWorkerPool.resume();
            Log.d("SlimController", "resume slim");
        }
    }

    public synchronized void pause() {
        if (this.mSlimWorkerPool != null) {
            this.mSlimWorkerPool.pause();
            Log.d("SlimController", "pause slim");
        }
    }

    public synchronized long getStartTime() {
        return this.mStartTime;
    }

    public synchronized void stop() {
        if (this.mSlimWorkerPool != null) {
            Log.d("SlimController", "stop slim");
            this.mSlimWorkerPool.stop();
        }
        this.mIds = null;
        this.mRemainCount = 0;
        this.mReleaseSize = 0;
        this.mStartTime = 0;
        synchronized (this.mRemainItemsLock) {
            if (this.mRemainItems != null) {
                this.mRemainItems.clear();
            }
            this.mRemainItems = null;
            this.mIsRemainItemsToInit = false;
        }
    }

    public synchronized int getTotalCount() {
        return this.mIds == null ? 0 : this.mIds.length;
    }

    public synchronized int getRemainCount() {
        return this.mRemainCount;
    }

    public synchronized int getSlimCount() {
        return getTotalCount() - getRemainCount();
    }

    public synchronized long getReleaseSize() {
        return this.mReleaseSize;
    }

    public synchronized boolean isSlimming() {
        return this.mSlimWorkerPool != null;
    }

    public synchronized boolean isSlimStarted() {
        boolean z;
        z = isSlimming() || getReleaseSize() > 0;
        return z;
    }

    public synchronized boolean isSlimPaused() {
        boolean z;
        z = this.mSlimWorkerPool != null && this.mSlimWorkerPool.isPaused();
        return z;
    }

    private void onSlimProgress(final int id) {
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                SlimController.this.mObserverHolder.onSlimProgress((long) id, SlimController.this.getReleaseSize(), SlimController.this.getRemainCount());
            }
        });
    }

    private void onSlimPaused() {
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                SlimController.this.mObserverHolder.onSlimPaused();
            }
        });
    }

    private void onSlimResumed() {
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                SlimController.this.mObserverHolder.onSlimResumed();
            }
        });
    }

    private LinkedList<MediaItem> queryMediaItem(long[] ids) {
        return (LinkedList) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, MediaItem.PROJECTION, String.format("%s IN (%s)", new Object[]{"_id", TextUtils.join(",", MiscUtil.arrayToList(ids))}), null, null, new QueryHandler<LinkedList<MediaItem>>() {
            public LinkedList<MediaItem> handle(Cursor cursor) {
                LinkedList<MediaItem> list = new LinkedList();
                if (cursor == null || !cursor.moveToFirst()) {
                    return list;
                }
                do {
                    list.add(MediaItem.cursorToEntity(cursor));
                } while (cursor.moveToNext());
                return list;
            }
        });
    }

    private long handleSlim(MediaItem item, ArrayList<DeleteRecord> deleteRecords) {
        if (TextUtils.isEmpty(item.localFilePath)) {
            return 0;
        }
        File localFile = new File(item.localFilePath);
        if (!localFile.exists()) {
            return 0;
        }
        long localFileSize = localFile.length();
        File thumbnailFile;
        if (TextUtils.equals(ExifUtil.getUserCommentSha1(item.thumbnailFilePath), item.sha1)) {
            thumbnailFile = new File(item.thumbnailFilePath);
            long thumbnailFileSize = thumbnailFile.length();
            Log.d("SlimController", "thumbnail file already exits %s", item.thumbnailFilePath);
            if (!thumbnailFile.getName().equalsIgnoreCase(localFile.getName())) {
                MediaFileUtils.deleteFileType(FileType.ORIGINAL, new File(item.localFilePath));
                Log.i("SlimController", "delete localFile: %s", item.localFilePath);
                deleteRecords.add(new DeleteRecord(45, item.localFilePath, "SlimController"));
            }
            saveToDB(item.id, item.thumbnailFilePath, null);
            return localFileSize - thumbnailFileSize;
        } else if (TextUtils.equals(FileUtils.getSha1(item.localFilePath), item.sha1)) {
            String str = item.fileName;
            String str2 = item.sha1;
            String str3 = item.localFilePath;
            thumbnailFile = buildThumbnail(str, str2, str3, item.serverType, new ThumbnailMetaWriter(item.sha1, item.fileName, item.mixDateTime, item.dateTime, item.gpsDateStamp, item.gpsTimeStamp));
            if (thumbnailFile == null) {
                return 0;
            }
            deleteRecords.add(new DeleteRecord(45, item.localFilePath, "SlimController"));
            if (!thumbnailFile.getName().equalsIgnoreCase(localFile.getName())) {
                MediaFileUtils.deleteFileType(FileType.ORIGINAL, localFile);
                Log.i("SlimController", "delete localFile: %s", item.localFilePath);
            }
            item.thumbnailFilePath = thumbnailFile.getAbsolutePath();
            Log.i("SlimController", "successfully slim %s to %s", item.localFilePath, item.thumbnailFilePath);
            saveToDB(item.id, item.thumbnailFilePath, "");
            MediaFileUtils.triggerMediaScan(true, thumbnailFile);
            long slimSize = localFileSize - thumbnailFile.length();
            if (slimSize > 0) {
                return slimSize;
            }
            Log.w("SlimController", "slim size < 0: %s", item.localFilePath);
            return 0;
        } else {
            saveToDB(item.id, item.thumbnailFilePath, null);
            return 0;
        }
    }

    private static void saveToDB(int id, String thumbnailFilePath, String localFilePath) {
        ContentValues values = new ContentValues();
        values.put("thumbnailFile", thumbnailFilePath);
        values.put("localFile", localFilePath);
        SafeDBUtil.safeUpdate(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, values, "_id = " + id, null);
    }

    private static File buildThumbnail(String fileName, String sha1, String localFilePath, int serverType, ThumbnailMetaWriter writer) {
        if (TextUtils.isEmpty(fileName) || TextUtils.isEmpty(sha1) || TextUtils.isEmpty(localFilePath)) {
            Log.w("SlimController", "illegal args: fileName=%s, sha1=%s, localFilePath=%s", fileName, sha1, localFilePath);
            return null;
        }
        File localFile = new File(localFilePath);
        if (localFile.isFile()) {
            String THUMBNAIL_EXT = "jpg";
            File file = new File(localFile.getParent(), FileUtils.getFileTitle(fileName) + "." + "jpg");
            if (file.isFile()) {
                try {
                    UserCommentData data = ExifUtil.getUserCommentData(file.getAbsolutePath());
                    if (TextUtils.equals(sha1, data != null ? data.getSha1() : null)) {
                        return file;
                    }
                    if (!file.getName().equalsIgnoreCase(localFile.getName())) {
                        file = new File(localFile.getParent(), FileUtils.getFileTitle(fileName) + "_" + System.currentTimeMillis() + "." + "jpg");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return null;
                }
            }
            String tempThumbnailName = "." + sha1;
            String tempThumbnailFilePath = null;
            if (serverType == 1) {
                tempThumbnailFilePath = CloudUtils.buildBigThumbnailForImage(localFilePath, sha1, localFile.getParent(), tempThumbnailName, writer);
            }
            if (TextUtils.isEmpty(tempThumbnailFilePath)) {
                Log.e("SlimController", "fail to build thumbnail. args: fileName=%s, sha1=%s, localFilePath=%s", fileName, sha1, localFilePath);
                return null;
            }
            File tempThumbnailFile = new File(tempThumbnailFilePath);
            if (FileUtils.move(tempThumbnailFile, thumbnailFile)) {
                return thumbnailFile;
            }
            Log.e("SlimController", "fail to rename %s to %s!", tempThumbnailFile.getAbsoluteFile(), thumbnailFile.getAbsoluteFile());
            MediaFileUtils.deleteFileType(FileType.TEMP, tempThumbnailFile);
            HashMap<String, String> params = new HashMap();
            boolean movePart = thumbnailFile.getName().equalsIgnoreCase(localFile.getName()) ? FileUtils.getSha1(localFilePath) != sha1 : FileUtils.isFileExist(thumbnailFile.getAbsolutePath());
            params.put("move_part", String.valueOf(movePart));
            BaseSamplingStatHelper.recordErrorEvent("slim", "slim_error", params);
            return null;
        }
        Log.w("SlimController", "file not exists: %s", localFilePath);
        return null;
    }
}
