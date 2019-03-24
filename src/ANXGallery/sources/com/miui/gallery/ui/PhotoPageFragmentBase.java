package com.miui.gallery.ui;

import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.Loader;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.extraphoto.sdk.ExtraPhotoSDK;
import com.miui.gallery.R;
import com.miui.gallery.adapter.PhotoPageAdapter;
import com.miui.gallery.adapter.PhotoPageAdapter.ChoiceMode;
import com.miui.gallery.adapter.PhotoPageAdapter.MultiChoiceModeListener;
import com.miui.gallery.adapter.PhotoPageAdapter.OnPreviewedListener;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.loader.PhotoLoaderManager;
import com.miui.gallery.loader.ProcessingMediaLoader;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.GalleryOpenProvider;
import com.miui.gallery.provider.ProcessingMedia;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.ChooserFragment.OnIntentSelectedListener;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnImageLoadFinishListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnPageChangedListener;
import com.miui.gallery.ui.PhotoPagerHelper.OnPageSettledListener;
import com.miui.gallery.ui.ShareFilePrepareFragment.OnPrepareListener;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BulkDownloadHelper.BulkDownloadItem;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.widget.ViewPager;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import miui.cloud.backup.data.KeyStringSettingItem;

public abstract class PhotoPageFragmentBase extends BaseBottomMenuFragment implements OnPreviewedListener, OnImageLoadFinishListener, OnPageChangedListener, OnPageSettledListener {
    private boolean isEntering = true;
    private boolean isExiting = false;
    protected PhotoPageAdapter mAdapter;
    private AlertDialog mLoadingDialog;
    private boolean mNeedShowLoadingDialog = false;
    protected ViewPager mPager;
    protected PhotoPagerHelper mPagerHelper;
    private boolean mPendingLoadPhotos;
    private boolean mPendingUpdateItem;
    private PhotoPageLoaderCallBack mPhotosLoaderCallBack;
    private ProcessingMediaLoaderCallback mProcessingMediaLoaderCallback;
    protected Map<String, ProcessingMedia> mProcessingMediaMap;
    private Runnable mProcessingMediaPollingRunnable;
    private Runnable mShowLoadingDialogRunnable;

    public interface PhotoPageInteractionListener {
        int getActionBarHeight();

        int getMenuBarHeight();

        void notifyDataChanged();

        void setActionBarVisible(boolean z);
    }

    abstract class ChoiceManagerBase implements MultiChoiceModeListener, OnIntentSelectedListener {
        protected ChoiceMode mChoiceMode;
        protected String mShareClassName;
        protected String mSharePackageName;
        protected Intent mSharePendingIntent;

        protected abstract TextView getChoiceTitle();

        protected abstract int getContainerId();

        ChoiceManagerBase() {
        }

        protected void setUpChooserFragment(int chooseTheme, boolean visible) {
            Fragment fragment = PhotoPageFragmentBase.this.getChildFragmentManager().findFragmentByTag("ChooserFragment");
            if (fragment == null) {
                FragmentTransaction transaction = PhotoPageFragmentBase.this.getChildFragmentManager().beginTransaction();
                Intent i = new Intent("android.intent.action.SEND");
                i.setType("image/*");
                ChooserFragment f = ChooserFragment.newInstance(i, chooseTheme, visible);
                f.setOnIntentSelectedListener(this);
                transaction.add(getContainerId(), f, "ChooserFragment");
                transaction.commitAllowingStateLoss();
                return;
            }
            ((ChooserFragment) fragment).setOnIntentSelectedListener(this);
        }

        protected void updateSelectMode() {
            int size = this.mChoiceMode.getSelectItems().size();
            if (getChoiceTitle() != null) {
                if (size == 0) {
                    getChoiceTitle().setText(PhotoPageFragmentBase.this.getResources().getString(R.string.custom_select_title_quickly_share));
                } else {
                    getChoiceTitle().setText(PhotoPageFragmentBase.this.getResources().getQuantityString(R.plurals.custom_select_title_items_selected, size, new Object[]{Integer.valueOf(size)}));
                }
            }
            Intent i = new Intent();
            configTargetIntentBySelected(size, i);
            Fragment fragment = PhotoPageFragmentBase.this.getChildFragmentManager().findFragmentByTag("ChooserFragment");
            if (fragment != null) {
                ((ChooserFragment) fragment).requery(i);
            }
        }

