package com.miui.gallery.picker.uri;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.picker.helper.Picker.ImageType;
import com.miui.gallery.picker.uri.Downloader.DownloadListener;
import com.miui.gallery.picker.uri.Downloader.DownloadResult;
import com.miui.gallery.picker.uri.Downloader.DownloadTask;
import com.miui.gallery.picker.uri.OriginUrlRequestor.OriginInfo;
import com.miui.gallery.picker.uri.OriginUrlRequestor.OriginUrlRequestTask;
import com.miui.gallery.picker.uri.OriginUrlRequestor.ProgressListener;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.uil.CloudUriAdapter;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UriGenerator {
    private static final String[] CHECKED_ITEM_PROJECTION = new String[]{"_id", "sha1", "serverType", "size", "exifImageLength", "exifImageWidth"};
    private WeakReference<Activity> mActivityWeakReference;
    private OnCancelListener mCancelConfirmListener = new OnCancelListener() {
        public void onCancel(DialogInterface dialog) {
            int size = UriGenerator.this.mDownloader == null ? 0 : UriGenerator.this.mDownloader.getRemainSize();
            Activity activity = (Activity) UriGenerator.this.mActivityWeakReference.get();
            if (size > 0 && activity != null) {
                DownloadCancelDialog downloadCancelDialog = new DownloadCancelDialog();
                Bundle bundle = new Bundle();
                bundle.putInt("remaining_count", size);
                downloadCancelDialog.setCancelListener(UriGenerator.this.mCancelDownloadListener);
                downloadCancelDialog.setContinueListener(UriGenerator.this.mContinueDownloadListener);
                downloadCancelDialog.setArguments(bundle);
                downloadCancelDialog.showAllowingStateLoss(activity.getFragmentManager(), "cancel_dialog");
            }
        }
    };
    private OnClickListener mCancelDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (UriGenerator.this.mDownloader != null) {
                UriGenerator.this.mDownloader.cancel();
            }
        }
    };
    private OnCancelListener mCancelOriginInfoListener = new OnCancelListener() {
        public void onCancel(DialogInterface dialog) {
            if (UriGenerator.this.mOriginUrlRequestor != null) {
                UriGenerator.this.mOriginUrlRequestor.cancel();
            }
        }
    };
    private List<CheckedItem> mCheckedItems;
    private OnClickListener mContinueDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            Activity activity = (Activity) UriGenerator.this.mActivityWeakReference.get();
            if (UriGenerator.this.mDownloadProgressDialog != null && activity != null) {
                UriGenerator.this.mDownloadProgressDialog.showAllowingStateLoss(activity.getFragmentManager(), "prepare_progress_dialog");
            }
        }
    };
    private AsyncTask<Void, Void, Void> mDataBaseQueryTask = new AsyncTask<Void, Void, Void>() {
        protected Void doInBackground(Void... params) {
            UriGenerator.this.queryCheckedItems();
            return null;
        }

        protected void onPostExecute(Void nothing) {
            UriGenerator.this.getUrisFromCheckedItems();
        }
    };
    private OnClickListener mDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (NetworkUtils.isNetworkConnected()) {
                UriGenerator.this.startDownload();
                return;
            }
            ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.picker_no_network_message);
            UriGenerator.this.showDownloadConfirmDialog(true);
        }
    };
    private ArrayList<DownloadTask> mDownloadPendings;
    private PrepareProgressDialog mDownloadProgressDialog;
    private Downloader mDownloader;
    private ImageType mImageType;
    private ArrayList<OriginUrlRequestTask> mOriginRequestPendings;
    private PrepareProgressDialog mOriginRequestProgressDialog;
    private OriginUrlRequestor mOriginUrlRequestor;
    private Uri[] mResults;
    private String[] mSha1s;
    private UriGenerateListener mUriGenerateListener;

    private class OriginUrlRequestProgressListener implements ProgressListener {
        private OriginUrlRequestProgressListener() {
        }

        /* synthetic */ OriginUrlRequestProgressListener(UriGenerator x0, AnonymousClass1 x1) {
            this();
        }

        public void onStart(int totalCount) {
            Activity activity = (Activity) UriGenerator.this.mActivityWeakReference.get();
            if (activity != null) {
                UriGenerator.this.mOriginRequestProgressDialog = new PrepareProgressDialog();
                UriGenerator.this.mOriginRequestProgressDialog.setMax(totalCount);
                UriGenerator.this.mOriginRequestProgressDialog.setStage(1);
                UriGenerator.this.mOriginRequestProgressDialog.setCancelListener(UriGenerator.this.mCancelOriginInfoListener);
                UriGenerator.this.mOriginRequestProgressDialog.showAllowingStateLoss(activity.getFragmentManager(), "prepare_progress_dialog");
            }
        }

        public void onEnd(ArrayList<OriginInfo> results, boolean success) {
            finish();
            if (BaseMiscUtil.isValid(results) && success) {
                UriGenerator.this.deliverResult(results);
                return;
            }
            Log.e("UriGenerator", "selected images OriginInfo generate error");
            ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.picker_origin_request_progress_fail);
            UriGenerator.this.mUriGenerateListener.onFail();
        }

        public void onUpdate(int progress) {
            if (UriGenerator.this.mOriginRequestProgressDialog != null) {
                UriGenerator.this.mOriginRequestProgressDialog.updateProgress(progress);
            }
        }

        public void onCancelled() {
            finish();
        }

        private void finish() {
            if (UriGenerator.this.mOriginRequestProgressDialog != null) {
                Dialog dialog = UriGenerator.this.mOriginRequestProgressDialog.getDialog();
                if (dialog != null && dialog.isShowing()) {
                    UriGenerator.this.mOriginRequestProgressDialog.dismissAllowingStateLoss();
                }
                UriGenerator.this.mOriginRequestProgressDialog = null;
            }
            if (UriGenerator.this.mOriginRequestPendings != null) {
                UriGenerator.this.mOriginRequestPendings.clear();
            }
            if (UriGenerator.this.mOriginUrlRequestor != null) {
                UriGenerator.this.mOriginUrlRequestor.destroy();
                UriGenerator.this.mOriginUrlRequestor = null;
            }
        }
    }

    public interface UriGenerateListener {
        void onFail();

        void onSuccess(Uri[] uriArr, List<OriginInfo> list);
    }

    private void queryCheckedItems() {
        if (BaseMiscUtil.isValid(this.mCheckedItems)) {
            final LongSparseArray<CheckedItem> checkedItemMap = new LongSparseArray();
            StringBuilder pickResults = new StringBuilder();
            for (int i = 0; i < this.mCheckedItems.size(); i++) {
                CheckedItem checkedItem = (CheckedItem) this.mCheckedItems.get(i);
                checkedItemMap.put(checkedItem.getId(), checkedItem);
                if (i != 0) {
                    pickResults.append(",");
                }
                pickResults.append(checkedItem.getId());
            }
            Context activity = (Activity) this.mActivityWeakReference.get();
            if (activity != null) {
                String str = null;
                SafeDBUtil.safeQuery(activity, UriUtil.appendGroupBy(Media.URI_PICKER, "sha1", null), CHECKED_ITEM_PROJECTION, String.format("_id IN (%s) AND (localGroupId!=-1000) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new Object[]{pickResults.toString()}), null, str, new QueryHandler<Void>() {
                    public Void handle(Cursor cursor) {
                        if (cursor != null) {
                            while (cursor.moveToNext()) {
                                CheckedItem item = (CheckedItem) checkedItemMap.get(cursor.getLong(0));
                                if (item != null) {
                                    item.setServerType(cursor.getInt(2));
                                    item.setSize(cursor.getLong(3));
                                    item.setWidth(cursor.getInt(5));
                                    item.setHeight(cursor.getInt(4));
                                }
                            }
                        }
                        return null;
                    }
                });
            }
        }
    }

    public UriGenerator(Activity activity, List<CheckedItem> checkedItems, ImageType imageType, UriGenerateListener uriGenerateListener) {
        this.mActivityWeakReference = new WeakReference(activity);
        this.mCheckedItems = checkedItems;
        this.mImageType = imageType;
        this.mUriGenerateListener = uriGenerateListener;
    }

    public void generate() {
        Activity activity = (Activity) this.mActivityWeakReference.get();
        if (activity == null || activity.isDestroyed() || !BaseMiscUtil.isValid(this.mCheckedItems) || this.mImageType == null || this.mUriGenerateListener == null) {
            if (this.mUriGenerateListener != null) {
                this.mUriGenerateListener.onFail();
            }
        } else if (this.mImageType == ImageType.ORIGIN || this.mImageType == ImageType.ORIGIN_OR_DOWNLOAD_INFO) {
            this.mDataBaseQueryTask.execute(new Void[0]);
        } else {
            getUrisFromCheckedItems();
        }
    }

    private void getUrisFromCheckedItems() {
        this.mResults = new Uri[this.mCheckedItems.size()];
        this.mSha1s = new String[this.mCheckedItems.size()];
        this.mDownloadPendings = new ArrayList();
        this.mOriginRequestPendings = new ArrayList();
        for (int i = 0; i < this.mCheckedItems.size(); i++) {
            File file;
            CheckedItem checkedItem = (CheckedItem) this.mCheckedItems.get(i);
            this.mSha1s[i] = checkedItem.getSha1();
            String path = checkedItem.getOriginFile();
            if (!TextUtils.isEmpty(path)) {
                file = new File(path);
                if (file.exists()) {
                    this.mResults[i] = Uri.fromFile(file);
                }
            }
            if (this.mImageType == ImageType.ORIGIN) {
                DownloadType downloadType;
                if (NetworkUtils.isActiveNetworkMetered()) {
                    downloadType = DownloadType.ORIGIN_FORCE;
                } else {
                    downloadType = DownloadType.ORIGIN;
                }
                this.mDownloadPendings.add(new DownloadTask(CloudUriAdapter.getDownloadUri(checkedItem.getId()), downloadType, (int) checkedItem.getSize(), i));
            } else {
                if (this.mImageType == ImageType.ORIGIN_OR_DOWNLOAD_INFO) {
                    this.mOriginRequestPendings.add(new OriginUrlRequestTask(i, CloudUriAdapter.getDownloadUri(checkedItem.getId()), checkedItem.getHeight(), checkedItem.getWidth(), checkedItem.getServerType()));
                }
                String thumbPath = checkedItem.getThumbnailFile();
                if (!TextUtils.isEmpty(thumbPath)) {
                    file = new File(thumbPath);
                    if (file.exists()) {
                        this.mResults[i] = Uri.fromFile(file);
                    }
                }
                this.mDownloadPendings.add(new DownloadTask(CloudUriAdapter.getDownloadUri(checkedItem.getId()), DownloadType.THUMBNAIL, 0, i));
            }
        }
        Log.d("UriGenerator", "picked file: %d, pending: %d", Integer.valueOf(this.mResults.length), Integer.valueOf(this.mDownloadPendings.size()));
        Activity activity = (Activity) this.mActivityWeakReference.get();
        if (this.mDownloadPendings.isEmpty()) {
            deliverResult(null);
        } else if (!SyncUtil.existXiaomiAccount(activity)) {
            ToastUtils.makeText(GalleryApp.sGetAndroidContext(), GalleryApp.sGetAndroidContext().getResources().getQuantityString(R.plurals.picker_skip_unavailable_images, this.mDownloadPendings.size(), new Object[]{Integer.valueOf(this.mDownloadPendings.size())}));
            if (this.mResults.length == 0) {
                this.mUriGenerateListener.onFail();
            } else {
                deliverResult(null);
            }
        } else if (NetworkUtils.isActiveNetworkMetered()) {
            showDownloadConfirmDialog(false);
        } else if (NetworkUtils.isNetworkConnected()) {
            CharSequence text;
            if (this.mResults.length == 0) {
                text = GalleryApp.sGetAndroidContext().getResources().getQuantityString(R.plurals.picker_all_image_will_download, this.mDownloadPendings.size());
            } else {
                text = GalleryApp.sGetAndroidContext().getResources().getString(R.string.picker_image_will_download, new Object[]{Integer.valueOf(this.mDownloadPendings.size())});
            }
            ToastUtils.makeText(GalleryApp.sGetAndroidContext(), text);
            startDownload();
        } else {
            showDownloadConfirmDialog(true);
        }
    }

    private void deliverResult(List<OriginInfo> results) {
        if (this.mResults.length == 0) {
            this.mUriGenerateListener.onFail();
        } else if (this.mImageType != ImageType.ORIGIN_OR_DOWNLOAD_INFO || BaseMiscUtil.isValid(results)) {
            this.mUriGenerateListener.onSuccess(this.mResults, results);
        } else {
            this.mOriginUrlRequestor = new OriginUrlRequestor(this.mOriginRequestPendings, new OriginUrlRequestProgressListener(this, null));
            this.mOriginUrlRequestor.start(this.mResults, this.mSha1s);
        }
    }

    private void showDownloadConfirmDialog(boolean retry) {
        Activity activity = (Activity) this.mActivityWeakReference.get();
        if (activity != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("download_file_count", this.mDownloadPendings.size());
            bundle.putInt("local_file_count", this.mResults.length);
            int size = 0;
            Iterator it = this.mDownloadPendings.iterator();
            while (it.hasNext()) {
                size += ((DownloadTask) it.next()).mSize;
            }
            bundle.putInt("download_file_size", size);
            bundle.putBoolean("retry_mode", retry);
            DownloadConfirmDialog dialog = new DownloadConfirmDialog();
            dialog.setPositiveListener(this.mDownloadListener);
            dialog.setNegativeListener(this.mCancelDownloadListener);
            dialog.setArguments(bundle);
            dialog.showAllowingStateLoss(activity.getFragmentManager(), "confirm_dialog");
        }
    }

    private void startDownload() {
        if (this.mDownloader != null) {
            this.mDownloader.cancel();
            this.mDownloader.destroy();
        }
        this.mDownloader = new Downloader(this.mDownloadPendings, new DownloadListener() {
            public void onStart(List<DownloadTask> tasks) {
                Log.d("UriGenerator", "download start, %d", Integer.valueOf(tasks.size()));
                Activity activity = (Activity) UriGenerator.this.mActivityWeakReference.get();
                if (activity != null) {
                    UriGenerator.this.mDownloadProgressDialog = new PrepareProgressDialog();
                    UriGenerator.this.mDownloadProgressDialog.setMax(tasks.size());
                    UriGenerator.this.mDownloadProgressDialog.setStage(0);
                    UriGenerator.this.mDownloadProgressDialog.setCancelListener(UriGenerator.this.mCancelConfirmListener);
                    UriGenerator.this.mDownloadProgressDialog.showAllowingStateLoss(activity.getFragmentManager(), "prepare_progress_dialog");
                }
            }

            public void onUpdate(List<DownloadResult> success, List<DownloadResult> fails) {
                UriGenerator.this.mDownloadProgressDialog.updateProgress(success.size() + fails.size());
            }

            public void onEnd(List<DownloadResult> success, List<DownloadResult> fails) {
                Log.d("UriGenerator", "download end, success: %d, fails: %d", Integer.valueOf(success.size()), Integer.valueOf(fails.size()));
                if (UriGenerator.this.mDownloadProgressDialog != null) {
                    Dialog dialog = UriGenerator.this.mDownloadProgressDialog.getDialog();
                    if (dialog != null && dialog.isShowing()) {
                        UriGenerator.this.mDownloadProgressDialog.dismissAllowingStateLoss();
                    }
                    Activity activity = (Activity) UriGenerator.this.mActivityWeakReference.get();
                    if (activity != null) {
                        Fragment fragment = activity.getFragmentManager().findFragmentByTag("cancel_dialog");
                        if (fragment != null && (fragment instanceof DownloadCancelDialog)) {
                            ((DownloadCancelDialog) fragment).dismiss();
                        }
                    }
                    UriGenerator.this.mDownloadProgressDialog = null;
                }
                parseDownloadResult(success, fails);
                if (fails.isEmpty()) {
                    UriGenerator.this.deliverResult(null);
                } else {
                    UriGenerator.this.showDownloadConfirmDialog(true);
                }
                UriGenerator.this.mDownloader.destroy();
                UriGenerator.this.mDownloader = null;
            }

            public void onCancelled(List<DownloadResult> success, List<DownloadResult> fails) {
                Log.d("UriGenerator", "download cancelled, success: %d, fails: %d", Integer.valueOf(success.size()), Integer.valueOf(fails.size()));
                if (UriGenerator.this.mDownloadProgressDialog != null) {
                    Dialog dialog = UriGenerator.this.mDownloadProgressDialog.getDialog();
                    if (dialog != null && dialog.isShowing()) {
                        UriGenerator.this.mDownloadProgressDialog.dismissAllowingStateLoss();
                    }
                    UriGenerator.this.mDownloadProgressDialog = null;
                }
                parseDownloadResult(success, fails);
                UriGenerator.this.mDownloader.destroy();
                UriGenerator.this.mDownloader = null;
            }

            private void parseDownloadResult(List<DownloadResult> success, List<DownloadResult> fails) {
                for (DownloadResult result : success) {
                    if (!(result == null || TextUtils.isEmpty(result.mPath))) {
                        File file = new File(result.mPath);
                        if (file.exists()) {
                            UriGenerator.this.mResults[result.mTask.mPosition] = Uri.fromFile(file);
                        }
                    }
                    fails.add(result);
                }
                UriGenerator.this.mDownloadPendings.clear();
                for (DownloadResult result2 : fails) {
                    UriGenerator.this.mDownloadPendings.add(result2.mTask);
                }
            }
        });
        this.mDownloader.start();
    }
}
