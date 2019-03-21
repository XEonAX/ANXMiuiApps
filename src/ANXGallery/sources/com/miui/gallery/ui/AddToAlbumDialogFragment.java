package com.miui.gallery.ui;

import android.app.Dialog;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseAdapter;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.preference.GalleryPreferences;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.BaseAlbumOperationDialogFragment.OnAlbumOperationDoneListener;
import com.miui.gallery.ui.CopyOrMoveDialog.OnOperationSelectedListener;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.CursorUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.GalleryDialogFragment;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;

public class AddToAlbumDialogFragment extends GalleryDialogFragment {
    public static final String[] PROJECTION = new String[]{"_id AS _id", "cover_id", "cover_path", "cover_sha1", "cover_sync_state", "name", "media_count", "1 AS TYPE", "baby_info", "sortBy", "serverId", Cloud.ALIAS_ALBUM_CLASSIFICATION + " AS " + "classification", "cover_size"};
    private LoaderCallbacks<Cursor> mCallbacks = new LoaderCallbacks<Cursor>() {
        public Loader<Cursor> onCreateLoader(int id, Bundle args) {
            CursorLoader loader = new CursorLoader(AddToAlbumDialogFragment.this.getActivity());
            if (id == 1) {
                loader.setUri(AddToAlbumDialogFragment.this.getLoadUri());
                loader.setProjection(AddToAlbumDialogFragment.PROJECTION);
                loader.setSelection(AddToAlbumDialogFragment.this.getSelection());
                loader.setSortOrder("classification ASC, sortBy ASC ");
            } else {
                loader.setUri(Album.URI_SHARE_ALL);
                loader.setProjection(AlbumConstants.SHARED_ALBUM_PROJECTION);
                loader.setSelection("count > 0");
            }
            return loader;
        }

        public void onLoadFinished(Loader<Cursor> loader, Cursor data) {
            if (loader.getId() == 1) {
                MatrixCursor placeHolder = new MatrixCursor(data.getColumnNames());
                placeHolder.addRow(AddToAlbumDialogFragment.this.mCreatePlaceHolder);
                if (AddToAlbumDialogFragment.this.showSecretAlbum()) {
                    placeHolder.addRow(AddToAlbumDialogFragment.this.mSecretPlaceHolder);
                }
                Cursor sortedCursor = AddToAlbumDialogFragment.this.mListAdapter.sortCursor(data);
                AlbumSelectorAdapter access$500 = AddToAlbumDialogFragment.this.mListAdapter;
                if (sortedCursor != null) {
                    placeHolder = new MergeCursor(new Cursor[]{placeHolder, sortedCursor});
                }
                access$500.swapCursor(placeHolder);
            } else if (loader.getId() == 2) {
                AddToAlbumDialogFragment.this.mListAdapter.setSharedAlbums(data);
            }
        }

        public void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private Object[] mCreatePlaceHolder;
    private AlertDialog mDialog;
    private AlbumSelectorAdapter mListAdapter;
    private OnAlbumSelectedListener mListener;
    private OnAlbumOperationDoneListener mOnAlbumCreatedListener = new OnAlbumOperationDoneListener() {
        public void onOperationDone(long id, String albumName) {
            if (id > 0) {
                AddToAlbumDialogFragment.this.onAlbumSelected(id, AddToAlbumDialogFragment.this.showCopyOrMove());
            }
        }
    };
    private Object[] mSecretPlaceHolder;

    private class AlbumSelectorAdapter extends BaseAdapter implements OnClickListener {
        private Map<String, ShareAlbum> mSharedAlbums;

        public class ShareAlbum {
            String mAlbumId;
            String mCreatorId;
            String mOwnerNickName;
            int mUserCount;

            public String getOwnerName() {
                return TextUtils.isEmpty(this.mOwnerNickName) ? this.mCreatorId : this.mOwnerNickName;
            }
        }

        public void onClick(View v) {
            int which = ((Integer) v.getTag()).intValue();
            Cursor cursor = AddToAlbumDialogFragment.this.mListAdapter.getCursor();
            cursor.moveToPosition(which);
            if (cursor.getInt(7) == 0) {
                AlbumCreatorDialogFragment creator = new AlbumCreatorDialogFragment();
                creator.setOnAlbumOperationDoneListener(AddToAlbumDialogFragment.this.mOnAlbumCreatedListener);
                creator.showAllowingStateLoss(AddToAlbumDialogFragment.this.getFragmentManager(), "AlbumCreatorDialogFragment");
            } else if (cursor.getInt(7) == 2) {
                AddToAlbumDialogFragment.this.onAlbumSelected(AddToAlbumDialogFragment.this.mListAdapter.getItemId(which), false);
                BaseSamplingStatHelper.recordCountEvent("add_to_dialog", "add_to_secret");
            } else {
                AddToAlbumDialogFragment.this.onAlbumSelected(AddToAlbumDialogFragment.this.mListAdapter.getItemId(which), AddToAlbumDialogFragment.this.showCopyOrMove());
            }
        }

        public AlbumSelectorAdapter(Context context) {
            super(context);
        }

        public View newView(Context context, Cursor cursor, ViewGroup parent) {
            View view = LayoutInflater.from(context).inflate(R.layout.album_selector_item, parent, false);
            view.setOnClickListener(this);
            return view;
        }

        public void setSharedAlbums(Cursor cursor) {
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    try {
                        ShareAlbum shareAlbum = new ShareAlbum();
                        shareAlbum.mAlbumId = cursor.getString(0);
                        shareAlbum.mCreatorId = cursor.getString(1);
                        shareAlbum.mUserCount = cursor.getInt(2);
                        shareAlbum.mOwnerNickName = cursor.getString(3);
                        if (this.mSharedAlbums == null) {
                            this.mSharedAlbums = new HashMap();
                        }
                        this.mSharedAlbums.put(shareAlbum.mAlbumId, shareAlbum);
                    } catch (Throwable th) {
                        cursor.close();
                    }
                }
                if (getCount() > 0) {
                    notifyDataSetChanged();
                }
                cursor.close();
            }
        }