        protected void configTargetIntentBySelected(int size, Intent i) {
            BaseDataItem item;
            if (size <= 1) {
                String str;
                i.setAction("android.intent.action.SEND");
                item = null;
                if (size > 0) {
                    item = PhotoPageFragmentBase.this.mAdapter.getDataItem(((Integer) this.mChoiceMode.getSelectItems().get(0)).intValue());
                }
                if (item == null || !item.isVideo()) {
                    str = "image/*";
                } else {
                    str = "video/*";
                }
                i.setType(str);
                return;
            }
            i.setAction("android.intent.action.SEND_MULTIPLE");
            BaseDataItem firstItem = PhotoPageFragmentBase.this.mAdapter.getDataItem(((Integer) this.mChoiceMode.getSelectItems().get(0)).intValue());
            String defaultMimeType = (firstItem == null || !firstItem.isVideo()) ? "image/*" : "video/*";
            for (int index = 1; index < size; index++) {
                item = PhotoPageFragmentBase.this.mAdapter.getDataItem(((Integer) this.mChoiceMode.getSelectItems().get(index)).intValue());
                String mimeType = (item == null || !item.isVideo()) ? "image/*" : "video/*";
                if (!TextUtils.equals(defaultMimeType, mimeType)) {
                    defaultMimeType = "*/*";
                    break;
                }
            }
            i.setType(defaultMimeType);
        }

        protected void onShared() {
        }

        protected void onVisibilityChanged(boolean visible) {
            Fragment fragment = PhotoPageFragmentBase.this.getChildFragmentManager().findFragmentByTag("ChooserFragment");
            if (fragment != null) {
                ((ChooserFragment) fragment).onVisibilityChanged(visible);
            }
        }

        public final void onItemCheckedStateChanged(int position, long id, boolean checked) {
            updateSelectMode();
        }

        public final void onAllItemsCheckedStateChanged(boolean checked) {
            updateSelectMode();
        }

