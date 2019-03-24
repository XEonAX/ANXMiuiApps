package com.miui.gallery.ui;

import android.app.AlertDialog.Builder;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.ContentValues;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.FacePageActivity;
import com.miui.gallery.activity.facebaby.IgnorePeoplePageActivity;
import com.miui.gallery.adapter.PeoplePageAdapter;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.model.PeopleContactInfo.Relation;
import com.miui.gallery.model.PeopleContactInfo.UserDefineRelation;
import com.miui.gallery.people.mark.MarkMyselfViewHelper;
import com.miui.gallery.preference.GalleryPreferences.Face;
import com.miui.gallery.preference.GalleryPreferences.PrefKeys;
import com.miui.gallery.preference.PreferenceHelper;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.FaceManager.BasicPeopleInfo;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.PeopleRelationSetDialogFragment.RelationSelectedListener;
import com.miui.gallery.ui.ProcessTask.OnCompleteListener;
import com.miui.gallery.ui.ProcessTask.ProcessCallback;
import com.miui.gallery.ui.renameface.FaceAlbumRenameHandler;
import com.miui.gallery.ui.renameface.FaceAlbumRenameHandler.ConfirmListener;
import com.miui.gallery.ui.renameface.InputFaceNameFragment;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.deprecated.Preference;
import com.miui.gallery.util.face.PeopleCursorHelper;
import com.miui.gallery.widget.AntiDoubleItemClickListener;
import com.miui.gallery.widget.EmptyPage;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.MultiChoiceModeListener;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import miui.provider.ExtraTelephony.FirewallLog;