        public void bindView(View view, Context context, Cursor cursor) {
            int position = cursor.getPosition();
            ImageView coverView = (ImageView) view.findViewById(R.id.cover);
            TextView titleView = (TextView) view.findViewById(R.id.title);
            TextView countView = (TextView) view.findViewById(R.id.count);
            TextView typeView = (TextView) view.findViewById(R.id.type);
            view.setTag(Integer.valueOf(position));
            if (cursor.getInt(7) == 0) {
                ImageLoader.getInstance().cancelDisplayTask(coverView);
                coverView.setImageDrawable(context.getResources().getDrawable(R.drawable.create_album));
                countView.setVisibility(8);
            } else if (cursor.getInt(7) == 2) {
                ImageLoader.getInstance().cancelDisplayTask(coverView);
                coverView.setImageDrawable(context.getResources().getDrawable(R.drawable.secret_album));
                countView.setVisibility(8);
            } else {
                coverView.setImageDrawable(null);
                countView.setVisibility(0);
                countView.setText(String.format(context.getResources().getQuantityText(R.plurals.album_count, cursor.getInt(6)).toString(), new Object[]{Integer.valueOf(count)}));
                bindImage(position, coverView);
            }
            titleView.setText(getAlbumName(cursor));
            String typeString = null;
            ShareAlbum album;
            if (isOtherShareAlbum(cursor)) {
                album = getShareAlbumInfo(position);
                if (!(album == null || TextUtils.isEmpty(album.getOwnerName()))) {
                    if (isBabyAlbum(cursor)) {
                        typeString = context.getString(R.string.album_others_share_baby_info_format, new Object[]{album.getOwnerName()});
                    } else {
                        typeString = context.getString(R.string.album_others_share_info_format, new Object[]{album.getOwnerName()});
                    }
                }
            } else if (isBabyAlbum(cursor)) {
                typeString = context.getString(R.string.album_type_baby);
            } else if (isOwnerShareAlbum(cursor)) {
                album = getShareAlbumInfo(position);
                if (album != null) {
                    typeString = context.getResources().getQuantityString(R.plurals.album_already_share_user_count, album.mUserCount, new Object[]{Integer.valueOf(album.mUserCount)});
                }
            }
            if (TextUtils.isEmpty(typeString)) {
                typeView.setVisibility(8);
                return;
            }
            typeView.setVisibility(0);
            typeView.setText(typeString);
        }

        private void bindImage(int position, ImageView view) {
            BindImageHelper.bindImage(getLocalPath(position), getDownloadUri(position), DownloadType.MICRO, view, getDisplayImageOptions(position), ThumbConfig.get().sMicroTargetSize);
        }

        public String getLocalPath(int position) {
            return BaseAdapter.getMicroPath(getCursorByPosition(position), 2, 3);
        }

        public Uri getDownloadUri(int position) {
            return BaseAdapter.getDownloadUri(getCursorByPosition(position), 4, 1);
        }

        public long getFileLength(int position) {
            return getCursorByPosition(position).getLong(12);
        }

