package com.miui.gallery.picker.uri;

import android.net.Uri;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.uil.CloudImageLoader;
import com.miui.gallery.util.uil.CloudImageLoadingListener;
import com.miui.gallery.util.uil.CloudImageLoadingListenerAdapter;
import java.util.ArrayList;
import java.util.List;

public class Downloader {
    private Callback mCallback = new Callback() {
        public boolean handleMessage(Message msg) {
            Object result = msg.obj;
            Log.d("Downloader", "%s finished", result);
            if (result.mState == State.SUCCESS) {
                Downloader.this.mSuccess.add(result);
            } else {
                Downloader.this.mFails.add(result);
            }
            if (Downloader.this.mDownloadListener != null) {
                Downloader.this.mDownloadListener.onUpdate(Downloader.this.mSuccess, Downloader.this.mFails);
            }
            Downloader.this.checkFinished();
            return false;
        }
    };
    private boolean mCancelled;
    private DownloadListener mDownloadListener;
    private List<DownloadTask> mDownloadTasks;
    private List<DownloadResult> mFails;
    private Handler mHandler = new Handler(Looper.getMainLooper(), this.mCallback);
    private boolean mPaused;
    private List<DownloadResult> mSuccess;

    public interface DownloadListener {
        void onCancelled(List<DownloadResult> list, List<DownloadResult> list2);

        void onEnd(List<DownloadResult> list, List<DownloadResult> list2);

        void onStart(List<DownloadTask> list);

        void onUpdate(List<DownloadResult> list, List<DownloadResult> list2);
    }

    public static class DownloadResult {
        public String mPath;
        public State mState;
        public DownloadTask mTask;

        public enum State {
            PENDING,
            SUCCESS,
            FAILED,
            CANCELLED
        }

        DownloadResult(DownloadTask task, State state, String path) {
            this.mTask = task;
            this.mState = state;
            this.mPath = path;
        }

        public String toString() {
            return "DownloadResult{mTask=" + this.mTask + ", mState=" + this.mState + ", mPath='" + this.mPath + "'" + '}';
        }
    }

    public static class DownloadTask {
        public int mPosition;
        public int mSize;
        public DownloadType mType;
        public Uri mUri;

        public DownloadTask(Uri uri, DownloadType type, int size, int position) {
            this.mUri = uri;
            this.mType = type;
            this.mSize = size;
            this.mPosition = position;
        }

        public String toString() {
            return "DownloadTask{mUri=" + this.mUri + ", mType=" + this.mType + ", mSize=" + this.mSize + ", mPosition =" + this.mPosition + '}';
        }
    }

    public class TaskStateListener extends CloudImageLoadingListenerAdapter {
        private DownloadTask mTask;

        TaskStateListener(DownloadTask task) {
            this.mTask = task;
        }

        public void onDownloadComplete(Uri uri, DownloadType type, View view, String filePath) {
            Downloader.this.mHandler.sendMessage(Downloader.this.mHandler.obtainMessage(1, new DownloadResult(this.mTask, State.SUCCESS, filePath)));
        }

        public void onLoadingFailed(Uri uri, DownloadType type, View view, ErrorCode code) {
            Downloader.this.mHandler.sendMessage(Downloader.this.mHandler.obtainMessage(1, new DownloadResult(this.mTask, State.FAILED, null)));
        }

        public void onLoadingCancelled(Uri uri, DownloadType type, View view) {
            Downloader.this.mHandler.sendMessage(Downloader.this.mHandler.obtainMessage(1, new DownloadResult(this.mTask, State.CANCELLED, null)));
        }
    }

    public Downloader(ArrayList<DownloadTask> tasks, DownloadListener listener) {
        this.mDownloadTasks = (List) tasks.clone();
        this.mDownloadListener = listener;
        this.mSuccess = new ArrayList();
        this.mFails = new ArrayList();
    }

    public void start() {
        List<Uri> uris = new ArrayList(this.mDownloadTasks.size());
        List<DownloadType> types = new ArrayList(this.mDownloadTasks.size());
        List<CloudImageLoadingListener> listeners = new ArrayList(this.mDownloadTasks.size());
        for (DownloadTask task : this.mDownloadTasks) {
            uris.add(task.mUri);
            types.add(task.mType);
            listeners.add(new TaskStateListener(task));
        }
        if (this.mDownloadListener != null) {
            this.mDownloadListener.onStart(this.mDownloadTasks);
        }
        CloudImageLoader.getInstance().loadImages(uris, types, listeners, null);
    }

    public int getRemainSize() {
        return this.mDownloadTasks.size() - this.mSuccess.size();
    }

    public void cancel() {
        this.mCancelled = true;
        for (Object task : this.mDownloadTasks) {
            boolean finished = false;
            for (DownloadResult result : this.mSuccess) {
                if (result.mTask == task) {
                    finished = true;
                    break;
                }
            }
            for (DownloadResult result2 : this.mFails) {
                if (result2.mTask == task) {
                    finished = true;
                    break;
                }
            }
            if (!finished) {
                Log.d("Downloader", "cancel %s", task);
                CloudImageLoader.getInstance().cancel(task.mUri, task.mType);
            }
        }
    }

    public void pause() {
        Log.d("Downloader", "downloader pause");
        this.mPaused = true;
    }

    public void resume() {
        Log.d("Downloader", "downloader resume");
        this.mPaused = false;
        checkFinished();
    }

    public void destroy() {
        Log.d("Downloader", "downloader destroy");
        this.mDownloadListener = null;
        this.mDownloadTasks.clear();
        this.mSuccess.clear();
        this.mFails.clear();
    }

    private void checkFinished() {
        Log.d("Downloader", "success: %d, failed: %d, total: %d", Integer.valueOf(this.mSuccess.size()), Integer.valueOf(this.mFails.size()), Integer.valueOf(this.mDownloadTasks.size()));
        if (this.mSuccess.size() + this.mFails.size() >= this.mDownloadTasks.size() && !this.mPaused && this.mDownloadListener != null) {
            if (this.mCancelled) {
                this.mDownloadListener.onCancelled(this.mSuccess, this.mFails);
            } else {
                this.mDownloadListener.onEnd(this.mSuccess, this.mFails);
            }
        }
    }
}
