package com.miui.gallery.adapter;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.miui.gallery.activity.AlbumLocalPageActivity;
import com.miui.gallery.activity.facebaby.BabyAlbumDetailActivity;
import com.miui.gallery.model.Album;
import com.miui.gallery.model.Album.AlbumType;
import com.miui.gallery.provider.GalleryContract.RecentAlbum;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.recyclerview.ItemClickSupport.OnItemClickListener;

public class AlbumPageAdapter extends AlbumAdapterBase implements OnItemClickListener {
    private Activity mActivity;

    public AlbumPageAdapter(Activity activity) {
        super(activity);
        this.mActivity = activity;
    }

    private boolean isSameSection(AlbumType one, AlbumType another) {
        if (one == AlbumType.OTHER_ALBUMS || another == AlbumType.OTHER_ALBUMS) {
            return false;
        }
        if (one == AlbumType.PINNED) {
            if (another != AlbumType.PINNED) {
                return false;
            }
            return true;
        } else if (one == AlbumType.SYSTEM) {
            if (another != AlbumType.SYSTEM) {
                return false;
            }
            return true;
        } else if (another == AlbumType.SYSTEM || another == AlbumType.PINNED) {
            return false;
        } else {
            return true;
        }
    }

    public int getBottomDividerType(int adapterPosition) {
        if (adapterPosition == -1) {
            return 0;
        }
        boolean isLastItem;
        if (adapterPosition == getItemCount() - 1) {
            isLastItem = true;
        } else {
            isLastItem = false;
        }
        if (isLastItem) {
            return 3;
        }
        Album currItem = getItem(adapterPosition);
        if (currItem == null) {
            Log.w("AlbumPageAdapter", "current album item should not be null: %d", Integer.valueOf(adapterPosition));
            return 0;
        }
        Album nextItem = getItem(adapterPosition + 1);
        if (nextItem != null) {
            return isSameSection(currItem.getAlbumType(), nextItem.getAlbumType()) ? 2 : 1;
        } else {
            return 3;
        }
    }

    protected Intent newClickItemIntent(int position, long id, boolean isLocalAlbum) {
        if (BaseAlbumListAdapter.isOthersAlbum(id)) {
            return new Intent(this.mContext, AlbumLocalPageActivity.class);
        }
        if (BaseAlbumListAdapter.isFaceAlbum(id)) {
            return new Intent("com.miui.gallery.action.VIEW_PEOPLE");
        }
        Intent intent;
        if (BaseAlbumListAdapter.isRecentAlbum(id)) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setData(RecentAlbum.VIEW_PAGE_URI.buildUpon().appendQueryParameter("source", "album_page").build());
            intent.setPackage(this.mContext.getPackageName());
            return intent;
        }
        if (isBabyAlbum(position)) {
            intent = new Intent(this.mContext, BabyAlbumDetailActivity.class);
            intent.putExtra("people_id", getBabyAlbumPeopleId(position));
            intent.putExtra("baby_info", getBabyInfo(position));
            intent.putExtra("thumbnail_info_of_baby", getThumbnailInfoOfBaby(position));
            intent.putExtra("baby_sharer_info", getBabySharerInfo(position));
        } else {
            intent = new Intent("com.miui.gallery.action.VIEW_ALBUM_DETAIL");
        }
        intent.putExtra("other_share_album", isOtherShareAlbum(position));
        intent.putExtra("owner_share_album", isOwnerShareAlbum(position));
        intent.putExtra("is_local_album", isLocalAlbum);
        intent.putExtra("screenshot_album", isScreenshotsAlbum(position));
        intent.putExtra("pano_album", isPanoAlbum(position));
        intent.putExtra("album_id", id);
        intent.putExtra("album_name", getAlbumName(position));
        intent.putExtra("album_server_id", getServerId(position));
        intent.putExtra("attributes", getAttributes(position));
        intent.putExtra("album_unwriteable", albumUnwriteable(position));
        intent.putExtra("album_local_path", getAlbumLocalPath(position));
        return intent;
    }

    private boolean isSyncable() {
        return SyncUtil.existXiaomiAccount(this.mActivity);
    }

    public boolean onItemClick(RecyclerView parent, View view, int position, long id, float x, float y) {
        long itemId = getItemId(position);
        boolean z = (isSyncable() && isAutoUploadedAlbum(position)) ? false : true;
        this.mActivity.startActivity(newClickItemIntent(position, itemId, z));
        return true;
    }
}
