package com.miui.gallery.ui;

import android.content.ContentUris;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.GalleryContract.Media;
import java.util.Locale;

public class AlbumNewPhotoDetailFragment extends PhotoListFragmentBase {
    private AlbumDetailSimpleAdapter mAdapter;
    protected boolean mIsOtherShareAlbum;

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onInflateView(inflater, container, savedInstanceState);
        this.mAlbumDetailGridView.setAdapter(getAdapter());
        this.mAlbumDetailGridView.setOnItemClickListener(getGridViewOnItemClickListener());
        Intent intent = this.mActivity.getIntent();
        this.mAlbumName = intent.getStringExtra("album_name");
        if (!TextUtils.isEmpty(this.mAlbumName)) {
            this.mActivity.getActionBar().setTitle(this.mAlbumName);
        }
        this.mAlbumId = intent.getLongExtra("album_id", -1);
        this.mIsOtherShareAlbum = intent.getBooleanExtra("other_share_album", false);
        this.mAlbumDetailGridView.setLongClickable(false);
        return view;
    }

    public String getPageName() {
        return "album_new_photo_detail";
    }

    protected AlbumDetailSimpleAdapter getAdapter() {
        if (this.mAdapter == null) {
            this.mAdapter = new AlbumDetailSimpleAdapter(this.mActivity);
        }
        return this.mAdapter;
    }

    protected int getLayoutSource() {
        return R.layout.album_new_photo_detail;
    }

    protected Uri getUri() {
        if (this.mIsOtherShareAlbum) {
            return ContentUris.withAppendedId(Media.URI_OTHER_ALBUM_MEDIA, this.mAlbumId);
        }
        return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build();
    }

    protected String getSelection() {
        if (this.mIsOtherShareAlbum) {
            return String.format(Locale.US, "(%s >= %s)", new Object[]{"serverTag", String.valueOf(Baby.getMinServerTagOfNewPhoto(this.mAlbumId))});
        }
        return String.format(Locale.US, "(%s >= ? AND %s = ?)", new Object[]{"serverTag", "localGroupId"});
    }

    protected String[] getSelectionArgs() {
        if (this.mIsOtherShareAlbum) {
            return null;
        }
        return new String[]{String.valueOf(Baby.getMinServerTagOfNewPhoto(this.mAlbumId)), String.valueOf(this.mAlbumId)};
    }

    public void onDestroy() {
        Baby.saveMinServerTagOfNewPhoto(this.mAlbumId, Long.valueOf(0));
        super.onDestroy();
    }
}
