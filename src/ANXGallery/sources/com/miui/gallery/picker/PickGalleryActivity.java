package com.miui.gallery.picker;

import android.app.Dialog;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Video;
import android.text.TextUtils;
import android.util.Pair;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.Picker.ImageType;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.picker.helper.Picker.ResultType;
import com.miui.gallery.picker.uri.DownloadCancelDialog;
import com.miui.gallery.picker.uri.DownloadConfirmDialog;
import com.miui.gallery.picker.uri.Downloader;
import com.miui.gallery.picker.uri.Downloader.DownloadListener;
import com.miui.gallery.picker.uri.Downloader.DownloadResult;
import com.miui.gallery.picker.uri.Downloader.DownloadTask;
import com.miui.gallery.picker.uri.OriginUrlRequestor;
import com.miui.gallery.picker.uri.OriginUrlRequestor.OriginInfo;
import com.miui.gallery.picker.uri.OriginUrlRequestor.OriginUrlRequestTask;
import com.miui.gallery.picker.uri.OriginUrlRequestor.ProgressListener;
import com.miui.gallery.picker.uri.PrepareProgressDialog;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.ImageSelectionTipFragment;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.UriUtil;
import com.miui.gallery.util.uil.CloudUriAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import miui.app.ActionBar.FragmentViewPagerChangeListener;
import miui.util.PlayerActions.Out;
import miui.yellowpage.YellowPageStatistic.Display;

