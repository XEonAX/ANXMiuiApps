package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import com.miui.gallery.R;
import com.miui.gallery.adapter.PeoplePageAdapter;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.ui.PeoplePageGridItem;
import com.miui.gallery.util.face.PeopleCursorHelper;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;

public class PickPeoplePageFragment extends PickerFragment {
    private boolean mIsOnlyPickPeople;
    private GridView mPeopleGridView;
    private EditableListViewWrapperDeprecated mPeopleGridViewWrapper;
    private PeoplePageAdapter mPeoplePageAdapter;
    private PeoplePagePhotoLoaderCallback mPeoplePagePhotoLoaderCallback;

    private class PeoplePagePhotoLoaderCallback implements LoaderCallbacks {
        private PeoplePagePhotoLoaderCallback() {
        }

        /* synthetic */ PeoplePagePhotoLoaderCallback(PickPeoplePageFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(PickPeoplePageFragment.this.mActivity);
            loader.setUri(PeopleFace.PERSONS_URI);
            loader.setProjection(PeopleCursorHelper.PROJECTION);
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            PickPeoplePageFragment.this.mPeoplePageAdapter.swapCursor((Cursor) o);
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.people_page, container, false);
        this.mPeopleGridView = (GridView) view.findViewById(R.id.grid);
        this.mPeopleGridViewWrapper = new EditableListViewWrapperDeprecated(this.mPeopleGridView);
        this.mPeoplePageAdapter = new PeoplePageAdapter(this.mActivity);
        this.mPeopleGridViewWrapper.setAdapter(this.mPeoplePageAdapter);
        this.mPeopleGridViewWrapper.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Intent intent = new Intent();
                String peopleId = PickPeoplePageFragment.this.mPeoplePageAdapter.getPeopleIdOfItem(position);
                String peopleLocalId = PickPeoplePageFragment.this.mPeoplePageAdapter.getPeopleLocalIdOfItem(position);
                intent.putExtra("server_id_of_album", peopleId);
                intent.putExtra("local_id_of_album", peopleLocalId);
                intent.putExtra("album_name", ((PeoplePageGridItem) view).getName());
                if (PickPeoplePageFragment.this.mIsOnlyPickPeople) {
                    PickPeoplePageFragment.this.mActivity.setResult(-1, intent);
                    PickPeoplePageFragment.this.mActivity.finish();
                    return;
                }
                int i;
                intent.putExtra("relationType", PickPeoplePageFragment.this.mPeoplePageAdapter.getRelationTypeOfItem(position));
                intent.setClass(PickPeoplePageFragment.this.mActivity, PickFaceAlbumActivity.class);
                Picker picker = ((PickerActivity) PickPeoplePageFragment.this.mActivity).getPicker();
                String str = "pick-upper-bound";
                if (picker.getMode() == Mode.UNLIMITED) {
                    i = -1;
                } else {
                    i = picker.capacity();
                }
                intent.putExtra(str, i);
                intent.putExtra("pick-lower-bound", PickPeoplePageFragment.this.mPicker.baseline());
                intent.putExtra("picker_media_type", picker.getMediaType().ordinal());
                intent.putExtra("picker_result_set", PickerActivity.copyPicker(picker));
                intent.putExtra("picker_result_type", picker.getResultType().ordinal());
                PickPeoplePageFragment.this.mActivity.startActivityForResult(intent, 1);
            }
        });
        ((StickyGridHeadersGridView) view.findViewById(R.id.grid)).setAreHeadersSticky(false);
        return view;
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        return false;
    }

    public void setIsPickPeople(boolean isOnlyPickPeople) {
        this.mIsOnlyPickPeople = isOnlyPickPeople;
    }

    protected String getPageName() {
        return "picker_people";
    }

    protected Uri getUri() {
        return null;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mPeoplePagePhotoLoaderCallback = new PeoplePagePhotoLoaderCallback(this, null);
        getLoaderManager().initLoader(1, null, this.mPeoplePagePhotoLoaderCallback);
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

    public void onDestroy() {
        if (this.mPeoplePageAdapter != null) {
            this.mPeoplePageAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
