package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.FacePageAdapter;
import com.miui.gallery.picker.helper.CursorUtils;
import com.miui.gallery.picker.helper.PickerItemHolder;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;

public class PickFaceAlbumFragment extends PickAlbumDetailFragmentBase {
    private PickAlbumDetailTimeLineAdapter mAdapter;
    private AlbumItemCheckListener mAlbumItemCheckListener;
    private FacePagePhotoLoaderCallback mFacePagePhotoLoaderCallback;
    private long mLocalIdOfAlbum;
    private String mServerIdOfAlbum;

    private class FacePagePhotoLoaderCallback implements LoaderCallbacks {
        private FacePagePhotoLoaderCallback() {
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            String selection = null;
            String selectionInIds = PickFaceAlbumFragment.this.mActivity.getIntent().getStringExtra("pick_face_ids_in");
            if (!TextUtils.isEmpty(selectionInIds)) {
                selection = "_id in ( " + selectionInIds + ")";
            }
            CursorLoader loader = new CursorLoader(PickFaceAlbumFragment.this.mActivity);
            loader.setUri(PickFaceAlbumFragment.this.getUri());
            loader.setProjection(FacePageAdapter.PROJECTION);
            loader.setSelection(selection);
            loader.setSelectionArgs(new String[]{PickFaceAlbumFragment.this.mServerIdOfAlbum, String.valueOf(PickFaceAlbumFragment.this.mLocalIdOfAlbum)});
            loader.setSortOrder("dateTaken DESC ");
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            PickFaceAlbumFragment.this.mAdapter.swapCursor((Cursor) o);
            PickFaceAlbumFragment.this.copy2Pick();
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    private class PickAlbumDetailTimeLineAdapter extends FacePageAdapter {
        public PickAlbumDetailTimeLineAdapter(Context context) {
            super(context);
        }

        public void doBindView(View view, Context context, Cursor cursor) {
            super.doBindView(view, context, cursor);
            PickFaceAlbumFragment.this.bindCheckState(view, cursor);
            PickerItemHolder.bindView(cursor.getPosition(), view, this, PickFaceAlbumFragment.this.mAlbumItemCheckListener);
        }
    }

    public PickFaceAlbumFragment() {
        super("face-album");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mAdapter = new PickAlbumDetailTimeLineAdapter(this.mActivity);
        if (this.mActivity.getIntent().getBooleanExtra("need_pick_face_id", false)) {
            this.mAdapter.changeDisplayMode();
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.face_page, container, false);
        this.mAlbumDetailGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid);
        this.mAlbumDetailGridView.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mAlbumDetailGridView.setAdapter(this.mAdapter);
        this.mAlbumItemCheckListener = new AlbumItemCheckListener(this.mPicker);
        intialSelections();
        return view;
    }

    protected Uri getUri() {
        return PeopleFace.ONE_PERSON_URI;
    }

    protected long getKey(Cursor cursor) {
        return CursorUtils.getFacePhotoId(cursor);
    }

    protected String getLocalPath(Cursor cursor) {
        return this.mAdapter.getItemPath(cursor);
    }

    protected Uri getPreviewUri() {
        return PeopleFace.RECOMMEND_FACES_OF_ONE_PERSON_URI;
    }

    protected String getPreviewSelection(Cursor cursor) {
        return null;
    }

    protected String[] getPreviewSelectionArgs(Cursor cursor) {
        return new String[]{"'" + CursorUtils.getFaceId(cursor) + "'"};
    }

    protected String getPreviewOrder() {
        return "dateTaken DESC ";
    }

    protected boolean isPreviewFace() {
        return true;
    }

    protected String getPageName() {
        return "picker_face_album";
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        if (!this.mActivity.getIntent().getBooleanExtra("need_pick_face_id", false)) {
            return super.onPhotoItemClick(cursor);
        }
        this.mPicker.pick(CursorUtils.getFaceId(cursor));
        ((PickAlbumDetailActivityBase) this.mActivity).setResultCode(-1);
        this.mPicker.done();
        return true;
    }

    public void onDestroy() {
        if (this.mAdapter != null) {
            this.mAdapter.swapCursor(null);
        }
        super.onDestroy();
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mServerIdOfAlbum = this.mActivity.getIntent().getStringExtra("server_id_of_album");
        this.mLocalIdOfAlbum = Long.parseLong(this.mActivity.getIntent().getStringExtra("local_id_of_album"));
        this.mFacePagePhotoLoaderCallback = new FacePagePhotoLoaderCallback();
        getLoaderManager().initLoader(1, null, this.mFacePagePhotoLoaderCallback);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        int firstVisibleItemPosition = this.mAlbumDetailGridView.getFirstVisiblePosition();
        if (newConfig.orientation == 2) {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsLand);
        } else {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsPortrait);
        }
        this.mAlbumDetailGridView.setSelection(firstVisibleItemPosition);
    }
}
