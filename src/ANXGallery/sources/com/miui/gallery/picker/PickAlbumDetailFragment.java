package com.miui.gallery.picker;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.adapter.AlbumDetailTimeLineAdapter;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.picker.helper.Picker.MediaType;
import com.miui.gallery.picker.helper.PickerItemHolder;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.widget.SortByHeader;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;

public class PickAlbumDetailFragment extends PickAlbumDetailFragmentBase {
    private static final String SELECTION_ONLY_LOCAL = (" AND " + Cloud.ALIAS_LOCAL_MEDIA);
    private AlbumDetailLoaderCallback mAlbumDetailLoaderCallback;
    private PickAlbumDetailSimpleAdapter mAlbumDetailSimpleAdapter;
    private PickAlbumDetailTimeLineAdapter mAlbumDetailTimeLineAdapter;
    private long mAlbumId;
    private AlbumItemCheckListener mAlbumItemCheckListener;
    private SortBy mCurrentSortBy = SortBy.NONE;
    private boolean mIsOtherSharedAlbum;
    private boolean mIsPanoAlbum;
    private OnSortByClickListener mOnSortByClickListener;
    private SortByHeader mSortByHeader;
    private String mSortOrder = " DESC ";

    private class AlbumDetailLoaderCallback implements LoaderCallbacks {
        private AlbumDetailLoaderCallback() {
        }

        public Loader onCreateLoader(int i, Bundle bundle) {
            CursorLoader loader = new CursorLoader(PickAlbumDetailFragment.this.mActivity);
            PickAlbumDetailFragment.this.configLoader(loader, SortBy.DATE);
            return loader;
        }

        public void onLoadFinished(Loader loader, Object o) {
            if (PickAlbumDetailFragment.this.mCurrentSortBy == SortBy.DATE) {
                PickAlbumDetailFragment.this.mAlbumDetailGridView.setAdapter(PickAlbumDetailFragment.this.mAlbumDetailTimeLineAdapter);
                PickAlbumDetailFragment.this.mAlbumDetailTimeLineAdapter.swapCursor((Cursor) o);
            } else {
                PickAlbumDetailFragment.this.mAlbumDetailGridView.setAdapter(PickAlbumDetailFragment.this.mAlbumDetailSimpleAdapter);
                PickAlbumDetailFragment.this.mAlbumDetailSimpleAdapter.swapCursor((Cursor) o);
            }
            PickAlbumDetailFragment.this.mSortByHeader.updateCurrentSortView(PickAlbumDetailFragment.this.mCurrentSortBy, PickAlbumDetailFragment.this.getSortByIndicatorResource());
            PickAlbumDetailFragment.this.copy2Pick();
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    private class OnSortByClickListener implements OnClickListener {
        private OnSortByClickListener() {
        }

        public void onClick(View view) {
            Loader loader = PickAlbumDetailFragment.this.getLoaderManager().getLoader(1);
            switch (view.getId()) {
                case R.id.datetime_container /*2131886224*/:
                    PickAlbumDetailFragment.this.configLoader((CursorLoader) loader, SortBy.DATE);
                    break;
                case R.id.name_container /*2131886227*/:
                    PickAlbumDetailFragment.this.configLoader((CursorLoader) loader, SortBy.NAME);
                    break;
                case R.id.size_container /*2131886230*/:
                    PickAlbumDetailFragment.this.configLoader((CursorLoader) loader, SortBy.SIZE);
                    break;
            }
            loader.forceLoad();
        }
    }

    private class PickAlbumDetailSimpleAdapter extends AlbumDetailSimpleAdapter {
        public PickAlbumDetailSimpleAdapter(Context context) {
            super(context, DisplayScene.SCENE_NONE);
        }

        public void doBindData(View view, Context context, Cursor cursor) {
            super.doBindData(view, context, cursor);
            PickAlbumDetailFragment.this.bindCheckState(view, cursor);
            PickerItemHolder.bindView(cursor.getPosition(), view, this, PickAlbumDetailFragment.this.mAlbumItemCheckListener);
        }
    }

    private class PickAlbumDetailTimeLineAdapter extends AlbumDetailTimeLineAdapter {
        public PickAlbumDetailTimeLineAdapter(Context context) {
            super(context, DisplayScene.SCENE_NONE);
        }

        public void doBindData(View view, Context context, Cursor cursor) {
            super.doBindData(view, context, cursor);
            PickAlbumDetailFragment.this.bindCheckState(view, cursor);
            PickerItemHolder.bindView(cursor.getPosition(), view, this, PickAlbumDetailFragment.this.mAlbumItemCheckListener);
        }
    }

    public PickAlbumDetailFragment() {
        super("album");
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mAlbumDetailTimeLineAdapter = new PickAlbumDetailTimeLineAdapter(this.mActivity);
        this.mAlbumDetailSimpleAdapter = new PickAlbumDetailSimpleAdapter(this.mActivity);
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.album_detail, container, false);
        this.mAlbumDetailGridView = (StickyGridHeadersGridView) view.findViewById(R.id.grid);
        this.mAlbumDetailGridView.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mAlbumItemCheckListener = new AlbumItemCheckListener(this.mPicker);
        this.mOnSortByClickListener = new OnSortByClickListener();
        this.mSortByHeader = (SortByHeader) view.findViewById(R.id.sortby_header);
        this.mSortByHeader.setOnSortByClickListener(this.mOnSortByClickListener);
        intialSelections();
        return view;
    }

    protected String getPageName() {
        return "picker_album_detail";
    }

