package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.TrashAdapter;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.widget.HeaderGridView;

public class TrashFragment extends BaseFragment {
    private HeaderGridView mGridView;
    private TrashAdapter mTrashAdapter;
    private TrashedPhotoLoaderCallback mTrashedPhotoLoaderCallback;

    private class TrashedPhotoLoaderCallback implements LoaderCallbacks {
        private TrashedPhotoLoaderCallback() {
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(TrashFragment.this.mActivity);
            loader.setUri(Media.URI.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build());
            loader.setProjection(TrashAdapter.PROJECTION);
            loader.setSortOrder("alias_create_time DESC ");
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            TrashFragment.this.mTrashAdapter.swapCursor((Cursor) o);
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.trash, container, false);
        this.mGridView = (HeaderGridView) view.findViewById(R.id.trash_grid);
        this.mTrashAdapter = new TrashAdapter(this.mActivity);
        this.mGridView.setAdapter(this.mTrashAdapter);
        return view;
    }

    public String getPageName() {
        return "trash";
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mTrashedPhotoLoaderCallback = new TrashedPhotoLoaderCallback();
        getLoaderManager().initLoader(1, null, this.mTrashedPhotoLoaderCallback);
    }

    public void onDestroy() {
        if (this.mTrashAdapter != null) {
            this.mTrashAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