public class PickGalleryActivity extends PickerActivity {
    private OnCancelListener mCancelConfirmListener = new OnCancelListener() {
        public void onCancel(DialogInterface dialog) {
            int size = PickGalleryActivity.this.mDownloader == null ? 0 : PickGalleryActivity.this.mDownloader.getRemainSize();
            if (size > 0) {
                DownloadCancelDialog downloadCancelDialog = new DownloadCancelDialog();
                Bundle bundle = new Bundle();
                bundle.putInt("remaining_count", size);
                downloadCancelDialog.setArguments(bundle);
                downloadCancelDialog.showAllowingStateLoss(PickGalleryActivity.this.getFragmentManager(), "cancel_dialog");
            }
        }
    };
    private OnClickListener mCancelDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (PickGalleryActivity.this.mDownloader != null) {
                PickGalleryActivity.this.mDownloader.cancel();
            }
            if (PickGalleryActivity.this.getPicker() != null && PickGalleryActivity.this.getPicker().getMode() == Mode.SINGLE) {
                PickGalleryActivity.this.getPicker().clear();
            }
        }
    };
    private int mCloseType;
    private OnClickListener mContinueDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (PickGalleryActivity.this.mDownloadProgressDialog != null) {
                PickGalleryActivity.this.mDownloadProgressDialog.showAllowingStateLoss(PickGalleryActivity.this.getFragmentManager(), "prepare_progress_dialog");
            }
        }
    };
    private int mCurrentPagePosition = 0;
    private OnClickListener mDownloadListener = new OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
            if (NetworkUtils.isNetworkConnected()) {
                PickGalleryActivity.this.startDownload();
                return;
            }
            ToastUtils.makeText(PickGalleryActivity.this, (int) R.string.picker_no_network_message);
            PickGalleryActivity.this.showConfirmDialog(true);
        }
    };
    private ArrayList<DownloadTask> mDownloadPendings;
    private PrepareProgressDialog mDownloadProgressDialog;
    private Downloader mDownloader;
    private ArrayList<OriginUrlRequestTask> mOriginRequestPendings;
    private PrepareProgressDialog mOriginRequestProgressDialog;
    private OriginUrlRequestor mOriginUrlRequestor;
    private ParseTask mParseTask;
    private Intent mPickIntent;
    private Uri[] mResults;
    private String[] mSha1s;

    private class DownloadProgressListener implements DownloadListener {
        private DownloadProgressListener() {
        }

        /* synthetic */ DownloadProgressListener(PickGalleryActivity x0, AnonymousClass1 x1) {
            this();
        }

        public void onStart(List<DownloadTask> tasks) {
            Log.d("PickGalleryActivity", "download start, %d", Integer.valueOf(tasks.size()));
            PickGalleryActivity.this.mDownloadProgressDialog = new PrepareProgressDialog();
            PickGalleryActivity.this.mDownloadProgressDialog.setMax(tasks.size());
            PickGalleryActivity.this.mDownloadProgressDialog.setStage(0);
            PickGalleryActivity.this.mDownloadProgressDialog.showAllowingStateLoss(PickGalleryActivity.this.getFragmentManager(), "prepare_progress_dialog");
        }

        public void onUpdate(List<DownloadResult> success, List<DownloadResult> fails) {
            PickGalleryActivity.this.mDownloadProgressDialog.updateProgress(success.size() + fails.size());
        }

        public void onEnd(List<DownloadResult> success, List<DownloadResult> fails) {
            Log.d("PickGalleryActivity", "download end, success: %d, fails: %d", Integer.valueOf(success.size()), Integer.valueOf(fails.size()));
            if (PickGalleryActivity.this.mDownloadProgressDialog != null) {
                Dialog dialog = PickGalleryActivity.this.mDownloadProgressDialog.getDialog();
                if (dialog != null && dialog.isShowing()) {
                    PickGalleryActivity.this.mDownloadProgressDialog.dismissAllowingStateLoss();
                }
                Fragment fragment = PickGalleryActivity.this.getFragmentManager().findFragmentByTag("cancel_dialog");
                if (fragment != null && (fragment instanceof DownloadCancelDialog)) {
                    ((DownloadCancelDialog) fragment).dismiss();
                }
                PickGalleryActivity.this.mDownloadProgressDialog = null;
            }
            parseDownloadResult(success, fails);
            if (fails.isEmpty()) {
                PickGalleryActivity.this.parseResult();
            } else {
                PickGalleryActivity.this.showConfirmDialog(true);
            }
            PickGalleryActivity.this.mDownloader.destroy();
            PickGalleryActivity.this.mDownloader = null;
        }

        public void onCancelled(List<DownloadResult> success, List<DownloadResult> fails) {
            Log.d("PickGalleryActivity", "download cancelled, success: %d, fails: %d", Integer.valueOf(success.size()), Integer.valueOf(fails.size()));
            if (PickGalleryActivity.this.mDownloadProgressDialog != null) {
                Dialog dialog = PickGalleryActivity.this.mDownloadProgressDialog.getDialog();
                if (dialog != null && dialog.isShowing()) {
                    PickGalleryActivity.this.mDownloadProgressDialog.dismissAllowingStateLoss();
                }
                PickGalleryActivity.this.mDownloadProgressDialog = null;
            }
            parseDownloadResult(success, fails);
            PickGalleryActivity.this.mDownloader.destroy();
            PickGalleryActivity.this.mDownloader = null;
        }

        private void parseDownloadResult(List<DownloadResult> success, List<DownloadResult> fails) {
            for (DownloadResult result : success) {
                if (!(result == null || TextUtils.isEmpty(result.mPath))) {
                    File file = new File(result.mPath);
                    if (file.exists()) {
                        PickGalleryActivity.this.mResults[result.mTask.mPosition] = Uri.fromFile(file);
                    }
                }
                fails.add(result);
            }
            PickGalleryActivity.this.mDownloadPendings.clear();
            for (DownloadResult result2 : fails) {
                PickGalleryActivity.this.mDownloadPendings.add(result2.mTask);
            }
        }
    }

    private static class MediaScanJob implements Job<Void> {
        private MediaScanJob() {
        }

        /* synthetic */ MediaScanJob(AnonymousClass1 x0) {
            this();
        }

        public Void run(JobContext jc) {
            Context context = GalleryApp.sGetAndroidContext();
            MediaScannerUtil.scanMediaProvider(context);
            MediaScannerUtil.scanAllAlbumDirectories(context, 5);
            MediaScannerUtil.cleanup(context);
            return null;
        }
    }

    private class OriginUrlRequestProgressListener implements ProgressListener {
        private OriginUrlRequestProgressListener() {
        }

        /* synthetic */ OriginUrlRequestProgressListener(PickGalleryActivity x0, AnonymousClass1 x1) {
            this();
        }

        public void onStart(int totalCount) {
            PickGalleryActivity.this.mOriginRequestProgressDialog = new PrepareProgressDialog();
            PickGalleryActivity.this.mOriginRequestProgressDialog.setMax(totalCount);
            PickGalleryActivity.this.mOriginRequestProgressDialog.setStage(1);
            PickGalleryActivity.this.mOriginRequestProgressDialog.showAllowingStateLoss(PickGalleryActivity.this.getFragmentManager(), "prepare_progress_dialog");
        }

        public void onEnd(ArrayList<OriginInfo> results, boolean success) {
            finish();
            if (success) {
                PickGalleryActivity.this.parseOriginUrlResult(results);
            } else {
                Log.e("PickGalleryActivity", "selected images OriginInfo generate error");
            }
        }

        public void onUpdate(int progress) {
            if (PickGalleryActivity.this.mOriginRequestProgressDialog != null) {
                PickGalleryActivity.this.mOriginRequestProgressDialog.updateProgress(progress);
            }
        }

        public void onCancelled() {
            finish();
        }

        private void finish() {
            if (PickGalleryActivity.this.mOriginRequestProgressDialog != null) {
                Dialog dialog = PickGalleryActivity.this.mOriginRequestProgressDialog.getDialog();
                if (dialog != null && dialog.isShowing()) {
                    PickGalleryActivity.this.mOriginRequestProgressDialog.dismissAllowingStateLoss();
                }
                PickGalleryActivity.this.mOriginRequestProgressDialog = null;
            }
            if (PickGalleryActivity.this.mOriginRequestPendings != null) {
                PickGalleryActivity.this.mOriginRequestPendings.clear();
            }
            if (PickGalleryActivity.this.mOriginUrlRequestor != null) {
                PickGalleryActivity.this.mOriginUrlRequestor.destroy();
                PickGalleryActivity.this.mOriginUrlRequestor = null;
            }
        }
    }

    private class ParseTask extends AsyncTask<Void, Void, Cursor> {
        private String mPickSha1Results;

        ParseTask(Picker picker) {
            this.mPickSha1Results = TextUtils.join("','", picker);
        }

        protected Cursor doInBackground(Void... params) {
            Cursor cursor = PickGalleryActivity.this.getContentResolver().query(UriUtil.appendGroupBy(Media.URI_PICKER, "sha1", null), PickerActivity.PICKABLE_PROJECTION, String.format("sha1 IN ('%s') AND (localGroupId!=-1000) AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))", new Object[]{this.mPickSha1Results}), null, String.format("INSTR(\"'%s'\", sha1)", new Object[]{this.mPickSha1Results}));
            if (cursor != null) {
                cursor.getCount();
            }
            return cursor;
        }

        protected void onPostExecute(Cursor cursor) {
            PickGalleryActivity.this.mParseTask = null;
            if (cursor == null) {
                throw new IllegalStateException("return a null cursor");
            }
            try {
                Log.d("PickGalleryActivity", "Picker capacity: %d, result %d items", Integer.valueOf(PickGalleryActivity.this.getPicker().capacity()), Integer.valueOf(cursor.getCount()));
                if (PickGalleryActivity.this.getPicker().getResultType() == ResultType.ID) {
                    Intent intent = PickGalleryActivity.this.getResultIntent();
                    ArrayList<Long> result = new ArrayList();
                    int bestImageCount = 0;
                    while (cursor.moveToNext()) {
                        long id = cursor.getLong(0);
                        result.add(Long.valueOf(id));
                        if (ImageFeatureCacheManager.getInstance().isBestImage(id, false)) {
                            bestImageCount++;
                        }
                    }
                    PickGalleryActivity.this.statBestImageCount(cursor.getCount(), bestImageCount);
                    intent.putExtra("pick-result-data", result);
                    PickGalleryActivity.this.doCompleteOperation(intent);
                } else {
                    PickGalleryActivity.this.prepareResult(cursor);
                    Log.d("PickGalleryActivity", "picked file: %d, pending: %d", Integer.valueOf(PickGalleryActivity.this.mResults.length), Integer.valueOf(PickGalleryActivity.this.mDownloadPendings.size()));
                    if (PickGalleryActivity.this.mDownloadPendings.isEmpty()) {
                        PickGalleryActivity.this.parseResult();
                    } else if (!SyncUtil.existXiaomiAccount(PickGalleryActivity.this)) {
                        ToastUtils.makeText(PickGalleryActivity.this, PickGalleryActivity.this.getResources().getQuantityString(R.plurals.picker_skip_unavailable_images, PickGalleryActivity.this.mDownloadPendings.size(), new Object[]{Integer.valueOf(PickGalleryActivity.this.mDownloadPendings.size())}));
                        PickGalleryActivity.this.parseResult();
                    } else if (NetworkUtils.isActiveNetworkMetered()) {
                        PickGalleryActivity.this.showConfirmDialog(false);
                    } else if (NetworkUtils.isNetworkConnected()) {
                        CharSequence text;
                        if (PickGalleryActivity.this.mResults.length == 0) {
                            text = PickGalleryActivity.this.getResources().getQuantityString(R.plurals.picker_all_image_will_download, PickGalleryActivity.this.mDownloadPendings.size());
                        } else {
                            text = PickGalleryActivity.this.getResources().getString(R.string.picker_image_will_download, new Object[]{Integer.valueOf(PickGalleryActivity.this.mDownloadPendings.size())});
                        }
                        ToastUtils.makeText(PickGalleryActivity.this, text);
                        PickGalleryActivity.this.startDownload();
                    } else {
                        PickGalleryActivity.this.showConfirmDialog(true);
                    }
                }
                cursor.close();
            } catch (Object e) {
                Log.e("PickGalleryActivity", "Parse failed %s", e);
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.mPicker != null) {
            sendStatistics();
            getActionBar().setFragmentViewPagerMode(this, getFragmentManager());
            setupTabFragments();
            if (!isCrossUserPick()) {
                ThreadManager.getMiscPool().submit(new MediaScanJob());
            }
            if (savedInstanceState != null) {
                Fragment confirmDialog = getFragmentManager().findFragmentByTag("confirm_dialog");
                Fragment progressDialog = getFragmentManager().findFragmentByTag("prepare_progress_dialog");
                Fragment cancelDialog = getFragmentManager().findFragmentByTag("cancel_dialog");
                if (!(confirmDialog == null && progressDialog == null && cancelDialog == null)) {
                    FragmentTransaction transaction = getFragmentManager().beginTransaction();
                    if (confirmDialog != null) {
                        transaction.remove(confirmDialog);
                    }
                    if (progressDialog != null) {
                        transaction.remove(progressDialog);
                    }
                    if (cancelDialog != null) {
                        transaction.remove(cancelDialog);
                    }
                    transaction.commit();
                    getFragmentManager().executePendingTransactions();
                }
            }
            this.mPickIntent = (Intent) getIntent().getParcelableExtra("pick_intent");
            this.mCloseType = getIntent().getIntExtra("pick_close_type", 1);
            ImageSelectionTipFragment.showImageSelectionTipDialogIfNecessary(this);
        }
    }

    private void sendStatistics() {
        String callingPackage = getCallingPackage();
        if (TextUtils.isEmpty(callingPackage)) {
            callingPackage = "unknown";
        }
        BaseSamplingStatHelper.recordStringPropertyEvent("picker", "open_picker", callingPackage);
        BaseSamplingStatHelper.recordNumericPropertyEvent("best_image", "best_image_count", (long) ImageFeatureCacheManager.getInstance().getBestImageCount(false));
    }

    protected void onPause() {
        super.onPause();
        BaseSamplingStatHelper.recordPageEnd(this, getPageName(this.mCurrentPagePosition));
        if (this.mDownloader != null) {
            this.mDownloader.pause();
        }
    }

    protected void onResume() {
        super.onResume();
        BaseSamplingStatHelper.recordPageStart(this, getPageName(this.mCurrentPagePosition));
        if (this.mDownloader != null) {
            this.mDownloader.resume();
        }
    }

    private String getPageName(int position) {
        if (position == 0) {
            return Display.HOME;
        }
        if (position == 1) {
            return Out.KEY_ALBUM;
        }
        return null;
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.mDownloadPendings != null) {
            this.mDownloadPendings.clear();
        }
        if (this.mResults != null) {
            this.mResults = null;
        }
        if (this.mSha1s != null) {
            this.mSha1s = null;
        }
        if (this.mOriginUrlRequestor != null) {
            this.mOriginUrlRequestor.cancel();
        }
        if (this.mOriginRequestPendings != null) {
            this.mOriginRequestPendings.clear();
        }
    }

    protected void onDone() {
        if (this.mParseTask == null) {
            this.mParseTask = new ParseTask(getPicker());
            this.mParseTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            return;
        }
        Log.w("PickGalleryActivity", "parse task is running, skip");
    }

    private void setupTabFragments() {
        this.mActionBar.addFragmentTab("PickHomePageFragment", this.mActionBar.newTab().setText(R.string.home_page_label), PickHomePageFragment.class, null, false);
        this.mActionBar.addFragmentTab("PickAlbumPageFragment", this.mActionBar.newTab().setText(R.string.album_page_label), PickAlbumPageFragment.class, null, false);
        this.mActionBar.addOnFragmentViewPagerChangeListener(new FragmentViewPagerChangeListener() {
            public void onPageScrolled(int position, float ratio, boolean fromHasActionMenu, boolean toHasActionMenu) {
            }

            public void onPageSelected(int position) {
                Log.d("PickGalleryActivity", "onPageSelected %d", Integer.valueOf(position));
                if (PickGalleryActivity.this.mCurrentPagePosition != position) {
                    BaseSamplingStatHelper.recordPageEnd(PickGalleryActivity.this, PickGalleryActivity.this.getPageName(PickGalleryActivity.this.mCurrentPagePosition));
                    BaseSamplingStatHelper.recordPageStart(PickGalleryActivity.this, PickGalleryActivity.this.getPageName(position));
                }
                PickGalleryActivity.this.mCurrentPagePosition = position;
            }

            public void onPageScrollStateChanged(int state) {
            }
        });
    }

    protected boolean hasCustomContentView() {
        return true;
    }

    private void prepareResult(Cursor cursor) {
        int resultCount = cursor.getCount();
        int bestImageCount = 0;
        this.mResults = new Uri[resultCount];
        this.mSha1s = new String[resultCount];
        this.mDownloadPendings = new ArrayList();
        this.mOriginRequestPendings = new ArrayList();
        while (cursor.moveToNext()) {
            File file;
            int position = cursor.getPosition();
            this.mSha1s[position] = cursor.getString(1);
            String path = cursor.getString(4);
            long id = cursor.getLong(0);
            if (ImageFeatureCacheManager.getInstance().isBestImage(id, false)) {
                bestImageCount++;
            }
            if (!TextUtils.isEmpty(path)) {
                file = new File(path);
                if (file.exists()) {
                    this.mResults[position] = Uri.fromFile(file);
                }
            }
            ImageType imageType = getPicker().getImageType();
            if (imageType == ImageType.ORIGIN) {
                DownloadType downloadType;
                if (NetworkUtils.isActiveNetworkMetered()) {
                    downloadType = DownloadType.ORIGIN_FORCE;
                } else {
                    downloadType = DownloadType.ORIGIN;
                }
                this.mDownloadPendings.add(new DownloadTask(CloudUriAdapter.getDownloadUri(id), downloadType, cursor.getInt(6), position));
            } else {
                if (imageType == ImageType.ORIGIN_OR_DOWNLOAD_INFO) {
                    this.mOriginRequestPendings.add(new OriginUrlRequestTask(position, CloudUriAdapter.getDownloadUri(id), cursor.getInt(7), cursor.getInt(8), cursor.getInt(5)));
                }
                path = cursor.getString(3);
                if (!TextUtils.isEmpty(path)) {
                    file = new File(path);
                    if (file.exists()) {
                        this.mResults[position] = Uri.fromFile(file);
                    }
                }
                this.mDownloadPendings.add(new DownloadTask(CloudUriAdapter.getDownloadUri(id), DownloadType.THUMBNAIL, 0, position));
            }
        }
        statBestImageCount(resultCount, bestImageCount);
    }

    private void statBestImageCount(int totalCount, int bestCount) {
        Map map = new HashMap();
        map.put("count", Integer.valueOf(totalCount));
        map.put("best_image_count", Integer.valueOf(bestCount));
        BaseSamplingStatHelper.recordCountEvent("picker", "pick_result", map);
    }

    private void parseResult() {
        if (this.mResults.length == 0) {
            finish();
            return;
        }
        int i;
        ArrayList<Uri> checkedResultUris = new ArrayList();
        ArrayList<String> checkedResultSha1s = new ArrayList();
        for (i = 0; i < this.mResults.length; i++) {
            if (this.mResults[i] != null) {
                checkedResultUris.add(this.mResults[i]);
                checkedResultSha1s.add(this.mSha1s[i]);
            }
        }
        if (this.mResults.length != checkedResultUris.size()) {
            this.mResults = (Uri[]) checkedResultUris.toArray(new Uri[checkedResultUris.size()]);
            this.mSha1s = (String[]) checkedResultSha1s.toArray(new String[checkedResultSha1s.size()]);
            if (this.mResults.length == 0) {
                finish();
                return;
            }
        }
        ResultType type = getPicker().getResultType();
        Log.d("PickGalleryActivity", "parse raw results[%s] for %s", this.mResults, type);
        if (type == ResultType.OPEN_URI) {
            for (i = 0; i < this.mResults.length; i++) {
                this.mResults[i] = GalleryOpenProvider.translateToContent(this.mResults[i].getPath());
            }
        }
        if (getPicker().getImageType() == ImageType.ORIGIN_OR_DOWNLOAD_INFO) {
            this.mOriginUrlRequestor = new OriginUrlRequestor(this.mOriginRequestPendings, new OriginUrlRequestProgressListener(this, null));
            this.mOriginUrlRequestor.start(this.mResults, this.mSha1s);
            return;
        }
        Intent intent = getResultIntent();
        MediaType mediaType = getPicker().getMediaType();
        if (getPicker().getMode() == Mode.MULTIPLE || getPicker().getMode() == Mode.UNLIMITED) {
            ClipData clip;
            if (mediaType == MediaType.IMAGE) {
                clip = new ClipData("data", new String[]{"image/*", "text/uri-list"}, new Item(this.mResults[0]));
            } else if (mediaType == MediaType.ALL) {
                clip = new ClipData("data", new String[]{"image/*", "video/*", "text/uri-list"}, new Item(this.mResults[0]));
            } else {
                clip = new ClipData("data", new String[]{"video/*", "text/uri-list"}, new Item(this.mResults[0]));
            }
            for (i = 1; i < this.mResults.length; i++) {
                clip.addItem(new Item(this.mResults[i]));
            }
            intent.setClipData(clip);
            intent.putExtra("pick-result-data", new ArrayList(Arrays.asList(this.mResults)));
        } else if (type == ResultType.OPEN_URI) {
            Uri uri = this.mResults[0];
            intent.setDataAndType(uri, getContentResolver().getType(uri));
        } else {
            parseSingle(intent, this.mResults[0].getPath());
        }
        intent.setFlags(1);
        doCompleteOperation(intent);
    }

    private void parseOriginUrlResult(ArrayList<OriginInfo> originRequestResults) {
        Intent intent = getResultIntent();
        ArrayList<String> results = new ArrayList();
        for (int i = 0; i < originRequestResults.size(); i++) {
            results.add(((OriginInfo) originRequestResults.get(i)).toJson());
        }
        intent.putExtra("pick-result-origin-download-info", results);
        intent.putExtra("pick-result-data", new ArrayList(Arrays.asList(this.mResults)));
        intent.setFlags(1);
        doCompleteOperation(intent);
    }

    private Intent getResultIntent() {
        return isPickIntentMode() ? this.mPickIntent : new Intent();
    }

    private void doCompleteOperation(Intent intent) {
        if (!isPickIntentMode()) {
            setResult(-1, intent);
            finish();
        } else if (this.mCloseType == 3) {
            startActivityForResult(this.mPickIntent, 42);
        } else if (this.mCloseType == 1) {
            finish();
            startActivity(intent);
        } else {
            startActivity(intent);
        }
    }

    private boolean isPickIntentMode() {
        return this.mPickIntent != null;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 42 && resultCode == -1) {
            finish();
        }
    }

    private void parseSingle(Intent data, String path) {
        if (getPicker().getResultType() == ResultType.LEGACY_MEDIA) {
            Pair<Uri, String> pair = queryMediaUri(path);
            if (pair != null) {
                data.setDataAndType((Uri) pair.first, (String) pair.second);
                return;
            }
            return;
        }
        Uri result = Uri.fromFile(new File(path));
        String mimeType = BaseFileMimeUtil.getMimeType(path);
        if ("*/*".equals(mimeType)) {
            data.setData(result);
        } else {
            data.setDataAndType(result, mimeType);
        }
    }

    private Pair<Uri, String> queryMediaUri(String path) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        Cursor c = null;
        try {
            Uri uri;
            String dataType;
            if (getPicker().getMediaType() == MediaType.IMAGE) {
                uri = Images.Media.EXTERNAL_CONTENT_URI;
                dataType = "vnd.android.cursor.dir/image";
                c = getContentResolver().query(Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{path}, null);
            } else {
                uri = Video.Media.EXTERNAL_CONTENT_URI;
                dataType = "vnd.android.cursor.dir/video";
                c = getContentResolver().query(Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{path}, null);
            }
            if (c != null && c.moveToFirst()) {
                uri = uri.buildUpon().appendPath(c.getString(0)).build();
            }
            if (c != null) {
                c.close();
            }
            return new Pair(uri, dataType);
        } catch (Throwable th) {
            if (c != null) {
                c.close();
            }
        }
    }

    private void showConfirmDialog(boolean retry) {
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
        dialog.setArguments(bundle);
        dialog.showAllowingStateLoss(getFragmentManager(), "confirm_dialog");
    }

    private void startDownload() {
        if (this.mDownloader != null) {
            this.mDownloader.cancel();
            this.mDownloader.destroy();
        }
        this.mDownloader = new Downloader(this.mDownloadPendings, new DownloadProgressListener(this, null));
        this.mDownloader.start();
    }

    public void onAttachFragment(Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof DownloadConfirmDialog) {
            DownloadConfirmDialog dialog = (DownloadConfirmDialog) fragment;
            dialog.setPositiveListener(this.mDownloadListener);
            dialog.setNegativeListener(this.mCancelDownloadListener);
        } else if (fragment instanceof PrepareProgressDialog) {
            ((PrepareProgressDialog) fragment).setCancelListener(this.mCancelConfirmListener);
        } else if (fragment instanceof DownloadCancelDialog) {
            DownloadCancelDialog dialog2 = (DownloadCancelDialog) fragment;
            dialog2.setCancelListener(this.mCancelDownloadListener);
            dialog2.setContinueListener(this.mContinueDownloadListener);
        }
    }
}
