package com.miui.gallery.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils.SecretAlbumUtils;
import com.miui.gallery.editor.photo.sdk.CleanService;
import com.miui.gallery.editor.photo.sdk.RenderTask;
import com.miui.gallery.editor.photo.sdk.RenderTask.Callback;
import com.miui.gallery.editor.photo.sdk.RenderTask.Generator;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BulkDownloadHelper;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadItem;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadListener;
import com.miui.gallery.util.FileCompressTask;
import com.miui.gallery.util.FileCompressTask.OnCompressListener;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import miui.app.ProgressDialog;

public class ShareFilePrepareFragment extends GalleryDialogFragment implements BulkDownloadListener, OnCompressListener {
    private OnCancelListener mCancelListener;
    private final List<String> mCompressFails = new ArrayList();
    private Future mCompressFuture;
    private DecodeSecretTask mDecodeSecretTask;
    private final List<BulkDownloadItem> mDownloadFails = new ArrayList();
    private OnPrepareListener mDownloadListener;
    private OnErrorListener mErrorListener;
    private BulkDownloadHelper mHelper;
    private int mMaxCompressProgress;
    private int mMaxDownloadProgress;
    private int mMaxRenderProgress;
    private int mMaxSecretProgress;
    private boolean mPendingPrepareEnd;
    private ProgressDialog mProgressDialog;
    private final List<Uri> mRenderFails = new ArrayList();
    private final Set<Uri> mRenderItems = new HashSet();
    private final List<Uri> mRenderSuccess = new ArrayList();
    private RenderTask mRenderTask;
    private long[] mSecretIds;
    private byte[][] mSecretKeys;
    private final List<Uri> mSecretList = new ArrayList();
    private final List<Uri> mShareUris = new ArrayList();
    private boolean mStopped;
    private final List<String> mSuccessPaths = new ArrayList();
    private String mTitle;

    public interface OnPrepareListener {
        void onPrepareComplete(List<String> list, List<String> list2, Collection<Uri> collection, Collection<Uri> collection2, List<BulkDownloadItem> list3);
    }

    interface OnErrorListener {
        void onError();
    }

    private static class DecodeSecretTask extends AsyncTask<Void, Integer, Void> {
        private File mCacheFolder;
        private DecodeSecretListener mDecodeSecretListener;
        private List<Uri> mFinalUris = new ArrayList();
        private SimpleDateFormat mFormat = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss_SSS", Locale.US);
        private byte[][] mKeys;
        private long[] mSecretIds;
        private List<Uri> mUris;

        interface DecodeSecretListener {
            void onEnd(List<Uri> list);

            void onItemFinish(float f);
        }

        DecodeSecretTask(File cacheFolder, List<Uri> uris, byte[][] keys, long[] secretIds, DecodeSecretListener decodeSecretListener) {
            this.mUris = uris;
            this.mKeys = keys;
            this.mSecretIds = secretIds;
            this.mCacheFolder = cacheFolder;
            this.mDecodeSecretListener = decodeSecretListener;
        }

        protected Void doInBackground(Void... voids) {
            this.mFinalUris.clear();
            for (int i = 0; i < this.mUris.size(); i++) {
                if (isCancelled()) {
                    return null;
                }
                File target = new File(this.mCacheFolder, String.format(Locale.US, "%s.jpg", new Object[]{this.mFormat.format(new Date(System.currentTimeMillis()))}));
                Uri uri = (Uri) this.mUris.get(i);
                String targetPath = target.getPath();
                if (this.mKeys[i] != null) {
                    targetPath = SecretAlbumUtils.decodeFile(uri.getPath(), targetPath, this.mKeys[i], false);
                } else {
                    targetPath = SecretAlbumUtils.decodeFile(uri.getPath(), targetPath, this.mSecretIds[i], false);
                    Log.d("ShareFilePrepareFragment", "decode %s and secret key is null", uri.getPath());
                }
                if (targetPath != null) {
                    this.mFinalUris.add(Uri.fromFile(target));
                    Log.d("ShareFilePrepareFragment", "decode %s is success:%s", uri.getPath(), target);
                } else {
                    Log.d("ShareFilePrepareFragment", "decode %s is failed", uri.getPath());
                }
                publishProgress(new Integer[]{Integer.valueOf(i)});
            }
            return null;
        }

