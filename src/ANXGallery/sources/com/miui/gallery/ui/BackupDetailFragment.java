package com.miui.gallery.ui;

import android.app.Activity;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.collect.Lists;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter.AlbumType;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.cloud.syncstate.OnSyncStateChangeObserver;
import com.miui.gallery.cloud.syncstate.SyncStateInfo;
import com.miui.gallery.cloud.syncstate.SyncStateManager;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.sdk.SyncStatus;
import com.miui.gallery.sdk.uploadstatus.ItemType;
import com.miui.gallery.sdk.uploadstatus.SyncProxy;
import com.miui.gallery.sdk.uploadstatus.UploadStatusItem;
import com.miui.gallery.sdk.uploadstatus.UploadStatusProxy.UploadStatusChangedListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.miui.gallery.widget.TwoStageDrawer;
import java.util.List;
import java.util.Locale;

public class BackupDetailFragment extends PhotoListFragmentBase implements OnSyncStateChangeObserver, UploadStatusChangedListener {
    private BackupTitle mBackUpTitle;
    private BackupDetailAdapter mBackupDetailAdapter;
    protected LoaderCallbacks mLoaderCallback;
    private List<String> mUploadedItems = Lists.newArrayList();

    static class BackupDetailAdapter extends AlbumDetailSimpleAdapter {
        private static final int COLUMN_INDEX_ALBUM_ID = PROJECTION_INTERNAL.length;
        public static String[] PROJECTION = new String[(PROJECTION_INTERNAL.length + 1)];

        class SecretItem {
            private int mCount;
            private ImageView mSyncIndicator;
            private int mSyncState;
            private int mSyncedCount;
            private TextView mText;

            public SecretItem(View itemView) {
                this.mText = (TextView) itemView.findViewById(R.id.secret_count);
                this.mSyncIndicator = (ImageView) itemView.findViewById(R.id.sync_indicator);
            }

            private void bindSyncState(Context context, int newState, boolean showSyncedIndicator) {
                int visibility = 0;
                int resId = 0;
                Animation animation = null;
                switch (newState) {
                    case 0:
                    case 1:
                        if (!showSyncedIndicator) {
                            if (this.mSyncState == 2) {
                                visibility = 8;
                                resId = R.drawable.photo_status_sync_succ;
                                animation = AnimationUtils.loadAnimation(context, R.anim.photo_status_sync_succ_disappear_anim);
                                break;
                            }
                            visibility = 8;
                            break;
                        }
                        resId = R.drawable.photo_status_sync_succ;
                        animation = null;
                        break;
                    case 2:
                        resId = R.drawable.photo_status_syncable;
                        animation = AnimationUtils.loadAnimation(context, R.anim.photo_status_syncing_rotate_anim);
                        break;
                    case 3:
                        resId = R.drawable.photo_status_syncable;
                        animation = null;
                        break;
                    case 4:
                        resId = R.drawable.photo_status_unsyncable;
                        animation = null;
                        break;
                    case Integer.MAX_VALUE:
                        resId = 0;
                        animation = null;
                        break;
                    default:
                        throw new IllegalArgumentException("unknow status: " + newState);
                }
                this.mSyncState = newState;
                this.mSyncIndicator.setImageResource(resId);
                this.mSyncIndicator.setVisibility(visibility);
                if (animation != null) {
                    this.mSyncIndicator.startAnimation(animation);
                } else {
                    this.mSyncIndicator.clearAnimation();
                }
            }

            public void bindView(Context context, Cursor cursor) {
                int count = cursor.getInt(11);
                int syncedCount = cursor.getInt(8);
                if (!(this.mCount == count && syncedCount == this.mSyncedCount)) {
                    this.mCount = count;
                    this.mSyncedCount = syncedCount;
                    this.mText.setText(String.format(Locale.US, "%d/%d", new Object[]{Integer.valueOf(this.mSyncedCount), Integer.valueOf(this.mCount)}));
                }
                int syncState = BackupDetailAdapter.this.getSyncState(cursor);
                if (this.mSyncState != syncState) {
                    bindSyncState(context, syncState, false);
                }
            }
        }

        static {
            System.arraycopy(PROJECTION_INTERNAL, 0, PROJECTION, 0, PROJECTION_INTERNAL.length);
            PROJECTION[PROJECTION_INTERNAL.length] = "localGroupId";
        }

        public BackupDetailAdapter(Context context, DisplayScene type, int syncStateDisplayOptions) {
            super(context, type, syncStateDisplayOptions);
        }

        public int getSecretCount() {
            if (getCursor() == null) {
                return 0;
            }
            getCursor().moveToLast();
            if (getCursor().getLong(0) == -1000) {
                return getCursor().getInt(COLUMN_INDEX_ALBUM_ID);
            }
            return 0;
        }

        public int getViewTypeCount() {
            return 2;
        }

