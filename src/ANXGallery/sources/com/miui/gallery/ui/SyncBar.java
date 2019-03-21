package com.miui.gallery.ui;

import android.accounts.Account;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.BackupDetailActivity;
import com.miui.gallery.activity.CloudSpaceStatusActivity;
import com.miui.gallery.cloud.AccountCache;
import com.miui.gallery.cloud.download.BatchDownloadManager;
import com.miui.gallery.cloud.download.BatchDownloadManager.BatchItem;
import com.miui.gallery.cloud.download.BatchDownloadManager.OnBatchDownloadListener;
import com.miui.gallery.cloud.syncstate.OnSyncStateChangeObserver;
import com.miui.gallery.cloud.syncstate.SyncStateInfo;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncStatus;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.error.BaseErrorCodeTranslator;
import com.miui.gallery.error.core.ErrorCode;
import com.miui.gallery.error.core.ErrorCodeTranslator;
import com.miui.gallery.error.core.ErrorTip;
import com.miui.gallery.error.core.ErrorTranslateCallback;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.preference.GalleryPreferences.TopBar;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.AlertDialogFragment.Builder;
import com.miui.gallery.ui.HomePageTopBarController.HomePageBar;
import com.miui.gallery.util.AppFocusedCheckHelper.OnAppFocusedListener;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.widget.PanelItemLayout;
import com.miui.gallery.widget.PanelManager;
import com.miui.os.Rom;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class SyncBar extends HomePageBar implements OnAppFocusedListener {
    private static LinkedList<SyncStatus> sDownloadOverlayStatus = new LinkedList();
    private TextView mDesc;
    private DownloadManager mDownloadManager = new DownloadManager(this, 1);
    private PanelData mDownloadPanelData;
    private PanelItemLayout mPanelItem;
    private SyncManager mSyncManager = new SyncManager(this, 0);
    private PanelData mSyncPanelData;

    private static abstract class ChildManager {
        private final SyncBar mBar;
        private final int mKey;

        public ChildManager(SyncBar bar, int key) {
            this.mBar = bar;
            this.mKey = key;
        }

        protected final int getKey() {
            return this.mKey;
        }

        public boolean refresh(PanelData data, boolean autoShow) {
            return this.mBar.refresh(data, autoShow, getKey());
        }

        public boolean isPermanent() {
            return this.mBar.isPermanent();
        }

        public Context getContext() {
            return this.mBar.getContext();
        }
    }

    private static final class DownloadManager extends ChildManager implements OnClickListener, OnBatchDownloadListener {
        private static LinkedList<ErrorCode> sNeedShowError = new LinkedList();
        private ErrorCode mCurError = ErrorCode.NO_ERROR;
        private int mDownloadState = 0;
        private ErrorHandler mErrorHandler;

        private static class ErrorHandler {
            private Context mContext;
            private ErrorCodeTranslator mErrorCodeTranslator = new BaseErrorCodeTranslator();
            private ErrorTip mErrorTip;

            ErrorHandler(Context context) {
                this.mContext = context;
            }

            public void handleError(ErrorCode errorCode, final ErrorTranslateCallback callback) {
                this.mErrorCodeTranslator.translate(this.mContext, errorCode, new ErrorTranslateCallback() {
                    public void onTranslate(ErrorTip tip) {
                        ErrorHandler.this.mErrorTip = tip;
                        if (callback != null) {
                            callback.onTranslate(tip);
                        }
                    }
                });
            }

            public ErrorTip getErrorTip() {
                return this.mErrorTip;
            }

            public void clearError() {
                this.mErrorTip = null;
            }
        }

        static {
            sNeedShowError.add(ErrorCode.STORAGE_FULL);
            sNeedShowError.add(ErrorCode.PRIMARY_STORAGE_WRITE_ERROR);
            sNeedShowError.add(ErrorCode.SECONDARY_STORAGE_WRITE_ERROR);
            sNeedShowError.add(ErrorCode.STORAGE_LOW);
        }

        public DownloadManager(SyncBar bar, int key) {
            super(bar, key);
        }

        public void onResume() {
            if (Preference.sIsFirstSynced() && BatchDownloadManager.canAutoDownload()) {
                BatchDownloadManager.getInstance().startBatchDownload(getContext(), false);
            }
            BatchDownloadManager.getInstance().registerBatchDownloadListener(this);
        }

        public void onPause() {
            BatchDownloadManager.getInstance().unregisterBatchDownloadListener(this);
        }

        private ErrorHandler getErrorHandler() {
            if (this.mErrorHandler == null) {
                this.mErrorHandler = new ErrorHandler(getContext());
            }
            return this.mErrorHandler;
        }

        public void onDownloadComplete(List<BatchItem> list, List<BatchItem> list2, ErrorCode code) {
            boolean downloadError;
            if (code == null || code == ErrorCode.NO_ERROR) {
                downloadError = false;
            } else {
                downloadError = true;
            }
            if (downloadError) {
                this.mDownloadState = 3;
                getErrorHandler().handleError(code, new ErrorTranslateCallback() {
                    public void onTranslate(ErrorTip tip) {
                        if (DownloadManager.this.mDownloadState == 3) {
                            if (tip != null) {
                                CharSequence error = tip.getTitle(DownloadManager.this.getContext());
                                if (!TextUtils.isEmpty(error)) {
                                    if (DownloadManager.this.refresh(new PanelData(error + DownloadManager.this.getContext().getString(R.string.download_error_tip), null, null, true, DownloadManager.this), true)) {
                                        DownloadManager.this.mCurError = tip.getCode();
                                        return;
                                    }
                                    return;
                                }
                            }
                            DownloadManager.this.refresh(new PanelData(null, null, null, false, DownloadManager.this), false);
                        }
                    }
                });
                return;
            }
            this.mDownloadState = 2;
            refresh(new PanelData(null, null, null, false, this), false);
        }

        public void onDownloadProgress(List<BatchItem> success, List<BatchItem> total) {
            this.mDownloadState = 1;
            if (this.mErrorHandler != null) {
                this.mErrorHandler.clearError();
            }
            refresh(new PanelData(getContext().getResources().getString(R.string.downloading_title), getContext().getResources().getString(R.string.downloading_desc, new Object[]{Integer.valueOf(success.size()), Integer.valueOf(total.size())}), null, false, this), false);
        }

        public void onDownloadCancelled(List<BatchItem> list, List<BatchItem> list2) {
            this.mDownloadState = 0;
            refresh(new PanelData(null, null, null, false, this), false);
        }

        public boolean needShow() {
            if (this.mDownloadState == 1) {
                return true;
            }
            if (this.mDownloadState == 3) {
                ErrorTip tip = getErrorHandler().getErrorTip();
                if (tip != null && sNeedShowError.contains(tip.getCode())) {
                    if (this.mCurError == tip.getCode()) {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        }

        public void onClick(View v) {
            Resources res = getContext().getResources();
            Builder builder = null;
            if (this.mDownloadState == 1) {
                statClickWhenDownloading();
                builder = new Builder().setTitle(res.getString(R.string.downloading_title)).setMessage(res.getString(R.string.downloading_dialog_message)).setPositiveButton(res.getString(R.string.ok), null);
            }
            if (this.mDownloadState == 3) {
                final ErrorTip tip = getErrorHandler().getErrorTip();
                if (tip != null) {
                    builder = new Builder().setMessage(tip.getMessage(getContext())).setPositiveButton(tip.getActionStr(getContext()), new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            tip.action(DownloadManager.this.getContext(), null);
                        }
                    }).setNegativeButton(res.getString(R.string.cancel_download_btn_text), new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            Sync.setAutoDownload(false);
                            BatchDownloadManager.getInstance().stopBatchDownload(DownloadManager.this.getContext());
                        }
                    });
                }
            }
            if (builder != null && (getContext() instanceof Activity)) {
                builder.create().showAllowingStateLoss(((Activity) getContext()).getFragmentManager(), "download");
            }
        }

        private void statClickWhenDownloading() {
            BaseSamplingStatHelper.recordCountEvent("Sync", "sync_auto_download_click_when_downloading");
        }
    }

    private static final class PanelData {
        public final String desc;
        public final OnClickListener listener;
        public final boolean showArrow;
        public final String title;
        public final Drawable titleDrawable;

        public PanelData(String title, String desc, Drawable titleDrawable, boolean showArrow, OnClickListener listener) {
            this.title = title;
            this.desc = desc;
            this.titleDrawable = titleDrawable;
            this.showArrow = showArrow;
            this.listener = listener;
        }
    }

    private static final class SyncManager extends ChildManager implements OnClickListener, OnSyncStateChangeObserver, OnAppFocusedListener {
        private static List<SyncStatus> sMemoryShowOnceStatus = new LinkedList();
        private static List<SyncStatus> sPersistentShowOnceStatus = new LinkedList();
        private static List<SyncStatus> sWarnStatus = new LinkedList();
        private SyncStatus mCurSyncStatus;
        private Future mDispatchTask;

        static {
            sMemoryShowOnceStatus.add(SyncStatus.SYNCING_METADATA);
            sMemoryShowOnceStatus.add(SyncStatus.SYNC_ERROR);
            sMemoryShowOnceStatus.add(SyncStatus.CTA_NOT_ALLOW);
            sPersistentShowOnceStatus.add(SyncStatus.NO_ACCOUNT);
            sPersistentShowOnceStatus.add(SyncStatus.MASTER_SYNC_OFF);
            sPersistentShowOnceStatus.add(SyncStatus.SYNC_OFF);
            sPersistentShowOnceStatus.add(SyncStatus.SYSTEM_SPACE_LOW);
            sPersistentShowOnceStatus.add(SyncStatus.CLOUD_SPACE_FULL);
            sWarnStatus.add(SyncStatus.SYNC_ERROR);
            sWarnStatus.add(SyncStatus.CTA_NOT_ALLOW);
            sWarnStatus.add(SyncStatus.SYSTEM_SPACE_LOW);
            sWarnStatus.add(SyncStatus.CLOUD_SPACE_FULL);
        }

        public SyncManager(SyncBar bar, int key) {
            super(bar, key);
        }

        private boolean needRequestSync() {
            boolean cancelSuccess = true;
            Account account = AccountCache.getAccount();
            if (!(account == null || !Preference.sIsFirstSynced() || ContentResolver.isSyncActive(account, "com.miui.gallery.cloud.provider"))) {
                SyncStateInfo info = SyncStateManager.getInstance().getSyncState();
                SyncStatus status = info.getSyncStatus();
                boolean isPendingDispatch = ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider");
                int[] dirtyCount = info.getDirtyCount();
                if (dirtyCount[0] + dirtyCount[1] > 0 && status == SyncStatus.UNKNOWN_ERROR && !isPendingDispatch) {
                    Log.d("SyncBar", "has dirty data & no pending request");
                    return true;
                } else if (status == SyncStatus.SYNCED && isPendingDispatch) {
                    Log.d("SyncBar", "no dirty data & has pending request");
                    ContentResolver.cancelSync(account, "com.miui.gallery.cloud.provider");
                    if (ContentResolver.isSyncPending(account, "com.miui.gallery.cloud.provider")) {
                        cancelSuccess = false;
                    }
                    Log.d("SyncBar", "cancel pending result %s", Boolean.valueOf(cancelSuccess));
                    return cancelSuccess;
                }
            }
            return false;
        }

        public void onResume() {
            SyncStateManager.getInstance().registerSyncStateObserver(getContext(), this);
        }

        public void onPause() {
            SyncStateManager.getInstance().unregisterSyncStateObserver(getContext(), this);
        }

        public void onAppFocused() {
            if (this.mDispatchTask == null || this.mDispatchTask.isDone()) {
                this.mDispatchTask = ThreadManager.getMiscPool().submit(new Job() {
                    public Object run(JobContext jc) {
                        if (SyncManager.this.needRequestSync()) {
                            SyncUtil.requestSync(SyncManager.this.getContext(), new Request.Builder().setSyncType(SyncType.NORMAL).setSyncReason(1).setDelayUpload(true).build());
                        }
                        return null;
                    }
                });
            }
        }

        public SyncStatus getCurSyncStatus() {
            return SyncStateManager.getInstance().getSyncState().getSyncStatus();
        }

        public void onSyncStateChanged(SyncStateInfo newValue) {
            refreshSyncBar(newValue);
        }

        public void onClick(View v) {
            Context context = getContext();
            SyncStatus status = SyncStateManager.getInstance().getSyncState().getSyncStatus();
            HashMap<String, String> params = new HashMap();
            switch (status) {
                case SYNCED:
                    context.startActivity(new Intent(context, CloudSpaceStatusActivity.class));
                    break;
                case NO_ACCOUNT:
                    params.put("permanent", String.valueOf(isPermanent()));
                    IntentUtil.guideToLoginXiaomiAccount(context, CloudGuideSource.TOPBAR);
                    break;
                case MASTER_SYNC_OFF:
                case SYNC_OFF:
                    IntentUtil.gotoTurnOnSyncSwitch(context);
                    break;
                default:
                    context.startActivity(new Intent(context, BackupDetailActivity.class));
                    break;
            }
            statSyncBarClickEvent(status.name(), params);
        }

        private boolean hasShowSyncStatusPersistent() {
            for (SyncStatus status : sPersistentShowOnceStatus) {
                if (TopBar.hasShowedSyncStatusTip(status)) {
                    return true;
                }
            }
            return false;
        }

        private void removeSyncStatusPersistent() {
            for (SyncStatus status : sPersistentShowOnceStatus) {
                TopBar.setHasShowedSyncStatusTip(status, false);
            }
        }

        private boolean hasShowSyncStatusPersistent(SyncStatus status) {
            boolean hasShowed = TopBar.hasShowedSyncStatusTip(status);
            if (!hasShowed) {
                TopBar.setHasShowedSyncStatusTip(status, true);
            }
            return hasShowed;
        }

        private boolean canAutoOpenDrawer(SyncStatus syncStatus) {
            if (isPermanent()) {
                return true;
            }
            if (sMemoryShowOnceStatus.contains(syncStatus)) {
                if (this.mCurSyncStatus == syncStatus) {
                    return false;
                }
                return true;
            } else if (!sPersistentShowOnceStatus.contains(syncStatus)) {
                return false;
            } else {
                if (hasShowSyncStatusPersistent(syncStatus)) {
                    return false;
                }
                return true;
            }
        }

        private boolean needShowWarning(SyncStatus status) {
            return sWarnStatus.contains(status);
        }

        private boolean needShowSyncBar(SyncStatus syncStatus) {
            if (Rom.IS_INTERNATIONAL && (syncStatus == SyncStatus.NO_ACCOUNT || syncStatus == SyncStatus.MASTER_SYNC_OFF || syncStatus == SyncStatus.SYNC_OFF)) {
                return CloudControlStrategyHelper.getSyncStrategy().isGuideCloudInternational();
            }
            return true;
        }

        private Drawable getTitleDrawable(boolean warning) {
            return warning ? getContext().getResources().getDrawable(R.drawable.sync_icon_error) : null;
        }

        private void refreshSyncBar(SyncStateInfo syncState) {
            String title = null;
            String desc = null;
            boolean canClick = true;
            Resources res = getContext().getResources();
            int[] dirtyCount = syncState.getDirtyCount();
            int dirtys = dirtyCount[0] + dirtyCount[1];
            SyncStatus syncStatus = syncState.getSyncStatus();
            switch (syncStatus) {
                case SYNCED:
                    int[] syncedCount = syncState.getSyncedCount();
                    int synceds = syncedCount[0] + syncedCount[1];
                    title = res.getString(R.string.synced_title);
                    if (synceds > 0) {
                        desc = String.format("%d", new Object[]{Integer.valueOf(synceds)});
                        break;
                    }
                    break;
                case NO_ACCOUNT:
                case MASTER_SYNC_OFF:
                case SYNC_OFF:
                    title = res.getString(R.string.sync_off_title);
                    break;
                case SYNC_PENDING:
                    if (!Preference.sIsFirstSynced() && dirtys <= 0) {
                        title = res.getString(R.string.sync_metatata_wait_title);
                        break;
                    } else {
                        title = res.getString(R.string.sync_pending_title);
                        break;
                    }
                    break;
                case SYNCING:
                    break;
                case SYNCING_METADATA:
                    title = res.getString(R.string.syncing_metadata_title);
                    int[] hasSyncedCount = syncState.getSyncedCount();
                    if (hasSyncedCount[0] + hasSyncedCount[1] > 0) {
                        desc = String.format("%d", new Object[]{Integer.valueOf(hasSyncedCount[0] + hasSyncedCount[1])});
                    }
                    canClick = false;
                    break;
                case CTA_NOT_ALLOW:
                    title = res.getString(R.string.sync_not_allow_cta_title);
                    break;
                case SYNCED_WITH_OVERSIZED_FILE:
                    title = res.getQuantityString(R.plurals.sync_oversized_count, dirtys, new Object[]{Integer.valueOf(dirtys)});
                    break;
                default:
                    if (dirtys <= 0) {
                        if (!Preference.sIsFirstSynced()) {
                            title = res.getString(R.string.sync_metatata_wait_title);
                            break;
                        } else {
                            title = res.getString(R.string.sync_state_unknow);
                            break;
                        }
                    }
                    title = res.getQuantityString(R.plurals.sync_error_title, dirtys, new Object[]{Integer.valueOf(dirtys)});
                    break;
            }
            if (title == null) {
                if (syncState.getSyncType() == SyncType.GPRS_FORCE) {
                    title = res.getString(R.string.syncing_gprs_title);
                } else {
                    title = res.getString(R.string.syncing_normal_title);
                }
            }
            if (dirtys > 0) {
                desc = String.format("%d", new Object[]{Integer.valueOf(dirtys)});
                if (hasShowSyncStatusPersistent()) {
                    removeSyncStatusPersistent();
                }
            }
            canClick = dirtys > 0;
            boolean autoShow = canAutoOpenDrawer(syncStatus);
            boolean show = refresh(new PanelData(title, desc, getTitleDrawable(needShowWarning(syncStatus)), canClick, canClick ? this : null), autoShow);
            if (!needShowSyncBar(syncStatus)) {
                this.mCurSyncStatus = syncStatus;
            } else if (show) {
                this.mCurSyncStatus = syncStatus;
                if (autoShow) {
                    statSyncBarAutoShowEvent(syncStatus.name());
                }
            }
            Log.i("SyncBar", "refresh sync bar: %s, showBar: %s", syncState.getSyncStatus(), Boolean.valueOf(autoShow));
        }

        public boolean needShow() {
            return needShowSyncBar(SyncStateManager.getInstance().getSyncState().getSyncStatus());
        }

        private void statSyncBarClickEvent(String status, HashMap<String, String> params) {
            BaseSamplingStatHelper.recordCountEvent("home_sync_bar", String.format(Locale.US, "sync_bar_click_%s", new Object[]{status}), params);
        }

        private void statSyncBarAutoShowEvent(String status) {
            BaseSamplingStatHelper.recordCountEvent("home_sync_bar", String.format(Locale.US, "sync_bar_show_%s", new Object[]{status}));
        }
    }

    static {
        sDownloadOverlayStatus.add(SyncStatus.MASTER_SYNC_OFF);
        sDownloadOverlayStatus.add(SyncStatus.SYNC_OFF);
        sDownloadOverlayStatus.add(SyncStatus.SYNCED);
    }

    public SyncBar(Context context, int priority, PanelManager manager) {
        super(context, priority, manager);
    }

    private void ensureView() {
        if (this.mPanelItem == null) {
            this.mPanelItem = new PanelItemLayout(getContext());
            this.mDesc = new TextView(getContext());
            this.mDesc.setTextColor(getContext().getResources().getColor(R.color.custom_list_value_color));
            this.mDesc.setTextSize(0, (float) getContext().getResources().getDimensionPixelSize(R.dimen.custom_list_value_size));
            this.mPanelItem.addDetail(this.mDesc);
        }
    }

    public View getView() {
        ensureView();
        return this.mPanelItem.getView();
    }

    public void onResume() {
        this.mSyncManager.onResume();
        this.mDownloadManager.onResume();
    }

    public void onPause() {
        this.mSyncManager.onPause();
        this.mDownloadManager.onPause();
    }

    public void onAppFocused() {
        this.mSyncManager.onAppFocused();
    }

    public void onDestroy() {
    }

    public boolean refresh(PanelData data, boolean autoShow, int childKey) {
        if (this.mPanelItem == null || this.mSyncManager.needShow() || this.mDownloadManager.needShow()) {
            boolean needRefresh = false;
            if (childKey == 1) {
                this.mDownloadPanelData = data;
                if (this.mDownloadManager.needShow()) {
                    needRefresh = !this.mSyncManager.needShow() || sDownloadOverlayStatus.contains(this.mSyncManager.getCurSyncStatus());
                }
                if (!needRefresh) {
                    if (!this.mSyncManager.needShow() || this.mSyncPanelData == null) {
                        needRefresh = false;
                    } else {
                        needRefresh = true;
                    }
                    autoShow = this.mSyncManager.canAutoOpenDrawer(this.mSyncManager.getCurSyncStatus());
                    data = this.mSyncPanelData;
                }
            }
            if (childKey == 0) {
                this.mSyncPanelData = data;
                if (this.mSyncManager.needShow()) {
                    if (this.mDownloadManager.needShow() && sDownloadOverlayStatus.contains(this.mSyncManager.getCurSyncStatus())) {
                        needRefresh = false;
                    } else {
                        needRefresh = true;
                    }
                }
                if (!needRefresh) {
                    if (!this.mDownloadManager.needShow() || this.mDownloadPanelData == null) {
                        needRefresh = false;
                    } else {
                        needRefresh = true;
                    }
                    data = this.mDownloadPanelData;
                }
            }
            if (needRefresh) {
                ensureView();
                this.mPanelItem.setTitle(data.title);
                this.mDesc.setText(data.desc);
                this.mPanelItem.setTitleDrawable(data.titleDrawable);
                this.mPanelItem.showArrow(data.showArrow);
                this.mPanelItem.setOnClickListener(data.listener);
                this.mPanelManager.addItem(this, autoShow);
            }
            return needRefresh;
        }
        this.mPanelManager.removeItem(this, false);
        return false;
    }
}