    protected Uri getUri() {
        return getUri(SortBy.NONE);
    }

    private int getSortByIndicatorResource() {
        return TextUtils.equals(this.mSortOrder, " ASC ") ? R.drawable.sort_by_item_arrow_up : R.drawable.sort_by_item_arrow_down;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mAlbumDetailLoaderCallback = new AlbumDetailLoaderCallback();
        getLoaderManager().initLoader(1, null, this.mAlbumDetailLoaderCallback);
    }

    public void setAlbumId(long albumId) {
        this.mAlbumId = albumId;
    }

    public void setIsOtherSharedAlbum(boolean shared) {
        this.mIsOtherSharedAlbum = shared;
    }

    public void setIsPanoAlbum(boolean isPanoAlbum) {
        this.mIsPanoAlbum = isPanoAlbum;
    }

    private void configLoader(CursorLoader cursorLoader, SortBy sortBy) {
        cursorLoader.setUri(getUri(sortBy));
        cursorLoader.setProjection(AlbumDetailTimeLineAdapter.PROJECTION);
        cursorLoader.setSelection(getSelection());
        cursorLoader.setSelectionArgs(getSelectionArgs());
        cursorLoader.setSortOrder(configOrderBy(sortBy));
    }

    private Uri getUri(SortBy sortBy) {
        if (this.mIsOtherSharedAlbum) {
            return ContentUris.withAppendedId(Media.URI_OTHER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build(), this.mAlbumId);
        }
        if (sortBy == SortBy.DATE) {
            return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("generate_headers", String.valueOf(true)).appendQueryParameter("remove_duplicate_items", String.valueOf(true)).appendQueryParameter("remove_processing_items", String.valueOf(true)).build();
        }
        return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).appendQueryParameter("remove_processing_items", String.valueOf(true)).build();
    }

    private boolean isOnlyShowLocal() {
        return LocalMode.isOnlyShowLocalPhoto();
    }

    private String getSelection() {
        if (this.mIsOtherSharedAlbum) {
            return null;
        }
        StringBuilder builder = new StringBuilder();
        if (this.mAlbumId == 2147483647L) {
            builder.append("serverType = ? AND ");
            builder.append("alias_hidden = ?");
        } else if (this.mIsPanoAlbum) {
            builder.append("title LIKE ?  AND ");
            builder.append("alias_hidden = ?");
        } else if (this.mAlbumId == 2147483642) {
            builder.append("alias_is_favorite = ? AND ");
            builder.append("alias_hidden = ? AND ");
            builder.append("localGroupId != ?");
            if (getPicker().getMediaType() != MediaType.ALL) {
                builder.append(" AND serverType = ?");
            }
        } else {
            builder.append("localGroupId = ? ");
            if (getPicker().getMediaType() != MediaType.ALL) {
                builder.append(" AND serverType=? ");
            }
        }
        if (isOnlyShowLocal()) {
            builder.append(SELECTION_ONLY_LOCAL);
        }
        return builder.toString();
    }

    private String[] getSelectionArgs() {
        if (this.mAlbumId == 2147483647L) {
            return new String[]{String.valueOf(2), String.valueOf(0)};
        } else if (this.mIsPanoAlbum) {
            return new String[]{"PANO_.*", String.valueOf(0)};
        } else if (this.mIsOtherSharedAlbum) {
            return null;
        } else {
            if (this.mAlbumId == 2147483642) {
                MediaType type = getPicker().getMediaType();
                if (type == MediaType.ALL) {
                    return new String[]{String.valueOf(1), String.valueOf(0), String.valueOf(-1000)};
                }
                String valueOf;
                String[] strArr = new String[4];
                strArr[0] = String.valueOf(1);
                strArr[1] = String.valueOf(0);
                strArr[2] = String.valueOf(-1000);
                if (type == MediaType.IMAGE) {
                    valueOf = String.valueOf(1);
                } else {
                    valueOf = String.valueOf(2);
                }
                strArr[3] = valueOf;
                return strArr;
            } else if (getPicker().getMediaType() == MediaType.IMAGE) {
                return new String[]{String.valueOf(this.mAlbumId), String.valueOf(1)};
            } else if (getPicker().getMediaType() == MediaType.VIDEO) {
                return new String[]{String.valueOf(this.mAlbumId), String.valueOf(2)};
            } else {
                return new String[]{String.valueOf(this.mAlbumId)};
            }
        }
    }

    private void onSortByChanged() {
        this.mAlbumDetailSimpleAdapter.setCurrentSortBy(this.mCurrentSortBy);
    }

    private String configOrderBy(SortBy sortBy) {
        String orderBy = getSortByString(sortBy);
        if (this.mCurrentSortBy == sortBy) {
            this.mSortOrder = TextUtils.equals(this.mSortOrder, " DESC ") ? " ASC " : " DESC ";
        } else {
            this.mSortOrder = " DESC ";
            this.mCurrentSortBy = sortBy;
        }
        orderBy = orderBy + this.mSortOrder;
        onSortByChanged();
        return orderBy;
    }

    private String getSortByString(SortBy sortBy) {
        switch (sortBy) {
            case NAME:
                return "title";
            case SIZE:
                return "size";
            default:
                return "alias_sort_time";
        }
    }

    public void onDestroy() {
        if (this.mAlbumDetailSimpleAdapter != null) {
            this.mAlbumDetailSimpleAdapter.swapCursor(null);
        }
        if (this.mAlbumDetailTimeLineAdapter != null) {
            this.mAlbumDetailTimeLineAdapter.swapCursor(null);
        }
        super.onDestroy();
    }
}
