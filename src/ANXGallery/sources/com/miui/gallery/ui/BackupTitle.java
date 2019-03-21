package com.miui.gallery.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.agreement.AgreementsUtils;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.syncstate.SyncStateInfo;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.cloud.syncstate.SyncStateUtil;
import com.miui.gallery.cloud.syncstate.SyncStatus;
import com.miui.gallery.cloud.syncstate.SyncType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.FileSizeFormatter;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.SyncUtil.Request.Builder;
import com.miui.gallery.widget.ColorRingProgress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class BackupTitle extends LinearLayout {
    private SyncStatus mCurSyncStatus;
    private SyncType mCurSyncType;
    private View mDirtyContainer;
    private TextView mDirtyCountText;
    private ViewGroup mItemsContainer;
    private OnMenuItemClickListener mMenuItemClickListener;
    private List<PauseMenuItem> mMenuItems;
    private Animation mSyncingIconAnim;

    private abstract class BaseClickListener implements OnClickListener {
        protected abstract void onCustomClick(View view);

        private BaseClickListener() {
        }

        /* synthetic */ BaseClickListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public final void onClick(View v) {
            onCustomClick(v);
            BackupTitle.this.tryStatSyncStateCorrect(getClass().getSimpleName());
        }
    }

    private class ExpanseCloudSpaceListener extends BaseClickListener {
        private ExpanseCloudSpaceListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ ExpanseCloudSpaceListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.gotoMiCloudVipPage(BackupTitle.this.getContext());
        }
    }

    private class LoginAccountListener extends BaseClickListener {
        private LoginAccountListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ LoginAccountListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.guideToLoginXiaomiAccount(BackupTitle.this.getContext(), CloudGuideSource.TOPBAR);
        }
    }

    private class OpenSyncSwitchListener extends BaseClickListener {
        private OpenSyncSwitchListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ OpenSyncSwitchListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.gotoTurnOnSyncSwitch(BackupTitle.this.getContext());
        }
    }

    private class PauseMenuItem {
        private final int hour;
        private final int itemId;
        private final String title;

        public PauseMenuItem(String title, int hour) {
            this.itemId = Math.abs(title.hashCode());
            this.title = title;
            this.hour = hour;
        }
    }

    private class PauseSyncListener extends BaseClickListener {
        private PauseSyncListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ PauseSyncListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            BackupTitle.this.showContextMenu();
        }
    }

    private class SyncImmediateListener extends BaseClickListener {
        private SyncType mSyncType;

        public SyncImmediateListener(SyncType syncType) {
            super(BackupTitle.this, null);
            this.mSyncType = syncType;
        }

        public void onCustomClick(View v) {
            if (this.mSyncType == SyncType.GPRS_FORCE) {
                Resources res = BackupTitle.this.getContext().getResources();
                DialogUtil.showInfoDialog(BackupTitle.this.getContext(), res.getString(R.string.backup_with_gprs_dialog_message, new Object[]{FormatUtil.formatFileSize(BackupTitle.this.getContext(), SyncStateManager.getInstance().getSyncState().getDirtySize())}), res.getString(R.string.backup_with_gprs_dialog_title), (int) R.string.backup_with_gprs_dialog_btn, (int) R.string.cancel, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        BackupTitle.this.requestSync(SyncImmediateListener.this.mSyncType);
                    }
                }, null);
                return;
            }
            BackupTitle.this.requestSync(this.mSyncType);
        }
    }

    private class ResumeSyncListener extends SyncImmediateListener {
        public ResumeSyncListener(SyncType syncType) {
            super(syncType);
        }

        public void onCustomClick(View v) {
            SyncUtil.resumeSync(BackupTitle.this.getContext());
            super.onCustomClick(v);
        }
    }

    private class SetCTAListener extends BaseClickListener {
        private SetCTAListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ SetCTAListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            AgreementsUtils.showNetworkingAgreement((Activity) BackupTitle.this.getContext(), null);
        }
    }

    private class SetNetworkListener extends BaseClickListener {
        private SetNetworkListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ SetNetworkListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            BackupTitle.this.getContext().startActivity(new Intent("android.settings.SETTINGS"));
        }
    }

    private class SlimDeviceSpaceListener extends BaseClickListener {
        private SlimDeviceSpaceListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ SlimDeviceSpaceListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            IntentUtil.gotoDeepClean(BackupTitle.this.getContext());
        }
    }

    private class StopSyncListener extends BaseClickListener {
        private StopSyncListener() {
            super(BackupTitle.this, null);
        }

        /* synthetic */ StopSyncListener(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public void onCustomClick(View v) {
            SyncUtil.stopSync(BackupTitle.this.getContext());
        }
    }

    private class TitleData {
        public int mDirtyPhoto;
        public int mDirtyVideo;
        public List<TitleItemData> mItems;
        public boolean mShowDirty;

        private TitleData() {
            this.mItems = new LinkedList();
        }

        /* synthetic */ TitleData(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }
    }

    private class TitleItemData {
        public int mBtnBgRes;
        public OnClickListener mBtnClickListener;
        public CharSequence mBtnTxt;
        public CharSequence mDesc;
        public Animation mIconAnim;
        public int mIconRes;
        public float mProgress;
        public CharSequence mTitle;
        public OnClickListener mTitleClickListener;

        private TitleItemData() {
            this.mProgress = 0.0f;
        }

        /* synthetic */ TitleItemData(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }

        public TitleItemData setIconRes(int iconRes) {
            this.mIconRes = iconRes;
            return this;
        }

        public TitleItemData setTitle(CharSequence title) {
            this.mTitle = title;
            return this;
        }

        public TitleItemData setDesc(CharSequence desc) {
            this.mDesc = desc;
            return this;
        }

        public TitleItemData setBtnTxt(CharSequence btnTxt) {
            this.mBtnTxt = btnTxt;
            return this;
        }

        public TitleItemData setBtnBgRes(int btnBgRes) {
            this.mBtnBgRes = btnBgRes;
            return this;
        }

        public TitleItemData setBtnClickListener(OnClickListener btnClickListener) {
            this.mBtnClickListener = btnClickListener;
            return this;
        }

        public TitleItemData setIconAnim(Animation iconAnim) {
            this.mIconAnim = iconAnim;
            return this;
        }

        public TitleItemData setProgress(float progress) {
            this.mProgress = progress;
            return this;
        }
    }

    private class TitleItemViewHolder {
        public TextView mBtn;
        public TextView mDesc;
        public ImageView mIcon;
        public ColorRingProgress mProgress;
        public View mTextContainer;
        public TextView mTitle;

        private TitleItemViewHolder() {
        }

        /* synthetic */ TitleItemViewHolder(BackupTitle x0, AnonymousClass1 x1) {
            this();
        }
    }

    public BackupTitle(Context context) {
        this(context, null);
    }

    public BackupTitle(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BackupTitle(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mMenuItemClickListener = new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem item) {
                PauseMenuItem pauseItem = BackupTitle.this.findPauseItem(item.getItemId());
                if (pauseItem == null) {
                    return false;
                }
                if (pauseItem.hour == Integer.MAX_VALUE) {
                    SyncUtil.setSyncAutomatically(BackupTitle.this.getContext(), false);
                } else {
                    long pauseInterval = (long) (((pauseItem.hour * 60) * 60) * 1000);
                    Log.i("BackupTitle", "pause %d hours", Integer.valueOf(pauseItem.hour));
                    SyncUtil.pauseSync(BackupTitle.this.getContext(), pauseInterval);
                }
                return true;
            }
        };
        this.mCurSyncType = SyncType.UNKNOW;
        this.mCurSyncStatus = SyncStatus.UNAVAILABLE;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mItemsContainer = (ViewGroup) findViewById(R.id.item_container);
        this.mDirtyContainer = findViewById(R.id.dirty_container);
        this.mDirtyCountText = (TextView) findViewById(R.id.dirty_count_num);
    }

    private List<PauseMenuItem> getPauseMenuItems() {
        if (this.mMenuItems == null) {
            this.mMenuItems = new ArrayList();
            for (int hour : getContext().getResources().getIntArray(R.array.backup_pause_hours)) {
                this.mMenuItems.add(new PauseMenuItem(getContext().getResources().getQuantityString(R.plurals.backup_after_hours, hour, new Object[]{Integer.valueOf(hour)}), hour));
            }
        }
        return this.mMenuItems;
    }

    private PauseMenuItem findPauseItem(int itemId) {
        for (PauseMenuItem item : this.mMenuItems) {
            if (item.itemId == itemId) {
                return item;
            }
        }
        return null;
    }

    protected void onCreateContextMenu(ContextMenu menu) {
        super.onCreateContextMenu(menu);
        List<PauseMenuItem> items = getPauseMenuItems();
        for (int i = 0; i < items.size(); i++) {
            PauseMenuItem item = (PauseMenuItem) items.get(i);
            menu.add(0, item.itemId, i, item.title).setOnMenuItemClickListener(this.mMenuItemClickListener);
        }
    }

    public void refreshSyncState(SyncStateInfo syncState) {
        int i;
        TitleData data = genTitleData(syncState);
        int itemDataCount = data.mItems.size();
        int itemViewCount = this.mItemsContainer.getChildCount();
        for (i = itemDataCount; i < itemViewCount; i++) {
            this.mItemsContainer.removeViewAt(i);
        }
        for (i = 0; i < itemDataCount; i++) {
            View convertView = this.mItemsContainer.getChildAt(i);
            View view = getView((TitleItemData) data.mItems.get(i), convertView, this.mItemsContainer);
            if (view != convertView) {
                this.mItemsContainer.addView(view);
            }
        }
        if (data.mShowDirty) {
            this.mDirtyContainer.setVisibility(0);
            TextView textView = this.mDirtyCountText;
            Resources resources = getContext().getResources();
            Object[] objArr = new Object[1];
            objArr[0] = String.format("%d", new Object[]{Integer.valueOf(data.mDirtyPhoto + data.mDirtyVideo)});
            textView.setText(resources.getString(R.string.backup_dirty_num, objArr));
            return;
        }
        this.mDirtyContainer.setVisibility(8);
    }

    private View getView(TitleItemData itemData, View convertView, ViewGroup parent) {
        TitleItemViewHolder holder;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.backup_title_item, parent, false);
            holder = new TitleItemViewHolder(this, null);
            holder.mIcon = (ImageView) convertView.findViewById(R.id.icon);
            holder.mProgress = (ColorRingProgress) convertView.findViewById(R.id.progress);
            holder.mTitle = (TextView) convertView.findViewById(R.id.title);
            holder.mDesc = (TextView) convertView.findViewById(R.id.summary);
            holder.mTextContainer = convertView.findViewById(R.id.text_container);
            holder.mBtn = (TextView) convertView.findViewById(R.id.btn);
            convertView.setTag(holder);
        }
        holder = (TitleItemViewHolder) convertView.getTag();
        holder.mIcon.setImageResource(itemData.mIconRes);
        holder.mTitle.setText(itemData.mTitle);
        holder.mTextContainer.setOnClickListener(itemData.mTitleClickListener);
        if (itemData.mTitleClickListener != null) {
            holder.mTitle.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.backup_title_arrow, 0);
        } else {
            holder.mTitle.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
        if (TextUtils.isEmpty(itemData.mDesc)) {
            holder.mDesc.setVisibility(8);
        } else {
            holder.mDesc.setVisibility(0);
            holder.mDesc.setText(itemData.mDesc);
        }
        if (TextUtils.isEmpty(itemData.mBtnTxt)) {
            holder.mBtn.setVisibility(8);
        } else {
            holder.mBtn.setVisibility(0);
            holder.mBtn.setText(itemData.mBtnTxt);
            holder.mBtn.setBackgroundResource(itemData.mBtnBgRes);
            holder.mBtn.setOnClickListener(itemData.mBtnClickListener);
        }
        if (itemData.mProgress > 0.0f) {
            holder.mProgress.setVisibility(0);
            holder.mProgress.setProgress(itemData.mProgress);
        } else {
            holder.mProgress.setVisibility(4);
        }
        if (itemData.mIconAnim != null) {
            Animation anim = holder.mIcon.getAnimation();
            if (anim == null || !anim.hasStarted() || anim.hasEnded()) {
                Log.i("BackupTitle", "startAnimation");
                holder.mIcon.startAnimation(itemData.mIconAnim);
            }
        } else {
            holder.mIcon.clearAnimation();
            Log.i("BackupTitle", "clearAnimation");
        }
        return convertView;
    }

    private TitleData genTitleData(SyncStateInfo syncState) {
        TitleData data = new TitleData(this, null);
        addSyncItem(data, syncState);
        addOperationItem(data, syncState);
        addDirtyItem(data, syncState);
        return data;
    }

    private void addDirtyItem(TitleData data, SyncStateInfo syncState) {
        boolean z = true;
        switch (syncState.getSyncStatus()) {
            case SYNC_PENDING:
            case SYNCING:
            case SYNCING_METADATA:
            case SYNCED:
                data.mShowDirty = false;
                return;
            default:
                int[] dirtyCount = syncState.getDirtyCount();
                data.mDirtyPhoto = dirtyCount[0];
                data.mDirtyVideo = dirtyCount[1];
                if (dirtyCount[0] + dirtyCount[1] <= 0) {
                    z = false;
                }
                data.mShowDirty = z;
                return;
        }
    }

    private void addOperationItem(TitleData data, SyncStateInfo syncState) {
    }

    /* JADX WARNING: Missing block: B:3:0x0038, code:
            if (r6 == com.miui.gallery.cloud.syncstate.SyncStatus.UNAVAILABLE) goto L_0x0041;
     */
    /* JADX WARNING: Missing block: B:4:0x003a, code:
            r17.mItems.add(r4);
     */
    /* JADX WARNING: Missing block: B:5:0x0041, code:
            tryStatSyncStateError(r18);
     */
    /* JADX WARNING: Missing block: B:6:0x0048, code:
            return;
     */
    /* JADX WARNING: Missing block: B:8:0x005d, code:
            if (r2 != 0) goto L_0x0069;
     */
    /* JADX WARNING: Missing block: B:9:0x005f, code:
            r4.setTitle(r5.getString(com.miui.gallery.R.string.syncing_metadata_title));
     */
    /* JADX WARNING: Missing block: B:10:0x0069, code:
            r4.setIconRes(com.miui.gallery.R.drawable.backup_icon_syncing).setBtnClickListener(genClickListener(r18));
            r7 = r18.getSyncType();
     */
    /* JADX WARNING: Missing block: B:11:0x0081, code:
            if (r7 != com.miui.gallery.cloud.syncstate.SyncType.GPRS_FORCE) goto L_0x00dd;
     */
    /* JADX WARNING: Missing block: B:13:0x0085, code:
            if (r4.mTitle != null) goto L_0x0091;
     */
    /* JADX WARNING: Missing block: B:14:0x0087, code:
            r4.setTitle(r5.getString(com.miui.gallery.R.string.backuping_title_gprs));
     */
    /* JADX WARNING: Missing block: B:15:0x0091, code:
            if (r2 <= 0) goto L_0x00b6;
     */
    /* JADX WARNING: Missing block: B:16:0x0093, code:
            r4.setDesc(r5.getQuantityString(com.miui.gallery.R.plurals.backuping_desc_gprs, r2, new java.lang.Object[]{java.lang.Integer.valueOf(r2), com.miui.gallery.util.FormatUtil.formatFileSize(getContext(), r18.getDirtySize())}));
     */
    /* JADX WARNING: Missing block: B:18:0x00b8, code:
            if (r4.mBtnTxt != null) goto L_0x00ca;
     */
    /* JADX WARNING: Missing block: B:20:0x00be, code:
            if (r7.isForce() == false) goto L_0x0102;
     */
    /* JADX WARNING: Missing block: B:21:0x00c0, code:
            r4.setBtnTxt(r5.getString(com.miui.gallery.R.string.backup_stop));
     */
    /* JADX WARNING: Missing block: B:22:0x00ca, code:
            r4.setBtnBgRes(com.miui.gallery.R.drawable.list_item_btn_bg_light);
     */
    /* JADX WARNING: Missing block: B:23:0x00d2, code:
            if (r6 == com.miui.gallery.cloud.syncstate.SyncStatus.SYNC_PENDING) goto L_0x0036;
     */
    /* JADX WARNING: Missing block: B:24:0x00d4, code:
            r4.setIconAnim(getSyncingAnim());
     */
    /* JADX WARNING: Missing block: B:26:0x00df, code:
            if (r4.mTitle != null) goto L_0x00eb;
     */
    /* JADX WARNING: Missing block: B:27:0x00e1, code:
            r4.setTitle(r5.getString(com.miui.gallery.R.string.backuping_title_normal));
     */
    /* JADX WARNING: Missing block: B:28:0x00eb, code:
            if (r2 <= 0) goto L_0x00b6;
     */
    /* JADX WARNING: Missing block: B:29:0x00ed, code:
            r4.setDesc(r5.getQuantityString(com.miui.gallery.R.plurals.backuping_desc_normal, r2, new java.lang.Object[]{java.lang.Integer.valueOf(r2)}));
     */
    /* JADX WARNING: Missing block: B:30:0x0102, code:
            r4.setBtnTxt(r5.getString(com.miui.gallery.R.string.backup_pause));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void addSyncItem(TitleData data, SyncStateInfo syncState) {
        TitleItemData item = new TitleItemData(this, null);
        Resources res = getContext().getResources();
        int[] dirtys = syncState.getDirtyCount();
        int dirtyCount = dirtys[0] + dirtys[1];
        Log.i("BackupTitle", "refresh status: %s", syncState.getSyncStatus());
        SyncStatus syncStatus = syncState.getSyncStatus();
        switch (syncStatus) {
            case SYNC_PENDING:
                item.setTitle(res.getString(R.string.backup_pending));
                item.setBtnTxt(res.getString(R.string.backup_immediately));
                break;
            case SYNCING:
                break;
            case SYNCING_METADATA:
                break;
            case SYNCED:
                item.setIconRes(R.drawable.backup_icon_synced).setTitle(res.getString(R.string.backuped_title)).setDesc(res.getString(R.string.backuped_desc));
                break;
            case SYNC_PAUSE:
                item.setIconRes(R.drawable.backup_icon_syncing).setDesc(res.getQuantityString(R.plurals.backup_pause_desc, dirtyCount, new Object[]{Integer.valueOf(dirtyCount)})).setBtnTxt(res.getString(R.string.backup_immediately)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                Object[] objArr = new Object[1];
                objArr[0] = FormatUtil.formatHourMinutes(syncState.getResumeInterval(getContext()));
                item.setTitle(res.getString(R.string.backup_pause_title, objArr));
                break;
            case SYNC_ERROR:
                item.setIconRes(R.drawable.backup_icon_sync_error).setTitle(res.getString(R.string.backup_sync_error_title)).setDesc(res.getString(R.string.backup_sync_error_desc)).setBtnTxt(res.getString(R.string.backup_sync_error_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case UNKNOWN_ERROR:
                item.setIconRes(R.drawable.backup_icon_sync_error).setTitle(res.getString(R.string.backup_need_sync_title)).setDesc(res.getString(R.string.backup_need_sync_desc)).setBtnTxt(res.getString(R.string.backup_immediately)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case NO_ACCOUNT:
            case MASTER_SYNC_OFF:
            case SYNC_OFF:
                item.setIconRes(R.drawable.backup_icon_sync_setting_off).setTitle(res.getString(R.string.backup_sync_off_title)).setDesc(res.getString(R.string.backup_sync_off_desc)).setBtnTxt(res.getString(R.string.backup_sync_off_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case CTA_NOT_ALLOW:
                item.setIconRes(R.drawable.backup_icon_cta_not_allow).setTitle(res.getString(R.string.backup_cta_not_allow_title)).setDesc(res.getString(R.string.backup_cta_not_allow_desc)).setBtnTxt(res.getString(R.string.backup_cta_not_allow_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case DISCONNECTED:
                item.setIconRes(R.drawable.backup_icon_net_error).setTitle(res.getString(R.string.backup_no_network_title)).setDesc(res.getString(R.string.backup_no_network_desc)).setBtnTxt(res.getString(R.string.backup_no_network_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case NO_WIFI:
                item.setIconRes(R.drawable.backup_icon_net_error).setTitle(res.getString(R.string.backup_no_wifi_title)).setDesc(res.getString(R.string.backup_no_wifi_desc)).setBtnTxt(res.getString(R.string.backup_no_wifi_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case BATTERY_LOW:
                item.setIconRes(R.drawable.backup_icon_battery_low).setTitle(res.getString(R.string.backup_battery_low_title)).setDesc(res.getString(R.string.backup_battery_low_desc)).setBtnTxt(res.getString(R.string.backup_immediately)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case SYSTEM_SPACE_LOW:
                item.setIconRes(R.drawable.backup_icon_device_storage_low).setTitle(res.getString(R.string.backup_device_space_low_title)).setDesc(res.getString(R.string.backup_device_space_low_desc)).setBtnTxt(res.getString(R.string.backup_device_space_low_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                break;
            case CLOUD_SPACE_FULL:
                item.setIconRes(R.drawable.backup_icon_cloud_storage_low).setTitle(res.getString(R.string.backup_cloud_space_low_title)).setDesc(res.getString(R.string.backup_cloud_space_low_desc, new Object[]{SyncStateUtil.getQuantityStringWithUnit(getContext(), syncState.getCloudSpaceTotalSize()), SyncStateUtil.getQuantityStringWithUnit(getContext(), syncState.getCloudSpaceRemainingSize())})).setBtnTxt(res.getString(R.string.backup_cloud_space_low_btn_text)).setBtnBgRes(R.drawable.list_item_btn_bg_light).setBtnClickListener(genClickListener(syncState));
                if (syncState.getCloudSpaceTotalSize() > 0) {
                    item.setProgress(1.0f - ((1.0f * ((float) syncState.getCloudSpaceRemainingSize())) / ((float) syncState.getCloudSpaceTotalSize())));
                    break;
                }
                break;
            case SYNCED_WITH_OVERSIZED_FILE:
                item.setIconRes(R.drawable.backup_icon_sync_error).setTitle(res.getQuantityString(R.plurals.backup_file_over_size_title, dirtyCount, new Object[]{Integer.valueOf(dirtyCount)})).setDesc(res.getString(R.string.backup_file_over_size_desc, new Object[]{FileSizeFormatter.formatShortFileSize(getContext(), CloudUtils.getMaxImageSizeLimit()), FileSizeFormatter.formatShortFileSize(getContext(), CloudUtils.getMaxVideoSizeLimit())}));
                break;
        }
    }

    private boolean isNormalSyncStatus(SyncStatus syncStatus) {
        return syncStatus == SyncStatus.SYNC_PENDING || syncStatus == SyncStatus.SYNCING || syncStatus == SyncStatus.SYNCING_METADATA || syncStatus == SyncStatus.SYNCED;
    }

    private void tryStatSyncStateError(SyncStateInfo syncState) {
        SyncStatus status = syncState.getSyncStatus();
        if (!(isNormalSyncStatus(status) || (this.mCurSyncType == syncState.getSyncType() && this.mCurSyncStatus == status))) {
            HashMap<String, String> params = new HashMap();
            params.put("error_state", syncState.getSyncType().name() + "_" + status.name());
            BaseSamplingStatHelper.recordCountEvent("Sync", "sync_state_error", params);
        }
        this.mCurSyncType = syncState.getSyncType();
        this.mCurSyncStatus = status;
    }

    private void tryStatSyncStateCorrect(String clickName) {
        if (this.mCurSyncStatus != null && this.mCurSyncType != null && !isNormalSyncStatus(this.mCurSyncStatus)) {
            HashMap<String, String> params = new HashMap();
            params.put("error_correct", this.mCurSyncType.name() + "_" + this.mCurSyncStatus.name() + "_" + clickName);
            BaseSamplingStatHelper.recordCountEvent("Sync", "sync_state_error_correct", params);
        }
    }

    private Animation getSyncingAnim() {
        if (this.mSyncingIconAnim == null) {
            this.mSyncingIconAnim = AnimationUtils.loadAnimation(getContext(), R.anim.photo_status_syncing_rotate_anim);
        }
        return this.mSyncingIconAnim;
    }

    private SyncType getImmediateSyncType(SyncStateInfo curState) {
        SyncType syncType = curState.getSyncType();
        SyncStatus syncStatus = curState.getSyncStatus();
        if (syncStatus == SyncStatus.BATTERY_LOW) {
            return SyncType.POWER_FORCE;
        }
        if (syncStatus == SyncStatus.NO_WIFI) {
            return SyncType.GPRS_FORCE;
        }
        if (syncStatus == SyncStatus.UNKNOWN_ERROR) {
            return SyncType.NORMAL;
        }
        return syncType;
    }

    private OnClickListener genClickListener(SyncStateInfo stateInfo) {
        switch (stateInfo.getSyncStatus()) {
            case SYNC_PENDING:
            case SYNC_ERROR:
            case UNKNOWN_ERROR:
            case NO_WIFI:
            case BATTERY_LOW:
                return new SyncImmediateListener(getImmediateSyncType(stateInfo));
            case SYNCING:
            case SYNCING_METADATA:
                if (stateInfo.getSyncType().isForce()) {
                    return new StopSyncListener(this, null);
                }
                return new PauseSyncListener(this, null);
            case SYNC_PAUSE:
                return new ResumeSyncListener(getImmediateSyncType(stateInfo));
            case NO_ACCOUNT:
                return new LoginAccountListener(this, null);
            case MASTER_SYNC_OFF:
            case SYNC_OFF:
                return new OpenSyncSwitchListener(this, null);
            case CTA_NOT_ALLOW:
                return new SetCTAListener(this, null);
            case DISCONNECTED:
                return new SetNetworkListener(this, null);
            case SYSTEM_SPACE_LOW:
                return new SlimDeviceSpaceListener(this, null);
            case CLOUD_SPACE_FULL:
                return new ExpanseCloudSpaceListener(this, null);
            default:
                return null;
        }
    }

    private void requestSync(SyncType syncType) {
        SyncUtil.requestSync(getContext(), new Builder().setSyncType(syncType).setSyncReason(1).setDelayUpload(false).setManual(true).build());
    }
}
