package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.picker.helper.CursorUtils;
import com.miui.gallery.picker.helper.PickableBaseTimeLineAdapterWrapper;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.Picker.Mode;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.ui.Checkable;
import com.miui.gallery.widget.EmptyPage;

public class PickHomePageFragment extends PickerFragment {
    private EmptyPage mEmptyView;
    private GridView mHomeGridView;
    private PickableBaseTimeLineAdapterWrapper mHomePageAdapter;
    private HomePagePhotoLoaderCallback mHomePagePhotoLoaderCallback;

    private class HomePagePhotoLoaderCallback implements LoaderCallbacks {
        private HomePagePhotoLoaderCallback() {
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(PickHomePageFragment.this.mActivity);
            loader.setUri(PickHomePageFragment.this.getUri());
            loader.setProjection(PickerHomePageAdapter.PROJECTION);
            loader.setSortOrder("alias_sort_time DESC ");
            if (PickHomePageFragment.this.getPicker().getMediaType() != MediaType.ALL) {
                loader.setSelection("alias_show_in_homepage=1 AND serverType=?");
            } else {
                loader.setSelection("alias_show_in_homepage=1");
            }
            if (PickHomePageFragment.this.getPicker().getMediaType() == MediaType.IMAGE) {
                loader.setSelectionArgs(new String[]{String.valueOf(1)});
            } else if (PickHomePageFragment.this.getPicker().getMediaType() == MediaType.VIDEO) {
                loader.setSelectionArgs(new String[]{String.valueOf(2)});
            }
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            PickHomePageFragment.this.mHomePageAdapter.swapCursor((Cursor) o);
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.picker_home_page, container, false);
        this.mHomeGridView = (GridView) view.findViewById(R.id.grid);
        this.mHomeGridView.setAdapter(this.mHomePageAdapter);
        this.mHomeGridView.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mEmptyView = (EmptyPage) view.findViewById(16908292);
        this.mHomeGridView.setEmptyView(this.mEmptyView);
        this.mEmptyView.setVisibility(8);
        return view;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mHomePageAdapter = new PickableBaseTimeLineAdapterWrapper(this.mPicker, new PickerHomePageAdapter(this.mActivity, DisplayScene.SCENE_NONE));
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && isResumed()) {
            refreshPickState();
        }
    }

    protected Uri getUri() {
        return Media.URI.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).appendQueryParameter("generate_headers", String.valueOf(true)).appendQueryParameter("remove_processing_items", String.valueOf(true)).build();
    }

    protected boolean onPhotoItemClick(Cursor cursor) {
        if (this.mPicker.getMode() != Mode.SINGLE) {
            return false;
        }
        this.mPicker.pick(CursorUtils.getSha1(cursor));
        this.mPicker.done();
        return true;
    }

    private void refreshPickState() {
        int firstVisibleItem = this.mHomeGridView.getFirstVisiblePosition();
        for (int i = 0; i < this.mHomeGridView.getChildCount(); i++) {
            View v = this.mHomeGridView.getChildAt(i);
            if (v instanceof Checkable) {
                ((Checkable) v).setChecked(this.mPicker.contains(CursorUtils.getSha1((Cursor) this.mHomeGridView.getItemAtPosition(firstVisibleItem + i))));
            }
        }
    }

    protected String getPageName() {
        return "picker_home";
    }

    protected boolean recordPageByDefault() {
        return false;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mHomePagePhotoLoaderCallback = new HomePagePhotoLoaderCallback();
        getLoaderManager().initLoader(1, null, this.mHomePagePhotoLoaderCallback);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        int firstVisibleItemPosition = this.mHomeGridView.getFirstVisiblePosition();
        if (newConfig.orientation == 2) {
            this.mHomeGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsLand);
        } else {
            this.mHomeGridView.setNumColumns(ThumbConfig.get().sMicroThumbColumnsPortrait);
        }
        this.mHomeGridView.setSelection(firstVisibleItemPosition);
    }

    public void onDestroy() {
        if (this.mHomePageAdapter != null) {
            this.mHomePageAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
