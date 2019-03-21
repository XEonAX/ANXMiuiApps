package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.ui.TrashGridItem;
import com.miui.gallery.util.TalkBackUtil;

public class TrashAdapter extends BaseMediaAdapterDeprecated {
    public static final String[] PROJECTION = new String[]{"_id", "alias_micro_thumbnail", "sha1", "localFile", "mimeType", "duration", "alias_sync_state", "alias_clear_thumbnail", "alias_is_favorite", "alias_create_time", "location", "specialTypeFlags", "size"};

    public TrashAdapter(Context context) {
        super(context);
    }

    public String getLocalPath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 1, 2);
    }

    public String getClearThumbFilePath(int position) {
        return BaseAdapter.getMicroPath(getCursorByPosition(position), 6, 2);
    }

    public long getItemKey(int position) {
        return getCursorByPosition(position).getLong(0);
    }

    public String getSha1(int position) {
        return getCursorByPosition(position).getString(2);
    }

    public String getMimeType(int position) {
        return getCursorByPosition(position).getString(3);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R.layout.trash_grid_item, viewGroup, false);
    }

    public void doBindView(View view, Context context, Cursor cursor) {
        TrashGridItem item = (TrashGridItem) view;
        int position = cursor.getPosition();
        item.bindImage(getClearThumbFilePath(position), getDownloadUri(position), getDisplayImageOptions(position));
        String type = cursor.getString(3);
        item.bindIndicator(type, cursor.getLong(4), cursor.getLong(10));
        item.bindFavoriteIndicator(isFavorite(position));
        item.setContentDescription(TalkBackUtil.getContentDescriptionForImage(context, cursor.getLong(8), cursor.getString(9), type));
    }

    public Uri getDownloadUri(int position) {
        return BaseAdapter.getDownloadUri(getCursorByPosition(position), 5, 0);
    }

    public boolean isFavorite(int position) {
        return getCursorByPosition(position).getInt(7) > 0;
    }

    public long getFileLength(int position) {
        return getCursorByPosition(position).getLong(11);
    }
}