public class PeoplePageFragment extends BaseFragment {
    private MultiChoiceModeListener mChoiceModeListener = new MultiChoiceModeListener() {
        private ActionMode mMode;

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            enableOrDisableMenuItem(PeoplePageFragment.this.mPeopleGridViewWrapper.getCheckedItemCount() > 0);
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            enableOrDisableMenuItem(PeoplePageFragment.this.mPeopleGridViewWrapper.getCheckedItemCount() > 0);
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            this.mMode = mode;
            mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(PeoplePageFragment.this.mActivity) ? R.menu.v15_people_page_menu : R.menu.people_page_menu, menu);
            enableOrDisableMenuItem(false);
            PeoplePageFragment.this.mPeoplePageAdapter.enterChoiceMode();
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return false;
        }

        public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
            switch (item.getItemId()) {
                case R.id.action_merge_face_album /*2131886855*/:
                    PeoplePageFragment.this.mergePeople(PeoplePageFragment.this.mPeopleGridViewWrapper.getCheckedItemIds(), this.mMode);
                    break;
                case R.id.action_ignore_face_album /*2131886856*/:
                    PeoplePageFragment.this.showIgnoreFaceAlbumAlert(PeoplePageFragment.this.mPeopleGridViewWrapper.getCheckedItemIds(), this.mMode);
                    break;
                case R.id.action_set_group /*2131886857*/:
                    PeoplePageFragment.this.showAndSetRelationDialog(PeoplePageFragment.this.mPeopleGridViewWrapper.getCheckedItemIds(), this.mMode);
                    break;
                default:
                    return false;
            }
            return true;
        }

        public void onDestroyActionMode(ActionMode mode) {
            this.mMode = null;
            PeoplePageFragment.this.mPeoplePageAdapter.exitChoiceMode();
        }

        private void enableOrDisableMenuItem(boolean enable) {
            Menu menu = this.mMode.getMenu();
            MenuItem item = menu.findItem(R.id.action_merge_face_album);
            if (item != null) {
                item.setEnabled(enable);
            }
            item = menu.findItem(R.id.action_ignore_face_album);
            if (item != null) {
                item.setEnabled(enable);
            }
            item = menu.findItem(R.id.action_set_group);
            if (item != null) {
                item.setEnabled(enable);
            }
        }
    };
    private DisplayPeopleMode mDisplayPeopleMode = DisplayPeopleMode.DISPLAY_PARTIAL_PEOPLE;
    private ViewStub mEmptyViewStub;
    private FaceAlbumRenameHandler mFaceAlbumRenameHandler;
    boolean mFirstLoadFinish = true;
    private View mFooterView;
    Handler mHandler = new Handler();
    boolean mHaveShownSetGroupToastDialog = false;
    private boolean mInMarkMode = false;
    private OnItemClickListener mItemClickListener = new AntiDoubleItemClickListener() {
        public void onAntiDoubleItemClick(AdapterView<?> adapterView, View view, int position, long id) {
            final String peopleId = PeoplePageFragment.this.mPeoplePageAdapter.getPeopleIdOfItem(position);
            final String peopleLocalId = PeoplePageFragment.this.mPeoplePageAdapter.getPeopleLocalIdOfItem(position);
            final String peopleName = ((PeoplePageGridItem) view).getName();
            if (!PeoplePageFragment.this.mInMarkMode) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putString("server_id_of_album", peopleId);
                bundle.putString("local_id_of_album", peopleLocalId);
                bundle.putString("album_name", peopleName);
                bundle.putInt("relationType", PeoplePageFragment.this.mPeoplePageAdapter.getRelationTypeOfItem(position));
                bundle.putString("face_album_cover", PeoplePageFragment.this.mPeoplePageAdapter.getThumbFilePath(position));
                bundle.putParcelable("face_position_rect", PeoplePageFragment.this.mPeoplePageAdapter.getFaceRegionRectF(position));
                intent.putExtras(bundle);
                intent.setClass(PeoplePageFragment.this.mActivity, FacePageActivity.class);
                PeoplePageFragment.this.startActivity(intent);
            } else if (PeoplePageFragment.this.mMarkRelation != null) {
                ProcessTask<Void, Boolean> processTask = new ProcessTask(new ProcessCallback<Void, Boolean>() {
                    public Boolean doProcess(Void[] params) {
                        String relationValue = PeopleContactInfo.getRelationValue(PeoplePageFragment.this.mMarkRelation);
                        return Boolean.valueOf(NormalPeopleFaceMediaSet.moveFaceToRelationGroup(new long[]{Long.valueOf(peopleLocalId).longValue()}, relationValue, relationValue));
                    }
                });
                processTask.setCompleteListener(new OnCompleteListener<Boolean>() {
                    public void onCompleteProcess(Boolean result) {
                        if (result == null || !result.booleanValue()) {
                            ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.mark_operation_failed);
                            return;
                        }
                        PeoplePageFragment.this.finishWithMarkSuccessResult(peopleLocalId, peopleId, peopleName, PeoplePageFragment.this.mMarkName, PeoplePageFragment.this.mMarkRelation.getRelationType());
                        Map<String, String> params = new HashMap();
                        params.put("relationType", String.valueOf(PeoplePageFragment.this.mMarkRelation.getRelationType()));
                        BaseSamplingStatHelper.recordCountEvent("people_mark", "mark_relation_in_people_page", params);
                    }
                });
                processTask.showProgress(PeoplePageFragment.this.mActivity, PeoplePageFragment.this.getString(R.string.mark_operation_processing));
                processTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else if (!TextUtils.isEmpty(PeoplePageFragment.this.mMarkName)) {
                String str;
                long longValue = Long.valueOf(peopleLocalId).longValue();
                if (TextUtils.isEmpty(PeoplePageFragment.this.mMarkName)) {
                    str = peopleName;
                } else {
                    str = PeoplePageFragment.this.mMarkName;
                }
                PeoplePageFragment.this.mFaceAlbumRenameHandler = new FaceAlbumRenameHandler(PeoplePageFragment.this.mActivity, new NormalPeopleFaceMediaSet(longValue, peopleId, str), new ConfirmListener() {
                    public void onConfirm(String newName, boolean merge) {
                        PeoplePageFragment.this.finishWithMarkSuccessResult(peopleLocalId, peopleId, newName, peopleName, PeoplePageFragment.this.mMarkName);
                    }
                });
                PeoplePageFragment.this.mFaceAlbumRenameHandler.show();
            }
        }
    };
    private MarkMyselfViewHelper mMarkMyselfHelper = null;
    private String mMarkName = null;
    private Relation mMarkRelation = null;
    private StickyGridHeadersGridView mPeopleGridView;
    private EditableListViewWrapperDeprecated mPeopleGridViewWrapper;
    private PeoplePageAdapter mPeoplePageAdapter;
    private PeoplePagePhotoLoaderCallback mPeoplePagePhotoLoaderCallback;
    private ShowEmptyViewHelper mShowEmptyViewHelper = new ShowEmptyViewHelper(this, null);

    enum DisplayPeopleMode {
        NOT_DISTINGUISH,
        DISPLAY_ALL_PEOPLE,
        DISPLAY_PARTIAL_PEOPLE
    }

    private class PeoplePagePhotoLoaderCallback implements LoaderCallbacks {
        private Future mChangeToVisibleFuture;
        private ArrayList<String> mLastLoadVisibilityUndefinedIds;

        private PeoplePagePhotoLoaderCallback() {
            this.mLastLoadVisibilityUndefinedIds = new ArrayList();
        }

        /* synthetic */ PeoplePagePhotoLoaderCallback(PeoplePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(PeoplePageFragment.this.mActivity);
            loader.setUri(PeopleFace.PERSONS_URI);
            loader.setProjection(PeopleCursorHelper.PROJECTION);
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            boolean emptyResult;
            boolean needChangeToVisible;
            ArrayList<String> undefinedVisibilityIds = getVisibilityTypeUndefinedIds((Cursor) o);
            if (!initMarkMyselfHelper() && PeoplePageFragment.this.mFirstLoadFinish && shouldShowSetGroupToastDialog()) {
                initialSetGroupToastDialog((Cursor) o);
            }
            PeoplePageFragment.this.mFirstLoadFinish = false;
            if (o == null || ((Cursor) o).getCount() == 0) {
                emptyResult = true;
            } else {
                emptyResult = false;
            }
            PeoplePageFragment.this.mPeopleGridView.setEmptyView(PeoplePageFragment.this.mShowEmptyViewHelper.initializeEmptyView(PeoplePageFragment.this.mEmptyViewStub, emptyResult));
            ArrayList<String> userDefineRelationText = new ArrayList();
            HashMap<String, Integer> userDefineRelationMap = new HashMap();
            Cursor wrappedCursor = wrapCursorByDisplayMode((Cursor) o, userDefineRelationText, userDefineRelationMap);
            doResetFooterAfterReload(emptyResult);
            UserDefineRelation.setUserDefineRelations(userDefineRelationText);
            PeoplePageFragment.this.mPeoplePageAdapter.setUserDefineRelationMap(userDefineRelationMap);
            PeoplePageFragment.this.mPeoplePageAdapter.changeCursor(wrappedCursor);
            synchronized (this.mLastLoadVisibilityUndefinedIds) {
                if (this.mLastLoadVisibilityUndefinedIds.containsAll(undefinedVisibilityIds) && undefinedVisibilityIds.containsAll(this.mLastLoadVisibilityUndefinedIds)) {
                    needChangeToVisible = false;
                } else {
                    needChangeToVisible = true;
                }
            }
            if (needChangeToVisible) {
                changeUndefinedToVisible(undefinedVisibilityIds);
            }
        }

        private Cursor wrapCursorByDisplayMode(Cursor all, ArrayList<String> userDefineRelationText, HashMap userDefineRelationMap) {
            if (all == null || all.getCount() == 0) {
                return all;
            }
            int unnamedUnknownRelationPeopleCount = 0;
            int unknownRelationPeopleCount = 0;
            int passedPeopleCount = 0;
            all.moveToFirst();
            while (!all.isAfterLast() && unnamedUnknownRelationPeopleCount <= 18) {
                int relationType = PeopleCursorHelper.getRelationType(all);
                if (PeopleContactInfo.isUserDefineRelation(relationType)) {
                    String relation = PeopleCursorHelper.getRelationText(all);
                    if (!(relation == null || userDefineRelationMap.containsKey(relation))) {
                        userDefineRelationMap.put(relation, Integer.valueOf(userDefineRelationText.size()));
                        userDefineRelationText.add(relation);
                    }
                } else if (PeopleContactInfo.isUnKnownRelation(relationType)) {
                    unknownRelationPeopleCount++;
                    if (TextUtils.isEmpty(PeopleCursorHelper.getPeopleName(all))) {
                        unnamedUnknownRelationPeopleCount++;
                    }
                }
                passedPeopleCount++;
                if (passedPeopleCount >= 18 && unnamedUnknownRelationPeopleCount > 0 && unknownRelationPeopleCount % 3 == 0) {
                    break;
                }
                all.moveToNext();
            }
            if (passedPeopleCount == all.getCount()) {
                PeoplePageFragment.this.mDisplayPeopleMode = DisplayPeopleMode.NOT_DISTINGUISH;
                return all;
            } else if (PeoplePageFragment.this.mDisplayPeopleMode != DisplayPeopleMode.DISPLAY_PARTIAL_PEOPLE) {
                return all;
            } else {
                int count = 0;
                MatrixCursor cursor = new MatrixCursor(PeopleCursorHelper.PROJECTION);
                all.moveToFirst();
                while (!all.isAfterLast() && count < passedPeopleCount) {
                    PeopleCursorHelper.add2MatrixCursor(cursor, all);
                    count++;
                    all.moveToNext();
                }
                return cursor;
            }
        }

        private void doResetFooterAfterReload(boolean emptyResult) {
            if (PeoplePageFragment.this.mDisplayPeopleMode == DisplayPeopleMode.NOT_DISTINGUISH) {
                PeoplePageFragment.this.mPeopleGridView.removeFooterView(PeoplePageFragment.this.mFooterView);
            } else if (!emptyResult) {
                String text;
                PeoplePageFragment.this.mPeopleGridView.addFooterView(PeoplePageFragment.this.mFooterView);
                if (PeoplePageFragment.this.mDisplayPeopleMode == DisplayPeopleMode.DISPLAY_PARTIAL_PEOPLE) {
                    text = PeoplePageFragment.this.mActivity.getString(R.string.expand_people);
                } else {
                    text = PeoplePageFragment.this.mActivity.getString(R.string.collaps_people);
                }
                ((TextView) PeoplePageFragment.this.mFooterView.findViewById(R.id.see_more_people_text)).setText(text);
            }
        }

        public void onLoaderReset(Loader loader) {
        }

        private boolean shouldShowSetGroupToastDialog() {
            if (PeoplePageFragment.this.mInMarkMode) {
                return false;
            }
            if ((PeoplePageFragment.this.mMarkMyselfHelper != null && PeoplePageFragment.this.mMarkMyselfHelper.isSuggestionDialogVisible()) || PeoplePageFragment.this.mHaveShownSetGroupToastDialog || PreferenceHelper.getBoolean(PrefKeys.FACE_HAS_TOAST_SET_GROUP, false)) {
                return false;
            }
            return true;
        }

        private void initialSetGroupToastDialog(Cursor cursor) {
            if (cursor != null && cursor.getCount() != 0) {
                String title;
                String msg;
                if (seeIfHasNamedPeople(cursor)) {
                    title = PeoplePageFragment.this.mActivity.getString(R.string.set_face_group_toast_title_old_user);
                    msg = PeoplePageFragment.this.mActivity.getString(R.string.set_face_group_toast_msg_old_user);
                } else {
                    title = PeoplePageFragment.this.mActivity.getString(R.string.set_face_group_toast_title_new_user);
                    msg = PeoplePageFragment.this.mActivity.getString(R.string.set_face_group_toast_msg_new_user);
                }
                OnClickListener confirmListener = new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        PreferenceHelper.putBoolean(PrefKeys.FACE_HAS_TOAST_SET_GROUP, true);
                    }
                };
                if (!PeoplePageFragment.this.mHaveShownSetGroupToastDialog) {
                    new Builder(PeoplePageFragment.this.mActivity).setMessage(msg).setTitle(title).setCancelable(true).setPositiveButton(R.string.have_known, confirmListener).show();
                    PeoplePageFragment.this.mHaveShownSetGroupToastDialog = true;
                }
            }
        }

        private boolean seeIfHasNamedPeople(Cursor cursor) {
            if (cursor == null) {
                return false;
            }
            cursor.moveToFirst();
            while (cursor.moveToNext()) {
                if (!TextUtils.isEmpty(PeopleCursorHelper.getPeopleName(cursor))) {
                    return true;
                }
            }
            return false;
        }

        private ArrayList<String> getVisibilityTypeUndefinedIds(Cursor cursor) {
            ArrayList<String> ids = new ArrayList();
            if (cursor != null && cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    if (PeopleCursorHelper.getVisibilityType(cursor) == 0) {
                        ids.add(PeopleCursorHelper.getPeopleLocalId(cursor));
                    }
                }
            }
            return ids;
        }

        private void changeUndefinedToVisible(final ArrayList<String> ids) {
            if (this.mChangeToVisibleFuture != null) {
                this.mChangeToVisibleFuture.cancel();
                this.mChangeToVisibleFuture = null;
            }
            this.mChangeToVisibleFuture = ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    ContentValues values = new ContentValues();
                    values.put("visibilityType", Integer.valueOf(1));
                    FaceManager.safeUpdatePeopleFaceByIds(values, ids);
                    synchronized (PeoplePagePhotoLoaderCallback.this.mLastLoadVisibilityUndefinedIds) {
                        PeoplePagePhotoLoaderCallback.this.mLastLoadVisibilityUndefinedIds.clear();
                        PeoplePagePhotoLoaderCallback.this.mLastLoadVisibilityUndefinedIds.addAll(ids);
                    }
                    return null;
                }
            });
        }

        private boolean initMarkMyselfHelper() {
            if (PeoplePageFragment.this.mInMarkMode) {
                return false;
            }
            if (PeoplePageFragment.this.mMarkMyselfHelper == null) {
                PeoplePageFragment.this.mMarkMyselfHelper = new MarkMyselfViewHelper(PeoplePageFragment.this);
            }
            return PeoplePageFragment.this.mMarkMyselfHelper.onStart();
        }
    }

    private class ShowEmptyViewHelper {
        EmptyPage mEmptyView;

        private ShowEmptyViewHelper() {
            this.mEmptyView = null;
        }

        /* synthetic */ ShowEmptyViewHelper(PeoplePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        private View initializeEmptyView(ViewStub stub, boolean cursorIsNull) {
            if (cursorIsNull) {
                if (this.mEmptyView == null) {
                    this.mEmptyView = (EmptyPage) stub.inflate();
                    setupEmptyView();
                }
                updateEmptyView();
            }
            return this.mEmptyView;
        }

        private void updateEmptyView() {
            if (this.mEmptyView != null) {
                if (Preference.sIsFirstSynced()) {
                    if (!AIAlbumStatusHelper.isFaceAlbumEnabled()) {
                        showSwitchClosedTips();
                        return;
                    } else if (Face.isFirstSyncCompleted()) {
                        showFaceEmptyTips();
                        return;
                    }
                }
                if (!NetworkUtils.isNetworkConnected()) {
                    showNoWifiTips();
                } else if (SyncUtil.isGalleryCloudSyncable(PeoplePageFragment.this.mActivity)) {
                    showSyncingTips();
                } else {
                    showSyncOffTips();
                }
            }
        }

        private void showFaceEmptyTips() {
            this.mEmptyView.setTitle((int) R.string.face_album_empty);
            this.mEmptyView.setActionButtonVisible(false);
        }

        private void showSyncingTips() {
            this.mEmptyView.setTitle((int) R.string.face_album_empty_syncing);
            this.mEmptyView.setActionButtonVisible(false);
        }

        private void showSyncOffTips() {
            this.mEmptyView.setTitle((int) R.string.face_album_use_tip);
            this.mEmptyView.setActionButtonText((int) R.string.search_backup_now);
            this.mEmptyView.setActionButtonVisible(true);
            this.mEmptyView.setOnActionButtonClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    IntentUtil.gotoTurnOnSyncSwitch(PeoplePageFragment.this.mActivity);
                }
            });
        }

        private void showNoWifiTips() {
            this.mEmptyView.setTitle((int) R.string.face_album_empty_syncing_when_connect_wifi);
            this.mEmptyView.setActionButtonText((int) R.string.setup_network_connection);
            this.mEmptyView.setActionButtonVisible(true);
            this.mEmptyView.setOnActionButtonClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    ShowEmptyViewHelper.this.setupNetworkConnection();
                }
            });
        }

        private void showSwitchClosedTips() {
            this.mEmptyView.setTitle((int) R.string.face_album_use_tip);
            this.mEmptyView.setActionButtonText((int) R.string.start_to_use_face_albumset);
            this.mEmptyView.setActionButtonVisible(true);
            this.mEmptyView.setOnActionButtonClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    AIAlbumStatusHelper.setFaceAlbumStatus(PeoplePageFragment.this.mActivity, true);
                    ShowEmptyViewHelper.this.updateEmptyView();
                    if (PeoplePageFragment.this.getLoaderManager().getLoader(1) == null) {
                        PeoplePageFragment.this.getLoaderManager().initLoader(1, null, PeoplePageFragment.this.mPeoplePagePhotoLoaderCallback);
                    }
                    SyncUtil.requestSync(PeoplePageFragment.this.mActivity);
                    BaseSamplingStatHelper.recordCountEvent("people", "people_open_switch");
                }
            });
        }

        private void setupEmptyView() {
            this.mEmptyView.setActionButtonVisible(false);
        }

        private void setupNetworkConnection() {
            if (PeoplePageFragment.this.getActivity() != null) {
                PeoplePageFragment.this.getActivity().startActivity(new Intent("android.settings.SETTINGS"));
            }
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.people_page, container, false);
        this.mPeopleGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid);
        this.mPeopleGridView.setHeadersIgnorePadding(true);
        this.mPeopleGridViewWrapper = new EditableListViewWrapperDeprecated(this.mPeopleGridView);
        this.mPeoplePageAdapter = new PeoplePageAdapter(this.mActivity);
        this.mPeopleGridViewWrapper.setAdapter(this.mPeoplePageAdapter);
        this.mPeopleGridViewWrapper.setOnItemClickListener(this.mItemClickListener);
        this.mPeopleGridViewWrapper.setChoiceMode(3);
        this.mPeopleGridViewWrapper.setMultiChoiceModeListener(this.mChoiceModeListener);
        this.mPeopleGridView.setAreHeadersSticky(false);
        this.mEmptyViewStub = (ViewStub) view.findViewById(R.id.empty_view);
        this.mFooterView = LayoutInflater.from(this.mActivity).inflate(R.layout.see_more_people_view, null, false);
        this.mFooterView.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if (PeoplePageFragment.this.mDisplayPeopleMode == DisplayPeopleMode.DISPLAY_PARTIAL_PEOPLE) {
                    PeoplePageFragment.this.mDisplayPeopleMode = DisplayPeopleMode.DISPLAY_ALL_PEOPLE;
                    PeoplePageFragment.this.mPeopleGridViewWrapper.getCheckedItemIds();
                } else if (PeoplePageFragment.this.mDisplayPeopleMode == DisplayPeopleMode.DISPLAY_ALL_PEOPLE) {
                    PeoplePageFragment.this.mDisplayPeopleMode = DisplayPeopleMode.DISPLAY_PARTIAL_PEOPLE;
                }
                PeoplePageFragment.this.getLoaderManager().getLoader(1).forceLoad();
                Map<String, String> params = new HashMap();
                params.put(FirewallLog.MODE, PeoplePageFragment.this.mDisplayPeopleMode == DisplayPeopleMode.DISPLAY_ALL_PEOPLE ? "all" : "part");
                BaseSamplingStatHelper.recordCountEvent("people", "people_list_display_mode", params);
            }
        });
        return view;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mPeoplePagePhotoLoaderCallback = new PeoplePagePhotoLoaderCallback(this, null);
        if (AIAlbumStatusHelper.isFaceAlbumEnabled()) {
            getLoaderManager().initLoader(1, null, this.mPeoplePagePhotoLoaderCallback);
        } else {
            this.mShowEmptyViewHelper.initializeEmptyView(this.mEmptyViewStub, true).setVisibility(0);
            this.mPeopleGridView.setVisibility(8);
        }
        Intent intent = this.mActivity.getIntent();
        if (intent.getData() != null) {
            Uri uri = intent.getData();
            this.mInMarkMode = uri.getBooleanQueryParameter("markMode", false);
            if (this.mInMarkMode) {
                String title;
                this.mMarkName = uri.getQueryParameter("markName");
                String markRelation = uri.getQueryParameter("markRelation");
                if (!TextUtils.isEmpty(markRelation)) {
                    this.mMarkRelation = PeopleContactInfo.getRelation(PeopleContactInfo.getRelationType(markRelation));
                    if (this.mMarkRelation == Relation.unknown) {
                        Log.w("PeoplePageFragment", "Do not support mark unknown group type");
                        this.mMarkRelation = null;
                    }
                }
                if (TextUtils.isEmpty(this.mMarkName) && this.mMarkRelation == null) {
                    Log.e("PeoplePageFragment", "Couldn't find valid mark arguments!");
                    finish();
                }
                if (!TextUtils.isEmpty(this.mMarkName)) {
                    title = getString(R.string.people_mark_mode_title, new Object[]{this.mMarkName});
                } else if (this.mMarkRelation != null) {
                    title = getString(R.string.people_mark_mode_title, new Object[]{PeopleContactInfo.getRelationName(this.mMarkRelation)});
                } else {
                    title = getString(R.string.people_mark_mode_title_no_mark_name);
                }
                this.mActivity.getActionBar().setTitle(title);
            }
        }
    }

    public void onStop() {
        super.onStop();
        if (this.mMarkMyselfHelper != null) {
            this.mMarkMyselfHelper.onStop();
        }
    }

    public String getPageName() {
        return "people";
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.action_see_ignore_faces /*2131886854*/:
                this.mActivity.startActivity(new Intent(this.mActivity, IgnorePeoplePageActivity.class));
                return true;
            default:
                return false;
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 16:
            case 17:
            case 19:
                PeopleContactInfo contact = null;
                if (data != null && resultCode == -1) {
                    contact = InputFaceNameFragment.getContactInfo(this.mActivity, data);
                }
                this.mFaceAlbumRenameHandler.finishWhenGetContact(contact);
                return;
            case 41:
                if (this.mMarkMyselfHelper != null) {
                    this.mMarkMyselfHelper.setLoadMoreMarkResult(resultCode == -1);
                    break;
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void ignoreFaceAlbum(long[] selectIds, ActionMode mode) {
        ArrayList<Long> ids = new ArrayList();
        for (long id : selectIds) {
            ids.add(Long.valueOf(id));
        }
        FaceDataManager.safeIgnorePeopleByIds(ids);
        mode.finish();
    }

    private boolean showIgnoreFaceAlbumAlert(final long[] selectIds, final ActionMode mode) {
        DialogUtil.showConfirmAlertWithCancel(this.mActivity, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                PeoplePageFragment.this.ignoreFaceAlbum(selectIds, mode);
                BaseSamplingStatHelper.recordCountEvent("people", "people_ignore_album");
            }
        }, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                mode.finish();
            }
        }, "", Html.fromHtml(this.mActivity.getString(R.string.ignore_alert_title)), this.mActivity.getString(17039370), 17039360);
        return true;
    }

    private void mergePeople(long[] selectIds, final ActionMode mode) {
        ArrayList<BasicPeopleInfo> people = FaceManager.getPeopleBasicInfoByIds(selectIds);
        if (people != null && !people.isEmpty()) {
            ArrayList list = new ArrayList();
            Iterator it = people.iterator();
            while (it.hasNext()) {
                BasicPeopleInfo info = (BasicPeopleInfo) it.next();
                list.add(new NormalPeopleFaceMediaSet((long) info.id, info.serverId, info.name));
            }
            this.mFaceAlbumRenameHandler = new FaceAlbumRenameHandler(this.mActivity, list, new ConfirmListener() {
                public void onConfirm(String newName, boolean merge) {
                    PeoplePageFragment.this.mHandler.post(new Runnable() {
                        public void run() {
                            mode.finish();
                        }
                    });
                    BaseSamplingStatHelper.recordCountEvent("people", "people_merge_album");
                }
            });
            this.mFaceAlbumRenameHandler.show();
        }
    }

    private void showAndSetRelationDialog(final long[] selectIds, final ActionMode mode) {
        String defaultRelation = null;
        if (selectIds.length == 1) {
            PeopleContactInfo contact = FaceManager.queryContactInfoOfOnePerson(selectIds[0]);
            if (contact != null) {
                defaultRelation = contact.relationWithMeText;
            }
        }
        PeopleRelationSetDialogFragment.createRelationSetDialog(this.mActivity, this.mActivity.getString(R.string.set_group), defaultRelation, selectIds.length, new RelationSelectedListener() {
            public void onRelationSelected(final String relation, final String relationText) {
                mode.finish();
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        NormalPeopleFaceMediaSet.moveFaceToRelationGroup(selectIds, relation, relationText);
                        return null;
                    }
                });
            }
        });
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        int firstVisibleItemPosition = this.mPeopleGridView.getFirstVisiblePosition();
        if (newConfig.orientation == 2) {
            this.mPeopleGridView.setNumColumns(getResources().getInteger(R.integer.people_face_grid_view_columns_land));
        } else {
            this.mPeopleGridView.setNumColumns(getResources().getInteger(R.integer.people_face_grid_view_columns));
        }
        this.mPeopleGridView.setSelection(firstVisibleItemPosition);
    }

    private void finishWithMarkSuccessResult(String peopleLocalId, String peopleServerId, String newName, String originName, String markName) {
        ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.mark_operation_succeeded);
        Intent intent = new Intent();
        intent.putExtra("server_id_of_album", peopleServerId);
        intent.putExtra("local_id_of_album", peopleLocalId);
        intent.putExtra("album_name", newName);
        intent.putExtra("origin_album_name", originName);
        intent.putExtra("mark_album_name", markName);
        this.mActivity.setResult(-1, intent);
        this.mActivity.finish();
        this.mActivity.overridePendingTransition(0, 0);
    }

    private void finishWithMarkSuccessResult(String peopleLocalId, String peopleServerId, String originName, String markName, int relationType) {
        ToastUtils.makeText(GalleryApp.sGetAndroidContext(), (int) R.string.mark_operation_succeeded);
        Intent intent = new Intent();
        intent.putExtra("server_id_of_album", peopleServerId);
        intent.putExtra("local_id_of_album", peopleLocalId);
        intent.putExtra("mark_relation", relationType);
        intent.putExtra("origin_album_name", originName);
        intent.putExtra("mark_album_name", markName);
        this.mActivity.setResult(-1, intent);
        this.mActivity.finish();
    }

    public void onDestroy() {
        if (this.mPeoplePageAdapter != null) {
            this.mPeoplePageAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
