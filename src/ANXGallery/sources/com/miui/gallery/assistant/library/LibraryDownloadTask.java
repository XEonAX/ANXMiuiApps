package com.miui.gallery.assistant.library;

import android.annotation.SuppressLint;
import com.miui.gallery.assistant.library.Library.LibraryStatus;
import com.miui.gallery.assistant.library.LibraryManager.DownloadListener;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.pendingtask.base.PendingTask;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.xiaomi.micloudsdk.request.utils.CloudUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class LibraryDownloadTask extends PendingTask<JSONObject> {
    @SuppressLint({"UseSparseArrays"})
    private final Map<Long, Future> mDownloadFutures = Collections.synchronizedMap(new HashMap());
    private final DownloadListener mDownloadListener = new DownloadListener() {
        public void onDownloadResult(long libraryId, int resultCode) {
            LibraryDownloadTask.this.mDownloadFutures.remove(Long.valueOf(libraryId));
            if (resultCode == 0 && LibraryDownloadTask.this.mDownloadFutures.size() == 0) {
                Log.d("LibraryDownloadTask", "LibraryDownloadTask download success!");
                PendingTaskManager.getInstance().postTask(LibraryDownloadTask.this.mOriginalType, LibraryDownloadTask.this.mOriginalData);
                if (LibraryManager.getInstance().isLibrarysExist(LibraryConstants.sStoryLibraries) && CloudUtils.getXiaomiAccount() == null) {
                    CardManager.getInstance().triggerGuaranteeScenarios(false);
                }
            }
        }
    };
    private JSONObject mOriginalData;
    private int mOriginalType;

    public LibraryDownloadTask(int type) {
        super(type);
    }

    public JSONObject parseData(byte[] data) throws Exception {
        return new JSONObject(new String(data, "utf-8"));
    }

    public byte[] wrapData(JSONObject data) throws Exception {
        return data.toString().getBytes("utf-8");
    }

    public int getNetworkType() {
        return 1;
    }

    public boolean requireCharging() {
        return false;
    }

    public boolean requireDeviceIdle() {
        return false;
    }

    public boolean process(JSONObject data) throws Exception {
        if (data != null) {
            try {
                this.mOriginalType = data.getInt("originalType");
                this.mOriginalData = data.getJSONObject("originalData");
                long[] libraryIds = (long[]) GsonUtils.fromJson(data.getString("libraryIds"), long[].class);
                if (libraryIds != null && libraryIds.length > 0) {
                    for (long libraryId : libraryIds) {
                        Library library = LibraryManager.getInstance().getLibrarySync(libraryId);
                        if (library != null && library.getLibraryStatus() == LibraryStatus.STATE_NOT_DOWNLOADED) {
                            this.mDownloadFutures.put(Long.valueOf(libraryId), LibraryManager.getInstance().downloadLibrary(library, false, this.mDownloadListener));
                        }
                    }
                }
            } catch (Throwable e) {
                Log.e("LibraryDownloadTask", e);
            }
        }
        return false;
    }
}
