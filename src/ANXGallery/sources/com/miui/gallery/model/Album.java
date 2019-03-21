package com.miui.gallery.model;

import android.content.Context;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.provider.ShareAlbumManager;

public class Album implements Parcelable, AlbumConstants {
    public static final Creator<Album> CREATOR = new Creator<Album>() {
        public Album createFromParcel(Parcel source) {
            return new OtherAlbum(source);
        }

        public Album[] newArray(int size) {
            return new Album[size];
        }
    };
    private int mAlbumClassification;
    private String mAlbumName;
    private AlbumType mAlbumType;
    private long mAttributes;
    private String mBabyInfo;
    private String mBabyShareInfo;
    private int mCount;
    private long mCoverId;
    private String mCoverPath;
    private String mCoverSha1;
    private long mCoverSize;
    private int mCoverSyncState;
    private final long mId;
    private boolean mIsImmutable;
    private boolean mIsPlaceholder;
    private String mLocalPath;
    private String mPeopleId;
    private String mServerId;
    private long mSortBy;
    private String mThumbnailInfoOfBaby;
    private long mTopTime;

    public enum AlbumType {
        PINNED,
        SYSTEM,
        BABY,
        NORMAL,
        OTHERS_SHARE,
        OTHER_ALBUMS
    }

    public enum VirtualAlbum {
        RECENT,
        FAVORITES,
        VIDEO,
        PANORAMA
    }

    public Album(long id) {
        this.mId = id;
    }

    public static Album fromCursor(Cursor cursor) {
        boolean z = true;
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        Album entity = new Album(cursor.getLong(0));
        entity.mAlbumName = getAlbumName(cursor);
        entity.mCoverId = cursor.getLong(2);
        entity.mCoverPath = cursor.getString(3);
        entity.mCoverSha1 = cursor.getString(4);
        entity.mCoverSyncState = cursor.getInt(5);
        entity.mCoverSize = cursor.getLong(18);
        entity.mCount = cursor.getInt(6);
        if (entity.mCount == Integer.MAX_VALUE) {
            entity.mCount = 0;
            entity.mIsPlaceholder = true;
        }
        entity.mPeopleId = cursor.getString(7);
        entity.mBabyInfo = cursor.getString(8);
        entity.mThumbnailInfoOfBaby = cursor.getString(9);
        entity.mServerId = cursor.getString(10);
        entity.mAttributes = cursor.getLong(11);
        if (cursor.getInt(12) != 1) {
            z = false;
        }
        entity.mIsImmutable = z;
        entity.mTopTime = cursor.getLong(13);
        entity.mSortBy = cursor.getLong(14);
        entity.mBabyShareInfo = cursor.getString(15);
        entity.mLocalPath = cursor.getString(16);
        entity.mAlbumClassification = cursor.getInt(17);
        entity.mAlbumType = parseAlbumType(entity);
        return entity;
    }

    private static String getAlbumName(Cursor cursor) {
        Context context = GalleryApp.sGetAndroidContext();
        String serverId = cursor.getString(10);
        long albumId = cursor.getLong(0);
        if (String.valueOf(1).equals(serverId)) {
            return context.getString(R.string.album_camera_name);
        }
        if (String.valueOf(2).equals(serverId)) {
            return context.getString(R.string.album_screenshot_name);
        }
        if (albumId == 2147483647L) {
            return context.getString(R.string.album_videos_name);
        }
        if (albumId == 2147483646) {
            return context.getString(R.string.album_faces_name);
        }
        if (albumId == 2147483645) {
            return context.getString(R.string.album_pano_name);
        }
        if (albumId == 2147483644) {
            return context.getString(R.string.album_name_recent_discovery);
        }
        if (albumId == 2147483642) {
            return context.getString(R.string.album_favorites_name);
        }
        return cursor.getString(1);
    }

    private static AlbumType parseAlbumType(Album album) {
        if (com.miui.gallery.preference.GalleryPreferences.Album.isForceTopAlbumByTopTime(album.getSortBy())) {
            return AlbumType.PINNED;
        }
        if (isSystemAlbum(album.getServerId())) {
            return AlbumType.SYSTEM;
        }
        if (!TextUtils.isEmpty(album.getBabyInfo())) {
            return AlbumType.BABY;
        }
        if (ShareAlbumManager.isOtherShareAlbumId(album.getId())) {
            return AlbumType.OTHERS_SHARE;
        }
        return AlbumType.NORMAL;
    }

    private static boolean isSystemAlbum(String serverId) {
        for (Long albumId : com.miui.gallery.provider.GalleryContract.Album.ALL_SYSTEM_ALBUM_SERVER_IDS) {
            if (String.valueOf(albumId).equals(serverId)) {
                return true;
            }
        }
        return false;
    }

    public long getId() {
        return this.mId;
    }

    public String getAlbumName() {
        return this.mAlbumName;
    }

    public void setAlbumName(String albumName) {
        this.mAlbumName = albumName;
    }

    public long getCoverId() {
        return this.mCoverId;
    }

    public void setCoverId(long coverId) {
        this.mCoverId = coverId;
    }

    public String getCoverPath() {
        return this.mCoverPath;
    }

    public int getCoverSyncState() {
        return this.mCoverSyncState;
    }

    public void setCoverSyncState(int coverSyncState) {
        this.mCoverSyncState = coverSyncState;
    }

    public int getCount() {
        return this.mCount;
    }

    public void setCount(int count) {
        this.mCount = count;
    }

    public String getPeopleId() {
        return this.mPeopleId;
    }

    public String getBabyInfo() {
        return this.mBabyInfo;
    }

