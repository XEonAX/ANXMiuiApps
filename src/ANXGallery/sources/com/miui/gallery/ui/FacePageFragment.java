package com.miui.gallery.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.FacePageActivity;
import com.miui.gallery.activity.facebaby.RecommendFacePageActivity;
import com.miui.gallery.adapter.BaseMediaAdapterDeprecated;
import com.miui.gallery.adapter.FacePageAdapter;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.preference.GalleryPreferences.Face;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.provider.deprecated.PeopleRecommendMediaSet;
import com.miui.gallery.share.Path;
import com.miui.gallery.share.UIHelper;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceAlbumHandlerListener;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItem;
import com.miui.gallery.ui.renameface.FaceAlbumRenameHandler;
import com.miui.gallery.ui.renameface.FaceAlbumRenameHandler.ConfirmListener;
import com.miui.gallery.ui.renameface.InputFaceNameFragment;
import com.miui.gallery.ui.renameface.RemoveFromFaceAlbumHandler;
import com.miui.gallery.util.BindImageHelper.OnImageLoadingCompleteListener;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.baby.FindFace2CreateBabyAlbum;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.util.face.CheckoutRecommendPeople;
import com.miui.gallery.util.face.CheckoutRecommendPeople.CheckoutStatusListener;
import com.miui.gallery.util.face.PeopleItemBitmapDisplayer;
import com.miui.gallery.widget.ActionMenuItemView;
import com.miui.gallery.widget.PagerGridLayout;
import com.miui.gallery.widget.PagerGridLayout.OnPageChangedListener;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.MultiChoiceModeListener;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class FacePageFragment extends BaseMediaFragment implements CheckoutStatusListener, OnPageChangedListener {
    private FacePageAdapter mAdapter;
    private boolean mAddFooterView = false;
    private String mAlbumName;
    private View mAllPhotosHeader;
    private CheckoutRecommendPeople mCheckoutRecommendPeopleTask;
    private Future mCoverRefreshTask;
    private FaceAlbumRenameHandler mFaceAlbumMergeHandler;
    private FaceAlbumRenameHandler mFaceAlbumRenameHandler;
    private DisplayImageOptions mFaceCoverDisplayOptions;
    private View mFaceCoverHeader;
    private String mFaceCoverPath;
    private RectF mFaceCoverRectF;
    private ImageViewAware mFaceCoverViewAware;
    private StickyGridHeadersGridView mFaceGridView;
    private EditableListViewWrapperDeprecated mFaceGridViewWrapper;
    private NormalPeopleFaceMediaSet mFaceMediaSet;
    private ArrayList<NormalPeopleFaceMediaSet> mFaceMediasetsList;
    private FacePagePhotoLoaderCallback mFacePagePhotoLoaderCallback;
    private View mFooterView;
    private Handler mHandler = new Handler();
    private boolean mHasRequestRecommendFace;
    private ChoiceModeListener mListener;
    private long mLocalIdOfAlbum;
    private Future mNameRefreshTask;
    private PeopleRecommendMediaSet mPeopleRecommendMediaSet;
    private RecommendFaceGroupAdapter mRecommendFaceAdapter;
    private View mRecommendFaceButtonContainer;
    private PagerGridLayout mRecommendFaceGroup;
    private View mRecommendFaceGroupHeader;
    private String mRecommendFaceIds;
    private int mRelationType;
    private RemoveFromFaceAlbumHandler mRemoveFromFaceAlbumHandler;
    private String mServerIdOfAlbum;
    private View mShareButtonContainer;

    private class ChoiceModeListener implements MultiChoiceModeListener {
        private ActionMode mMode;
        private FaceAlbumHandlerListener mRemoveFromFaceAlbumListener;

        private ChoiceModeListener() {
            this.mRemoveFromFaceAlbumListener = new FaceAlbumHandlerListener() {
                public void onGetFolderItem(final FaceFolderItem folderItem) {
                    if (FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemIds().length > 0) {
                        String positiveButtonText;
                        CharSequence message;
                        OnClickListener confirmListener = new OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                AnonymousClass2.this.doRemove(folderItem);
                            }
                        };
                        OnClickListener cancelListener = new OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                dialog.cancel();
                            }
                        };
                        String title = "";
                        if (folderItem == null) {
                            title = FacePageFragment.this.mActivity.getString(R.string.remove_from_album_title);
                            positiveButtonText = FacePageFragment.this.mActivity.getString(R.string.operation_remove_face);
                            message = Html.fromHtml(FacePageFragment.this.mActivity.getResources().getString(R.string.remove_from_album_message));
                        } else {
                            positiveButtonText = FacePageFragment.this.mActivity.getString(17039370);
                            message = Html.fromHtml(FacePageFragment.this.mActivity.getString(R.string.confirm_merge_many_face_albums, new Object[]{folderItem.getName()}));
                        }
                        DialogUtil.showConfirmAlertWithCancel(FacePageFragment.this.mActivity, confirmListener, cancelListener, title, message, positiveButtonText, 17039360);
                    }
                }

                private void doRemove(FaceFolderItem folderItem) {
                    NormalPeopleFaceMediaSet.doMoveFacesToAnother(folderItem, FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemIds());
                    ChoiceModeListener.this.mMode.finish();
                    BaseSamplingStatHelper.recordCountEvent("face", "face_remove");
                }
            };
        }

        /* synthetic */ ChoiceModeListener(FacePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            this.mMode = mode;
            mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(FacePageFragment.this.mActivity) ? R.menu.v15_face_page_action_menu : R.menu.face_page_action_menu, menu);
            enableOrDisableMenuItem(false);
            FacePageFragment.this.changeVisibilityOfShareContainer(8);
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            FacePageFragment.this.changeVisibilityOfShareContainer(8);
            return false;
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            enableOrDisableMenuItem(FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemCount() > 0);
        }

        private void enableOrDisableMenuItem(boolean enable) {
            Menu menu = this.mMode.getMenu();
            menu.findItem(R.id.action_remove_from_face_album).setEnabled(enable);
            menu.findItem(R.id.action_delete).setEnabled(enable);
            menu.findItem(R.id.action_produce).setEnabled(enable);
            menu.findItem(R.id.action_send).setEnabled(enable);
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            switch (item.getItemId()) {
                case R.id.action_remove_from_face_album /*2131886848*/:
                    FacePageFragment.this.startRemoveFromFaceAlbum(this.mRemoveFromFaceAlbumListener);
                    break;
                case R.id.action_produce /*2131886849*/:
                    final ActionMode actionMode = mode;
                    MediaAndAlbumOperations.doProduceCreation(FacePageFragment.this.mActivity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            actionMode.finish();
                        }
                    }, FacePageFragment.this.mFaceGridViewWrapper.getCheckedItems());
                    BaseSamplingStatHelper.recordCountEvent("face", "produce");
                    break;
                case R.id.action_send /*2131886850*/:
                    int i;
                    int initPos = Integer.MAX_VALUE;
                    SparseBooleanArray selectedItems = FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemPositions();
                    ArrayList<Integer> arrayList = new ArrayList(selectedItems.size());
                    ArrayList<Long> arrayList2 = new ArrayList(selectedItems.size());
                    for (i = 0; i < selectedItems.size(); i++) {
                        int key = selectedItems.keyAt(i);
                        if (selectedItems.get(key)) {
                            arrayList.add(Integer.valueOf(key));
                            arrayList2.add(Long.valueOf(FacePageFragment.this.mAdapter.getItemKey(key)));
                            if (key < initPos) {
                                initPos = key;
                            }
                        }
                    }
                    int[] selectedPos = new int[arrayList.size()];
                    long[] selectedId = new long[arrayList2.size()];
                    for (i = 0; i < arrayList.size(); i++) {
                        selectedPos[i] = ((Integer) arrayList.get(i)).intValue();
                        selectedId[i] = ((Long) arrayList2.get(i)).longValue();
                    }
                    if (initPos == Integer.MAX_VALUE) {
                        initPos = 0;
                    }
                    IntentUtil.gotoPreviewSelectPage(FacePageFragment.this, PeopleFace.ONE_PERSON_URI, initPos, FacePageFragment.this.mAdapter.getCount(), null, FacePageFragment.this.getSelectioinArgs(), FacePageFragment.this.getOrderBy(), new ImageLoadParams(FacePageFragment.this.mAdapter.getItemKey(initPos), FacePageFragment.this.mAdapter.getLocalPath(initPos), ThumbConfig.get().sMicroTargetSize, FacePageFragment.this.mAdapter.getItemDecodeRectF(initPos), initPos, FacePageFragment.this.mAdapter.getMimeType(initPos), FacePageFragment.this.mAdapter.getFileLength(initPos)), selectedId, selectedPos);
                    mode.finish();
                    BaseSamplingStatHelper.recordCountEvent("face", "face_send");
                    break;
                case R.id.action_delete /*2131886851*/:
                    FacePageFragment.this.doDelete(this.mMode, getSelectedPhotoIds());
                    break;
                default:
                    return false;
            }
            return true;
        }

        public void onDestroyActionMode(ActionMode mode) {
            this.mMode = null;
            FacePageFragment.this.changeVisibilityOfShareContainer(0);
        }

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            enableOrDisableMenuItem(FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemCount() > 0);
        }

        private long[] getSelectedPhotoIds() {
            int i;
            SparseBooleanArray selectedItems = FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemPositions();
            ArrayList<Long> trueSelectedIds = new ArrayList();
            for (i = 0; i < selectedItems.size(); i++) {
                int key = selectedItems.keyAt(i);
                if (selectedItems.get(key)) {
                    trueSelectedIds.add(Long.valueOf(FacePageFragment.this.mAdapter.getItemPhotoId(key)));
                }
            }
            long[] ids = new long[trueSelectedIds.size()];
            for (i = 0; i < trueSelectedIds.size(); i++) {
                ids[i] = ((Long) trueSelectedIds.get(i)).longValue();
            }
            return ids;
        }
    }

    private class FacePagePhotoLoaderCallback implements LoaderCallbacks {
        private FacePagePhotoLoaderCallback() {
        }

        /* synthetic */ FacePagePhotoLoaderCallback(FacePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(FacePageFragment.this.mActivity);
            loader.setUri(PeopleFace.ONE_PERSON_URI);
            loader.setProjection(FacePageAdapter.PROJECTION);
            loader.setSelectionArgs(FacePageFragment.this.getSelectioinArgs());
            loader.setSortOrder(FacePageFragment.this.getOrderBy());
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            FacePageFragment.this.mAdapter.swapCursor((Cursor) o);
            FacePageFragment.this.freshFacePhotoCount();
            FacePageFragment.this.refreshFaceCover();
            if (FacePageFragment.this.mAddFooterView) {
                FacePageFragment.this.mFaceGridView.addFooterView(FacePageFragment.this.mFooterView);
                FacePageFragment.this.mAddFooterView = false;
            }
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    private class FaceRecommendPhotoLoaderCallback implements LoaderCallbacks {
        private FaceRecommendPhotoLoaderCallback() {
        }

        /* synthetic */ FaceRecommendPhotoLoaderCallback(FacePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(FacePageFragment.this.getActivity());
            loader.setUri(getUri());
            loader.setProjection(RecommendFaceGroupAdapter.PROJECTION);
            loader.setSelectionArgs(new String[]{FacePageFragment.this.mRecommendFaceIds});
            loader.setSortOrder(getOrderBy());
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            FacePageFragment.this.mRecommendFaceAdapter.swapCursor((Cursor) o);
            FacePageFragment.this.mRecommendFaceGroup.setAdapter(FacePageFragment.this.mRecommendFaceAdapter);
        }

        public void onLoaderReset(Loader loader) {
        }

        private String getOrderBy() {
            return "dateTaken DESC ";
        }

        private Uri getUri() {
            return PeopleFace.RECOMMEND_FACES_OF_ONE_PERSON_URI;
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.face_page, container, false);
        this.mAdapter = new FacePageAdapter(this.mActivity);
        this.mFaceGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid);
        this.mFaceGridViewWrapper = new EditableListViewWrapperDeprecated(this.mFaceGridView);
        this.mFaceGridViewWrapper.setAdapter(this.mAdapter);
        this.mFaceGridViewWrapper.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                BaseMediaAdapterDeprecated adapter = FacePageFragment.this.mAdapter;
                ImageLoadParams item = new ImageLoadParams(adapter.getItemKey(position), adapter.getLocalPath(position), ThumbConfig.get().sMicroTargetSize, adapter.getItemDecodeRectF(position), position, adapter.getMimeType(position), true, adapter.getFileLength(position));
                IntentUtil.gotoPhotoPage(FacePageFragment.this, (ViewGroup) adapterView, PeopleFace.ONE_PERSON_URI, position, adapter.getCount(), null, FacePageFragment.this.getSelectioinArgs(), FacePageFragment.this.getOrderBy(), item, FacePageFragment.this.mAlbumName);
                BaseSamplingStatHelper.recordNumericPropertyEvent(FacePageFragment.this.getPageName(), "click_micro_thumb", (long) position);
            }
        });
        this.mFaceGridView.setAreHeadersSticky(false);
        this.mFooterView = LayoutInflater.from(this.mActivity).inflate(R.layout.see_more_recommend_face_view, this.mFaceGridView, false);
        this.mRecommendFaceButtonContainer = this.mFooterView.findViewById(R.id.see_more_recommend_face_container);
        this.mRecommendFaceButtonContainer.findViewById(R.id.see_more_recommend_face).setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                FacePageFragment.this.mPeopleRecommendMediaSet.refreshRecommendInfo();
                Intent intent = new Intent(FacePageFragment.this.mActivity, RecommendFacePageActivity.class);
                intent.putExtra("server_id_of_album", FacePageFragment.this.getServerIdOfAlbum());
                intent.putExtra("local_id_of_album", FacePageFragment.this.mLocalIdOfAlbum);
                intent.putExtra("album_name", FacePageFragment.this.getAlbumName());
                intent.putExtra("server_ids_of_faces", FacePageFragment.this.mPeopleRecommendMediaSet.getServerIdsIn());
                FacePageFragment.this.startActivityForResult(intent, 21);
                BaseSamplingStatHelper.recordCountEvent("face", "face_enter_recommend");
            }
        });
        this.mRelationType = this.mActivity.getIntent().getIntExtra("relationType", -1);
        if (PeopleContactInfo.isBabyRelation(this.mRelationType) && ApplicationHelper.supportShare()) {
            this.mShareButtonContainer = view.findViewById(R.id.share_container);
            this.mShareButtonContainer.setVisibility(0);
            ActionMenuItemView share = (ActionMenuItemView) this.mShareButtonContainer.findViewById(R.id.share_button);
            if (BuildUtil.isMiuiSdkGte15(this.mActivity)) {
                share.setIcon(this.mActivity.getResources().getDrawable(R.drawable.v15_action_button_album_share_light));
            }
            share.findViewById(R.id.share_button).setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    long albumId = FacePageFragment.this.getIsHasEverNotCreateBabyAlbumFromThis();
                    if (albumId == -1) {
                        FacePageFragment.this.toast2CreateBabyAlbumBeforeShare();
                        return;
                    }
                    UIHelper.showAlbumShareInfo(FacePageFragment.this.mActivity, new Path(albumId, false, true), 0);
                    BaseSamplingStatHelper.recordCountEvent("face", "face_enter_album_share");
                }
            });
        }
        this.mFaceGridViewWrapper.setChoiceMode(3);
        this.mListener = new ChoiceModeListener(this, null);
        this.mFaceGridViewWrapper.setMultiChoiceModeListener(this.mListener);
        return view;
    }

    protected Loader getLoader() {
        return getLoaderManager().getLoader(1);
    }

    public void onResume() {
        super.onResume();
        refreshFaceNameIfNeeded();
        seeIfHasRecommendFace();
        if (this.mRecommendFaceGroup != null) {
            this.mRecommendFaceGroup.freshCurrentPage();
        }
    }

    public void onStop() {
        super.onStop();
        if (this.mCheckoutRecommendPeopleTask != null) {
            this.mCheckoutRecommendPeopleTask.clearListener();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mRecommendFaceAdapter != null) {
            this.mRecommendFaceAdapter.setOnLoadingCompleteListener(null);
        }
        cancelTask(this.mNameRefreshTask);
        cancelTask(this.mCoverRefreshTask);
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
    }

    public String getPageName() {
        return "face";
    }

    private void changeVisibilityOfShareContainer(int visibility) {
        if (this.mShareButtonContainer != null) {
            this.mShareButtonContainer.setVisibility(visibility);
        }
    }

    private void toast2CreateBabyAlbumBeforeShare() {
        OnClickListener confirmListener = new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                FindFace2CreateBabyAlbum.gotoFillBabyAlbumInfo(FacePageFragment.this.mActivity, new NormalPeopleFaceMediaSet(FacePageFragment.this.mLocalIdOfAlbum, FacePageFragment.this.getServerIdOfAlbum(), FacePageFragment.this.getAlbumName()), FacePageFragment.this.mAdapter.getFirstFaceServerId());
                BaseSamplingStatHelper.recordCountEvent("face", "face_create_baby_album");
            }
        };
        try {
            new Builder(this.mActivity).setCancelable(true).setIconAttribute(16843605).setMessage(R.string.begin_share_toast).setPositiveButton(this.mActivity.getString(17039370), confirmListener).setNegativeButton(this.mActivity.getString(17039360), null).setOnCancelListener(new OnCancelListener() {
                public void onCancel(DialogInterface dialog) {
                }
            }).create().show();
        } catch (Exception e) {
        }
    }

    private void seeIfHasRecommendFace() {
        if (!TextUtils.isEmpty(this.mServerIdOfAlbum)) {
            ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    if (!FacePageFragment.this.mHasRequestRecommendFace) {
                        FacePageFragment.this.mCheckoutRecommendPeopleTask = new CheckoutRecommendPeople(null, FacePageFragment.this);
                        FacePageFragment.this.mCheckoutRecommendPeopleTask.getRecommendPeopleFromNet(FacePageFragment.this.getServerIdOfAlbum());
                        FacePageFragment.this.mHasRequestRecommendFace = true;
                    }
                    return null;
                }
            });
        }
    }

    public void onFinishCheckoutPeopleFace(int peopleNumber) {
        this.mPeopleRecommendMediaSet.refreshRecommendInfo();
    }

    private void freshFacePhotoCount() {
        TextView photoCount = (TextView) this.mFaceCoverHeader.findViewById(R.id.photo_count);
        int count = this.mAdapter.getCount();
        photoCount.setText(this.mActivity.getResources().getQuantityString(R.plurals.face_count, count, new Object[]{Integer.valueOf(count)}));
    }

    public void changeDisplayMode() {
        this.mAdapter.changeDisplayMode();
    }

    public boolean isFaceDisplayMode() {
        return this.mAdapter.isFaceDisplayMode();
    }

    private String[] getSelectioinArgs() {
        return new String[]{this.mServerIdOfAlbum, String.valueOf(this.mLocalIdOfAlbum)};
    }

    private String getOrderBy() {
        return "dateTaken DESC ";
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        Bundle bundle = this.mActivity.getIntent().getExtras();
        this.mServerIdOfAlbum = bundle.getString("server_id_of_album");
        this.mLocalIdOfAlbum = Long.parseLong(bundle.getString("local_id_of_album"));
        this.mFaceCoverPath = bundle.getString("face_album_cover");
        this.mFaceCoverRectF = (RectF) bundle.getParcelable("face_position_rect");
        this.mAlbumName = bundle.getString("album_name");
        this.mFacePagePhotoLoaderCallback = new FacePagePhotoLoaderCallback(this, null);
        getLoaderManager().initLoader(1, null, this.mFacePagePhotoLoaderCallback);
        addHeaderView();
        setTitle();
        if (savedInstanceState != null) {
            this.mFaceMediaSet = (NormalPeopleFaceMediaSet) savedInstanceState.getParcelable("NormalPeopleFaceMediaset");
            if (this.mFaceMediaSet != null) {
                this.mFaceAlbumRenameHandler = new FaceAlbumRenameHandler(this.mActivity, this.mFaceMediaSet, confirmListener(), !PeopleContactInfo.isUnKnownRelation(this.mRelationType));
            }
            this.mFaceMediasetsList = savedInstanceState.getParcelableArrayList("NormalPeopleFaceMediasetList");
            if (this.mFaceMediasetsList != null) {
                this.mFaceAlbumMergeHandler = new FaceAlbumRenameHandler(this.mActivity, this.mFaceMediasetsList, confirmListener());
            }
        }
    }

    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        if (this.mFaceMediaSet != null) {
            outState.putParcelable("NormalPeopleFaceMediaset", this.mFaceMediaSet);
        }
        if (this.mFaceMediasetsList != null) {
            outState.putParcelableArrayList("NormalPeopleFaceMediasetList", this.mFaceMediasetsList);
        }
    }

    private void setTitle() {
        if (this.mActivity != null) {
            this.mActivity.getActionBar().setTitle(getString(R.string.face_album_title, new Object[]{this.mAlbumName}));
        }
        ((TextView) this.mFaceCoverHeader.findViewById(R.id.face_name)).setText(this.mAlbumName);
    }

    private void addHeaderView() {
        addFaceCoverHeader();
        addRecommendGroupHeader();
        addAllPhotosHeader();
    }

    private void addFaceCoverHeader() {
        this.mFaceCoverHeader = LayoutInflater.from(this.mActivity).inflate(R.layout.face_page_face_cover_header, this.mFaceGridView, false);
        this.mFaceCoverViewAware = new ImageViewAware((ImageView) this.mFaceCoverHeader.findViewById(R.id.face_cover));
        initFaceCoverDisplayOptions();
        displayFaceCover();
        TextView faceNameEdit = (TextView) this.mFaceCoverHeader.findViewById(R.id.face_name_edit);
        if (TextUtils.isEmpty(getAlbumName())) {
            faceNameEdit.setText(getString(R.string.face_name_input));
        } else {
            faceNameEdit.setText(getString(R.string.face_name_edit));
        }
        faceNameEdit.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                FacePageFragment.this.showRenameHandler();
            }
        });
        this.mFaceGridView.addHeaderView(this.mFaceCoverHeader);
    }

    private void initFaceCoverDisplayOptions() {
        this.mFaceCoverDisplayOptions = new DisplayImageOptions.Builder().cacheThumbnail(true).loadFromMicroCache(true).cacheInMemory(true).considerExifParams(true).showImageOnFail(R.drawable.default_face_cover).showImageForEmptyUri(R.drawable.default_face_cover).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).displayer(new PeopleItemBitmapDisplayer(false)).usingRegionDecoderFace(true).build();
    }

    private void displayFaceCover() {
        if (this.mFaceCoverPath != null) {
            ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(this.mFaceCoverPath), this.mFaceCoverViewAware, this.mFaceCoverDisplayOptions, null, new SimpleImageLoadingListener() {
                public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
                    FacePageFragment.this.invalidateFaceGridView();
                }
            }, null, this.mFaceCoverRectF);
        }
    }

    private void invalidateFaceGridView() {
        if (this.mFaceGridView != null) {
            this.mFaceGridView.postInvalidate();
        }
    }

    private void refreshFaceCover() {
        if (this.mServerIdOfAlbum != null) {
            cancelTask(this.mCoverRefreshTask);
            this.mCoverRefreshTask = ThreadManager.getMiscPool().submit(new Job<Boolean>() {
                public Boolean run(JobContext jc) {
                    Boolean isFresh = Boolean.valueOf(false);
                    RectF[] faceRegion = new RectF[1];
                    String path = FaceManager.queryCoverImageOfOnePerson(FacePageFragment.this.mServerIdOfAlbum, faceRegion);
                    if (TextUtils.isEmpty(path) || path.equals(FacePageFragment.this.mFaceCoverPath)) {
                        return isFresh;
                    }
                    FacePageFragment.this.mFaceCoverPath = path;
                    FacePageFragment.this.mFaceCoverRectF = faceRegion[0];
                    return Boolean.valueOf(true);
                }
            }, new FutureHandler<Boolean>() {
                public void onPostExecute(Future<Boolean> future) {
                    Boolean value = future == null ? null : (Boolean) future.get();
                    if (value != null && value.booleanValue()) {
                        FacePageFragment.this.displayFaceCover();
                    }
                }
            });
        }
    }

    private void refreshFaceNameIfNeeded() {
        cancelTask(this.mNameRefreshTask);
        this.mNameRefreshTask = ThreadManager.getMiscPool().submit(new Job<String>() {
            public String run(JobContext jc) {
                return FaceManager.queryPersonName(FacePageFragment.this.mLocalIdOfAlbum);
            }
        }, new FutureHandler<String>() {
            public void onPostExecute(Future<String> future) {
                if (FacePageFragment.this.isAdded() && future != null) {
                    String name = (String) future.get();
                    if (!(name == null || name.equals(FacePageFragment.this.mAlbumName))) {
                        FacePageFragment.this.mAlbumName = name;
                    }
                    ((TextView) FacePageFragment.this.mFaceCoverHeader.findViewById(R.id.face_name_edit)).setText(TextUtils.isEmpty(name) ? FacePageFragment.this.getString(R.string.face_name_input) : FacePageFragment.this.getString(R.string.face_name_edit));
                    FacePageFragment.this.setTitle();
                    FacePageFragment.this.invalidateFaceGridView();
                }
            }
        });
    }

    private void cancelTask(Future future) {
        if (future != null && !future.isCancelled()) {
            future.cancel();
        }
    }

    private void addRecommendGroupHeader() {
        this.mPeopleRecommendMediaSet = new PeopleRecommendMediaSet(new NormalPeopleFaceMediaSet(this.mLocalIdOfAlbum, getServerIdOfAlbum(), getAlbumName()));
        this.mPeopleRecommendMediaSet.refreshRecommendInfo();
        if (this.mPeopleRecommendMediaSet.getActualNeedRecommendPeopleFacePhotoNumber() <= 0) {
            return;
        }
        if (Face.isFaceRecommendGroupHidden(getServerIdOfAlbum())) {
            this.mAddFooterView = true;
            return;
        }
        this.mRecommendFaceIds = this.mPeopleRecommendMediaSet.getServerIdsIn();
        this.mRecommendFaceGroupHeader = LayoutInflater.from(this.mActivity).inflate(R.layout.face_page_recommend_group_header, this.mFaceGridView, false);
        this.mFaceGridView.addHeaderView(this.mRecommendFaceGroupHeader);
        BaseSamplingStatHelper.recordCountEvent("face", "face_show_recommend_panel");
        this.mRecommendFaceGroup = (PagerGridLayout) this.mRecommendFaceGroupHeader.findViewById(R.id.face_recommend_group);
        this.mRecommendFaceGroup.setOnPageChangedListener(this);
        this.mRecommendFaceAdapter = new RecommendFaceGroupAdapter(this, this.mServerIdOfAlbum, Long.valueOf(this.mLocalIdOfAlbum)) {
            public int getRowsCount() {
                return 1;
            }

            public int getColumnsCount() {
                return 4;
            }

            protected int getLayoutId() {
                return R.layout.recommend_face_cover_item_small;
            }
        };
        this.mRecommendFaceAdapter.setOnLoadingCompleteListener(new OnImageLoadingCompleteListener() {
            public void onLoadingComplete() {
                FacePageFragment.this.invalidateFaceGridView();
            }

            public void onLoadingFailed() {
            }
        });
        getLoaderManager().initLoader(2, null, new FaceRecommendPhotoLoaderCallback(this, null));
        this.mRecommendFaceGroupHeader.findViewById(R.id.confirm_recommend).setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if (Face.isShowRecommendConfirmDialog()) {
                    int mergeCount = FacePageFragment.this.mRecommendFaceAdapter.getMergeFaceCount();
                    Face.setShowRecommendConfirmDialog(false);
                    new Builder(FacePageFragment.this.mActivity).setPositiveButton(R.string.confirm_hidden_recommend_group, new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            FacePageFragment.this.changeToNextPage();
                        }
                    }).setNegativeButton(17039360, null).setTitle(FacePageFragment.this.getString(R.string.remind_face_recommend_confirm)).setMessage(FacePageFragment.this.mActivity.getResources().getQuantityString(R.plurals.remind_face_recommend_confirm_text, mergeCount, new Object[]{Integer.valueOf(mergeCount)})).create().show();
                    return;
                }
                FacePageFragment.this.changeToNextPage();
            }
        });
        this.mRecommendFaceGroupHeader.findViewById(R.id.face_recommend_hidden).setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                AlertDialog dialog = new Builder(FacePageFragment.this.mActivity).setPositiveButton(R.string.confirm_hidden_recommend_group, new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        Face.setFaceRecommendGroupHidden(FacePageFragment.this.getServerIdOfAlbum(), true);
                        FacePageFragment.this.mFaceGridView.removeHeaderView(FacePageFragment.this.mRecommendFaceGroupHeader);
                        FacePageFragment.this.mFaceGridView.addFooterView(FacePageFragment.this.mFooterView);
                        BaseSamplingStatHelper.recordCountEvent("face", "face_close_recommend_panel");
                    }
                }).setNegativeButton(17039360, null).setTitle(FacePageFragment.this.getString(R.string.confirm_hidden_recommend_group_title)).setMessage(FacePageFragment.this.getString(R.string.confirm_hidden_recommend_group_message)).create();
                dialog.show();
                dialog.getButton(-1).setTextColor(FacePageFragment.this.getResources().getColor(R.color.remove_recommend_header_dialog_button));
            }
        });
    }

    public void changeToNextPage() {
        if (this.mRecommendFaceGroup != null) {
            this.mRecommendFaceGroup.changeToNextPage();
        }
    }

    public void onPageChanged(int pageIndex, int pageCount, boolean lastPage) {
        if (lastPage) {
            this.mFaceGridView.removeHeaderView(this.mRecommendFaceGroupHeader);
            return;
        }
        TextView groupNumber = (TextView) this.mRecommendFaceGroupHeader.findViewById(R.id.face_recommend_group_number);
        if (pageCount == 1) {
            this.mRecommendFaceGroupHeader.findViewById(R.id.group_divider).setVisibility(8);
            return;
        }
        groupNumber.setText(getString(R.string.face_recommend_group_number, new Object[]{Integer.valueOf(pageIndex + 1), Integer.valueOf(pageCount)}));
    }

    private void addAllPhotosHeader() {
        if (this.mAllPhotosHeader == null) {
            this.mAllPhotosHeader = LayoutInflater.from(this.mActivity).inflate(R.layout.face_page_all_photos_header, this.mFaceGridView, false);
        }
        this.mFaceGridView.addHeaderView(this.mAllPhotosHeader);
    }

    public String getServerIdOfAlbum() {
        return this.mServerIdOfAlbum;
    }

    private String getAlbumName() {
        if (this.mActivity == null) {
            return "";
        }
        if (TextUtils.isEmpty(this.mAlbumName) || this.mActivity.getString(R.string.people_page_unname).equalsIgnoreCase(this.mAlbumName)) {
            return "";
        }
        return this.mAlbumName;
    }

    public long getIsHasEverNotCreateBabyAlbumFromThis() {
        return FaceManager.queryBabyAlbumByPeopleId(this.mServerIdOfAlbum);
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_change_mode_to_face /*2131886844*/:
                changeDisplayMode();
                recordDisplayModeCountEvent("face");
                return true;
            case R.id.action_change_mode_to_photo /*2131886845*/:
                changeDisplayMode();
                recordDisplayModeCountEvent("photo");
                return true;
            case R.id.action_merge_to /*2131886846*/:
                showMergeHandler();
                return true;
            case R.id.action_ignore /*2131886847*/:
                shoeIgnoreAlert();
                return true;
            default:
                return false;
        }
    }

    private void showMergeHandler() {
        if (this.mFaceAlbumMergeHandler == null) {
            NormalPeopleFaceMediaSet faceSet = new NormalPeopleFaceMediaSet(this.mLocalIdOfAlbum, this.mServerIdOfAlbum, this.mAlbumName);
            this.mFaceMediasetsList = new ArrayList();
            this.mFaceMediasetsList.add(faceSet);
            this.mFaceAlbumMergeHandler = new FaceAlbumRenameHandler(this.mActivity, this.mFaceMediasetsList, confirmListener());
        }
        this.mFaceAlbumMergeHandler.show();
    }

    private boolean shoeIgnoreAlert() {
        DialogUtil.showConfirmAlertWithCancel(this.mActivity, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                final ArrayList<Long> ids = new ArrayList();
                ids.add(Long.valueOf(FacePageFragment.this.mLocalIdOfAlbum));
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        FaceDataManager.safeIgnorePeopleByIds(ids);
                        FacePageFragment.this.mActivity.finish();
                        return null;
                    }
                });
            }
        }, null, "", Html.fromHtml(this.mActivity.getString(R.string.ignore_alert_title)), this.mActivity.getString(17039370), 17039360);
        return true;
    }

    private void recordDisplayModeCountEvent(String mode) {
        Map<String, String> params = new HashMap();
        params.put("mode", mode);
        BaseSamplingStatHelper.recordCountEvent("face", "face_change_display_mode", params);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        PeopleContactInfo contact;
        switch (requestCode) {
            case 16:
                contact = null;
                if (data != null && resultCode == -1) {
                    contact = InputFaceNameFragment.getContactInfo(this.mActivity, data);
                }
                if (this.mFaceAlbumRenameHandler != null) {
                    this.mFaceAlbumRenameHandler.finishWhenGetContact(contact);
                }
                this.mFaceMediaSet = null;
                return;
            case 17:
                PeopleContactInfo contact1 = null;
                if (data != null && resultCode == -1) {
                    contact1 = InputFaceNameFragment.getContactInfo(this.mActivity, data);
                }
                if (this.mRemoveFromFaceAlbumHandler != null) {
                    this.mRemoveFromFaceAlbumHandler.finishWhenGetContact(contact1);
                    return;
                }
                return;
            case 19:
                contact = null;
                if (data != null && resultCode == -1) {
                    contact = InputFaceNameFragment.getContactInfo(this.mActivity, data);
                }
                if (this.mFaceAlbumMergeHandler != null) {
                    this.mFaceAlbumMergeHandler.finishWhenGetContact(contact);
                }
                this.mFaceMediasetsList = null;
                return;
            case 21:
                if (data != null && resultCode == -1 && data.getBooleanExtra("all_faces_confirmed", false)) {
                    this.mFaceGridView.removeFooterView(this.mFooterView);
                    return;
                }
                return;
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }

    private void doDelete(final ActionMode mode, long[] selectedPhotoIds) {
        MediaAndAlbumOperations.delete(this.mActivity, "FacePageFragmentDeleteMediaDialogFragment", new OnDeletionCompleteListener() {
            public void onDeleted(int count, long[] deleteIds) {
                if (FacePageFragment.this.mActivity != null) {
                    NormalPeopleFaceMediaSet.ignoreFaces(FacePageFragment.this.mFaceGridViewWrapper.getCheckedItemIds());
                    ToastUtils.makeText(FacePageFragment.this.mActivity, FacePageFragment.this.getString(R.string.delete_finish_format, new Object[]{Integer.valueOf(count)}));
                    if (count > 0) {
                        SoundUtils.playSoundForOperation(FacePageFragment.this.mActivity, 0);
                    }
                    mode.finish();
                    BaseSamplingStatHelper.recordCountEvent("face", "face_delete");
                }
            }
        }, this.mLocalIdOfAlbum, this.mAlbumName, 0, 28, selectedPhotoIds);
    }

    private void showRenameHandler() {
        if (this.mFaceAlbumRenameHandler == null) {
            this.mFaceMediaSet = new NormalPeopleFaceMediaSet(this.mLocalIdOfAlbum, getServerIdOfAlbum(), getAlbumName());
            this.mFaceAlbumRenameHandler = new FaceAlbumRenameHandler(this.mActivity, this.mFaceMediaSet, confirmListener(), !PeopleContactInfo.isUnKnownRelation(this.mRelationType));
        }
        this.mFaceAlbumRenameHandler.show();
    }

    private ConfirmListener confirmListener() {
        return new ConfirmListener() {
            public void onConfirm(final String newName, boolean merge) {
                if (merge) {
                    ThreadManager.getMiscPool().submit(new Job<Void>() {
                        public Void run(JobContext jc) {
                            com.miui.gallery.cloud.peopleface.PeopleFace newFace = FaceDataManager.getGroupByPeopleName(FacePageFragment.this.mActivity, newName);
                            if (newFace != null) {
                                Intent intent = new Intent(FacePageFragment.this.mActivity, FacePageActivity.class);
                                Bundle bundle = new Bundle();
                                bundle.putString("server_id_of_album", newFace.serverId);
                                bundle.putString("local_id_of_album", newFace.getId());
                                bundle.putString("album_name", newName);
                                bundle.putInt("relationType", newFace.relationType);
                                RectF[] faceRegion = new RectF[1];
                                bundle.putString("face_album_cover", FaceManager.queryCoverImageOfOnePerson(newFace.serverId, faceRegion));
                                bundle.putParcelable("face_position_rect", faceRegion[0]);
                                intent.putExtras(bundle);
                                FacePageFragment.this.mActivity.startActivity(intent);
                                FacePageFragment.this.mActivity.finish();
                            }
                            return null;
                        }
                    });
                } else {
                    FacePageFragment.this.mHandler.post(new Runnable() {
                        public void run() {
                            if (FacePageFragment.this.getActivity() != null) {
                                if (TextUtils.isEmpty(FacePageFragment.this.getAlbumName())) {
                                    ((TextView) FacePageFragment.this.mFaceCoverHeader.findViewById(R.id.face_name_edit)).setText(FacePageFragment.this.getString(R.string.face_name_edit));
                                }
                                FacePageFragment.this.mAlbumName = newName;
                                FacePageFragment.this.setTitle();
                            }
                        }
                    });
                }
                BaseSamplingStatHelper.recordCountEvent("face", "face_album_rename");
            }
        };
    }

    private void startRemoveFromFaceAlbum(FaceAlbumHandlerListener removeListener) {
        if (this.mRemoveFromFaceAlbumHandler == null) {
            this.mRemoveFromFaceAlbumHandler = new RemoveFromFaceAlbumHandler(this.mActivity, new NormalPeopleFaceMediaSet(this.mLocalIdOfAlbum, getServerIdOfAlbum(), getAlbumName()), removeListener);
        }
        this.mRemoveFromFaceAlbumHandler.show();
    }
}
