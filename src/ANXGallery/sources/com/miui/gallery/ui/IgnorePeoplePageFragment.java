package com.miui.gallery.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.ContentValues;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.InputFaceNameActivity;
import com.miui.gallery.adapter.IgnorePeoplePageAdapter;
import com.miui.gallery.adapter.IgnorePeoplePageAdapter.OnRecoveryButtonClickListener;
import com.miui.gallery.cloud.CreateGroupItem;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.face.PeopleCursorHelper;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.display.CircleBitmapDisplayer;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.util.ArrayList;

public class IgnorePeoplePageFragment extends BaseFragment {
    private IgnorePeoplePageAdapter mAdapter;
    private View mEmptyView;
    private ViewStub mEmptyViewStub;
    private Handler mHandler = new Handler();
    private GridView mIgnorePeopleGridView;
    private IgnorePeoplePageLoaderCallback mIgnorePeoplePageLoaderCallback;
    private NormalPeopleFaceMediaSet mPeopleToRecovery;
    private AlertDialog mRecoveryDialog;
    private OnRecoveryButtonClickListener mRecoveryListener = new OnRecoveryButtonClickListener() {
        public void onPeopleRecoveryButtonClick(String localId, String serverId, String name, String thumbnail, RectF facePosition) {
            View dialogView = LayoutInflater.from(IgnorePeoplePageFragment.this.mActivity).inflate(R.layout.ignore_to_visible_dialog, null, false);
            IgnorePeoplePageFragment.this.mRecoveryDialog = new Builder(IgnorePeoplePageFragment.this.mActivity).setView(dialogView).setPositiveButton(17039370, null).setNegativeButton(17039360, null).create();
            ImageView cover = (ImageView) dialogView.findViewById(R.id.ignore_face);
            ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(thumbnail), new ImageViewAware(cover), new DisplayImageOptions.Builder().cacheThumbnail(true).loadFromMicroCache(true).cacheInMemory(true).considerExifParams(true).showStubImage(R.drawable.default_face_cover).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new CircleBitmapDisplayer()).usingRegionDecoderFace(true).build(), ThumbConfig.get().sMicroTargetSize, null, null, facePosition);
            IgnorePeoplePageFragment.this.mRecoveryDialog.show();
            final Button positiveButton = IgnorePeoplePageFragment.this.mRecoveryDialog.getButton(-1);
            final String str = localId;
            final String str2 = serverId;
            final String str3 = name;
            positiveButton.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    positiveButton.setEnabled(false);
                    IgnorePeoplePageFragment.this.recoveryPeople(str, str2, str3, IgnorePeoplePageFragment.this.mRecoveryDialog);
                }
            });
        }
    };
    private AlertDialog mRenameOrMergeDialog;

    private class IgnorePeoplePageLoaderCallback implements LoaderCallbacks {
        private IgnorePeoplePageLoaderCallback() {
        }

        /* synthetic */ IgnorePeoplePageLoaderCallback(IgnorePeoplePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(IgnorePeoplePageFragment.this.mActivity);
            loader.setUri(PeopleFace.IGNORE_PERSONS_URI);
            loader.setProjection(PeopleCursorHelper.PROJECTION);
            return loader;
        }

        public void onLoadFinished(Loader loader, Object data) {
            Cursor cursor = (Cursor) data;
            if (cursor == null || cursor.getCount() == 0) {
                if (IgnorePeoplePageFragment.this.mEmptyView == null) {
                    IgnorePeoplePageFragment.this.mEmptyView = IgnorePeoplePageFragment.this.mEmptyViewStub.inflate();
                    IgnorePeoplePageFragment.this.mEmptyView.findViewById(R.id.back).setVisibility(8);
                    ((TextView) IgnorePeoplePageFragment.this.mEmptyView.findViewById(R.id.content)).setText(R.string.no_ignore_faces);
                }
                IgnorePeoplePageFragment.this.mIgnorePeopleGridView.setEmptyView(IgnorePeoplePageFragment.this.mEmptyView);
            }
            IgnorePeoplePageFragment.this.mAdapter.swapCursor(cursor);
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.ignore_people_page, container, false);
        this.mIgnorePeopleGridView = (GridView) view.findViewById(R.id.grid);
        this.mAdapter = new IgnorePeoplePageAdapter(this.mActivity);
        this.mAdapter.setRecoveryListener(this.mRecoveryListener);
        this.mIgnorePeopleGridView.setAdapter(this.mAdapter);
        this.mEmptyViewStub = (ViewStub) view.findViewById(R.id.empty_view);
        return view;
    }

    private void recoveryPeople(String localId, String serverId, String name, AlertDialog dialog) {
        final String str = name;
        final String str2 = localId;
        final String str3 = serverId;
        final AlertDialog alertDialog = dialog;
        ThreadManager.getMiscPool().submit(new Job<Void>() {
            public Void run(JobContext jc) {
                String recoveryName = str;
                if (!TextUtils.isEmpty(str)) {
                    recoveryName = str.split("-", 2)[0];
                }
                final NormalPeopleFaceMediaSet recoveryPeople = new NormalPeopleFaceMediaSet(Long.parseLong(str2), str3, str);
                final com.miui.gallery.cloud.peopleface.PeopleFace existPeople = FaceDataManager.getGroupByPeopleName(IgnorePeoplePageFragment.this.mActivity, recoveryName);
                IgnorePeoplePageFragment.this.mHandler.post(new Runnable() {
                    public void run() {
                        IgnorePeoplePageFragment.this.dismissDialog(alertDialog);
                    }
                });
                if (existPeople == null) {
                    IgnorePeoplePageFragment.this.doRecovery(recoveryPeople, recoveryName);
                } else {
                    IgnorePeoplePageFragment.this.mHandler.post(new Runnable() {
                        public void run() {
                            IgnorePeoplePageFragment.this.showMergeOrRenameDialog(recoveryPeople, existPeople.peopleName);
                        }
                    });
                }
                return null;
            }
        });
    }

    private void doRecovery(NormalPeopleFaceMediaSet recoveryPeople, String recoveryName) {
        String localId = Long.toString(recoveryPeople.getBucketId());
        ArrayList<String> ids = new ArrayList();
        ids.add(localId);
        ContentValues values = new ContentValues();
        if (FaceManager.getPeopleLocalFlagByLocalID(localId) != 8) {
            values.put("localFlag", Integer.valueOf(14));
            values.put("visibilityType", Integer.valueOf(4));
        } else {
            values.put("visibilityType", Integer.valueOf(1));
        }
        values.put("peopleName", recoveryName);
        FaceManager.safeUpdatePeopleFaceByIds(values, ids);
    }

    private void showMergeOrRenameDialog(final NormalPeopleFaceMediaSet recoveryPeople, final String existPeopleName) {
        DialogInterface.OnClickListener mergeListener = new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        IgnorePeoplePageFragment.this.mergeWhenRecovery(recoveryPeople, existPeopleName);
                        return null;
                    }
                });
            }
        };
        this.mRenameOrMergeDialog = new Builder(this.mActivity).setTitle(R.string.recovery_merge_or_rename).setMessage(R.string.recovery_merge_or_rename_message).setPositiveButton(R.string.recovery_merge, mergeListener).setNegativeButton(R.string.recovery_rename, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                IgnorePeoplePageFragment.this.mPeopleToRecovery = recoveryPeople;
                Intent intent = new Intent(IgnorePeoplePageFragment.this.mActivity, InputFaceNameActivity.class);
                Bundle bundle = new Bundle();
                bundle.putString("original_name", existPeopleName);
                intent.putExtras(bundle);
                IgnorePeoplePageFragment.this.mActivity.startActivityForResult(intent, 39);
            }
        }).create();
        this.mRenameOrMergeDialog.show();
    }

    private void mergeWhenRecovery(NormalPeopleFaceMediaSet recoveryPeople, String existPeopleName) {
        synchronized (FaceDataManager.PEOPLE_FACE_URI) {
            ContentValues values = new ContentValues();
            if (FaceManager.getPeopleLocalFlagByLocalID(Long.toString(recoveryPeople.getBucketId())) != 8) {
                values.put("localFlag", Integer.valueOf(14));
                values.put("visibilityType", Integer.valueOf(4));
            } else {
                values.put("visibilityType", Integer.valueOf(1));
            }
            FaceDataManager.safeUpdateFace(values, String.format("%s = ? and %s != ? ", new Object[]{"_id", "localFlag"}), new String[]{Long.toString(recoveryPeople.getBucketId()), String.valueOf(2)});
            recoveryPeople.rename(this.mActivity, existPeopleName, false);
        }
    }

    public String getPageName() {
        return "ignore_people";
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        setTitle();
        this.mIgnorePeoplePageLoaderCallback = new IgnorePeoplePageLoaderCallback(this, null);
        getLoaderManager().initLoader(1, null, this.mIgnorePeoplePageLoaderCallback);
    }

    private void setTitle() {
        if (this.mActivity != null) {
            this.mActivity.getActionBar().setTitle(getString(R.string.ignore_faces_title));
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 39:
                if (data != null && this.mPeopleToRecovery != null) {
                    final String name = data.getExtras().getString("name");
                    if (!TextUtils.isEmpty(name)) {
                        CharSequence errorTips = CreateGroupItem.checkFileNameValid(this.mActivity, name);
                        if (!TextUtils.isEmpty(errorTips)) {
                            ToastUtils.makeText(this.mActivity, errorTips);
                            return;
                        }
                    }
                    if (data.getExtras().getBoolean("is_repeat_name")) {
                        ThreadManager.getMiscPool().submit(new Job<Void>() {
                            public Void run(JobContext jc) {
                                IgnorePeoplePageFragment.this.mergeWhenRecovery(IgnorePeoplePageFragment.this.mPeopleToRecovery, name);
                                return null;
                            }
                        });
                        return;
                    } else {
                        ThreadManager.getMiscPool().submit(new Job<Void>() {
                            public Void run(JobContext jc) {
                                IgnorePeoplePageFragment.this.doRecovery(IgnorePeoplePageFragment.this.mPeopleToRecovery, name);
                                return null;
                            }
                        });
                        return;
                    }
                }
                return;
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        dismissDialog(this.mRecoveryDialog);
        dismissDialog(this.mRenameOrMergeDialog);
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
    }

    public void dismissDialog(AlertDialog dialog) {
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        int firstVisibleItemPosition = this.mIgnorePeopleGridView.getFirstVisiblePosition();
        if (newConfig.orientation == 2) {
            this.mIgnorePeopleGridView.setNumColumns(getResources().getInteger(R.integer.people_face_grid_view_columns_land));
        } else {
            this.mIgnorePeopleGridView.setNumColumns(getResources().getInteger(R.integer.people_face_grid_view_columns));
        }
        this.mIgnorePeopleGridView.setSelection(firstVisibleItemPosition);
    }
}