        private String getAlbumName(Cursor cursor) {
            if (isCameraAlbum(cursor)) {
                return AddToAlbumDialogFragment.this.getString(R.string.album_camera_name);
            }
            if (isScreenshotsAlbum(cursor)) {
                return AddToAlbumDialogFragment.this.getString(R.string.album_screenshot_name);
            }
            return cursor.getString(5);
        }

        private boolean isCameraAlbum(Cursor cursor) {
            return String.valueOf(1).equals(cursor.getString(10));
        }

        private boolean isScreenshotsAlbum(Cursor cursor) {
            return String.valueOf(2).equals(cursor.getString(10));
        }

        private boolean isOtherShareAlbum(Cursor cursor) {
            return ShareAlbumManager.isOtherShareAlbumId((long) cursor.getInt(0));
        }

        private ShareAlbum getShareAlbumInfo(int position) {
            return this.mSharedAlbums != null ? (ShareAlbum) this.mSharedAlbums.get(String.valueOf(getCursorByPosition(position).getInt(0))) : null;
        }

        private boolean isBabyAlbum(Cursor cursor) {
            return !TextUtils.isEmpty(cursor.getString(8));
        }

        private boolean isOwnerShareAlbum(Cursor cursor) {
            int albumId = cursor.getInt(0);
            if (isOtherShareAlbum(cursor) || this.mSharedAlbums == null || !this.mSharedAlbums.containsKey(String.valueOf(albumId))) {
                return false;
            }
            return true;
        }

        private boolean isForceTypeTime(Cursor cursor) {
            return GalleryPreferences.Album.isForceTopAlbumByTopTime(cursor.getLong(9));
        }

        private boolean isSystemAlbum(Cursor cursor) {
            String serverId = cursor.getString(10);
            for (Long albumId : Album.ALL_SYSTEM_ALBUM_SERVER_IDS) {
                if (String.valueOf(albumId).equals(serverId)) {
                    return true;
                }
            }
            return false;
        }

