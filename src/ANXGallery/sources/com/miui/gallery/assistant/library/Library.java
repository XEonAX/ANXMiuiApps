package com.miui.gallery.assistant.library;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.TableColumn;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import java.io.File;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONException;

public class Library extends Entity {
    private long mLibraryId;
    @SerializedName("galleryResourceInfoList")
    private ArrayList<LibraryItem> mLibraryItems;
    private LibraryStatus mLibraryStatus = LibraryStatus.STATE_DEFAULT;
    private long mRefreshTime;

    public enum LibraryStatus {
        STATE_DEFAULT,
        STATE_NO_LIBRARY_INFO,
        STATE_NOT_DOWNLOADED,
        STATE_DOWNLOADING,
        STATE_ABI_UNAVAILABLE,
        STATE_AVAILABLE,
        STATE_LOADED
    }

    boolean isOverDue() {
        return System.currentTimeMillis() > this.mRefreshTime + 604800000;
    }

    public void setLibraryStatus(LibraryStatus status) {
        this.mLibraryStatus = status;
    }

    public LibraryStatus getLibraryStatus() {
        return this.mLibraryStatus;
    }

    public synchronized boolean load() {
        if (BaseMiscUtil.isValid(this.mLibraryItems)) {
            ensureLibraryDependency();
            Iterator it = this.mLibraryItems.iterator();
            while (it.hasNext()) {
                LibraryItem libraryItem = (LibraryItem) it.next();
                if (!libraryItem.isLoaded() && libraryItem.isTypeSo()) {
                    if (libraryItem.isLocal()) {
                        try {
                            System.loadLibrary(libraryItem.getName());
                            libraryItem.setLoaded(true);
                        } catch (Exception e) {
                            Log.e("Library", "Load internal local library %d error", Long.valueOf(libraryItem.getId()));
                        }
                    } else {
                        File destFile = new File(libraryItem.getTargetPath(GalleryApp.sGetAndroidContext()));
                        if (destFile.exists()) {
                            if (loadInternal(destFile.getAbsolutePath())) {
                                Log.d("Library", "Library loaded success:" + destFile);
                                libraryItem.setLoaded(true);
                            } else {
                                Log.d("Library", "Library load failed:" + destFile);
                            }
                        }
                    }
                }
            }
        }
        return isLoaded();
    }

    private void ensureLibraryDependency() {
        if (BaseMiscUtil.isValid(this.mLibraryItems)) {
            Queue<LibraryItem> libraryItemQueue = new LinkedBlockingQueue(this.mLibraryItems.size());
            List<LibraryItem> parentItems = new LinkedList();
            List<LibraryItem> libraryItems = new LinkedList(this.mLibraryItems);
            Iterator<LibraryItem> it = libraryItems.iterator();
            while (it.hasNext()) {
                LibraryItem item = (LibraryItem) it.next();
                if (item.getParentId() == -1) {
                    parentItems.add(item);
                    it.remove();
                }
            }
            List<LibraryItem> nextParentItems = new LinkedList();
            while (!parentItems.isEmpty()) {
                nextParentItems.clear();
                libraryItemQueue.addAll(parentItems);
                for (LibraryItem parentItem : parentItems) {
                    it = libraryItems.iterator();
                    while (it.hasNext()) {
                        LibraryItem otherItem = (LibraryItem) it.next();
                        if (otherItem.getParentId() == parentItem.getId()) {
                            nextParentItems.add(otherItem);
                            it.remove();
                        }
                    }
                }
                parentItems.clear();
                parentItems.addAll(nextParentItems);
            }
            synchronized (this) {
                this.mLibraryItems.clear();
                this.mLibraryItems.addAll(libraryItemQueue);
            }
        }
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    private boolean loadInternal(String absolutePath) {
        try {
            System.load(absolutePath);
            return true;
        } catch (Error e) {
            reportAlgorithmLoadError(e);
            return false;
        }
    }

    private void reportAlgorithmLoadError(Throwable throwable) {
        Log.e("Library", throwable);
        Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
        params.put("algorithm", getClass().getSimpleName());
        params.put("error", throwable != null ? throwable.toString() : "");
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_algorithm_error", params);
    }

    public synchronized boolean isLoaded() {
        boolean z = false;
        synchronized (this) {
            if (BaseMiscUtil.isValid(this.mLibraryItems)) {
                Iterator it = this.mLibraryItems.iterator();
                while (it.hasNext()) {
                    LibraryItem lib = (LibraryItem) it.next();
                    if (lib.isTypeSo() && !lib.isLoaded()) {
                        break;
                    }
                }
                z = true;
            }
        }
        return z;
    }

    public synchronized boolean isExist() {
        boolean z = false;
        synchronized (this) {
            if (BaseMiscUtil.isValid(this.mLibraryItems)) {
                Iterator it = this.mLibraryItems.iterator();
                while (it.hasNext()) {
                    if (!((LibraryItem) it.next()).isExist()) {
                        break;
                    }
                }
                z = true;
            }
        }
        return z;
    }

    long getLibraryId() {
        return this.mLibraryId;
    }

    public void setLibraryId(long id) {
        this.mLibraryId = id;
    }

    public List<LibraryItem> getLibraryItems() {
        return this.mLibraryItems;
    }

    void setRefreshTime(long refreshTime) {
        this.mRefreshTime = refreshTime;
    }

    public String toString() {
        return "Library{mLibraryId=" + this.mLibraryId + '}';
    }

    protected List<TableColumn> getTableColumns() {
        ArrayList<TableColumn> columns = new ArrayList();
        Entity.addColumn(columns, "libraryId", "INTEGER");
        Entity.addColumn(columns, "libraryItems", "TEXT");
        Entity.addColumn(columns, "refreshTime", "INTEGER");
        return columns;
    }

    protected void onInitFromCursor(Cursor cursor) {
        this.mLibraryId = Entity.getLong(cursor, "libraryId");
        try {
            this.mLibraryItems = GsonUtils.getArray(Entity.getString(cursor, "libraryItems"), (Type) LibraryItem.class);
        } catch (JSONException e) {
            Log.e("Library", "Create libraryItems of library %d from cursor error", Long.valueOf(this.mLibraryId));
        }
        this.mRefreshTime = Entity.getLong(cursor, "refreshTime");
    }

    protected void onConvertToContents(ContentValues values) {
        values.put("libraryId", Long.valueOf(this.mLibraryId));
        values.put("libraryItems", GsonUtils.toString(this.mLibraryItems));
        values.put("refreshTime", Long.valueOf(this.mRefreshTime));
    }

    protected String[] getUniqueConstraints() {
        return new String[]{"libraryId"};
    }

    public boolean isLibraryItemInfosConsistent() {
        if (!BaseMiscUtil.isValid(this.mLibraryItems)) {
            return false;
        }
        String firstExtraInfo = ((LibraryItem) this.mLibraryItems.get(0)).getExtraInfo();
        Iterator it = this.mLibraryItems.iterator();
        while (it.hasNext()) {
            if (!TextUtils.equals(firstExtraInfo, ((LibraryItem) it.next()).getExtraInfo())) {
                return false;
            }
        }
        return true;
    }
}