        public final void onIntentSelected(Intent i) {
            if (i != null && this.mChoiceMode != null) {
                if (this.mSharePendingIntent != null) {
                    Log.w("PhotoPageFragmentBase", "already preparing for a pending intent, skip this");
                    return;
                }
                if (i.getComponent() != null) {
                    BaseSamplingStatHelper.recordStringPropertyEvent("fast_share", "app_selected", i.getComponent().getClassName());
                }
                List<Integer> selects = this.mChoiceMode.getSelectItems();
                if (selects.size() <= 0) {
                    ToastUtils.makeText(PhotoPageFragmentBase.this.mActivity, (CharSequence) PhotoPageFragmentBase.this.getResources().getString(miui.R.string.select_item));
                } else if (selects.size() > 500) {
                    ToastUtils.makeText(PhotoPageFragmentBase.this.mActivity, (CharSequence) PhotoPageFragmentBase.this.mActivity.getResources().getString(R.string.send_too_many_files_error, new Object[]{Integer.valueOf(500)}));
                } else {
                    BaseDataItem item;
                    this.mSharePendingIntent = i;
                    this.mSharePackageName = i.getComponent().getPackageName();
                    this.mShareClassName = i.getComponent().getClassName();
                    ArrayList<Uri> shareUris = new ArrayList();
                    ArrayList<String> needCompress = new ArrayList();
                    ArrayList<Uri> needRender = new ArrayList();
                    ArrayList<Uri> needDecode = new ArrayList();
                    ArrayList<byte[]> secretKeys = new ArrayList();
                    ArrayList<Long> secretIds = new ArrayList();
                    int processingCount = 0;
                    List<BaseDataItem> needDownloadThumbnails = new ArrayList();
                    List<BaseDataItem> needDownloadOrigins = new ArrayList();
                    List<Integer> origins = this.mChoiceMode.getOriginItems();
                    List<Integer> renders = this.mChoiceMode.getRenderItems();
                    boolean statOrigin = false;
                    boolean statRender = false;
                    int bestImageCount = 0;
                    for (Integer intValue : selects) {
                        int pos = intValue.intValue();
                        item = PhotoPageFragmentBase.this.mAdapter.getDataItem(pos);
                        if (item != null) {
                            if (PhotoPageFragmentBase.this.isProcessingMedia(item)) {
                                processingCount++;
                            } else {
                                Uri contentUri;
                                Object secretKey = item.getSecretKey();
                                boolean isSecret = item.isSecret();
                                long secretId = item.getKey();
                                if (origins.contains(Integer.valueOf(pos))) {
                                    statOrigin = true;
                                    if (FileUtils.isFileExist(item.getOriginalPath())) {
                                        contentUri = Uri.fromFile(new File(item.getOriginalPath()));
                                        if (!isSecret) {
                                            shareUris.add(contentUri);
                                        }
                                    } else {
                                        contentUri = item.getDownloadUri();
                                        if (contentUri != null) {
                                            needDownloadOrigins.add(item);
                                        }
                                    }
                                } else {
                                    contentUri = item.getContentUriForExternal();
                                    if (contentUri == null) {
                                        contentUri = item.getDownloadUri();
                                        if (contentUri != null) {
                                            needDownloadThumbnails.add(item);
                                        }
                                    } else if (!isSecret) {
                                        shareUris.add(contentUri);
                                    }
                                }
                                if (renders.contains(Integer.valueOf(pos)) && contentUri != null) {
                                    statRender = true;
                                    needRender.add(contentUri);
                                }
                                if (isSecret) {
                                    needDecode.add(contentUri);
                                    secretKeys.add(secretKey);
                                    secretIds.add(Long.valueOf(secretId));
                                }
                                ExtraPhotoSDK.sendSharePhotoStatic(item.getSpecialTypeFlags());
                                if (ImageFeatureCacheManager.getInstance().isBestImage(secretId, false)) {
                                    bestImageCount++;
                                }
                            }
                        }
                    }
                    if (processingCount > 0) {
                        ToastUtils.makeText(PhotoPageFragmentBase.this.mActivity, (CharSequence) PhotoPageFragmentBase.this.getResources().getQuantityString(R.plurals.send_processing_files_error, processingCount, new Object[]{Integer.valueOf(processingCount)}));
                        HashMap<String, String> params = new HashMap();
                        params.put("count", String.valueOf(processingCount));
                        BaseSamplingStatHelper.recordCountEvent("fast_share", "processing_media_checked", params);
                    }
                    if (statOrigin) {
                        BaseSamplingStatHelper.recordCountEvent("fast_share", "origin_checked");
                    }
                    if (statRender) {
                        BaseSamplingStatHelper.recordCountEvent("fast_share", "render_checked");
                    }
                    Map map = new HashMap();
                    map.put("count", Integer.valueOf(selects.size()));
                    map.put("best_image_count", Integer.valueOf(bestImageCount));
                    BaseSamplingStatHelper.recordCountEvent("fast_share", "send", map);
                    PhotoPagerSamplingStatHelper.onImageShared(shareUris);
                    if (needDecode.size() > 0 || needCompress.size() > 0 || needDownloadOrigins.size() > 0 || needDownloadThumbnails.size() > 0 || needRender.size() > 0) {
                        ArrayList<BulkDownloadItem> downloadItems = new ArrayList();
                        for (BaseDataItem item2 : needDownloadThumbnails) {
                            downloadItems.add(new BulkDownloadItem(item2.getDownloadUri(), DownloadType.THUMBNAIL, item2.getSize()));
                        }
                        for (BaseDataItem item22 : needDownloadOrigins) {
                            downloadItems.add(new BulkDownloadItem(item22.getDownloadUri(), DownloadType.ORIGIN_FORCE, item22.getSize()));
                        }
                        doPrepareFiles(needCompress, downloadItems, needRender, needDecode, secretKeys, shareUris, secretIds);
                        return;
                    }
                    doShare(shareUris);
                }
            }
        }

