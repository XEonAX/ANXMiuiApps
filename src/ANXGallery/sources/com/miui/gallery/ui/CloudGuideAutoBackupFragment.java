package com.miui.gallery.ui;

import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.ListFragment;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AutoBackupChooserAdapter;
import com.miui.gallery.adapter.AutoBackupChooserAdapter.OnAutoBackupStateChangedListener;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.nostra13.universalimageloader.core.ImageLoader;

public class CloudGuideAutoBackupFragment extends ListFragment implements OnAutoBackupStateChangedListener {
    private AutoBackupChooserAdapter mAdapter;
    private CloudGuideSource mSource;

    private class AlbumListLoaderCallback implements LoaderCallbacks {
        private AlbumListLoaderCallback() {
        }

        /* synthetic */ AlbumListLoaderCallback(CloudGuideAutoBackupFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(CloudGuideAutoBackupFragment.this.getActivity());
            if (i == 1) {
                loader.setUri(Album.URI);
                loader.setProjection(CloudGuideAutoBackupFragment.this.mAdapter.getProjection());
                loader.setSelection("immutable = 0 AND attributes & 16 = 0 AND _id < 2147383647");
                loader.setSortOrder("sortBy ASC ");
            } else if (i == 2) {
                loader.setUri(Album.URI_SHARE_ALL);
                loader.setProjection(AlbumConstants.SHARED_ALBUM_PROJECTION);
                loader.setSelection("count > 0");
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            if (loader.getId() == 1) {
                CloudGuideAutoBackupFragment.this.mAdapter.swapCursor((Cursor) o);
            } else if (loader.getId() == 2) {
                CloudGuideAutoBackupFragment.this.mAdapter.setSharedAlbums((Cursor) o);
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getActivity().getIntent();
        long initialAutobackupAlbumId = intent.getLongExtra("autobackup_album_id", -1);
        this.mSource = (CloudGuideSource) intent.getSerializableExtra("cloud_guide_source");
        if (initialAutobackupAlbumId != -1) {
            changeAutoUpload(initialAutobackupAlbumId, true);
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.cloud_guide_auto_backup, container, false);
        view.findViewById(R.id.enable_service_button).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (!SyncUtil.existXiaomiAccount(CloudGuideAutoBackupFragment.this.getActivity())) {
                    AccountManager accountManager = AccountManager.get(CloudGuideAutoBackupFragment.this.getActivity());
                    Bundle addAccountOptions = new Bundle();
                    if (CloudGuideAutoBackupFragment.this.mSource != null) {
                        addAccountOptions.putString("stat_key_source", CloudGuideAutoBackupFragment.this.mSource.name());
                    }
                    accountManager.addAccount("com.xiaomi", null, null, addAccountOptions, CloudGuideAutoBackupFragment.this.getActivity(), new AccountManagerCallback<Bundle>() {
                        public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                            if (CloudGuideAutoBackupFragment.this.getActivity() != null) {
                                CloudGuideAutoBackupFragment.this.getActivity().setResult(SyncUtil.existXiaomiAccount(CloudGuideAutoBackupFragment.this.getActivity()) ? -1 : 1);
                                CloudGuideAutoBackupFragment.this.getActivity().finish();
                            }
                        }
                    }, null);
                } else if (SyncUtil.setSyncAutomatically(CloudGuideAutoBackupFragment.this.getActivity(), true)) {
                    CloudGuideAutoBackupFragment.this.getActivity().setResult(-1);
                    CloudGuideAutoBackupFragment.this.getActivity().finish();
                }
            }
        });
        this.mAdapter = new AutoBackupChooserAdapter(getActivity(), this);
        setListAdapter(this.mAdapter);
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        AlbumListLoaderCallback callback = new AlbumListLoaderCallback(this, null);
        getLoaderManager().initLoader(1, null, callback);
        getLoaderManager().initLoader(2, null, callback);
    }

    public void onPause() {
        super.onPause();
        ImageLoader.getInstance().pause();
        BaseSamplingStatHelper.recordPageEnd(getActivity(), "cloud_guide_autobackup");
    }

    public void onResume() {
        super.onResume();
        ImageLoader.getInstance().resume();
        BaseSamplingStatHelper.recordPageStart(getActivity(), "cloud_guide_autobackup");
    }

    public void onDestroy() {
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
        super.onDestroy();
    }

    public void onListItemClick(ListView l, View v, int position, long id) {
        if (!this.mAdapter.isAutoUploadedAlbum(position)) {
            this.mAdapter.reverseAutoBackupUiState(v, position);
            onAutoBackupStateChanged(position, this.mAdapter.getAutoBackupUiState(v));
        } else if (this.mAdapter.isCameraAlbum(position)) {
            ToastUtils.makeText(getActivity(), (int) R.string.camera_needs_auto_backup_tip);
        } else if (this.mAdapter.isBabyAlbum(position)) {
            ToastUtils.makeText(getActivity(), (int) R.string.baby_album_needs_auto_backup_tip);
        } else if (this.mAdapter.isOwnerShareAlbum(position)) {
            ToastUtils.makeText(getActivity(), (int) R.string.share_album_needs_auto_upload_tip);
        } else {
            this.mAdapter.reverseAutoBackupUiState(v, position);
            onAutoBackupStateChanged(position, this.mAdapter.getAutoBackupUiState(v));
        }
    }

    public void onAutoBackupStateChanged(int position, boolean autoBackup) {
        changeAutoUpload(this.mAdapter.getItemId(position), autoBackup);
    }

    private void changeAutoUpload(long albumId, boolean autoBackup) {
        MediaAndAlbumOperations.doChangeAutoUpload(getActivity(), albumId, autoBackup);
    }
}
