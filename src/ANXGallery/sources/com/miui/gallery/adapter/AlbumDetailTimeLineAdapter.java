package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.ui.AlbumDetailGridHeaderItem;
import com.miui.gallery.util.GalleryDateUtils;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;
import java.util.ArrayList;

public class AlbumDetailTimeLineAdapter extends AlbumDetailSimpleAdapter implements StickyGridHeadersBaseAdapter {
    protected ArrayList<Integer> mGroupItemCount;
    protected ArrayList<String> mGroupStartLocations;
    protected ArrayList<Integer> mGroupStartPos;

    public AlbumDetailTimeLineAdapter(Context context) {
        super(context);
    }

    public AlbumDetailTimeLineAdapter(Context context, DisplayScene scene) {
        super(context, scene);
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.album_detail_grid_header_item, parent, false);
        }
        String location = null;
        if (!(this.mGroupStartLocations == null || this.mGroupStartPos == null)) {
            location = (String) this.mGroupStartLocations.get(position);
            position = ((Integer) this.mGroupStartPos.get(position)).intValue();
        }
        ((AlbumDetailGridHeaderItem) convertView).bindData(GalleryDateUtils.formatRelativeDate(((Cursor) getItem(position)).getLong(17)), location);
        return convertView;
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }

    public int getCountForHeader(int header) {
        return this.mGroupItemCount == null ? 0 : ((Integer) this.mGroupItemCount.get(header)).intValue();
    }

    public int getNumHeaders() {
        return this.mGroupItemCount == null ? 0 : this.mGroupItemCount.size();
    }

    public Cursor swapCursor(Cursor newCursor) {
        ArrayList<Integer> countInGroup = null;
        ArrayList<Integer> groupStartPos = null;
        ArrayList<String> groupStartLocations = null;
        if (newCursor != null) {
            Bundle extras = newCursor.getExtras();
            countInGroup = extras.getIntegerArrayList("extra_timeline_item_count_in_group");
            groupStartPos = extras.getIntegerArrayList("extra_timeline_group_start_pos");
            groupStartLocations = extras.getStringArrayList("extra_timeline_group_start_locations");
        }
        if (countInGroup == null || groupStartPos == null || groupStartLocations == null) {
            if (this.mGroupItemCount != null) {
                this.mGroupItemCount.clear();
            }
            if (this.mGroupStartPos != null) {
                this.mGroupStartPos.clear();
            }
            if (this.mGroupStartLocations != null) {
                this.mGroupStartLocations.clear();
            }
        } else {
            this.mGroupItemCount = new ArrayList(countInGroup);
            this.mGroupStartPos = new ArrayList(groupStartPos);
            this.mGroupStartLocations = new ArrayList(groupStartLocations);
        }
        return super.swapCursor(newCursor);
    }
}
