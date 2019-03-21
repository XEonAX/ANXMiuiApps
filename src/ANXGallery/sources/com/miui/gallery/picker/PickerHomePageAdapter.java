package com.miui.gallery.picker;

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
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.ui.HomePageGridHeaderItem;
import com.miui.gallery.ui.HomePageGridItem;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.TalkBackUtil;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;
import java.util.ArrayList;

public class PickerHomePageAdapter extends PreloadMediaAdapter implements CheckableAdapter, StickyGridHeadersBaseAdapter {
    public static final String[] PROJECTION = new String[]{"_id", "alias_micro_thumbnail", "alias_create_date", "alias_create_time", "location", "sha1", "serverType", "duration", "mimeType", "alias_sync_state", "thumbnailFile", "localFile", "alias_clear_thumbnail", "alias_is_favorite", "specialTypeFlags", "alias_sort_time", "size"};
    private ArrayList<Integer> mGroupItemCount;
    private ArrayList<String> mGroupStartLocations;
    private ArrayList<Integer> mGroupStartPos;

    public PickerHomePageAdapter(Context context, DisplayScene type) {
        super(context, type);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R.layout.home_page_grid_item, viewGroup, false);
    }

    public void doBindData(View view, Context context, Cursor cursor) {
        HomePageGridItem item = (HomePageGridItem) view;
        int position = cursor.getPosition();
        item.bindImage(getClearThumbFilePath(position), getDownloadUri(position), getDisplayImageOptions(position));
        item.bindIndicator(cursor.getString(8), cursor.getLong(7), cursor.getLong(14));
        item.bindFavoriteIndicator(isFavorite(position));
        int newSyncState = getSyncState(cursor);
        long id = cursor.getLong(0);
        item.bindSyncIndicator(id, newSyncState, this.mShowScene);
        item.setContentDescription(TalkBackUtil.getContentDescriptionForImage(context, cursor.getLong(3), cursor.getString(4), cursor.getString(8)));
        item.setIsSimilarBestImage(ImageFeatureCacheManager.getInstance().isBestImage(id, false));
    }

    private int getSyncState(Cursor cursor) {
        return getSyncStateInternal(cursor.getInt(9));
    }

    public int getCountForHeader(int header) {
        return this.mGroupItemCount == null ? 0 : ((Integer) this.mGroupItemCount.get(header)).intValue();
    }

    public int getNumHeaders() {
        return this.mGroupItemCount == null ? 0 : this.mGroupItemCount.size();
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.home_page_grid_header_item, parent, false);
        }
        ((HomePageGridHeaderItem) convertView).bindData(GalleryDateUtils.formatRelativeDate(((Cursor) getItem(((Integer) this.mGroupStartPos.get(position)).intValue())).getLong(15)), (String) this.mGroupStartLocations.get(position));
        return convertView;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public String getLocalPath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 1, 5);
    }

    public String getClearThumbFilePath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 12, 5);
    }

    public String getMicroThumbFilePath(int position) {
        return getCursorByPosition(position).getString(1);
    }

    public String getOriginFilePath(int position) {
        return getCursorByPosition(position).getString(11);
    }

    public String getThumbFilePath(int position) {
        return getCursorByPosition(position).getString(10);
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getCursorByPosition(position), 9, 0);
    }

    public long getItemKey(int position) {
        return getCursorByPosition(position).getLong(0);
    }

    public String getSha1(int position) {
        return getCursorByPosition(position).getString(5);
    }

    public String getMimeType(int position) {
        return getCursorByPosition(position).getString(8);
    }

    public boolean isFavorite(int position) {
        return getCursorByPosition(position).getInt(13) > 0;
    }

    public long getFileLength(int position) {
        return getCursorByPosition(position).getLong(16);
    }

    public View getCheckableView(View itemView) {
        return ((HomePageGridItem) itemView).getCheckBox();
    }

    public Cursor swapCursor(Cursor newCursor) {
        if (newCursor != null) {
            this.mGroupItemCount = newCursor.getExtras().getIntegerArrayList("extra_timeline_item_count_in_group");
            this.mGroupStartPos = newCursor.getExtras().getIntegerArrayList("extra_timeline_group_start_pos");
            this.mGroupStartLocations = newCursor.getExtras().getStringArrayList("extra_timeline_group_start_locations");
        }
        return super.swapCursor(newCursor);
    }
}