        public int getItemViewType(int position) {
            if (-1000 == getItemId(position)) {
                return 1;
            }
            return 0;
        }

        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
            if (getItemViewType(cursor.getPosition()) == 0) {
                return super.newView(context, cursor, viewGroup);
            }
            View view = LayoutInflater.from(context).inflate(R.layout.backup_secret_item, viewGroup, false);
            view.setTag(new SecretItem(view));
            return view;
        }

        public void doBindData(View view, Context context, Cursor cursor) {
            if (getItemId(cursor.getPosition()) == -1000) {
                ((SecretItem) view.getTag()).bindView(context, cursor);
            } else {
                super.doBindData(view, context, cursor);
            }
        }

        private boolean isSecretItem(Cursor cursor) {
            return cursor.getLong(COLUMN_INDEX_ALBUM_ID) == -1000;
        }

        private int mergeSyncState(int oldState, int newState) {
            switch (newState) {
                case 0:
                case 1:
                    if (oldState < newState || oldState == Integer.MAX_VALUE) {
                        oldState = newState;
                    }
                    return oldState;
                case 2:
                    return newState;
                case 3:
                    if (oldState == 2) {
                        return oldState;
                    }
                    return newState;
                case 4:
                    if (oldState == 2 || oldState == 3) {
                        return oldState;
                    }
                    return newState;
                default:
                    return oldState;
            }
        }