        private Cursor sortCursor(Cursor cursor) {
            if (cursor == null || cursor.isClosed()) {
                return null;
            }
            if (cursor.getCount() <= 0 || !cursor.moveToFirst()) {
                return cursor;
            }
            Cursor result = new MatrixCursor(AddToAlbumDialogFragment.PROJECTION);
            List<Integer> forceTopAlbumPositions = new ArrayList();
            List<Integer> systemAlbumAlbumPositions = new ArrayList();
            List<Integer> babyAlbumPositions = new ArrayList();
            List<Integer> unclassifiedAlbumPositions = new ArrayList();
            List<Integer> sortedAlbumPositions = new ArrayList();
            Object[] columns = new Object[AddToAlbumDialogFragment.PROJECTION.length];
            int lastClassification = cursor.getInt(11);
            while (!cursor.isAfterLast()) {
                int classification = cursor.getInt(11);
                if (classification != lastClassification) {
                    sortedAlbumPositions.addAll(forceTopAlbumPositions);
                    forceTopAlbumPositions.clear();
                    sortedAlbumPositions.addAll(systemAlbumAlbumPositions);
                    systemAlbumAlbumPositions.clear();
                    sortedAlbumPositions.addAll(babyAlbumPositions);
                    babyAlbumPositions.clear();
                    sortedAlbumPositions.addAll(unclassifiedAlbumPositions);
                    unclassifiedAlbumPositions.clear();
                    lastClassification = classification;
                }
                if (isForceTypeTime(cursor)) {
                    forceTopAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                } else if (isSystemAlbum(cursor)) {
                    systemAlbumAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                } else if (isBabyAlbum(cursor)) {
                    babyAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                } else {
                    unclassifiedAlbumPositions.add(Integer.valueOf(cursor.getPosition()));
                }
                cursor.moveToNext();
            }
            sortedAlbumPositions.addAll(forceTopAlbumPositions);
            sortedAlbumPositions.addAll(systemAlbumAlbumPositions);
            sortedAlbumPositions.addAll(babyAlbumPositions);
            sortedAlbumPositions.addAll(unclassifiedAlbumPositions);
            for (Integer position : sortedAlbumPositions) {
                cursor.moveToPosition(position.intValue());
                CursorUtils.addRowToMatrixCursor(cursor, result, columns);
            }
            BaseMiscUtil.closeSilently(cursor);
            return result;
        }
    }

    public interface OnAlbumSelectedListener {
        void onAlbumSelected(long j, boolean z);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mCreatePlaceHolder = new Object[]{Integer.valueOf(-1), Integer.valueOf(-1), null, null, Integer.valueOf(0), getString(R.string.create_new_album), Integer.valueOf(0), Integer.valueOf(0), null, Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(-1), Integer.valueOf(0)};
        this.mSecretPlaceHolder = new Object[]{Long.valueOf(-1000), Integer.valueOf(-1), null, null, Integer.valueOf(0), getString(R.string.secret_album_display_name), Integer.valueOf(0), Integer.valueOf(2), null, Integer.valueOf(0), Long.valueOf(1000), Integer.valueOf(-1), Integer.valueOf(0)};
        this.mListAdapter = new AlbumSelectorAdapter(getActivity());
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Builder builder = new Builder(getActivity());
        builder.setAdapter(this.mListAdapter, null).setTitle(R.string.add_to_album).setNegativeButton(17039360, null);
        this.mDialog = builder.create();
        return this.mDialog;
    }

    private boolean showCopyOrMove() {
        return getArguments() == null || getArguments().getBoolean("show_copy_or_move");
    }

    private boolean showSecretAlbum() {
        return getArguments() == null || getArguments().getBoolean("show_add_secret");
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getLoaderManager().initLoader(1, getArguments(), this.mCallbacks);
        getLoaderManager().initLoader(2, getArguments(), this.mCallbacks);
    }

    public void onDestroy() {
        if (this.mListAdapter != null) {
            this.mListAdapter.swapCursor(null);
        }
        super.onDestroy();
    }

    private Uri getLoadUri() {
        if (getArguments() != null) {
            return Album.URI.buildUpon().appendQueryParameter("join_share", String.valueOf(getArguments().getBoolean("show_share_album", true))).build();
        }
        return Album.URI;
    }

    private boolean isOnlyShowLocal() {
        return LocalMode.isOnlyShowLocalPhoto();
    }

    private String getSelection() {
        boolean showSystemAlbum = true;
        boolean showImmutableAlbum = false;
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("show_system_album")) {
                showSystemAlbum = arguments.getBoolean("show_system_album");
            }
            showImmutableAlbum = arguments.getBoolean("show_immutable_album");
        }
        String notShowSystemAlbumClause = Cloud.ALIAS_NON_SYSTEM_ALBUM;
        String notShowImmutableAlbumClause = "immutable = 0";
        String onlyShowLocalAlbumClause = isOnlyShowLocal() ? " AND (media_count>0)" : "";
        if (!showSystemAlbum && !showImmutableAlbum) {
            return notShowSystemAlbumClause + " AND " + notShowImmutableAlbumClause + onlyShowLocalAlbumClause;
        }
        if (!showSystemAlbum) {
            return notShowSystemAlbumClause + onlyShowLocalAlbumClause;
        }
        if (showImmutableAlbum) {
            return null;
        }
        return notShowImmutableAlbumClause + onlyShowLocalAlbumClause;
    }

    public void setOnAlbumSelectedListener(OnAlbumSelectedListener listener) {
        this.mListener = listener;
    }

    private void onAlbumSelected(long id, boolean showCopyOrMove) {
        if (showCopyOrMove && ShareMediaManager.isOtherShareMediaId(id)) {
            Log.d("AddToAlbumDialogFragment", "Is other shared album, do copy operation for default");
            showCopyOrMove = false;
        }
        if (showCopyOrMove) {
            showCopyOrMoveDialog(id);
            return;
        }
        dismissSafely();
        if (this.mListener != null) {
            this.mListener.onAlbumSelected(id, false);
        }
    }

    private void showCopyOrMoveDialog(final long id) {
        CopyOrMoveDialog dialog = new CopyOrMoveDialog();
        dialog.setOnOperationSelectedListener(new OnOperationSelectedListener() {
            public void onOperationSelected(int ops) {
                switch (ops) {
                    case 1:
                        if (AddToAlbumDialogFragment.this.mListener != null) {
                            AddToAlbumDialogFragment.this.mListener.onAlbumSelected(id, false);
                        }
                        AddToAlbumDialogFragment.this.recordCopyMoveAction(false);
                        return;
                    case 2:
                        return;
                    default:
                        if (AddToAlbumDialogFragment.this.mListener != null) {
                            AddToAlbumDialogFragment.this.mListener.onAlbumSelected(id, true);
                        }
                        AddToAlbumDialogFragment.this.recordCopyMoveAction(true);
                        return;
                }
            }
        });
        dialog.showAllowingStateLoss(getFragmentManager(), "CopyOrMoveDialog");
        dismissSafely();
    }

    private void recordCopyMoveAction(boolean deleteOrigin) {
        HashMap<String, String> params = new HashMap();
        params.put("move", String.valueOf(deleteOrigin));
        params.put("from", "AddToAlbumDialogFragment");
        BaseSamplingStatHelper.recordCountEvent("organize_photos", "move_or_copy", params);
    }
}
