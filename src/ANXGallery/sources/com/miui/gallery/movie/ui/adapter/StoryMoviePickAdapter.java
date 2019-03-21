package com.miui.gallery.movie.ui.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.BaseAdapter;
import com.miui.gallery.adapter.CheckableAdapter;
import com.miui.gallery.adapter.PreloadMediaAdapter;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.card.ui.detail.StoryAlbumAdapter;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.picker.helper.PickerItemCheckedListener;
import com.miui.gallery.ui.HomePageGridItem;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;

public class StoryMoviePickAdapter extends PreloadMediaAdapter implements CheckableAdapter, StickyGridHeadersBaseAdapter {
    public static final String[] PROJECTION = StoryAlbumAdapter.PROJECTION;
    private Picker mPicker;
    private PickerItemCheckedListener mPickerItemCheckedListener;

    public StoryMoviePickAdapter(Context context, Picker picker) {
        this(context, DisplayScene.SCENE_IN_CHECK_MODE);
        this.mPicker = picker;
        this.mPickerItemCheckedListener = new PickerItemCheckedListener(this.mPicker);
    }

    public StoryMoviePickAdapter(Context context, DisplayScene type) {
        super(context, type);
    }

    protected void doBindData(View view, Context context, Cursor cursor) {
        HomePageGridItem item = (HomePageGridItem) view;
        item.bindImage(getClearThumbFilePath(cursor.getPosition()), getDownloadUri(cursor.getPosition()), this.mDefaultDisplayImageOptions);
        item.bindFavoriteIndicator(isFavorite(cursor.getPosition()));
        item.bindSyncIndicator(cursor.getLong(0), getSyncState(cursor), this.mShowScene);
    }

    private int getSyncState(Cursor cursor) {
        return getSyncStateInternal(cursor.getInt(16));
    }

    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        return LayoutInflater.from(context).inflate(R.layout.home_page_grid_item, parent, false);
    }

    public long getItemKey(int position) {
        return getCursorByPosition(position).getLong(0);
    }

    public String getSha1(int position) {
        return getCursorByPosition(position).getString(15);
    }

    public String getMimeType(int position) {
        return getCursorByPosition(position).getString(4);
    }

    public int getCountForHeader(int header) {
        return 0;
    }

    public int getNumHeaders() {
        return 0;
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public String getLocalPath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 17, 15);
    }

    public String getClearThumbFilePath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 17, 15);
    }

    public String getOriginFilePath(int position) {
        return getCursorByPosition(position).getString(3);
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getCursorByPosition(position), 16, 0);
    }

    public String getThumbFilePath(int position) {
        return getCursorByPosition(position).getString(2);
    }

    public boolean isFavorite(int position) {
        return getCursorByPosition(position).getInt(18) > 0;
    }

    public View getCheckableView(View itemView) {
        return ((HomePageGridItem) itemView).getCheckBox();
    }
}
