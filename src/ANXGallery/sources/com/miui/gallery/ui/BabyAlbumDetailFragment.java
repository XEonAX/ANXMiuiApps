package com.miui.gallery.ui;

import android.app.ActionBar.LayoutParams;
import android.app.AlertDialog.Builder;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter.AlbumType;
import com.miui.gallery.adapter.AlbumDetailTimeLineAdapter;
import com.miui.gallery.adapter.BabyAlbumDetailTimeLineAdapter;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.model.SendToCloudFolderItem;
import com.miui.gallery.picker.PickGalleryActivity;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareAlbum;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.deprecated.ThumbnailInfo;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.baby.BabyAlbumRecommendationFinder;
import com.miui.gallery.util.baby.BabyAlbumRecommendationFinder.RecommendationDatas;
import com.miui.gallery.util.baby.BabyAlbumRecommendationFinder.RecommendationFoundListener;
import com.miui.gallery.util.baby.BabyFaceFinder;
import com.miui.gallery.util.baby.BabyFaceFinder.BabyAlbumsFoundListener;
import com.miui.gallery.util.baby.CopyFaceAlbumItemsToBabyAlbumTask;
import com.miui.gallery.util.baby.CopyFaceAlbumItemsToBabyAlbumTask.ProgressEndListener;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.listener.PauseOnScrollListener;
import java.util.ArrayList;
import miui.R;

public class BabyAlbumDetailFragment extends AlbumDetailFragmentBase {
    private boolean isStickyGridViewAtBottom = false;
    private boolean isStickyGridViewAtTop = true;
    private ActionBarHelper mActionHelper = new ActionBarHelper();
    private BabyAlbumDetailTimeLineAdapter mBabyAlbumAdapter;
    private String mBabyAlbumPeopleServerId;
    private BabyInfo mBabyInfo;
    private BabyAlbumDetailPageScrollView mContentView;
    private View mGotoPickHeaderBackgroundMaskView;
    private Handler mHandler = new Handler();
    private boolean mIsNightMode;
    private MyRecommendationPhotoHelper mMyRecommendationPhotoHelper = new MyRecommendationPhotoHelper();
    private View mRecommendFacePhoto2ThisAlbumView;
    private boolean mShowInPhotosTab;
    private ThumbnailInfo mThumbnailInfo;

    class ActionBarHelper {
        private final int[] ATTRS = new int[]{R.attr.actionBarBackground};
        private Drawable mDefaultActionBarBg;
        private ImageView mHomeIcon;
        private TextView mHomeText;
        private boolean mIsShowTranslucentStatusBar = true;

        ActionBarHelper() {
        }