        protected void onProgressUpdate(Integer... values) {
            if (this.mDecodeSecretListener != null) {
                this.mDecodeSecretListener.onItemFinish(((float) (values[0].intValue() + 1)) / ((float) this.mUris.size()));
            }
        }

        protected void onPostExecute(Void aVoid) {
            if (this.mDecodeSecretListener != null && !isCancelled()) {
                this.mDecodeSecretListener.onEnd(this.mFinalUris);
            }
        }
    }

    private class OutputGenerator implements Generator {
        private File mCacheFolder;
        private SimpleDateFormat mFormat;

        private OutputGenerator() {
            this.mFormat = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss_SSS", Locale.US);
            this.mCacheFolder = new File(ShareFilePrepareFragment.this.getActivity().getExternalCacheDir(), "render_tmp_files");
        }

        /* synthetic */ OutputGenerator(ShareFilePrepareFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Uri generate(Uri input) {
            return Uri.fromFile(new File(this.mCacheFolder, String.format(Locale.US, "%s.jpg", new Object[]{this.mFormat.format(new Date(System.currentTimeMillis()))})));
        }
    }

    public static ShareFilePrepareFragment newInstance(ArrayList<String> compressItems, ArrayList<BulkDownloadItem> downloadItems, ArrayList<Uri> renderItems, ArrayList<Uri> secretItems, List<byte[]> secretKeys, ArrayList<Uri> shareUris, ArrayList<Long> secretIds) {
        ShareFilePrepareFragment fragment = new ShareFilePrepareFragment();
        Bundle data = new Bundle();
        data.putStringArrayList("key_compress_items", compressItems);
        data.putParcelableArrayList("key_download_items", downloadItems);
        data.putParcelableArrayList("key_render_items", renderItems);
        data.putParcelableArrayList("key_secret_items", secretItems);
        data.putLongArray("key_secret_ids", Numbers.toArray(secretIds));
        data.putParcelableArrayList("key_share_uri", shareUris);
        if (secretKeys != null && secretKeys.size() > 0) {
            byte[][] bytes = new byte[secretKeys.size()][];
            for (int i = 0; i < bytes.length; i++) {
                bytes[i] = (byte[]) secretKeys.get(i);
            }
            data.putSerializable("key_secret_keys", bytes);
        }
        fragment.setArguments(data);
        return fragment;
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = new ProgressDialog(getActivity());
        this.mTitle = getResources().getString(R.string.download_title);
        this.mProgressDialog.setTitle(this.mTitle);
        this.mProgressDialog.setProgressStyle(1);
        this.mProgressDialog.setIndeterminate(false);
        this.mProgressDialog.setMax(100);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setButton(-2, getResources().getString(17039360), new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                ShareFilePrepareFragment.this.mProgressDialog.cancel();
            }
        });
        setCancelable(false);
        return this.mProgressDialog;
    }

    public void setOnDownloadListener(OnPrepareListener listener) {
        this.mDownloadListener = listener;
    }

    public void setOnCancelListener(OnCancelListener listener) {
        this.mCancelListener = listener;
    }

    public void setErrorListener(OnErrorListener errorListener) {
        this.mErrorListener = errorListener;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        handleFiles();
    }

    public void onStart() {
        this.mStopped = false;
        super.onStart();
        if (this.mPendingPrepareEnd) {
            this.mPendingPrepareEnd = false;
            onPrepareEnd();
        }
    }

    public void onStop() {
        this.mStopped = true;
        super.onStop();
    }

    public void onCancel(DialogInterface dialog) {
        super.onCancel(dialog);
        if (this.mCancelListener != null) {
            this.mCancelListener.onCancel(dialog);
        }
    }

    private void doCompress(ArrayList<String> compressItems) {
        if (this.mCompressFuture == null) {
            this.mCompressFuture = ThreadManager.getMiscPool().submit(new FileCompressTask(compressItems, this, "MIUI/Gallery/.compressShare"));
        }
    }

    private void doDownload(ArrayList<BulkDownloadItem> downloadItems) {
        if (this.mHelper == null) {
            this.mHelper = new BulkDownloadHelper();
        }
        this.mHelper.download(downloadItems, true, this);
    }

    private File getSecretFolder() {
        return new File(getActivity().getCacheDir(), "dc_tmp_files");
    }

    private void doSecret() {
        File mCacheFolder = getSecretFolder();
        if (mCacheFolder.exists() || mCacheFolder.mkdirs()) {
            this.mDecodeSecretTask = new DecodeSecretTask(mCacheFolder, this.mSecretList, this.mSecretKeys, this.mSecretIds, new DecodeSecretListener() {
                public void onItemFinish(float progress) {
                    ShareFilePrepareFragment.this.updateProgress(ShareFilePrepareFragment.this.mMaxDownloadProgress + ((int) (((float) ShareFilePrepareFragment.this.mMaxSecretProgress) * progress)));
                }

                public void onEnd(List<Uri> finalUris) {
                    ShareFilePrepareFragment.this.mSuccessPaths.clear();
                    if (finalUris.isEmpty()) {
                        ShareFilePrepareFragment.this.resolveError(R.string.send_secret_file_failed);
                        return;
                    }
                    int i;
                    for (i = 0; i < finalUris.size(); i++) {
                        ShareFilePrepareFragment.this.mSuccessPaths.add(((Uri) finalUris.get(i)).getPath());
                        int index = ShareFilePrepareFragment.this.mShareUris.indexOf(ShareFilePrepareFragment.this.mSecretList.get(i));
                        if (index != -1) {
                            ShareFilePrepareFragment.this.mShareUris.set(index, finalUris.get(i));
                        }
                    }
                    if (BaseMiscUtil.isValid(ShareFilePrepareFragment.this.mRenderItems)) {
                        for (i = 0; i < ShareFilePrepareFragment.this.mSecretList.size(); i++) {
                            Uri oldUri = (Uri) ShareFilePrepareFragment.this.mSecretList.get(i);
                            if (ShareFilePrepareFragment.this.mRenderItems.contains(oldUri)) {
                                ShareFilePrepareFragment.this.mRenderItems.remove(oldUri);
                                ShareFilePrepareFragment.this.mRenderItems.add(finalUris.get(i));
                                Log.d("ShareFilePrepareFragment", "download success, need render: %s", finalUris.get(i));
                            }
                        }
                        ShareFilePrepareFragment.this.doRender();
                    } else {
                        ShareFilePrepareFragment.this.onPrepareEnd();
                    }
                    ShareFilePrepareFragment.this.scheduleCleanSecret();
                }
            });
            this.mDecodeSecretTask.execute(new Void[0]);
            return;
        }
        resolveError(R.string.send_secret_file_space_low);
    }

    private void doRender() {
        Log.d("ShareFilePrepareFragment", "render items: %s", this.mRenderItems);
        this.mRenderTask = new RenderTask(getActivity(), this.mRenderItems, new OutputGenerator(this, null));
        this.mRenderTask.setCallback(new Callback() {
            public void onItemFinish(Uri input, Uri output) {
                Log.d("ShareFilePrepareFragment", "render one item: %s -> %s", input, output);
                ShareFilePrepareFragment.this.mRenderItems.remove(input);
                if (output == null) {
                    ShareFilePrepareFragment.this.mRenderFails.add(input);
                } else {
                    ShareFilePrepareFragment.this.mRenderSuccess.add(input);
                    ShareFilePrepareFragment.this.mSuccessPaths.add(output.getPath());
                }
                int finished = ShareFilePrepareFragment.this.mRenderSuccess.size() + ShareFilePrepareFragment.this.mRenderFails.size();
                ShareFilePrepareFragment.this.updateProgress((ShareFilePrepareFragment.this.mMaxDownloadProgress + ShareFilePrepareFragment.this.mMaxSecretProgress) + ((int) ((((float) finished) / ((float) ((ShareFilePrepareFragment.this.mRenderSuccess.size() + ShareFilePrepareFragment.this.mRenderFails.size()) + ShareFilePrepareFragment.this.mRenderItems.size()))) * ((float) ShareFilePrepareFragment.this.mMaxRenderProgress))));
            }

            public void onTaskFinish() {
                Log.d("ShareFilePrepareFragment", "render finish");
                ShareFilePrepareFragment.this.scheduleClean();
                ShareFilePrepareFragment.this.scheduleCleanSecret();
                ShareFilePrepareFragment.this.onPrepareEnd();
                ShareFilePrepareFragment.this.mRenderTask = null;
            }

            public void onTaskCancelled() {
                Log.d("ShareFilePrepareFragment", "render finish");
                ShareFilePrepareFragment.this.scheduleClean();
                ShareFilePrepareFragment.this.scheduleCleanSecret();
                ShareFilePrepareFragment.this.mRenderTask = null;
            }

            public void onTaskError() {
                Log.d("ShareFilePrepareFragment", "render error");
                ShareFilePrepareFragment.this.scheduleClean();
                ShareFilePrepareFragment.this.scheduleCleanSecret();
                ShareFilePrepareFragment.this.mRenderTask = null;
                ShareFilePrepareFragment.this.resolveError(R.string.send_file_beautify_failed);
            }
        });
        this.mRenderTask.start();
    }

    private void handleFiles() {
        ArrayList<String> compressItems = getArguments().getStringArrayList("key_compress_items");
        ArrayList<BulkDownloadItem> downloadItems = getArguments().getParcelableArrayList("key_download_items");
        ArrayList<Uri> renderItems = getArguments().getParcelableArrayList("key_render_items");
        ArrayList<Uri> secretItems = getArguments().getParcelableArrayList("key_secret_items");
        ArrayList<Uri> shareUris = getArguments().getParcelableArrayList("key_share_uri");
        byte[][] secretKeys = (byte[][]) getArguments().getSerializable("key_secret_keys");
        long[] secretIds = getArguments().getLongArray("key_secret_ids");
        if (shareUris != null) {
            this.mShareUris.clear();
            this.mShareUris.addAll(shareUris);
        }
        if (renderItems != null) {
            Log.d("ShareFilePrepareFragment", "render files: %s", renderItems.toString());
            this.mRenderItems.clear();
            this.mRenderFails.clear();
            this.mRenderSuccess.clear();
            this.mRenderItems.addAll(renderItems);
        }
        if (secretItems != null) {
            this.mSecretList.clear();
            this.mSecretList.addAll(secretItems);
            this.mSecretKeys = secretKeys;
            this.mSecretIds = secretIds;
        }
        int downloadSize;
        int renderSize;
        int secretSize;
        if (BaseMiscUtil.isValid(compressItems)) {
            Log.d("ShareFilePrepareFragment", "compress file.");
            int compressSize = compressItems.size();
            downloadSize = 0;
            if (BaseMiscUtil.isValid(downloadItems)) {
                downloadSize = downloadItems.size();
            }
            this.mMaxCompressProgress = (int) ((100.0f * ((float) compressSize)) / ((float) (compressSize + downloadSize)));
            this.mMaxDownloadProgress = 100 - this.mMaxCompressProgress;
            doCompress(compressItems);
        } else if (BaseMiscUtil.isValid(downloadItems)) {
            renderSize = this.mRenderItems.size();
            downloadSize = downloadItems.size();
            secretSize = this.mSecretList.size();
            this.mMaxDownloadProgress = (int) ((((float) (downloadSize * 100)) * 1.0f) / ((float) ((downloadSize + renderSize) + secretSize)));
            this.mMaxSecretProgress = (int) ((((float) (secretSize * 100)) * 1.0f) / ((float) ((downloadSize + renderSize) + secretSize)));
            this.mMaxRenderProgress = (100 - this.mMaxDownloadProgress) - this.mMaxSecretProgress;
            doDownload(downloadItems);
        } else if (BaseMiscUtil.isValid(this.mSecretList)) {
            renderSize = this.mRenderItems.size();
            secretSize = this.mSecretList.size();
            this.mMaxSecretProgress = (int) ((((float) (secretSize * 100)) * 1.0f) / ((float) (renderSize + secretSize)));
            this.mMaxRenderProgress = 100 - this.mMaxSecretProgress;
            doSecret();
        } else if (BaseMiscUtil.isValid(this.mRenderItems)) {
            this.mMaxRenderProgress = 100;
            doRender();
        } else {
            dismissAllowingStateLoss();
        }
    }

    private void resolveError(int id) {
        ToastUtils.makeText(getActivity(), id);
        dismissAllowingStateLoss();
        if (this.mErrorListener != null) {
            this.mErrorListener.onError();
        }
    }

    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (this.mHelper != null) {
            this.mHelper.cancel();
            this.mHelper = null;
        }
        if (this.mRenderTask != null) {
            this.mRenderTask.cancel();
        }
        if (this.mDecodeSecretTask != null) {
            this.mDecodeSecretTask.cancel(true);
        }
        this.mDownloadListener = null;
    }

    private void updateProgress(int progress) {
        this.mProgressDialog.setProgress(progress);
    }

    public void onDownloadProgress(float progress) {
        updateProgress(((int) (((float) this.mMaxDownloadProgress) * progress)) + this.mMaxCompressProgress);
    }

    private void onPrepareEnd() {
        Log.d("ShareFilePrepareFragment", "prepare finish, render fails: %d", Integer.valueOf(this.mRenderFails.size()));
        if (this.mStopped) {
            this.mPendingPrepareEnd = true;
            return;
        }
        dismissAllowingStateLoss();
        if (this.mDownloadListener != null) {
            this.mDownloadListener.onPrepareComplete(this.mSuccessPaths, this.mCompressFails, this.mRenderFails, this.mRenderSuccess, this.mDownloadFails);
            this.mDownloadListener = null;
        }
    }

    public void onDownloadEnd(List<BulkDownloadItem> successes, List<BulkDownloadItem> fails) {
        if (BaseMiscUtil.isValid(successes)) {
            for (BulkDownloadItem item : successes) {
                if (this.mRenderItems.contains(item.getDownloadUri())) {
                    Log.d("ShareFilePrepareFragment", "download success, need render: %s", item.getDownloadUri());
                    this.mRenderItems.remove(item.getDownloadUri());
                    this.mRenderItems.add(Uri.fromFile(new File(item.getDownloadPath())));
                }
                int secretIndex = this.mSecretList.indexOf(item.getDownloadUri());
                if (secretIndex != -1) {
                    Log.d("ShareFilePrepareFragment", "download success, need secret: %s", item.getDownloadUri());
                    this.mSecretList.set(secretIndex, Uri.fromFile(new File(item.getDownloadPath())));
                }
                Log.d("ShareFilePrepareFragment", "download success, continue");
                this.mSuccessPaths.add(item.getDownloadPath());
            }
        }
        if (BaseMiscUtil.isValid(fails)) {
            for (BulkDownloadItem item2 : fails) {
                Uri uri = item2.getDownloadUri();
                if (this.mRenderItems.contains(uri)) {
                    Log.d("ShareFilePrepareFragment", "download failed, skip render: %s", item2.getDownloadUri());
                    this.mRenderFails.add(uri);
                    this.mRenderItems.remove(uri);
                }
            }
        }
        this.mDownloadFails.addAll(fails);
        if (BaseMiscUtil.isValid(this.mSecretList)) {
            Log.d("ShareFilePrepareFragment", "download finish, need secret %d items", Integer.valueOf(this.mSecretList.size()));
            doSecret();
        } else if (BaseMiscUtil.isValid(this.mRenderItems)) {
            Log.d("ShareFilePrepareFragment", "download finish, need render %d items", Integer.valueOf(this.mRenderItems.size()));
            doRender();
        } else {
            onPrepareEnd();
        }
    }

    public void onCompressProgress(float progress) {
        updateProgress((int) (((float) this.mMaxCompressProgress) * progress));
    }

    public void onCompressComplete(List<String> success, List<String> fails) {
        if (success != null) {
            this.mSuccessPaths.addAll(success);
        }
        if (fails != null) {
            this.mSuccessPaths.addAll(fails);
        }
        ArrayList<BulkDownloadItem> downloadItems = getArguments().getParcelableArrayList("key_download_items");
        if (BaseMiscUtil.isValid(downloadItems)) {
            doDownload(downloadItems);
        } else {
            onPrepareEnd();
        }
    }

    private void scheduleClean() {
        if (getActivity() != null) {
            CleanService.schedule(getActivity(), new File(getActivity().getExternalCacheDir(), "render_tmp_files").getPath());
        }
    }

    private void scheduleCleanSecret() {
        if (getActivity() != null) {
            CleanService.schedule(getActivity(), getSecretFolder().getPath());
        }
    }
}