        public Cursor classifyCursor(Cursor cursor) {
            MatrixCursor matrixCursor = null;
            int secretCount = 0;
            int secretSynced = 0;
            int syncState = Integer.MAX_VALUE;
            if (cursor != null && cursor.moveToFirst()) {
                String[] projection = PROJECTION;
                int columnsLen = projection.length;
                Object[] columns = new Object[columnsLen];
                matrixCursor = new MatrixCursor(projection);
                do {
                    if (isSecretItem(cursor)) {
                        int state = getSyncState(cursor);
                        syncState = mergeSyncState(syncState, state);
                        if (state == 0) {
                            secretSynced++;
                        }
                        secretCount++;
                    } else {
                        for (int index = 0; index < columnsLen; index++) {
                            switch (cursor.getType(index)) {
                                case 0:
                                    columns[index] = null;
                                    break;
                                case 1:
                                    columns[index] = Long.valueOf(cursor.getLong(index));
                                    break;
                                case 2:
                                    columns[index] = Double.valueOf(cursor.getDouble(index));
                                    break;
                                case 3:
                                    columns[index] = cursor.getString(index);
                                    break;
                                default:
                                    break;
                            }
                        }
                        matrixCursor.addRow(columns);
                    }
                } while (cursor.moveToNext());
                if (secretCount > 0) {
                    columns[0] = Long.valueOf(-1000);
                    columns[8] = Integer.valueOf(secretSynced);
                    columns[11] = Integer.valueOf(secretCount);
                    columns[12] = Integer.valueOf(syncState);
                    matrixCursor.addRow(columns);
                }
            }
            return matrixCursor;
        }
    }

    class BackupLoaderCallBack implements LoaderCallbacks {
        BackupLoaderCallBack() {
        }

        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader cursorLoader = new CursorLoader(BackupDetailFragment.this.mActivity);
            BackupDetailFragment.this.configLoader(cursorLoader);
            return cursorLoader;
        }

        public void onLoadFinished(Loader loader, Object data) {
            BackupDetailFragment.this.getAdapter().swapCursor(BackupDetailFragment.this.mBackupDetailAdapter.classifyCursor((Cursor) data));
            if (BackupDetailFragment.this.getAdapter().getCount() == 0) {
                BackupDetailFragment.this.setEmptyViewVisibility(0);
            } else {
                BackupDetailFragment.this.setEmptyViewVisibility(8);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    private int getSyncStateDisplayOptions() {
        return 12;
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        final View view = super.onInflateView(inflater, container, savedInstanceState);
        ViewGroup barContainer = (ViewGroup) view.findViewById(R.id.backup_bar);
        this.mBackUpTitle = (BackupTitle) LayoutInflater.from(this.mActivity).inflate(R.layout.backup_title, barContainer, false);
        barContainer.addView(this.mBackUpTitle);
        this.mBackupDetailAdapter = new BackupDetailAdapter(this.mActivity, DisplayScene.SCENE_ALWAYS, getSyncStateDisplayOptions());
        this.mBackupDetailAdapter.setCurrentSortBy(SortBy.DATE);
        this.mBackupDetailAdapter.setAlbumType(AlbumType.NORMAL);
        this.mAlbumDetailGridView.setAdapter(this.mBackupDetailAdapter);
        this.mAlbumDetailGridView.setOnItemClickListener(getGridViewOnItemClickListener());
        view.post(new Runnable() {
            public void run() {
                ((TwoStageDrawer) view).openDrawer();
            }
        });
        return view;
    }

    public void onResume() {
        super.onResume();
        SyncStateManager.getInstance().registerSyncStateObserver(this.mActivity, this);
    }

    public void onPause() {
        super.onPause();
        SyncStateManager.getInstance().unregisterSyncStateObserver(this.mActivity, this);
    }

    public void onSyncStateChanged(SyncStateInfo newValue) {
        this.mBackUpTitle.refreshSyncState(newValue);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        SyncProxy.getInstance().getUploadStatusProxy().addUploadStatusChangedListener(this);
    }

    public void onDetach() {
        super.onDetach();
        SyncProxy.getInstance().getUploadStatusProxy().removeUploadStatusChangedListener(this);
    }

    public String getPageName() {
        return "backup_detail";
    }

    protected int getLayoutSource() {
        return R.layout.backup_detail;
    }

    protected AlbumDetailSimpleAdapter getAdapter() {
        return this.mBackupDetailAdapter;
    }

    protected Uri getUri() {
        return Media.URI_ALL;
    }

    protected String getSelection() {
        return "alias_sync_state = 3 OR alias_sync_state = 2 OR (alias_sync_state = 0 AND _id IN (" + TextUtils.join(",", this.mUploadedItems) + "))";
    }

    protected String[] getSelectionArgs() {
        return null;
    }

    protected int getSupportOperationMask() {
        return 1024;
    }

    public void onUploadStatusChanged(UploadStatusItem statusItem) {
        if (statusItem != null && statusItem.mStatus == SyncStatus.STATUS_SUCCESS) {
            if (statusItem.getItemType() == ItemType.OWNER || statusItem.getItemType() == ItemType.SHARER) {
                refreshOnUploadStatusChanged(statusItem);
            }
        }
    }

    private void refreshOnUploadStatusChanged(final UploadStatusItem statusItem) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                String id = SyncProxy.getInstance().getUriAdapter().getLocalId(statusItem.getUserUri());
                if (statusItem.getItemType() == ItemType.OWNER) {
                    BackupDetailFragment.this.mUploadedItems.add(id);
                } else {
                    BackupDetailFragment.this.mUploadedItems.add(String.valueOf(Long.parseLong(id) + 1073741823));
                }
                if (BackupDetailFragment.this.isAdded()) {
                    CursorLoader loader = (CursorLoader) BackupDetailFragment.this.getLoader();
                    BackupDetailFragment.this.configLoader(loader);
                    loader.onContentChanged();
                }
            }
        });
    }

    protected void mayDoAdditionalWork(Cursor o) {
    }

    protected LoaderCallbacks getLoaderCallback() {
        if (this.mLoaderCallback == null) {
            this.mLoaderCallback = new BackupLoaderCallBack();
        }
        return this.mLoaderCallback;
    }

    protected String[] getProjection() {
        BackupDetailAdapter backupDetailAdapter = this.mBackupDetailAdapter;
        return BackupDetailAdapter.PROJECTION;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 36:
                    IntentUtil.gotoPhotoPage(this, null, getUri(), 0, this.mBackupDetailAdapter.getSecretCount(), "(" + getSelection() + ") AND (" + "localGroupId" + " = " + -1000 + ")", getSelectionArgs(), getCurrentSortOrder(), null, this.mAlbumId, this.mAlbumName, getSupportOperationMask());
                    BaseSamplingStatHelper.recordNumericPropertyEvent(getPageName(), "click_micro_thumb", 0);
                    return;
                default:
                    return;
            }
        }
    }

    protected OnItemClickListener getGridViewOnItemClickListener() {
        return new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (BackupDetailFragment.this.mBackupDetailAdapter.getItemViewType(position) == 1) {
                    AuthenticatePrivacyPasswordFragment.startAuthenticatePrivacyPassword(BackupDetailFragment.this);
                    return;
                }
                IntentUtil.gotoPhotoPage(BackupDetailFragment.this, adapterView, BackupDetailFragment.this.getUri(), position, BackupDetailFragment.this.mBackupDetailAdapter.getCount() - (BackupDetailFragment.this.mBackupDetailAdapter.getSecretCount() > 0 ? 1 : 0), "(" + BackupDetailFragment.this.getSelection() + ") AND (" + "localGroupId" + " != " + -1000 + ")", BackupDetailFragment.this.getSelectionArgs(), BackupDetailFragment.this.getCurrentSortOrder(), new ImageLoadParams(BackupDetailFragment.this.mBackupDetailAdapter.getItemKey(position), BackupDetailFragment.this.mBackupDetailAdapter.getLocalPath(position), ThumbConfig.get().sMicroTargetSize, BackupDetailFragment.this.mBackupDetailAdapter.getItemDecodeRectF(position), position, BackupDetailFragment.this.mBackupDetailAdapter.getMimeType(position), BackupDetailFragment.this.mBackupDetailAdapter.getItemSecretKey(position), BackupDetailFragment.this.mBackupDetailAdapter.getFileLength(position)), BackupDetailFragment.this.mAlbumId, BackupDetailFragment.this.mAlbumName, BackupDetailFragment.this.getSupportOperationMask());
                BaseSamplingStatHelper.recordNumericPropertyEvent(BackupDetailFragment.this.getPageName(), "click_micro_thumb", (long) position);
            }
        };
    }
}