        private View inflateTitle() {
            TypedArray a = BabyAlbumDetailFragment.this.mActivity.obtainStyledAttributes(this.ATTRS);
            this.mDefaultActionBarBg = a.getDrawable(0);
            a.recycle();
            View title = BabyAlbumDetailFragment.this.mActivity.getLayoutInflater().inflate(com.miui.gallery.R.layout.baby_album_page_title, null);
            title.setLayoutParams(new LayoutParams(-1, -1));
            this.mHomeIcon = (ImageView) title.findViewById(com.miui.gallery.R.id.home_arrow);
            this.mHomeIcon.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    BabyAlbumDetailFragment.this.mActivity.finish();
                }
            });
            this.mHomeText = (TextView) title.findViewById(com.miui.gallery.R.id.home_text);
            this.mHomeText.setText(BabyAlbumDetailFragment.this.mAlbumName);
            BabyAlbumDetailFragment.this.mActivity.getActionBar().setDisplayOptions(16, 16);
            BabyAlbumDetailFragment.this.mActivity.getActionBar().setCustomView(title);
            return title;
        }

        private void refreshTopBar(boolean isShowTranslucentStatusBar) {
            this.mIsShowTranslucentStatusBar = isShowTranslucentStatusBar;
            refreshHomeIconAndColor();
            BabyAlbumDetailFragment.this.mActivity.getActionBar().setBackgroundDrawable(getTopBarBackground());
        }

        private void refreshHomeIconAndColor() {
            if (this.mIsShowTranslucentStatusBar || BabyAlbumDetailFragment.this.mIsNightMode) {
                this.mHomeIcon.setImageResource(R.drawable.action_bar_back_dark);
                this.mHomeText.setTextColor(BabyAlbumDetailFragment.this.mActivity.getResources().getColor(com.miui.gallery.R.color.action_bar_title_text_color_dark));
            } else if (this.mHomeIcon != null) {
                this.mHomeIcon.setImageResource(R.drawable.action_bar_back_light);
                this.mHomeText.setTextColor(BabyAlbumDetailFragment.this.mActivity.getResources().getColor(com.miui.gallery.R.color.action_bar_title_text_color_light));
            }
        }

        public Drawable getTopBarBackground() {
            if (this.mIsShowTranslucentStatusBar) {
                return null;
            }
            return this.mDefaultActionBarBg;
        }

        private void setNullStyleActionBar() {
            refreshTopBar(true);
        }

        private void setNormalStyleActionBar() {
            refreshTopBar(false);
        }
    }

    public class MyOnScrollListener implements OnScrollListener {
        public void onScrollStateChanged(AbsListView view, int scrollState) {
        }

        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            if (visibleItemCount <= 0 || firstVisibleItem != 0) {
                BabyAlbumDetailFragment.this.isStickyGridViewAtTop = false;
            } else {
                BabyAlbumDetailFragment.this.isStickyGridViewAtTop = true;
            }
            if (firstVisibleItem <= 0 || firstVisibleItem + visibleItemCount != totalItemCount) {
                BabyAlbumDetailFragment.this.isStickyGridViewAtBottom = false;
            } else {
                BabyAlbumDetailFragment.this.isStickyGridViewAtBottom = true;
            }
        }
    }

    public class MyRecommendationPhotoHelper {
        private SparseArray<Boolean> mAllBabyAlbumPhoto;
        private BabyAlbumRecommendationFinder mBabyAlbumRecommendationFinder;
        private BabyFaceFinder mBabyFaceFinder;
        private RecommendationDatas mRecommendPhotoDatas;

        private void seeIfHasRecommendationPhotoFromFaceAlbum(Cursor all) {
            if (BabyAlbumDetailFragment.this.mBabyInfo != null) {
                if (BabyAlbumDetailFragment.this.mIsOtherShareAlbum && TextUtils.isEmpty(BabyAlbumDetailFragment.this.mBabyInfo.mPeopleId)) {
                    if (this.mBabyFaceFinder == null) {
                        this.mBabyFaceFinder = new BabyFaceFinder();
                        this.mBabyFaceFinder.setBabyAlbumsFoundListener(new BabyAlbumsFoundListener() {
                            public void onBabyAlbumsFound(final Boolean yesFindCandidate) {
                                BabyAlbumDetailFragment.this.mHandler.post(new Runnable() {
                                    public void run() {
                                        if (BabyAlbumDetailFragment.this.mActivity != null && !BabyAlbumDetailFragment.this.mActivity.isFinishing()) {
                                            MyRecommendationPhotoHelper.this.refreshRecommandBar(yesFindCandidate);
                                        }
                                    }
                                });
                            }
                        });
                    }
                    this.mBabyFaceFinder.startFindFace(String.valueOf(BabyAlbumDetailFragment.this.mAlbumId));
                } else if (TextUtils.isEmpty(BabyAlbumDetailFragment.this.mBabyAlbumPeopleServerId) || BabyAlbumDetailFragment.this.mBabyInfo.mAutoupdate) {
                    disappearRecommendationView();
                } else {
                    if (this.mBabyAlbumRecommendationFinder == null) {
                        this.mBabyAlbumRecommendationFinder = new BabyAlbumRecommendationFinder(BabyAlbumDetailFragment.this.mBabyAlbumPeopleServerId);
                        this.mBabyAlbumRecommendationFinder.setRecommendationFoundListener(new RecommendationFoundListener() {
                            public void onRecommendationFound(final RecommendationDatas datas) {
                                BabyAlbumDetailFragment.this.mHandler.post(new Runnable() {
                                    public void run() {
                                        if (BabyAlbumDetailFragment.this.mActivity != null && !BabyAlbumDetailFragment.this.mActivity.isFinishing()) {
                                            MyRecommendationPhotoHelper.this.refreshRecommandBar(datas);
                                        }
                                    }
                                });
                            }
                        });
                    }
                    this.mAllBabyAlbumPhoto = new SparseArray();
                    all.moveToFirst();
                    while (!all.isAfterLast()) {
                        String title = all.getString(all.getColumnIndex("title"));
                        if (!TextUtils.isEmpty(title)) {
                            this.mAllBabyAlbumPhoto.append(title.hashCode(), Boolean.valueOf(true));
                        }
                        all.moveToNext();
                    }
                    this.mBabyAlbumRecommendationFinder.findRecommendation(this.mAllBabyAlbumPhoto, String.valueOf(BabyAlbumDetailFragment.this.mAlbumId));
                }
            }
        }

        private void disappearRecommendationView() {
            BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView.setVisibility(8);
        }

        private void displayRecommendationView() {
            BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView.setVisibility(0);
        }

        private void refreshRecommandBar(Boolean yesFindCandidate) {
            if (yesFindCandidate.booleanValue()) {
                String tip = BabyAlbumDetailFragment.this.mActivity.getString(com.miui.gallery.R.string.baby_album_sharer_recommand_face, new Object[]{BabyAlbumDetailFragment.this.mBabyInfo.mNickName});
                BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        IntentUtil.pickPeople(BabyAlbumDetailFragment.this.mActivity, BabyAlbumDetailFragment.this.mActivity.getString(com.miui.gallery.R.string.choose_some_people, new Object[]{BabyAlbumDetailFragment.this.mBabyInfo.mNickName}));
                        Baby.setLastClickPeopleRecommandationTime(String.valueOf(BabyAlbumDetailFragment.this.mAlbumId));
                    }
                });
                ((TextView) BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView).setText(tip);
                displayRecommendationView();
                return;
            }
            disappearRecommendationView();
        }

        private void refreshRecommandBar(final RecommendationDatas photoDatas) {
            if (photoDatas.hasNewRecommendation()) {
                boolean firstTimeRecommend;
                int tipId;
                int count;
                this.mRecommendPhotoDatas = photoDatas;
                if (Baby.getLastClickBabyPhotosRecommandationTime(String.valueOf(BabyAlbumDetailFragment.this.mAlbumId)) == 0) {
                    firstTimeRecommend = true;
                } else {
                    firstTimeRecommend = false;
                }
                if (firstTimeRecommend) {
                    tipId = com.miui.gallery.R.plurals.baby_album_sharer_recommand_old_pictures;
                    count = photoDatas.getRecommendationSize();
                } else {
                    tipId = com.miui.gallery.R.plurals.baby_album_sharer_recommand_new_pictures;
                    count = photoDatas.getRecommendationSize();
                }
                String tip = BabyAlbumDetailFragment.this.mActivity.getResources().getQuantityString(tipId, count, new Object[]{Integer.valueOf(count), BabyAlbumDetailFragment.this.mBabyInfo.mNickName});
                BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView.setOnClickListener(new OnClickListener() {
                    public void onClick(View v) {
                        IntentUtil.pickFace(BabyAlbumDetailFragment.this.mActivity, BabyAlbumDetailFragment.this.mBabyInfo.mNickName, photoDatas.peopleServerId, photoDatas.peopleLocalId, photoDatas.ids, -1, false);
                        Baby.setLastClickBabyPhotosRecommandationTime(String.valueOf(BabyAlbumDetailFragment.this.mAlbumId));
                    }
                });
                ((TextView) BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView).setText(tip);
                displayRecommendationView();
                return;
            }
            disappearRecommendationView();
        }

        private void onSaveChoosedPeopleAndGo2ChooseFace(Intent data) {
            String choosedPeopleLocalId = data.getStringExtra("local_id_of_album");
            if (!TextUtils.isEmpty(choosedPeopleLocalId)) {
                BabyAlbumDetailFragment.this.mBabyInfo.mPeopleId = data.getStringExtra("server_id_of_album");
                BabyAlbumUtils.saveBabyInfo(String.valueOf(BabyAlbumDetailFragment.this.mIsOtherShareAlbum ? ShareAlbumManager.getOriginalAlbumId(BabyAlbumDetailFragment.this.mAlbumId) : BabyAlbumDetailFragment.this.mAlbumId), BabyAlbumDetailFragment.this.mBabyInfo, BabyAlbumDetailFragment.this.mIsOtherShareAlbum);
                ContentValues values = new ContentValues();
                values.put("peopleId", BabyAlbumDetailFragment.this.mBabyInfo.mPeopleId);
                BabyAlbumDetailFragment.this.mActivity.getContentResolver().update(BabyAlbumDetailFragment.this.mIsOtherShareAlbum ? ShareAlbum.OTHER_SHARE_URI : Cloud.CLOUD_URI, values, String.format("%s=%s", new Object[]{"_id", String.valueOf(BabyAlbumDetailFragment.this.mIsOtherShareAlbum ? ShareAlbumManager.getOriginalAlbumId(BabyAlbumDetailFragment.this.mAlbumId) : BabyAlbumDetailFragment.this.mAlbumId)}), null);
                IntentUtil.pickFace(BabyAlbumDetailFragment.this.mActivity, BabyAlbumDetailFragment.this.mBabyInfo.mNickName, BabyAlbumDetailFragment.this.mBabyInfo.mPeopleId, choosedPeopleLocalId, null, -1, false);
            }
        }

        private void onBabyPicturesPicked(Intent data) {
            ArrayList<Long> ids = (ArrayList) data.getSerializableExtra("pick-result-data");
            if (ids != null && !ids.isEmpty()) {
                Cursor dataCursor = BabyAlbumDetailFragment.this.mActivity.getContentResolver().query(Cloud.CLOUD_URI, new String[]{"*"}, String.format("_id IN (%s)", new Object[]{TextUtils.join(",", ids)}), null, null);
                boolean showTip = false;
                if (!(BabyAlbumDetailFragment.this.mBabyInfo == null || BabyAlbumDetailFragment.this.mBabyInfo.mAutoupdate)) {
                    if (this.mRecommendPhotoDatas == null || this.mRecommendPhotoDatas.totalFaceCountInFaceAlbum == ids.size()) {
                        showTip = true;
                    } else if (!Baby.getHasShowAutoUpdateTipWithoutSelectingAll(BabyAlbumDetailFragment.this.mAlbumName)) {
                        showTip = true;
                        Baby.setHasShowAutoUpdateTipWithoutSelectingAll(BabyAlbumDetailFragment.this.mAlbumName);
                    }
                }
                final boolean isShowTip = showTip;
                ProgressEndListener l = new ProgressEndListener() {
                    public void onProgressEnd(int progress) {
                        if (isShowTip) {
                            DialogUtil.showConfirmAlertWithCancel(BabyAlbumDetailFragment.this.getActivity(), new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {
                                    BabyAlbumDetailFragment.this.mBabyInfo.mAutoupdate = true;
                                    BabyAlbumUtils.saveBabyInfo(Long.toString(BabyAlbumDetailFragment.this.getOriginalAlbumId()), BabyAlbumDetailFragment.this.mBabyInfo, BabyAlbumDetailFragment.this.mIsOtherShareAlbum);
                                    MyRecommendationPhotoHelper.this.disappearRecommendationView();
                                }
                            }, null, BabyAlbumDetailFragment.this.mActivity.getString(com.miui.gallery.R.string.add_automatically_alert_title), BabyAlbumDetailFragment.this.mActivity.getString(com.miui.gallery.R.string.add_automatically_alert_msg, new Object[]{BabyAlbumDetailFragment.this.mBabyInfo.mNickName}), BabyAlbumDetailFragment.this.mActivity.getString(17039370), 17039360);
                        }
                    }
                };
                CopyFaceAlbumItemsToBabyAlbumTask task = CopyFaceAlbumItemsToBabyAlbumTask.instance(BabyAlbumDetailFragment.this.mActivity, dataCursor, new SendToCloudFolderItem(0, String.valueOf(BabyAlbumDetailFragment.this.mIsOtherShareAlbum ? ShareAlbumManager.getOriginalAlbumId(BabyAlbumDetailFragment.this.mAlbumId) : BabyAlbumDetailFragment.this.mAlbumId), BabyAlbumDetailFragment.this.mIsOtherShareAlbum, BabyAlbumDetailFragment.this.mAlbumName, null), 0, com.miui.gallery.R.string.adding);
                task.setProgressFinishListener(l);
                task.execute(new Void[0]);
            }
        }
    }

    public String getPageName() {
        return "baby";
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onInflateView(inflater, container, savedInstanceState);
        this.mIsNightMode = MiscUtil.isNightMode(getActivity());
        Intent intent = this.mActivity.getIntent();
        this.mShowInPhotosTab = (4 & intent.getLongExtra("attributes", 0)) != 0;
        this.mContentView = (BabyAlbumDetailPageScrollView) view.findViewById(com.miui.gallery.R.id.content);
        this.mRecommendFacePhoto2ThisAlbumView = view.findViewById(com.miui.gallery.R.id.recommend_face_photo_to_this_album);
        this.mBabyAlbumPeopleServerId = intent.getStringExtra("people_id");
        this.mAlbumDetailGridViewWrapper.setAdapter(getAdapter());
        this.mGotoPickHeaderBackgroundMaskView = view.findViewById(com.miui.gallery.R.id.goto_pick_header_background_mask);
        this.mThumbnailInfo = new ThumbnailInfo(getOriginalAlbumId(), this.mIsOtherShareAlbum, intent.getStringExtra("thumbnail_info_of_baby"));
        this.mBabyInfo = BabyInfo.fromJSON(intent.getStringExtra("baby_info"));
        intialFaceHeader((BabyAlbumDetailFaceHeaderItem) view.findViewById(com.miui.gallery.R.id.face_header_item), this.mBabyInfo, this.mThumbnailInfo, intent.getStringExtra("baby_sharer_info"), this.mBabyAlbumPeopleServerId);
        this.mAlbumDetailGridViewWrapper.setOnScrollListener(new PauseOnScrollListener(ImageLoader.getInstance(), false, true, new MyOnScrollListener()));
        this.mContentView.setInnerScollerMessager(new InnerScollerStateChangedMessager() {
            public void setNullActionBarBackground() {
                BabyAlbumDetailFragment.this.mActionHelper.setNullStyleActionBar();
            }

            public void setNormalActionBarBackground() {
                BabyAlbumDetailFragment.this.mActionHelper.setNormalStyleActionBar();
            }

            public boolean isScoll2Top() {
                return BabyAlbumDetailFragment.this.isStickyGridViewAtTop;
            }

            public boolean disappearFloatingView() {
                if (BabyAlbumDetailFragment.this.mGotoPickHeaderBackgroundMaskView.getVisibility() != 0) {
                    return false;
                }
                BabyAlbumDetailFragment.this.mGotoPickHeaderBackgroundMaskView.setVisibility(8);
                return true;
            }

            public View getRecommendFaceButton() {
                return BabyAlbumDetailFragment.this.mRecommendFacePhoto2ThisAlbumView;
            }
        });
        this.mActionHelper.inflateTitle();
        this.mActionHelper.setNullStyleActionBar();
        this.mContentView.post(new Runnable() {
            public void run() {
                BabyAlbumDetailFragment.this.mContentView.setTopViewHeight(BabyAlbumDetailFragment.this.mActivity.getActionBar().getHeight());
            }
        });
        return view;
    }

    private void intialFaceHeader(BabyAlbumDetailFaceHeaderItem faceHeader, BabyInfo babyInfo, ThumbnailInfo thumbnailInfo, String sharerInfoStr, String peopleId) {
        this.mBabyAlbumAdapter.setAlbumId(getOriginalAlbumId());
        this.mBabyAlbumAdapter.setPeopleServerId(peopleId);
        this.mBabyAlbumAdapter.setFaceHeader(babyInfo, thumbnailInfo, sharerInfoStr, faceHeader, this.mGotoPickHeaderBackgroundMaskView, new OnClickListener() {
            public void onClick(View v) {
                if (!BabyAlbumDetailFragment.this.mIsOtherShareAlbum && BabyAlbumDetailFragment.this.mActionHelper.mIsShowTranslucentStatusBar) {
                    BabyAlbumDetailFragment.this.showMenuDialog();
                }
            }
        }, this.mIsOtherShareAlbum);
    }

    private void gotoPickHeaderBackground() {
        Intent intent = new Intent(this.mActivity, PickGalleryActivity.class);
        intent.putExtra("pick-upper-bound", 1);
        intent.putExtra("pick-need-id", true);
        startActivityForResult(intent, 18);
    }

    private void showMenuDialog() {
        new Builder(this.mActivity).setSingleChoiceItems(new String[]{this.mActivity.getString(com.miui.gallery.R.string.baby_album_change_background)}, -1, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                switch (which) {
                    case 0:
                        BabyAlbumDetailFragment.this.gotoPickHeaderBackground();
                        BaseSamplingStatHelper.recordCountEvent("baby", "baby_change_head_background");
                        return;
                    default:
                        throw new IllegalStateException("unknown item clicked: " + which);
                }
            }
        }).create().show();
    }

    protected int getLayoutSource() {
        return com.miui.gallery.R.layout.baby_album_detail;
    }

    protected void mayDoAdditionalWork(Cursor o) {
        if (o != null && o.getCount() != 0) {
            if (o.getCount() == 1) {
                o.moveToNext();
            } else {
                o.move(2);
            }
            this.mBabyAlbumAdapter.firstBindHeaderPic(o);
            this.mMyRecommendationPhotoHelper.seeIfHasRecommendationPhotoFromFaceAlbum(o);
        }
    }

    protected AlbumDetailTimeLineAdapter getAdapter() {
        if (this.mBabyAlbumAdapter == null) {
            this.mBabyAlbumAdapter = new BabyAlbumDetailTimeLineAdapter(this.mActivity);
            this.mBabyAlbumAdapter.setAlbumType(AlbumType.BABY);
        }
        return this.mBabyAlbumAdapter;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        inflater.inflate(BuildUtil.isMiuiSdkGte15(this.mActivity) ? com.miui.gallery.R.menu.v15_baby_album : com.miui.gallery.R.menu.baby_album, menu);
        if (!ApplicationHelper.supportShare()) {
            menu.findItem(com.miui.gallery.R.id.menu_share).setVisible(false);
        }
    }

    protected boolean needEnableAutoUpload() {
        return !SyncUtil.isGalleryCloudSyncable(this.mActivity);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case com.miui.gallery.R.id.menu_send_shortcut /*2131886842*/:
                Bitmap icon = this.mBabyAlbumAdapter.getFaceImageOfFaceHeaderItem();
                Intent intent = this.mActivity.getIntent();
                IntentUtil.createShortCutForBabyAlbum(this.mActivity, this.mIsOtherShareAlbum, this.mAlbumId, this.mAlbumName, icon, intent.getStringExtra("people_id"), intent.getStringExtra("thumbnail_info_of_baby"), intent.getStringExtra("baby_info"), intent.getStringExtra("baby_sharer_info"));
                ToastUtils.makeText(this.mActivity, this.mActivity.getString(com.miui.gallery.R.string.success_create_quick_icon_on_desk));
                BaseSamplingStatHelper.recordCountEvent("baby", "baby_send_shortcut");
                return true;
            case com.miui.gallery.R.id.menu_baby_info /*2131886843*/:
                this.mBabyAlbumAdapter.gotoBabyInfoSettingPage(this.mIsOtherShareAlbum);
                BaseSamplingStatHelper.recordCountEvent("baby", "baby_edit_baby_info");
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    protected void onEnterActionMode() {
        if (this.mShowInPhotosTab) {
            ImageSelectionTipFragment.showImageSelectionTipDialogIfNecessary(getActivity());
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 12:
                if (data != null) {
                    BabyInfo babyInfo = (BabyInfo) data.getExtras().getParcelable("baby-info");
                    this.mThumbnailInfo = new ThumbnailInfo(getOriginalAlbumId(), this.mIsOtherShareAlbum, data.getStringExtra("thumbnail_info_of_baby"));
                    this.mBabyAlbumAdapter.resetBabyInfoAndThumbnailInfo(babyInfo, this.mThumbnailInfo);
                    return;
                }
                return;
            case 14:
                if (resultCode == -1 && data != null) {
                    this.mMyRecommendationPhotoHelper.onSaveChoosedPeopleAndGo2ChooseFace(data);
                    return;
                }
                return;
            case 18:
                if (resultCode == -1 && data != null) {
                    ArrayList<Long> ids = (ArrayList) data.getSerializableExtra("pick-result-data");
                    if (ids != null && !ids.isEmpty()) {
                        setBabyAlbumBg(((Long) ids.get(0)).longValue());
                        this.mGotoPickHeaderBackgroundMaskView.setVisibility(8);
                        return;
                    }
                    return;
                }
                return;
            case 31:
                if (resultCode == -1 && data != null) {
                    this.mMyRecommendationPhotoHelper.onBabyPicturesPicked(data);
                    return;
                }
                return;
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }

    protected String getCreatorIdByPosition(int position) {
        return this.mBabyAlbumAdapter.getCreatorId(position);
    }

    protected long getMediaIdByPosition(int position) {
        return this.mBabyAlbumAdapter.getItemId(position);
    }

    protected Uri getUri() {
        return getUri(SortBy.DATE);
    }

    protected String getCurrentSortOrder() {
        return "alias_create_time DESC ";
    }

    private long getOriginalAlbumId() {
        return this.mIsOtherShareAlbum ? ShareAlbumManager.getOriginalAlbumId(this.mAlbumId) : this.mAlbumId;
    }

    private void setBabyAlbumBg(final long photoId) {
        if (photoId >= 0) {
            final ThumbnailInfo thumbnailInfo = this.mThumbnailInfo;
            if (thumbnailInfo != null) {
                new AsyncTask<Void, Void, String>() {
                    protected String doInBackground(Void... params) {
                        return thumbnailInfo.setBgImage(photoId);
                    }

                    protected void onPostExecute(String result) {
                        if (!TextUtils.isEmpty(result)) {
                            BabyAlbumDetailFragment.this.mBabyAlbumAdapter.rebindHeaderPic(result);
                        }
                    }
                }.execute(new Void[0]);
            }
        }
    }
}
