package com.miui.gallery.adapter;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.util.SortedList;
import android.support.v7.widget.util.SortedListAdapterCallback;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.model.Album;
import com.miui.gallery.model.Album.AlbumType;
import com.miui.gallery.model.AlbumConstants;
import com.miui.gallery.model.AlbumConstants.ShareAlbum;
import com.miui.gallery.preference.GalleryPreferences;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseAlbumListAdapter<VH extends BaseViewHolder> extends BaseGalleryAdapter<Album, VH> implements AlbumConstants {
    private SortedList<Album> mData = new SortedList(Album.class, new SortedListAdapterCallback<Album>(this) {
        public int compare(Album o1, Album o2) {
            if (o1.getAlbumClassification() != o2.getAlbumClassification()) {
                return Integer.compare(o1.getAlbumClassification(), o2.getAlbumClassification());
            }
            if (o1.getAlbumType() != o2.getAlbumType()) {
                int ordinal1;
                int ordinal2;
                if (o1.getAlbumType() == AlbumType.OTHERS_SHARE) {
                    ordinal1 = AlbumType.NORMAL.ordinal();
                } else {
                    ordinal1 = o1.getAlbumType().ordinal();
                }
                if (o2.getAlbumType() == AlbumType.OTHERS_SHARE) {
                    ordinal2 = AlbumType.NORMAL.ordinal();
                } else {
                    ordinal2 = o2.getAlbumType().ordinal();
                }
                if (ordinal1 != ordinal2) {
                    return Integer.compare(ordinal1, ordinal2);
                }
            }
            return Long.compare(o1.getSortBy(), o2.getSortBy());
        }

        public boolean areContentsTheSame(Album oldItem, Album newItem) {
            return oldItem.getAttributes() == newItem.getAttributes() && oldItem.getCount() == newItem.getCount() && oldItem.getSortBy() == newItem.getSortBy() && oldItem.getCoverSize() == newItem.getCoverSize() && TextUtils.equals(oldItem.getAlbumName(), newItem.getAlbumName()) && TextUtils.equals(oldItem.getCoverPath(), newItem.getCoverPath()) && TextUtils.equals(oldItem.getBabyInfo(), newItem.getBabyInfo());
        }

        public boolean areItemsTheSame(Album item1, Album item2) {
            return item1.getId() == item2.getId() || !(TextUtils.isEmpty(item1.getServerId()) || TextUtils.isEmpty(item2.getServerId()) || !item1.getServerId().equalsIgnoreCase(item2.getServerId()));
        }
    });
    private Bundle mPeopleFaceCover = null;
    private Map<String, ShareAlbum> mSharedAlbums;

    public BaseAlbumListAdapter(Context context) {
        super(context);
    }

    protected void initDisplayImageOptions() {
        super.initDisplayImageOptions();
        this.mDisplayImageOptionBuilder.showImageOnLoading(R.drawable.default_album_cover);
        this.mDisplayImageOptionBuilder.showImageOnFail(R.drawable.default_album_cover);
        this.mDefaultDisplayImageOptions = this.mDisplayImageOptionBuilder.build();
    }

    public void setSharedAlbums(Cursor cursor) {
        if (this.mSharedAlbums != null) {
            this.mSharedAlbums.clear();
        }
        if (cursor != null) {
            if (cursor.moveToFirst()) {
                do {
                    ShareAlbum shareAlbum = new ShareAlbum();
                    shareAlbum.mAlbumId = cursor.getString(0);
                    shareAlbum.mCreatorId = cursor.getString(1);
                    shareAlbum.mUserCount = cursor.getInt(2);
                    shareAlbum.mOwnerNickName = cursor.getString(3);
                    if (this.mSharedAlbums == null) {
                        this.mSharedAlbums = new HashMap();
                    }
                    this.mSharedAlbums.put(shareAlbum.mAlbumId, shareAlbum);
                } while (cursor.moveToNext());
            }
            if (getItemCount() > 0) {
                notifyDataSetChanged();
            }
        }
    }

    public void setPeopleFaceCover(Cursor cursor) {
        if (cursor != null) {
            this.mPeopleFaceCover = cursor.getExtras();
            notifyDataSetChanged();
        }
    }

    public Bundle getPeopleFaceCover() {
        return this.mPeopleFaceCover;
    }

    public String getLocalPath(int position) {
        return getItem(position).getCoverPath();
    }

    public Uri getDownloadUri(int position) {
        Album album = getItem(position);
        return BaseGalleryAdapter.getDownloadUri(album.getCoverSyncState(), album.getCoverId());
    }

    public long getFileLength(int position) {
        return getItem(position).getCoverSize();
    }

    public boolean isForceTypeTime(int position) {
        return isForceTypeTime(getItem(position));
    }

    public boolean isForceTypeTime(Album album) {
        return GalleryPreferences.Album.isForceTopAlbumByTopTime(album.getSortBy());
    }

    public String getAlbumName(int position) {
        return getAlbumName(getItem(position));
    }

    public String getAlbumLocalPath(int position) {
        return getItem(position).getLocalPath();
    }

    public int getAlbumCount(int position) {
        return getItem(position).getCount();
    }

    protected boolean isVideoAlbum(Album album) {
        return album.getId() == 2147483647L;
    }

    protected boolean isPanoAlbum(Album album) {
        return album.getId() == 2147483645;
    }

    private boolean isFaceAlbum(Album album) {
        return isFaceAlbum(album.getId());
    }

    public static boolean isFaceAlbum(long id) {
        return id == 2147483646;
    }

    public static boolean isRecentAlbum(Album album) {
        return isRecentAlbum(album.getId());
    }

    public static boolean isRecentAlbum(long id) {
        return id == 2147483644;
    }

    public static boolean isFavoritesAlbum(Album album) {
        return isFavoritesAlbum(album.getId());
    }

    public static boolean isFavoritesAlbum(long id) {
        return id == 2147483642;
    }

    public static boolean isOthersAlbum(long id) {
        return id == 2147483641;
    }

    protected String getAlbumName(Album album) {
        if (isCameraAlbum(album)) {
            return this.mContext.getString(R.string.album_camera_name);
        }
        if (isScreenshotsAlbum(album)) {
            return this.mContext.getString(R.string.album_screenshot_name);
        }
        if (isVideoAlbum(album)) {
            return this.mContext.getString(R.string.album_videos_name);
        }
        if (isFaceAlbum(album)) {
            return this.mContext.getString(R.string.album_faces_name);
        }
        if (isPanoAlbum(album)) {
            return this.mContext.getString(R.string.album_pano_name);
        }
        if (isRecentAlbum(album)) {
            return this.mContext.getString(R.string.album_name_recent_discovery);
        }
        if (isFavoritesAlbum(album)) {
            return this.mContext.getString(R.string.album_favorites_name);
        }
        return album.getAlbumName();
    }

    public boolean isShareAlbum(long albumId) {
        return isOtherShareAlbum(albumId) || isOwnerShareAlbum(albumId);
    }

    public boolean isOwnerShareAlbum(int position) {
        return isOwnerShareAlbum(getItem(position).getId());
    }

    public boolean isOwnerShareAlbum(long albumId) {
        return albumId < 2147383647 && this.mSharedAlbums != null && this.mSharedAlbums.containsKey(String.valueOf(albumId));
    }

    public ShareAlbum getShareAlbumInfo(int position) {
        return this.mSharedAlbums != null ? (ShareAlbum) this.mSharedAlbums.get(String.valueOf(getItem(position).getId())) : null;
    }

    public boolean isOtherShareAlbum(int position) {
        return isOtherShareAlbum(getItem(position).getId());
    }

    public static boolean isOtherShareAlbum(long albumId) {
        return ShareAlbumManager.isOtherShareAlbumId(albumId);
    }

    public boolean isBabyAlbum(int position) {
        return isBabyAlbum(getItem(position));
    }

    public boolean isBabyAlbum(Album album) {
        return !TextUtils.isEmpty(album.getBabyInfo());
    }

    public String getBabyAlbumPeopleId(int position) {
        return getItem(position).getPeopleId();
    }

    public String getThumbnailInfoOfBaby(int position) {
        return getItem(position).getThumbnailInfoOfBaby();
    }

    public String getBabyInfo(int position) {
        return getItem(position).getBabyInfo();
    }

    public String getBabySharerInfo(int position) {
        return getItem(position).getBabyShareInfo();
    }

    public String getServerId(int position) {
        return getItem(position).getServerId();
    }

    public boolean albumUnwriteable(int position) {
        return getItem(position).isImmutable();
    }

    public Long getAttributes(int position) {
        return Long.valueOf(getItem(position).getAttributes());
    }

    public boolean isCameraAlbum(Album album) {
        return String.valueOf(1).equals(album.getServerId());
    }

    public boolean isScreenshotsAlbum(int position) {
        return isScreenshotsAlbum(getItem(position).getServerId());
    }

    public boolean isScreenshotsAlbum(Album album) {
        return isScreenshotsAlbum(album.getServerId());
    }

    private static boolean isScreenshotsAlbum(String serverId) {
        return String.valueOf(2).equals(serverId);
    }

    public boolean isPanoAlbum(int position) {
        return isPanoAlbum(getItem(position));
    }

    public boolean isSystemAlbum(int position) {
        return isSystemAlbum(getItem(position).getServerId());
    }

    public static boolean isSystemAlbum(String serverId) {
        for (Long albumId : GalleryContract.Album.ALL_SYSTEM_ALBUM_SERVER_IDS) {
            if (String.valueOf(albumId).equals(serverId)) {
                return true;
            }
        }
        return false;
    }

    public boolean isHiddenAlbum(int position) {
        return (getItem(position).getAttributes() & 16) != 0;
    }

    public boolean isAutoUploadedAlbum(int position) {
        return isAutoUploadedAlbum(getItem(position));
    }

    protected static boolean isAutoUploadedAlbum(Album album) {
        return (album.getAttributes() & 1) != 0 || ((isSystemAlbum(album.getServerId()) && !isScreenshotsAlbum(album.getServerId())) || isOtherShareAlbum(album.getId()));
    }

    public boolean isAutoUploadedAlbum(long attributes, String serverId, long albumId) {
        return (1 & attributes) != 0 || ((isSystemAlbum(serverId) && !isScreenshotsAlbum(serverId)) || isOtherShareAlbum(albumId));
    }

    public boolean isOtherAlbum(int position) {
        return isOtherAlbum(getItem(position));
    }

    public boolean isOtherAlbum(Album album) {
        return album.getAlbumClassification() == 1;
    }

    public boolean isShowedPhotosTabAlbum(int position) {
        return (getItem(position).getAttributes() & 4) != 0;
    }

    public String[] getProjection() {
        return PROJECTION;
    }

    public SortedList<Album> getData() {
        return this.mData;
    }

    public Album getItem(int position) {
        return (this.mData == null || position < 0 || position >= this.mData.size()) ? null : (Album) this.mData.get(position);
    }

    public long getItemId(int position) {
        if (this.mData == null || position < 0 || position >= this.mData.size()) {
            return super.getItemId(position);
        }
        return ((Album) this.mData.get(position)).getId();
    }

    public int getItemCount() {
        return this.mData != null ? this.mData.size() : 0;
    }
}
