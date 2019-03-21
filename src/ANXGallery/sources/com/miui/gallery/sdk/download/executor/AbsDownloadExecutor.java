package com.miui.gallery.sdk.download.executor;

import android.accounts.Account;
import android.net.Uri;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.sdk.download.assist.DownloadFailReason;
import com.miui.gallery.sdk.download.assist.DownloadItem;
import com.miui.gallery.sdk.download.assist.DownloadItem.Builder;
import com.miui.gallery.sdk.download.assist.DownloadedItem;
import com.miui.gallery.sdk.download.downloader.IDownloader;
import com.miui.gallery.sdk.download.listener.DownloadListener;
import com.miui.gallery.sdk.download.listener.DownloadProgressListener;
import com.miui.gallery.sdk.download.util.DownloadUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public abstract class AbsDownloadExecutor {
    protected DownloadListenerController mListenerController = new DownloadListenerController();
    protected DownloadCommandQueue mQueue;

    private static class DownloadListenerController {
        private final DownloadListener mDownloadListener;
        private final HashMap<String, HashSet<DownloadListener>> mDownloadListeners;
        private final DownloadProgressListener mProgressListener;
        private final HashMap<String, HashSet<DownloadProgressListener>> mProgressListeners;

        private interface Caller<P> {
            void call(P p);
        }

        private DownloadListenerController() {
            this.mDownloadListeners = new HashMap();
            this.mProgressListeners = new HashMap();
            this.mDownloadListener = new DownloadListener() {
                public void onDownloadStarted(Uri uri, DownloadType type) {
                    DownloadListenerController.this.callStarted(uri, type);
                }

                public void onDownloadSuccess(Uri uri, DownloadType type, DownloadedItem item) {
                    DownloadListenerController.this.callSuccess(uri, type, item);
                }

                public void onDownloadFail(Uri uri, DownloadType type, DownloadFailReason reason) {
                    DownloadListenerController.this.callFail(uri, type, reason);
                }

                public void onDownloadCancel(Uri uri, DownloadType type) {
                    DownloadListenerController.this.callCancel(uri, type);
                }
            };
            this.mProgressListener = new DownloadProgressListener() {
                public void onDownloadProgress(Uri uri, DownloadType type, long curSize, long totalSize) {
                    DownloadListenerController.this.callProgress(uri, type, curSize, totalSize);
                }
            };
        }

        private <E> LinkedList<E> getListeners(HashMap<String, HashSet<E>> container, String key) {
            LinkedList<E> list = new LinkedList();
            HashSet<E> set = (HashSet) container.get(key);
            if (set != null) {
                Iterator<E> iterator = set.iterator();
                while (iterator.hasNext()) {
                    list.add(iterator.next());
                }
            }
            return list;
        }

        private <E> void dispatchListener(LinkedList<E> listeners, Caller<E> caller) {
            if (listeners != null) {
                Iterator it = listeners.iterator();
                while (it.hasNext()) {
                    E listener = it.next();
                    if (listener != null) {
                        caller.call(listener);
                    }
                }
            }
        }

        private LinkedList<DownloadListener> getDownloadListeners(String key, boolean clean) {
            LinkedList<DownloadListener> listeners;
            synchronized (this.mDownloadListeners) {
                listeners = getListeners(this.mDownloadListeners, key);
                if (clean) {
                    this.mDownloadListeners.remove(key);
                }
            }
            if (clean) {
                synchronized (this.mProgressListeners) {
                    this.mProgressListeners.remove(key);
                }
            }
            return listeners;
        }

        private LinkedList<DownloadProgressListener> getProgressListeners(String key) {
            LinkedList<DownloadProgressListener> listeners;
            synchronized (this.mProgressListeners) {
                listeners = getListeners(this.mProgressListeners, key);
            }
            return listeners;
        }

        private void callStarted(final Uri uri, final DownloadType type) {
            dispatchListener(getDownloadListeners(DownloadUtil.generateKey(uri, type), false), new Caller<DownloadListener>() {
                public void call(DownloadListener params) {
                    params.onDownloadStarted(uri, type);
                }
            });
        }

        private void callSuccess(final Uri uri, final DownloadType type, final DownloadedItem item) {
            dispatchListener(getDownloadListeners(DownloadUtil.generateKey(uri, type), true), new Caller<DownloadListener>() {
                public void call(DownloadListener params) {
                    params.onDownloadSuccess(uri, type, item);
                }
            });
        }

        private void callFail(final Uri uri, final DownloadType type, final DownloadFailReason reason) {
            dispatchListener(getDownloadListeners(DownloadUtil.generateKey(uri, type), true), new Caller<DownloadListener>() {
                public void call(DownloadListener params) {
                    params.onDownloadFail(uri, type, reason);
                }
            });
        }

        private void callCancel(final Uri uri, final DownloadType type) {
            dispatchListener(getDownloadListeners(DownloadUtil.generateKey(uri, type), true), new Caller<DownloadListener>() {
                public void call(DownloadListener params) {
                    params.onDownloadCancel(uri, type);
                }
            });
        }

        private void callProgress(Uri uri, DownloadType type, long curSize, long totalSize) {
            final Uri uri2 = uri;
            final DownloadType downloadType = type;
            final long j = curSize;
            final long j2 = totalSize;
            dispatchListener(getProgressListeners(DownloadUtil.generateKey(uri, type)), new Caller<DownloadProgressListener>() {
                public void call(DownloadProgressListener params) {
                    params.onDownloadProgress(uri2, downloadType, j, j2);
                }
            });
        }

        public DownloadListener getDownloadListener() {
            return this.mDownloadListener;
        }

        public DownloadProgressListener getDownloadProgressListener() {
            return this.mProgressListener;
        }

        private <E> boolean putItem(HashMap<String, HashSet<E>> container, String key, E listener) {
            HashSet<E> set = (HashSet) container.get(key);
            if (set == null) {
                set = new HashSet();
                container.put(key, set);
            }
            return set.add(listener);
        }

        public boolean putItem(DownloadItem item) {
            boolean result = false;
            if (item != null) {
                String key = DownloadUtil.generateKey(item.getUri(), item.getType());
                if (item.getDownloadListener() != null) {
                    synchronized (this.mDownloadListeners) {
                        result = false | putItem(this.mDownloadListeners, key, item.getDownloadListener());
                    }
                }
                if (item.getProgressListener() != null) {
                    synchronized (this.mProgressListeners) {
                        result |= putItem(this.mProgressListeners, key, item.getProgressListener());
                    }
                }
            }
            return result;
        }
    }

    protected abstract void dispatch();

    protected abstract String getTag();

    public abstract void interrupt();

    public AbsDownloadExecutor(int batchSize, int maxQueueSize) {
        this.mQueue = new DownloadCommandQueue(batchSize, maxQueueSize, getTag());
    }

    private DownloadItem repackageItem(DownloadItem item) {
        return new Builder().cloneFrom(item).setDownloadListener(this.mListenerController.getDownloadListener()).setProgressListener(this.mListenerController.getDownloadProgressListener()).build();
    }

    public void download(DownloadItem item, boolean atFirst, boolean interruptExecuting) {
        Account account = AccountCache.getAccount();
        if (account == null) {
            Log.e(getTag(), "invoke: no account");
            DownloadItem.callbackError(item, new DownloadFailReason(ErrorCode.NO_ACCOUNT, "no account", null));
        } else if (item == null || item.getKey() == null) {
            Log.e(getTag(), "invoke: invalid download item");
            DownloadItem.callbackError(item, new DownloadFailReason(ErrorCode.PARAMS_ERROR, "key is null", null));
        } else {
            if (this.mListenerController.putItem(item)) {
                DownloadItem.callbackStarted(item);
            }
            boolean needDispatch = false;
            DownloadCommand command = new DownloadCommand(account, repackageItem(item));
            if (interruptExecuting) {
                int status = this.mQueue.contains(command.getKey());
                if (status != 1) {
                    interrupt();
                    if (status == 0) {
                        this.mQueue.remove(command.getKey());
                    }
                    needDispatch = this.mQueue.getPendingSize() > 0;
                } else {
                    return;
                }
            }
            if (this.mQueue.put(command, atFirst) > 0) {
                needDispatch = true;
            }
            if (needDispatch) {
                dispatch();
            }
        }
    }

    public boolean cancel(DownloadItem item) {
        return this.mQueue.cancel(item.getKey()) != -1;
    }

    public void cancelAll() {
        this.mQueue.cancelAll();
    }

    public boolean contains(DownloadItem item) {
        return this.mQueue.contains(item.getKey()) != -1;
    }

    protected static Map<IDownloader, List<DownloadCommand>> classifyCommand(List<DownloadCommand> list) {
        if (!BaseMiscUtil.isValid(list)) {
            return null;
        }
        Map<IDownloader, List<DownloadCommand>> hashMap = new HashMap();
        for (DownloadCommand command : list) {
            IDownloader downloader = command.getItem().getDownloader();
            if (downloader != null) {
                List<DownloadCommand> childList = (List) hashMap.get(downloader);
                if (childList == null) {
                    childList = new LinkedList();
                    hashMap.put(downloader, childList);
                }
                childList.add(command);
            }
        }
        return hashMap;
    }
}
