package com.miui.gallery.adapter;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.BabyAlbumDetailActivity;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter.AlbumType;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.RecentTimelineGridHeaderItem;
import com.miui.gallery.util.AlbumsCursorHelper;
import com.miui.gallery.util.ShareAlbumsCursorHelper;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;

public class RecentDiscoveryAdapter extends AlbumDetailSimpleAdapter implements StickyGridHeadersBaseAdapter {
    private static final int COLUMN_INDEX_ALBUM_ID = PROJECTION_INTERNAL.length;
    private static final int COLUMN_INDEX_DATE_MODIFIED = (COLUMN_INDEX_ALBUM_ID + 1);
    public static String[] PROJECTION = new String[(PROJECTION_INTERNAL.length + 2)];
    private AlbumsCursorHelper mAlbumsCursorHelper;
    private ArrayList<Integer> mGroupItemCount;
    private ArrayList<Integer> mGroupStartPos;
    private ArrayList<String> mGroupStartTimeLabels;
    private boolean mIsInPickMode;
    private ShareAlbumsCursorHelper mShareAlbumsCursorHelper;

    static {
        System.arraycopy(PROJECTION_INTERNAL, 0, PROJECTION, 0, PROJECTION_INTERNAL.length);
        PROJECTION[COLUMN_INDEX_ALBUM_ID] = "localGroupId";
        PROJECTION[COLUMN_INDEX_DATE_MODIFIED] = "dateModified";
    }

    public RecentDiscoveryAdapter(Context context) {
        this(context, DisplayScene.SCENE_IN_CHECK_MODE, false);
    }

    public RecentDiscoveryAdapter(Context context, DisplayScene scene, boolean isInPickMode) {
        super(context, scene);
        setAlbumType(AlbumType.RECENT);
        this.mShareAlbumsCursorHelper = new ShareAlbumsCursorHelper();
        this.mAlbumsCursorHelper = new AlbumsCursorHelper(this.mContext);
        this.mIsInPickMode = isInPickMode;
    }

    public void resetShareAlbums() {
        this.mShareAlbumsCursorHelper.reset();
    }

    public void setShareAlbums(Cursor cursor) {
        this.mShareAlbumsCursorHelper.setSharedAlbums(cursor);
    }

