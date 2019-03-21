package com.miui.gallery.cloud;

import android.content.ContentValues;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.miui.gallery.cloud.thread.BackUploadTask;
import com.miui.gallery.cloud.thread.BaseTask;
import com.miui.gallery.cloud.thread.RequestCommandQueue.OnItemChangedListener;
import com.miui.gallery.cloud.thread.TaskFactory;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaFileUtils;
import com.miui.gallery.util.MediaFileUtils.FileType;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class UpDownloadManager {
    private static final int[] DOWNLOAD_FILE_PRIORITY = new int[]{9, 10, 11};
    private static final Map<Integer, Integer> PRIORITY_ELEMENTS;
    private static final Map<Integer, ThreadElement> THREAD_ELEMENTS;
    private static final TaskFactory sFactory = new TaskFactory() {
        public BaseTask createTask(int type, int priorityCount, int batchMax, int commandMax, OnItemChangedListener changeListener) {
            switch (type) {
                case 0:
                case 1:
                    return new BackUploadTask(type, priorityCount, batchMax, commandMax, changeListener);
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    throw new UnsupportedOperationException("this api is deprecated");
                default:
                    return null;
            }
        }
    };
    private static final UpDownloadManager[] sInstances = new UpDownloadManager[8];
    private final RequestItemExecutor mExecutor;
    private final OnItemChangedDecorator mItemChangedListener = new OnItemChangedDecorator(this, null);

    private class OnItemChangedDecorator implements OnItemChangedListener {
        final List<OnItemChangedListener> mListeners;

        private OnItemChangedDecorator() {
            this.mListeners = Lists.newArrayList();
        }

        /* synthetic */ OnItemChangedDecorator(UpDownloadManager x0, AnonymousClass1 x1) {
            this();
        }

        public void addOnItemChangedListener(OnItemChangedListener l) {
            synchronized (this.mListeners) {
                this.mListeners.add(l);
            }
        }

        public void onRemoveItem(RequestCloudItem item) {
            UpDownloadManager.endDownload(item);
            synchronized (this.mListeners) {
                for (OnItemChangedListener l : this.mListeners) {
                    l.onRemoveItem(item);
                }
            }
        }

        public void onAddItem(RequestCloudItem item) {
            UpDownloadManager.startDownload(item);
            synchronized (this.mListeners) {
                for (OnItemChangedListener l : this.mListeners) {
                    l.onAddItem(item);
                }
            }
        }
    }

    static class ThreadElement {
        int batchSize;
        int commandMaxSize;
        int type;

        public ThreadElement(int type, int batchSize, int commandMaxSize) {
            this.type = type;
            this.batchSize = batchSize;
            this.commandMaxSize = commandMaxSize;
        }
    }

    static {
        Map<Integer, ThreadElement> elements = Maps.newHashMap();
        elements.put(Integer.valueOf(0), new ThreadElement(0, 10, -1));
        elements.put(Integer.valueOf(1), new ThreadElement(1, 2, -1));
        elements.put(Integer.valueOf(2), new ThreadElement(2, 10, -1));
        elements.put(Integer.valueOf(3), new ThreadElement(3, 1, 30));
        elements.put(Integer.valueOf(4), new ThreadElement(4, 10, 100));
        elements.put(Integer.valueOf(5), new ThreadElement(5, 1, -1));
        elements.put(Integer.valueOf(6), new ThreadElement(6, 1, -1));
        elements.put(Integer.valueOf(7), new ThreadElement(7, 1, -1));
        THREAD_ELEMENTS = Collections.unmodifiableMap(elements);
        Map<Integer, Integer> elements2 = Maps.newHashMap();
        elements2.put(Integer.valueOf(0), Integer.valueOf(-1));
        elements2.put(Integer.valueOf(1), Integer.valueOf(-1));
        elements2.put(Integer.valueOf(2), Integer.valueOf(1));
        elements2.put(Integer.valueOf(3), Integer.valueOf(1));
        elements2.put(Integer.valueOf(4), Integer.valueOf(0));
        elements2.put(Integer.valueOf(5), Integer.valueOf(0));
        elements2.put(Integer.valueOf(6), Integer.valueOf(2));
        elements2.put(Integer.valueOf(8), Integer.valueOf(2));
        elements2.put(Integer.valueOf(7), Integer.valueOf(2));
        elements2.put(Integer.valueOf(9), Integer.valueOf(7));
        elements2.put(Integer.valueOf(10), Integer.valueOf(5));
        elements2.put(Integer.valueOf(11), Integer.valueOf(6));
        elements2.put(Integer.valueOf(12), Integer.valueOf(3));
        elements2.put(Integer.valueOf(13), Integer.valueOf(4));
        PRIORITY_ELEMENTS = Collections.unmodifiableMap(elements2);
    }

    private static int getBatchLimit(int type) {
        return ((ThreadElement) THREAD_ELEMENTS.get(Integer.valueOf(type))).batchSize;
    }

    private static int getCommandMaxSize(int type) {
        return ((ThreadElement) THREAD_ELEMENTS.get(Integer.valueOf(type))).commandMaxSize;
    }

    public static int getThreadType(int priority) {
        return ((Integer) PRIORITY_ELEMENTS.get(Integer.valueOf(priority))).intValue();
    }

    public void addOnItemChangedListener(OnItemChangedListener l) {
        this.mItemChangedListener.addOnItemChangedListener(l);
    }

    public int invokeList(List<RequestCloudItem> items, boolean interruptExecuting) {
        return this.mExecutor.invoke(items, interruptExecuting);
    }

    public void cancelAll(int priority, boolean abandon, boolean interruptExecuting) {
        this.mExecutor.cancelAll(priority, abandon, interruptExecuting);
    }

    public void cancelAll(boolean abandon, boolean interruptExecuting) {
        int i = 0;
        while (i < 14) {
            if (!(SyncConditionManager.check(i) == 0 || getThreadType(i) == -1)) {
                this.mExecutor.cancelAll(i, abandon, interruptExecuting);
            }
            i++;
        }
    }

    public boolean hasDelayedItem() {
        return this.mExecutor.hasDelayedItem();
    }

    public static int dispatchList(List<RequestCloudItem> items, boolean interruptExecuting) {
        if (items.isEmpty()) {
            return 0;
        }
        return instance(((RequestCloudItem) items.get(0)).priority).invokeList(items, interruptExecuting);
    }

    public static int dispatchList(List<RequestCloudItem> items) {
        return dispatchList(items, false);
    }

    public static void cancel(int priority, boolean abandon, boolean interruptExecuting) {
        int type = getThreadType(priority);
        if (type == -1) {
            Log.w("UpDownloadManager", "invalid thread type, priority=" + priority);
            Thread.dumpStack();
        } else if (sInstances[type] != null) {
            sInstances[type].cancelAll(priority, abandon, interruptExecuting);
        }
    }

    public static void cancelAllBackgroundPriority(boolean abandon, boolean interruptExecuting) {
        Set<Integer> prioritiesCancelled = new HashSet();
        for (Entry<Integer, Integer> entry : PRIORITY_ELEMENTS.entrySet()) {
            if (!(!RequestItemBase.isBackgroundPriority(((Integer) entry.getKey()).intValue()) || ((Integer) entry.getValue()).intValue() == -1 || prioritiesCancelled.contains(entry.getValue()))) {
                UpDownloadManager mgr = sInstances[((Integer) entry.getValue()).intValue()];
                if (mgr != null) {
                    mgr.cancelAll(abandon, interruptExecuting);
                    prioritiesCancelled.add(entry.getValue());
                }
            }
        }
    }

    private UpDownloadManager(int type) {
        this.mExecutor = new RequestItemExecutor(sFactory.createTask(type, PRIORITY_ELEMENTS.size(), getBatchLimit(type), getCommandMaxSize(type), this.mItemChangedListener));
    }

    public static UpDownloadManager instance(int priority) {
        return instanceInternel(getThreadType(priority));
    }

    private static synchronized UpDownloadManager instanceInternel(int type) {
        UpDownloadManager upDownloadManager;
        synchronized (UpDownloadManager.class) {
            if (sInstances[type] == null) {
                sInstances[type] = new UpDownloadManager(type);
            }
            upDownloadManager = sInstances[type];
        }
        return upDownloadManager;
    }

    private static void startDownload(RequestCloudItem item) {
        if (needPersisit(item)) {
            Log.d("UpDownloadManager", item.getIdentity() + " start download");
            toDatabase(item.dbCloud, 1);
        }
    }

    private static void endDownload(RequestCloudItem item) {
        if (needPersisit(item)) {
            Log.d("UpDownloadManager", item.getIdentity() + " end download, status=" + item.getStatus());
            int status = item.getStatus();
            DBImage dbCloud = item.dbCloud;
            switch (status) {
                case -1:
                case 0:
                    Log.e("UpDownloadManager", "bad status: status=" + status + ", file name=" + item.getFileName());
                    return;
                case 1:
                    toDatabase(dbCloud, 2);
                    return;
                case 2:
                    toDatabase(dbCloud, 3);
                    return;
                case 3:
                    toDatabase(dbCloud, 0);
                    deleteTempFile(item);
                    return;
                default:
                    return;
            }
        }
    }

    private static void deleteTempFile(RequestCloudItem requestItem) {
        File tempFile = new File(requestItem.getDownloadTempFilePath());
        String kinfoFilePath = tempFile.getParent() + "/." + tempFile.getName() + ".kinfo";
        MediaFileUtils.deleteFileType(FileType.TEMP, tempFilePath);
        MediaFileUtils.deleteFileType(FileType.TEMP, kinfoFilePath);
    }

    public static int mapStatusToRequestItem(int dbStatus) {
        switch (dbStatus) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                return -1;
        }
    }

    private static boolean needPersisit(RequestCloudItem item) {
        int priority = item.priority;
        for (int p : DOWNLOAD_FILE_PRIORITY) {
            if (p == priority) {
                return true;
            }
        }
        return false;
    }

    private static void toDatabase(DBImage dbCloud, int newStatus) {
        String where = "_id=?";
        if (newStatus == 1) {
            ContentValues updateTimeValues = new ContentValues();
            updateTimeValues.put("downloadFileTime", Long.valueOf(System.currentTimeMillis()));
            GalleryUtils.safeUpdate(dbCloud.getBaseUri(), updateTimeValues, String.format(Locale.US, "(%s) AND (%s is null OR %s=%d)", new Object[]{"_id=?", "downloadFileStatus", "downloadFileStatus", Integer.valueOf(0)}), new String[]{dbCloud.getId()});
        }
        ContentValues values = new ContentValues();
        values.put("downloadFileStatus", Integer.valueOf(newStatus));
        if (newStatus != 3) {
            values.put("localFile", "");
        }
        GalleryUtils.safeUpdate(dbCloud.getBaseUri(), values, "_id=?", new String[]{dbCloud.getId()});
    }
}