        private void doPrepareFiles(ArrayList<String> compressItems, ArrayList<BulkDownloadItem> downloadItems, ArrayList<Uri> needRender, ArrayList<Uri> secretItems, List<byte[]> secretKeys, ArrayList<Uri> shareUris, ArrayList<Long> secretIds) {
            final ArrayList<Uri> arrayList = shareUris;
            final ArrayList<Uri> arrayList2 = secretItems;
            final List<byte[]> list = secretKeys;
            final ArrayList<Long> arrayList3 = secretIds;
            OnPrepareListener listener = new OnPrepareListener() {
                public void onPrepareComplete(List<String> successes, List<String> compressFails, Collection<Uri> renderFails, Collection<Uri> renderSuccess, List<BulkDownloadItem> downloadFails) {
                    if (BaseMiscUtil.isValid(successes)) {
                        for (String path : successes) {
                            arrayList.add(Uri.fromFile(new File(path)));
                        }
                    }
                    if (BaseMiscUtil.isValid(renderSuccess)) {
                        for (Uri path2 : renderSuccess) {
                            arrayList.remove(path2);
                        }
                    }
                    if (BaseMiscUtil.isValid(compressFails) || BaseMiscUtil.isValid(downloadFails)) {
                        final ArrayList<String> compressItems = new ArrayList();
                        final ArrayList<BulkDownloadItem> downloadItems = new ArrayList();
                        final ArrayList<Uri> renderItems = new ArrayList();
                        if (BaseMiscUtil.isValid(compressFails)) {
                            compressItems.addAll(compressFails);
                        }
                        if (BaseMiscUtil.isValid(renderFails)) {
                            renderItems.addAll(renderFails);
                        }
                        if (BaseMiscUtil.isValid(downloadFails)) {
                            downloadItems.addAll(downloadFails);
                            DialogUtil.showInfoDialog(PhotoPageFragmentBase.this.mActivity, PhotoPageFragmentBase.this.getResources().getQuantityString(R.plurals.download_retry_message, downloadFails.size(), new Object[]{Integer.valueOf(downloadFails.size())}), PhotoPageFragmentBase.this.getResources().getString(R.string.download_retry_title), (int) R.string.download_retry_text, 17039360, new OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {
                                    ChoiceManagerBase.this.doPrepareFiles(compressItems, downloadItems, renderItems, arrayList2, list, arrayList, arrayList3);
                                }
                            }, new OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {
                                    ChoiceManagerBase.this.mSharePendingIntent = null;
                                }
                            }, new OnCancelListener() {
                                public void onCancel(DialogInterface dialog) {
                                    ChoiceManagerBase.this.mSharePendingIntent = null;
                                }
                            });
                            return;
                        }
                        return;
                    }
                    if (BaseMiscUtil.isValid(renderFails)) {
                        ToastUtils.makeText(PhotoPageFragmentBase.this.getActivity(), PhotoPageFragmentBase.this.getActivity().getResources().getQuantityString(R.plurals.fast_share_auto_render_failed, renderFails.size(), new Object[]{Integer.valueOf(renderFails.size())}));
                    }
                    ChoiceManagerBase.this.doShare(arrayList, !arrayList2.isEmpty());
                    PhotoPageFragmentBase.this.onContentChanged();
                }
            };
            ShareFilePrepareFragment fragment = ShareFilePrepareFragment.newInstance(compressItems, downloadItems, needRender, secretItems, secretKeys, shareUris, secretIds);
            fragment.setOnDownloadListener(listener);
            fragment.setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialog) {
                    ChoiceManagerBase.this.mSharePendingIntent = null;
                }
            });
            fragment.setErrorListener(new OnErrorListener() {
                public void onError() {
                    ChoiceManagerBase.this.mSharePendingIntent = null;
                }
            });
            fragment.showAllowingStateLoss(PhotoPageFragmentBase.this.mActivity.getFragmentManager(), "DownloadFragment");
        }

        private void doShare(ArrayList<Uri> uris) {
            doShare(uris, false);
        }

        private void doShare(ArrayList<Uri> uris, boolean hasSecret) {
            if (this.mSharePendingIntent != null) {
                if (hasSecret || GalleryOpenProvider.needReturnContentUri(PhotoPageFragmentBase.this.getActivity(), this.mSharePendingIntent)) {
                    for (int i = 0; i < uris.size(); i++) {
                        Uri translatedUri = GalleryOpenProvider.translateToContent(((Uri) uris.get(i)).getPath());
                        uris.set(i, translatedUri);
                        if (this.mSharePackageName != null) {
                            PhotoPageFragmentBase.this.mActivity.grantUriPermission(this.mSharePackageName, translatedUri, 1);
                        }
                    }
                }
                Log.d("PhotoPageFragmentBase", "prepare to share: %s", (Object) uris);
                int size = uris.size();
                if (size > 0) {
                    if (size > 1) {
                        this.mSharePendingIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", uris);
                    } else {
                        this.mSharePendingIntent.setAction("android.intent.action.SEND");
                        this.mSharePendingIntent.putExtra("android.intent.extra.STREAM", (Parcelable) uris.get(0));
                    }
                    this.mSharePendingIntent.addFlags(268435456);
                    this.mSharePendingIntent.addFlags(134742016);
                    PhotoPageFragmentBase.this.startActivityForResult(this.mSharePendingIntent, 1);
                    if (PhotoPageFragmentBase.this.mShowLoadingDialogRunnable == null) {
                        PhotoPageFragmentBase.this.mShowLoadingDialogRunnable = new Runnable() {
                            public void run() {
                                if (PhotoPageFragmentBase.this.mNeedShowLoadingDialog) {
                                    String msg;
                                    if (TextUtils.isEmpty(ChoiceManagerBase.this.getShareDisplayLabel(ChoiceManagerBase.this.mSharePackageName, ChoiceManagerBase.this.mShareClassName))) {
                                        msg = PhotoPageFragmentBase.this.mActivity.getResources().getString(R.string.app_is_launching_common);
                                    } else {
                                        msg = PhotoPageFragmentBase.this.mActivity.getResources().getString(R.string.app_is_launching, new Object[]{label});
                                    }
                                    PhotoPageFragmentBase.this.mLoadingDialog = DialogUtil.createLoadingDialog(PhotoPageFragmentBase.this.mActivity, msg);
                                    if (PhotoPageFragmentBase.this.mLoadingDialog != null) {
                                        PhotoPageFragmentBase.this.mLoadingDialog.show();
                                    }
                                }
                            }
                        };
                    }
                    if (!ThreadManager.getMainHandler().hasCallbacksCompat(PhotoPageFragmentBase.this.mShowLoadingDialogRunnable)) {
                        PhotoPageFragmentBase.this.mNeedShowLoadingDialog = true;
                        ThreadManager.getMainHandler().postDelayed(PhotoPageFragmentBase.this.mShowLoadingDialogRunnable, 500);
                    }
                }
                this.mSharePendingIntent = null;
            }
        }

        private String getShareDisplayLabel(String packageName, String className) {
            try {
                Resources res = PhotoPageFragmentBase.this.mActivity.getResources();
                int id = res.getIdentifier(String.format(Locale.US, "%s_%s", new Object[]{packageName, className}), KeyStringSettingItem.TYPE, PhotoPageFragmentBase.this.mActivity.getPackageName());
                if (id != 0) {
                    return res.getString(id);
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }
    }

    private class PhotoPageLoaderCallBack implements LoaderCallbacks {
        private boolean isFirstLoad;

        private PhotoPageLoaderCallBack() {
            this.isFirstLoad = true;
        }

        /* synthetic */ PhotoPageLoaderCallBack(PhotoPageFragmentBase x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int id, Bundle args) {
            return PhotoLoaderManager.getInstance().getPhotoDataSet(PhotoPageFragmentBase.this.mActivity, Uri.parse(args.getString("photo_uri")), args);
        }

        private boolean isRtl() {
            return PhotoPageFragmentBase.this.getResources().getConfiguration().getLayoutDirection() == 1;
        }

        public void onLoadFinished(Loader loader, Object data) {
            BaseDataSet set = (BaseDataSet) data;
            if (set != null && set.getCount() != 0) {
                int current = PhotoPageFragmentBase.this.mPager.getCurrentItem();
                boolean notifySelected = true;
                if (this.isFirstLoad) {
                    boolean notifyImmediate = PhotoPageFragmentBase.this.mAdapter.getCount() != set.getCount() && isRtl();
                    ImageLoadParams params = PhotoPageFragmentBase.this.getImageLoadParams();
                    if (params != null) {
                        int pos = set.getIndexOfItem(new BaseDataItem().setKey(params.getKey()), params.getPos());
                        if (pos >= 0 && pos < set.getCount() && pos != params.getPos()) {
                            Log.i(PhotoPageFragmentBase.this.getTAG(), "data has changed after load finish %d, %d", Integer.valueOf(params.getPos()), Integer.valueOf(pos));
                            params.updatePosition(pos);
                            current = pos;
                            notifyImmediate |= 1;
                        }
                    } else if (current != set.getInitPosition()) {
                        current = set.getInitPosition();
                    }
                    PhotoPageFragmentBase.this.mAdapter.changeDataSet(set, notifyImmediate);
                    if (current != PhotoPageFragmentBase.this.mPager.getCurrentItem()) {
                        PhotoPageFragmentBase.this.mPager.setCurrentItem(current, false);
                        notifySelected = false;
                    } else if (PhotoPageFragmentBase.this.mAdapter.isPreviewing()) {
                        PhotoPageFragmentBase.this.mPendingUpdateItem = true;
                    }
                } else {
                    PhotoPageFragmentBase.this.mAdapter.changeDataSet(set);
                    int focusedPos = PhotoPageFragmentBase.this.mPager.getCurrentItem();
                    String focusedPath = PhotoPageFragmentBase.this.getArguments().getString("photo_focused_path", null);
                    if (TextUtils.isEmpty(focusedPath)) {
                        long focusedId = PhotoPageFragmentBase.this.getArguments().getLong("photo_focused_id", 0);
                        if (focusedId > 0) {
                            PhotoPageFragmentBase.this.getArguments().remove("photo_focused_id");
                            focusedPos = set.getIndexOfItem(focusedId, PhotoPageFragmentBase.this.mPager.getCurrentItem());
                        }
                    } else {
                        PhotoPageFragmentBase.this.getArguments().remove("photo_focused_path");
                        focusedPos = set.getIndexOfItem(focusedPath, PhotoPageFragmentBase.this.mPager.getCurrentItem());
                    }
                    if (focusedPos >= 0 && focusedPos < set.getCount() && focusedPos != PhotoPageFragmentBase.this.mPager.getCurrentItem()) {
                        PhotoPageFragmentBase.this.mPager.setCurrentItem(focusedPos, false);
                        notifySelected = false;
                    }
                }
                if (!PhotoPageFragmentBase.this.mPendingUpdateItem) {
                    if (notifySelected) {
                        PhotoPageFragmentBase.this.mPagerHelper.setPageChanged(PhotoPageFragmentBase.this.mPager.getCurrentItem());
                        PhotoPageFragmentBase.this.mPagerHelper.setPageSettled(PhotoPageFragmentBase.this.mPager.getCurrentItem());
                    }
                    PhotoPageFragmentBase.this.onDataSetLoaded(set, this.isFirstLoad);
                }
                this.isFirstLoad = false;
            } else if (PhotoPageFragmentBase.this.isAdded() && PhotoPageFragmentBase.this.isResumed()) {
                Log.w(PhotoPageFragmentBase.this.getTag(), "set is empty");
                PhotoPageFragmentBase.this.finish();
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    private class ProcessingMediaLoaderCallback implements LoaderCallbacks<List<ProcessingMedia>> {
        private boolean isFirstLoad;
        private long start;

        private ProcessingMediaLoaderCallback() {
            this.isFirstLoad = true;
        }

        /* synthetic */ ProcessingMediaLoaderCallback(PhotoPageFragmentBase x0, AnonymousClass1 x1) {
            this();
        }

        public Loader<List<ProcessingMedia>> onCreateLoader(int i, Bundle bundle) {
            this.start = System.currentTimeMillis();
            return new ProcessingMediaLoader(PhotoPageFragmentBase.this.mActivity.getApplicationContext());
        }

        public void onLoadFinished(Loader<List<ProcessingMedia>> loader, List<ProcessingMedia> processingMediaList) {
            if (BaseMiscUtil.isValid(processingMediaList)) {
                PhotoPageFragmentBase.this.mProcessingMediaMap = new HashMap();
                for (ProcessingMedia processingMedia : processingMediaList) {
                    PhotoPageFragmentBase.this.mProcessingMediaMap.put(processingMedia.getPath(), processingMedia);
                }
                ThreadManager.getMainHandler().removeCallbacks(PhotoPageFragmentBase.this.mProcessingMediaPollingRunnable);
                ThreadManager.getMainHandler().postDelayed(PhotoPageFragmentBase.this.getProcessingMediaPollingRunnable(), 10000);
            } else {
                PhotoPageFragmentBase.this.mProcessingMediaMap = null;
                ThreadManager.getMainHandler().removeCallbacks(PhotoPageFragmentBase.this.mProcessingMediaPollingRunnable);
            }
            PhotoPageFragmentBase.this.mAdapter.setProcessingMedias(PhotoPageFragmentBase.this.mProcessingMediaMap);
            if (this.isFirstLoad) {
                Log.d("PhotoPageFragmentBase", "ProcessingMediaLoader first load costs [%d] ms", Long.valueOf(System.currentTimeMillis() - this.start));
            } else {
                PhotoPageFragmentBase.this.mAdapter.notifyDataSetChanged();
            }
            if (PhotoPageFragmentBase.this.mPendingLoadPhotos) {
                PhotoPageFragmentBase.this.mPendingLoadPhotos = false;
                PhotoPageFragmentBase.this.startToLoadPhotos();
            }
            this.isFirstLoad = false;
        }

        public void onLoaderReset(Loader<List<ProcessingMedia>> loader) {
        }
    }

    private class ProcessingMediaPollingRunnable implements Runnable {
        private ProcessingMediaPollingRunnable() {
        }

        /* synthetic */ ProcessingMediaPollingRunnable(PhotoPageFragmentBase x0, AnonymousClass1 x1) {
            this();
        }

        public void run() {
            Log.d("PhotoPageFragmentBase", "Query processing medias by polling, interval: %dms", Integer.valueOf(10000));
            PhotoPageFragmentBase.this.getLoaderManager().restartLoader(1, null, PhotoPageFragmentBase.this.mProcessingMediaLoaderCallback);
        }
    }

    protected abstract View getLayout(LayoutInflater layoutInflater, ViewGroup viewGroup);

    protected abstract String getTAG();

    protected abstract void onShared();

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            restoreState(savedInstanceState);
        }
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        saveState(outState);
    }

    protected void restoreState(Bundle savedInstanceState) {
        Bundle bundle = getArguments();
        if (bundle != null) {
            bundle.putInt("photo_init_position", savedInstanceState.getInt("photo_init_position"));
            bundle.putInt("photo_count", savedInstanceState.getInt("photo_count"));
            bundle.remove("photo_enter_transit");
            bundle.remove("photo_transition_data");
        }
    }

    protected void saveState(Bundle outState) {
        if (outState != null) {
            if (this.mPager != null) {
                outState.putInt("photo_init_position", this.mPager.getCurrentItem());
            }
            if (this.mAdapter != null) {
                outState.putInt("photo_count", this.mAdapter.getCount());
            }
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = getLayout(inflater, container);
        this.mPager = (ViewPager) root.findViewById(R.id.photo_pager);
        this.mPager.setPageMargin(getResources().getDimensionPixelSize(R.dimen.viewpager_page_margin));
        this.mAdapter = new PhotoPageAdapter(getInitCount(), getImageLoadParams(), getEnterViewInfo(getArguments().getInt("photo_init_position", 0)), this, getPhotoPageInteractionListener());
        this.mPagerHelper = new PhotoPagerHelper(this.mPager);
        this.mPagerHelper.setOnPageChangedListener(this);
        this.mPagerHelper.setOnPageSettledListener(this);
        this.mPagerHelper.setOnImageLoadFinishListener(this);
        onViewInflated(root);
        this.mPager.setAdapter(this.mAdapter);
        return root;
    }

    protected PhotoPageInteractionListener getPhotoPageInteractionListener() {
        return new PhotoPageInteractionListener() {
            public void notifyDataChanged() {
                PhotoPageFragmentBase.this.onContentChanged();
            }

            public void setActionBarVisible(boolean visible) {
            }

            public int getActionBarHeight() {
                if (!PhotoPageFragmentBase.this.isAdded() || PhotoPageFragmentBase.this.getActionBar() == null) {
                    return 0;
                }
                return PhotoPageFragmentBase.this.getActionBar().getHeight();
            }

            public int getMenuBarHeight() {
                return 0;
            }
        };
    }

    private ItemViewInfo getEnterViewInfo(int pos) {
        if (!getArguments().getBoolean("photo_enter_transit", false)) {
            return null;
        }
        getArguments().remove("photo_enter_transit");
        return getItemViewInfo(pos);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (TextUtils.isEmpty(getArguments().getString("photo_uri"))) {
            Log.e("PhotoPageFragmentBase", "photo uri should not be null %s", getArguments());
            finish();
            return;
        }
        this.mProcessingMediaLoaderCallback = new ProcessingMediaLoaderCallback(this, null);
        this.mPhotosLoaderCallBack = new PhotoPageLoaderCallBack(this, null);
        startToLoadProcessingMedias();
    }

    private void startToLoadProcessingMedias() {
        Log.d("PhotoPageFragmentBase", "startToLoadProcessingMedias");
        if (this.mProcessingMediaLoaderCallback != null) {
            getLoaderManager().initLoader(1, null, this.mProcessingMediaLoaderCallback);
            this.mPendingLoadPhotos = true;
        }
    }

    private void startToLoadPhotos() {
        Log.d("PhotoPageFragmentBase", "startToLoadPhotos");
        getLoaderManager().initLoader(2, getArguments(), this.mPhotosLoaderCallBack);
    }

    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (getArguments().containsKey("photo_init_position")) {
            int initPos = getArguments().getInt("photo_init_position", 0);
            int initCount = getArguments().getInt("photo_count", 0);
            if (initPos >= 0 && initPos < initCount) {
                this.mPager.setCurrentItem(initPos, false);
                getArguments().remove("photo_init_position");
            }
        }
    }

    public void onStart() {
        super.onStart();
        this.mPagerHelper.onStart();
    }

    public void onStop() {
        super.onStop();
        this.mPagerHelper.onStop();
    }

    public void onResume() {
        super.onResume();
        this.mPagerHelper.onResume();
    }

    public void onPause() {
        super.onPause();
        dismissLoadingDialog();
        this.mNeedShowLoadingDialog = false;
        this.mPagerHelper.onPause();
    }

    public void onDestroyView() {
        super.onDestroyView();
        ThreadManager.getMainHandler().removeCallbacks(this.mProcessingMediaPollingRunnable);
        getLoaderManager().destroyLoader(1);
        getLoaderManager().destroyLoader(2);
        this.mPager.removeAllViews();
    }

    public void onDetach() {
        super.onDetach();
        if (this.mShowLoadingDialogRunnable != null) {
            ThreadManager.getMainHandler().removeCallbacks(this.mShowLoadingDialogRunnable);
        }
        dismissLoadingDialog();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1) {
            onShared();
        }
    }

    private void dismissLoadingDialog() {
        if (this.mLoadingDialog != null && this.mLoadingDialog.isShowing()) {
            this.mLoadingDialog.dismiss();
            this.mLoadingDialog = null;
        }
    }

    protected void onViewInflated(View root) {
    }

    protected void delayDoAfterTransit() {
    }

    protected void onItemChanged(int pos) {
    }

    protected void onItemSettled(int pos) {
    }

    protected void onDataSetLoaded(BaseDataSet dataSet, boolean isFirst) {
    }

    protected void onContentChanged() {
        if (getActivity() != null && getLoaderManager().getLoader(2) != null) {
            getLoaderManager().getLoader(2).onContentChanged();
        }
    }

    protected void doExit() {
        if (!this.isExiting) {
            this.isExiting = true;
            onExiting();
            if (!this.mPagerHelper.doExitTransition(getItemViewInfo(this.mPager.getCurrentItem()), new TransitionListener() {
                public void onTransitEnd() {
                    PhotoPageFragmentBase.this.isExiting = false;
                    PhotoPageFragmentBase.this.finish();
                }
            })) {
                finish();
                this.isExiting = false;
            }
        }
    }

    protected void onExiting() {
    }

    private int getInitCount() {
        int initCount = getArguments().getInt("photo_count", 0);
        if (initCount == 0 && getArguments().getBoolean("from_MiuiCamera", false)) {
            return 1;
        }
        return initCount;
    }

    private ImageLoadParams getImageLoadParams() {
        boolean z = false;
        ImageLoadParams ret = (ImageLoadParams) getArguments().getParcelable("photo_transition_data");
        if (ret != null) {
            if (getArguments() != null && getArguments().getBoolean("from_MiuiCamera", false)) {
                z = true;
            }
            ret.setFromCamera(z);
        }
        return ret;
    }

    protected ItemViewInfo getItemViewInfo(int pos) {
        return null;
    }

    public final void onPageSettled(int position) {
        if (!this.mPendingUpdateItem) {
            onItemSettled(position);
        }
    }

    public final void onPageChanged(int position) {
        if (!this.mPendingUpdateItem) {
            onItemChanged(position);
        }
    }

    public final void onPreviewed() {
        this.isEntering = false;
        delayDoAfterTransit();
        if (this.mPendingUpdateItem) {
            this.mPendingUpdateItem = false;
            this.mPagerHelper.setPageChanged(this.mPager.getCurrentItem());
            this.mPagerHelper.setPageSettled(this.mPager.getCurrentItem());
            onDataSetLoaded(this.mAdapter.getDataSet(), true);
        }
    }

    protected boolean isExiting() {
        return this.isExiting;
    }

    protected boolean isEntering() {
        return this.isEntering;
    }

    public void onImageLoadFinish(String uri) {
    }

    public void finish() {
        if (this.mActivity != null && !this.mActivity.isFinishing()) {
            this.mActivity.finish();
        }
    }

    protected boolean isProcessingMedia(BaseDataItem dataItem) {
        return (this.mProcessingMediaMap == null || dataItem == null || !this.mProcessingMediaMap.containsKey(dataItem.getOriginalPath())) ? false : true;
    }

    private Runnable getProcessingMediaPollingRunnable() {
        if (this.mProcessingMediaPollingRunnable == null) {
            this.mProcessingMediaPollingRunnable = new ProcessingMediaPollingRunnable(this, null);
        }
        return this.mProcessingMediaPollingRunnable;
    }
}