    public void setAllAlbums(Cursor cursor) {
        this.mAlbumsCursorHelper.setAlbumsData(cursor);
        if (getCount() > 0 && cursor != null && cursor.getCount() > 0) {
            notifyDataSetChanged();
        }
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        int fileCount = 0;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.recent_timeline_grid_header_item, parent, false);
        }
        if (this.mGroupItemCount != null) {
            fileCount = ((Integer) this.mGroupItemCount.get(position)).intValue();
        }
        String timeLabel = null;
        if (this.mGroupStartTimeLabels != null) {
            timeLabel = (String) this.mGroupStartTimeLabels.get(position);
        }
        if (this.mGroupStartPos != null) {
            position = ((Integer) this.mGroupStartPos.get(position)).intValue();
        }
        final long albumId = ((Cursor) getItem(position)).getLong(COLUMN_INDEX_ALBUM_ID);
        final String albumName = this.mAlbumsCursorHelper.isAlbumDataValid(albumId) ? this.mAlbumsCursorHelper.getAlbumName(albumId) : null;
        ((RecentTimelineGridHeaderItem) convertView).bindData(timeLabel, fileCount, albumName, this.mIsInPickMode);
        if (!this.mIsInPickMode) {
            ((RecentTimelineGridHeaderItem) convertView).setAlbumFromClickedListener(new OnClickListener() {
                public void onClick(View v) {
                    if (RecentDiscoveryAdapter.this.mAlbumsCursorHelper.isAlbumDataValid(albumId) && RecentDiscoveryAdapter.this.mShareAlbumsCursorHelper.isDataValid()) {
                        RecentDiscoveryAdapter.this.mContext.startActivity(RecentDiscoveryAdapter.this.newAlbumFromClickedIntent(albumId));
                        if (!TextUtils.isEmpty(albumName)) {
                            RecentDiscoveryAdapter.this.recordAlbumClick(albumName);
                        }
                    }
                }
            });
        }
        return convertView;
    }

    private void recordAlbumClick(String albumName) {
        HashMap<String, String> params = new HashMap();
        params.put("album_name", albumName);
        BaseSamplingStatHelper.recordCountEvent("recent_album", "recent_album_click_album_name", params);
    }

    private Intent newAlbumFromClickedIntent(long albumId) {
        long attributes = this.mAlbumsCursorHelper.getAttributes(albumId);
        String serverId = this.mAlbumsCursorHelper.getServerId(albumId);
        String albumName = this.mAlbumsCursorHelper.getAlbumName(albumId);
        String albumLocalPath = this.mAlbumsCursorHelper.getAlbumLocalPath(Long.valueOf(albumId));
        boolean unwriteable = albumLocalPath.startsWith("/");
        boolean isBabyAlbum = this.mAlbumsCursorHelper.isBabyAlbum(albumId);
        if (AlbumsCursorHelper.isFaceAlbum(albumId)) {
            return new Intent("com.miui.gallery.action.VIEW_PEOPLE");
        }
        Intent intent;
        if (isBabyAlbum) {
            intent = new Intent(this.mContext, BabyAlbumDetailActivity.class);
            intent.putExtra("people_id", this.mAlbumsCursorHelper.getBabyAlbumPeopleId(albumId));
            intent.putExtra("baby_info", this.mAlbumsCursorHelper.getBabyInfo(albumId));
            intent.putExtra("thumbnail_info_of_baby", this.mAlbumsCursorHelper.getThumbnailInfoOfBaby(albumId));
            intent.putExtra("baby_sharer_info", this.mAlbumsCursorHelper.getBabySharerInfo(albumId));
        } else {
            intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
        }
        boolean isScreenshotAlbum = String.valueOf(2).equals(serverId);
        boolean isOtherShareAlbum = this.mAlbumsCursorHelper.isOtherShareAlbum(albumId);
        boolean isOwnerShareAlbum = this.mShareAlbumsCursorHelper.isOwnerShareAlbum(albumId);
        boolean isLocalAlbum = this.mAlbumsCursorHelper.isLocalAlbum(albumId);
        intent.putExtra("other_share_album", isOtherShareAlbum);
        intent.putExtra("owner_share_album", isOwnerShareAlbum);
        intent.putExtra("is_local_album", isLocalAlbum);
        intent.putExtra("screenshot_album", isScreenshotAlbum);
        intent.putExtra("pano_album", false);
        intent.putExtra("album_id", albumId);
        intent.putExtra("album_name", albumName);
        intent.putExtra("album_server_id", serverId);
        intent.putExtra("attributes", attributes);
        intent.putExtra("album_unwriteable", unwriteable);
        intent.putExtra("album_local_path", albumLocalPath);
        return intent;
    }

    public long getDateModified(int position) {
        return getCursorByPosition(position).getLong(COLUMN_INDEX_DATE_MODIFIED);
    }

    public int getCountForHeader(int header) {
        return this.mGroupItemCount == null ? 0 : ((Integer) this.mGroupItemCount.get(header)).intValue();
    }

    public int getNumHeaders() {
        return this.mGroupItemCount == null ? 0 : this.mGroupItemCount.size();
    }

    public boolean shouldDrawDivider() {
        return true;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        String tag = convertView != null ? (String) convertView.getTag() : null;
        if (position == this.mGroupStartPos.size() - 1) {
            if (TextUtils.equals(tag, "last_divider")) {
                return convertView;
            }
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.recent_album_last_section_divider, parent, false);
            convertView.setTag("last_divider");
        } else if (TextUtils.equals(tag, "normal_divider")) {
            return convertView;
        } else {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.recent_album_section_divider, parent, false);
            convertView.setTag("normal_divider");
        }
        return convertView;
    }

    public Cursor swapCursor(Cursor newCursor) {
        ArrayList<Integer> countInGroup = null;
        ArrayList<Integer> groupStartPos = null;
        ArrayList<String> groupTimeLabels = null;
        if (newCursor != null) {
            Bundle extras = newCursor.getExtras();
            countInGroup = extras.getIntegerArrayList("extra_timeline_item_count_in_group");
            groupStartPos = extras.getIntegerArrayList("extra_timeline_group_start_pos");
            groupTimeLabels = extras.getStringArrayList("extra_timeline_group_time_labels");
        }
        if (countInGroup == null || groupStartPos == null || groupTimeLabels == null) {
            if (this.mGroupItemCount != null) {
                this.mGroupItemCount.clear();
            }
            if (this.mGroupStartPos != null) {
                this.mGroupStartPos.clear();
            }
            if (this.mGroupStartTimeLabels != null) {
                this.mGroupStartTimeLabels.clear();
            }
        } else {
            this.mGroupItemCount = new ArrayList(countInGroup);
            this.mGroupStartPos = new ArrayList(groupStartPos);
            this.mGroupStartTimeLabels = new ArrayList(groupTimeLabels);
        }
        return super.swapCursor(newCursor);
    }
}
