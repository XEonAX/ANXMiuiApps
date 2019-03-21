package com.miui.gallery.util;

import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.ui.DownloadFragment;
import com.miui.gallery.ui.DownloadFragment.OnDownloadListener;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadItem;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.uil.CloudUriAdapter;
import java.util.ArrayList;
import java.util.List;

public class CheckDownloadOriginHelper {
    private long mAlbumId;
    private Context mContext;
    private FragmentManager mFragmentManger;
    private CheckDownloadOriginListener mListener;
    private long[] mMediaIds;

    public interface CheckDownloadOriginListener {
        void onCanceled();

        void onComplete();

        void onStartDownload();
    }

    class CheckOriginTask extends AsyncTask<Void, Void, List<MediaItem>> {
        private final String[] PROJECTION = new String[]{"_id", "size", "localFile"};
        private Context mContext;

        public CheckOriginTask(Context context) {
            this.mContext = context;
        }

        protected List<MediaItem> doInBackground(Void... params) {
            List<MediaItem> downloadItems = null;
            if (isLocalAlbum()) {
                List<MediaItem> mediaItems = queryMediaItemByIds();
                if (BaseMiscUtil.isValid(mediaItems)) {
                    downloadItems = null;
                    for (MediaItem item : mediaItems) {
                        if (!FileUtils.isFileExist(item.mPath)) {
                            if (downloadItems == null) {
                                downloadItems = new ArrayList();
                            }
                            downloadItems.add(item);
                        }
                    }
                }
            } else {
                Log.d("CheckDownloadOriginHelper", "album is not local");
            }
            return downloadItems;
        }

        protected void onPostExecute(List<MediaItem> list) {
            if (BaseMiscUtil.isValid(list)) {
                if (CheckDownloadOriginHelper.this.mListener != null) {
                    CheckDownloadOriginHelper.this.mListener.onStartDownload();
                }
                CheckDownloadOriginHelper.this.doDownloadOrigin(list, false);
                return;
            }
            Log.d("CheckDownloadOriginHelper", "no item to download");
            if (CheckDownloadOriginHelper.this.mListener != null) {
                CheckDownloadOriginHelper.this.mListener.onComplete();
            }
        }

        private boolean isLocalAlbum() {
            Integer count = (Integer) SafeDBUtil.safeQuery(this.mContext, Cloud.CLOUD_URI, new String[0], "_id = ? AND attributes&1 =0 ", new String[]{String.valueOf(CheckDownloadOriginHelper.this.mAlbumId)}, null, new QueryHandler<Integer>() {
                public Integer handle(Cursor cursor) {
                    return Integer.valueOf(cursor == null ? 0 : cursor.getCount());
                }
            });
            return count != null && count.intValue() > 0;
        }

        private List<MediaItem> queryMediaItemByIds() {
            return (List) SafeDBUtil.safeQuery(this.mContext, Media.URI, this.PROJECTION, "_id IN (" + TextUtils.join(",", MiscUtil.arrayToList(CheckDownloadOriginHelper.this.mMediaIds)) + ") AND " + "localFlag" + "=" + 0, null, null, new QueryHandler<List<MediaItem>>() {
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
                        item.mSize = cursor.getLong(1);
                        item.mPath = cursor.getString(2);
                        list.add(item);
                    } while (cursor.moveToNext());
                    return list;
                }
            });
        }
    }

    private static class MediaItem {
        public long mId;
        public String mPath;
        public long mSize;

        private MediaItem() {
        }

        /* synthetic */ MediaItem(AnonymousClass1 x0) {
            this();
        }
    }

    public CheckDownloadOriginHelper(Context context, FragmentManager fragmentManager, long albumId, long[] mediaIds) {
        this.mContext = context;
        this.mFragmentManger = fragmentManager;
        this.mAlbumId = albumId;
        this.mMediaIds = mediaIds;
    }

    public void start() {
        Log.d("CheckDownloadOriginHelper", "doCheckOrigin");
        new CheckOriginTask(this.mContext).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void setListener(CheckDownloadOriginListener listener) {
        this.mListener = listener;
    }

    private void doDownloadOrigin(final List<MediaItem> list, boolean ignoreNetwork) {
        Log.d("CheckDownloadOriginHelper", "doDownloadOrigin %s", Integer.valueOf(list == null ? 0 : list.size()));
        if (!NetworkUtils.isActiveNetworkMetered() || ignoreNetwork) {
            ArrayList<BulkDownloadItem> downloadItems = new ArrayList();
            for (MediaItem item : list) {
                downloadItems.add(new BulkDownloadItem(CloudUriAdapter.getDownloadUri(item.mId), DownloadType.ORIGIN_FORCE, item.mSize));
            }
            startDownloadOrigin(downloadItems);
            return;
        }
        DialogUtil.showInfoDialog(this.mContext, false, this.mContext.getString(R.string.download_with_metered_network_msg), this.mContext.getString(R.string.download_with_metered_network_title), 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialogI, int which) {
                CheckDownloadOriginHelper.this.doDownloadOrigin(list, true);
            }
        }, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                if (CheckDownloadOriginHelper.this.mListener != null) {
                    CheckDownloadOriginHelper.this.mListener.onCanceled();
                }
            }
        });
    }

    private void startDownloadOrigin(ArrayList<BulkDownloadItem> downloadItems) {
        Log.d("CheckDownloadOriginHelper", "startDownloadOrigin %s", Integer.valueOf(downloadItems == null ? 0 : downloadItems.size()));
        OnDownloadListener onDownloadListener = new OnDownloadListener() {
            public void onDownloadComplete(List<BulkDownloadItem> list, List<BulkDownloadItem> fails) {
                Log.d("CheckDownloadOriginHelper", "onDownloadComplete fails: %s", Integer.valueOf(fails == null ? 0 : fails.size()));
                if (fails != null && !fails.isEmpty()) {
                    final ArrayList<BulkDownloadItem> failedItems = new ArrayList(fails);
                    DialogUtil.showInfoDialog(CheckDownloadOriginHelper.this.mContext, false, CheckDownloadOriginHelper.this.mContext.getString(R.string.download_retry_message), CheckDownloadOriginHelper.this.mContext.getString(R.string.download_retry_title), (int) R.string.download_retry_text, 17039360, new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            CheckDownloadOriginHelper.this.startDownloadOrigin(failedItems);
                        }
                    }, new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            if (CheckDownloadOriginHelper.this.mListener != null) {
                                CheckDownloadOriginHelper.this.mListener.onCanceled();
                            }
                        }
                    });
                } else if (CheckDownloadOriginHelper.this.mListener != null) {
                    CheckDownloadOriginHelper.this.mListener.onComplete();
                }
            }

            public void onCanceled() {
                Log.d("CheckDownloadOriginHelper", "download canceled");
                if (CheckDownloadOriginHelper.this.mListener != null) {
                    CheckDownloadOriginHelper.this.mListener.onCanceled();
                }
            }
        };
        DownloadFragment downloadFragment = DownloadFragment.newInstance(downloadItems);
        downloadFragment.setOnDownloadListener(onDownloadListener);
        downloadFragment.showAllowingStateLoss(this.mFragmentManger, "DownloadFragment");
    }
}