    public String getThumbnailInfoOfBaby() {
        return this.mThumbnailInfoOfBaby;
    }

    public String getServerId() {
        return this.mServerId;
    }

    public void setServerId(String serverId) {
        this.mServerId = serverId;
    }

    public long getAttributes() {
        return this.mAttributes;
    }

    public void setAttributes(long attributes) {
        this.mAttributes = attributes;
    }

    public boolean isImmutable() {
        return this.mIsImmutable;
    }

    public void setImmutable(boolean immutable) {
        this.mIsImmutable = immutable;
    }

    public void setTopTime(long topTime) {
        this.mTopTime = topTime;
    }

    public long getSortBy() {
        return this.mSortBy;
    }

    public void setSortBy(long sortBy) {
        this.mSortBy = sortBy;
    }

    public String getBabyShareInfo() {
        return this.mBabyShareInfo;
    }

    public String getLocalPath() {
        return this.mLocalPath;
    }

    public int getAlbumClassification() {
        return this.mAlbumClassification;
    }

    public void setAlbumClassification(int albumClassification) {
        this.mAlbumClassification = albumClassification;
    }

    public long getCoverSize() {
        return this.mCoverSize;
    }

    public AlbumType getAlbumType() {
        return this.mAlbumType;
    }

    public void setAlbumType(AlbumType albumType) {
        this.mAlbumType = albumType;
    }

    public boolean isPlaceholder() {
        return this.mIsPlaceholder;
    }

    public void setPlaceholder(boolean placeholder) {
        this.mIsPlaceholder = placeholder;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        int i = 1;
        dest.writeLong(this.mId);
        dest.writeString(this.mAlbumName);
        dest.writeLong(this.mCoverId);
        dest.writeString(this.mCoverPath);
        dest.writeString(this.mCoverSha1);
        dest.writeInt(this.mCoverSyncState);
        dest.writeLong(this.mCoverSize);
        dest.writeInt(this.mCount);
        dest.writeString(this.mPeopleId);
        dest.writeString(this.mBabyInfo);
        dest.writeString(this.mThumbnailInfoOfBaby);
        dest.writeString(this.mServerId);
        dest.writeLong(this.mAttributes);
        dest.writeByte(this.mIsImmutable ? (byte) 1 : (byte) 0);
        dest.writeLong(this.mTopTime);
        dest.writeLong(this.mSortBy);
        dest.writeString(this.mBabyShareInfo);
        dest.writeString(this.mLocalPath);
        dest.writeInt(this.mAlbumClassification);
        if (!this.mIsPlaceholder) {
            i = 0;
        }
        dest.writeInt(i);
        dest.writeInt(this.mAlbumType.ordinal());
    }

    protected Album(Parcel in) {
        boolean z = true;
        this.mId = in.readLong();
        this.mAlbumName = in.readString();
        this.mCoverId = in.readLong();
        this.mCoverPath = in.readString();
        this.mCoverSha1 = in.readString();
        this.mCoverSyncState = in.readInt();
        this.mCoverSize = in.readLong();
        this.mCount = in.readInt();
        this.mPeopleId = in.readString();
        this.mBabyInfo = in.readString();
        this.mThumbnailInfoOfBaby = in.readString();
        this.mServerId = in.readString();
        this.mAttributes = in.readLong();
        this.mIsImmutable = in.readByte() != (byte) 0;
        this.mTopTime = in.readLong();
        this.mSortBy = in.readLong();
        this.mBabyShareInfo = in.readString();
        this.mLocalPath = in.readString();
        this.mAlbumClassification = in.readInt();
        if (in.readByte() == (byte) 0) {
            z = false;
        }
        this.mIsPlaceholder = z;
        this.mAlbumType = AlbumType.values()[in.readInt()];
    }

    public static Album makePlaceholderFor(VirtualAlbum album) {
        Album ret;
        switch (album) {
            case RECENT:
                ret = new Album(2147483644);
                ret.setAlbumName("RECENT");
                ret.setSortBy(com.miui.gallery.preference.GalleryPreferences.Album.getVirtualAlbumSortBy(2147483644, -1001));
                ret.setServerId(String.valueOf(-2147483644));
                ret.setTopTime(-1001);
                break;
            case VIDEO:
                ret = new Album(2147483647L);
                ret.setAlbumName("VIDEO");
                ret.setSortBy(com.miui.gallery.preference.GalleryPreferences.Album.getVirtualAlbumSortBy(2147483647L, -998));
                ret.setServerId(String.valueOf(-2147483647L));
                ret.setTopTime(-998);
                break;
            case PANORAMA:
                ret = new Album(2147483645);
                ret.setAlbumName("PANO");
                ret.setSortBy(com.miui.gallery.preference.GalleryPreferences.Album.getVirtualAlbumSortBy(2147483645, -994));
                ret.setServerId(String.valueOf(-2147483645));
                ret.setTopTime(-994);
                break;
            case FAVORITES:
                ret = new Album(2147483642);
                ret.setAlbumName("FAVORITES");
                ret.setSortBy(com.miui.gallery.preference.GalleryPreferences.Album.getVirtualAlbumSortBy(2147483642, -1000));
                ret.setServerId(String.valueOf(-2147483642));
                ret.setTopTime(-1000);
                break;
            default:
                throw new IllegalArgumentException("Unsupported album: " + album.name());
        }
        ret.setPlaceholder(true);
        ret.setAlbumClassification(0);
        ret.setAttributes(0);
        ret.setImmutable(false);
        ret.setCoverSyncState(0);
        ret.setCoverId(-1);
        ret.setCount(0);
        ret.setAlbumType(parseAlbumType(ret));
        return ret;
    }
}
