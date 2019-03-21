package com.miui.gallery.adapter;

import android.app.Activity;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.model.Album;
import com.miui.gallery.model.AlbumConstants.ShareAlbum;
import com.miui.gallery.ui.AlbumPageListFaceItem;
import com.miui.gallery.ui.AlbumPageListItemBase.AlbumType;
import com.miui.gallery.ui.AlbumPageListNormalItem;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.widget.DividerTypeProvider;
import com.miui.gallery.widget.recyclerview.BaseViewHolder;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;

public class AlbumAdapterBase extends BaseAlbumListAdapter<BaseViewHolder> implements DividerTypeProvider {
    private static boolean sIsGalleryCloudSyncable;
    private Builder mDisplayFaceOptionsBuilder;
    private DisplayImageOptions mDisplayVideoOptions;
    private Builder mDisplayVideoOptionsBuilder;
    private boolean mIsInPickMode;

    public static class AlbumFaceItemViewHolder extends BaseViewHolder {
        private AlbumFaceItemViewHolder(View itemView) {
            super(itemView);
        }

        public static AlbumFaceItemViewHolder newInstance(ViewGroup viewGroup) {
            return new AlbumFaceItemViewHolder(BaseViewHolder.getView(viewGroup, R.layout.album_page_list_face_item_new));
        }
    }

    public static class AlbumNormalItemViewHolder extends BaseViewHolder {
        private AlbumNormalItemViewHolder(View itemView) {
            super(itemView);
        }

        public static AlbumNormalItemViewHolder newInstance(ViewGroup viewGroup) {
            return new AlbumNormalItemViewHolder(BaseViewHolder.getView(viewGroup, R.layout.album_page_list_normal_item));
        }
    }

    public static class AlbumOthersItemViewHolder extends BaseViewHolder {
        private AlbumOthersItemViewHolder(View itemView) {
            super(itemView);
        }

        public static AlbumOthersItemViewHolder newInstance(ViewGroup viewGroup) {
            return new AlbumOthersItemViewHolder(BaseViewHolder.getView(viewGroup, R.layout.album_page_list_local_item));
        }
    }

    public AlbumAdapterBase(Activity activity) {
        super(activity);
        sIsGalleryCloudSyncable = SyncUtil.isGalleryCloudSyncable(this.mContext);
    }

    protected void initDisplayImageOptions() {
        super.initDisplayImageOptions();
        this.mDisplayVideoOptionsBuilder = new Builder().cloneFrom(this.mDefaultDisplayImageOptions).showImageOnLoading(R.drawable.default_video_album_cover);
        this.mDisplayVideoOptions = this.mDisplayVideoOptionsBuilder.build();
        this.mDisplayFaceOptionsBuilder = new Builder().cloneFrom(this.mDefaultDisplayImageOptions).showImageOnLoading(0).usingRegionDecoderFace(true).cacheInMemory(true);
    }

    public DisplayImageOptions getDisplayVideoOptions(int position) {
        long fileLength = getFileLength(position);
        if (fileLength > 0) {
            return this.mDisplayVideoOptionsBuilder.considerFileLength(true).fileLength(fileLength).build();
        }
        return this.mDisplayVideoOptions;
    }

    public void updateGalleryCloudSyncableState() {
        boolean syncable = SyncUtil.isGalleryCloudSyncable(this.mContext);
        if (sIsGalleryCloudSyncable != syncable) {
            sIsGalleryCloudSyncable = syncable;
            notifyDataSetChanged();
        }
    }

    public void setInPickMode(boolean isIn) {
        this.mIsInPickMode = isIn;
    }

    public int getTopDividerType(int adapterPosition) {
        return 0;
    }

    public int getBottomDividerType(int adapterPosition) {
        if (adapterPosition == -1) {
            return 0;
        }
        if (adapterPosition == getItemCount() - 1 || adapterPosition >= getItemCount() - 1) {
            return 3;
        }
        return 2;
    }

    public boolean isAutoUploadedAlbum(int position) {
        return sIsGalleryCloudSyncable && super.isAutoUploadedAlbum(position);
    }

    public boolean isAutoUploadedAlbum(long attributes, String serverId, long albumId) {
        return sIsGalleryCloudSyncable && super.isAutoUploadedAlbum(attributes, serverId, albumId);
    }

    protected boolean shouldShowForceTop(Album album) {
        return (this.mIsInPickMode && isOtherAlbum(album)) ? false : true;
    }

    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case 1:
                return AlbumNormalItemViewHolder.newInstance(parent);
            case 2:
                return AlbumFaceItemViewHolder.newInstance(parent);
            case 3:
                return AlbumOthersItemViewHolder.newInstance(parent);
            default:
                return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0120  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x007e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onBindViewHolder(BaseViewHolder holder, int position) {
        if (holder != null) {
            Album album = getItem(position);
            boolean z;
            switch (holder.getItemViewType()) {
                case 1:
                    boolean isSectionStartItem;
                    boolean isSectionEndItem;
                    String localPath;
                    Uri downloadUri;
                    DisplayImageOptions displayImageOptions;
                    AlbumPageListNormalItem item = holder.itemView;
                    if (position != 0) {
                        if (getBottomDividerType(position - 1) != 1) {
                            isSectionStartItem = false;
                            isSectionEndItem = position != getItemCount() + -1 || getBottomDividerType(position) == 1;
                            item.adjustAlbumCoverContainerPadding(isSectionStartItem, isSectionEndItem);
                            item.bindCommonInfo(getAlbumName(album), album.getCount(), album.isPlaceholder());
                            localPath = getLocalPath(position);
                            downloadUri = getDownloadUri(position);
                            if (isVideoAlbum(album)) {
                                displayImageOptions = getDisplayImageOptions(position);
                            } else {
                                displayImageOptions = getDisplayVideoOptions(position);
                            }
                            item.bindImage(localPath, downloadUri, displayImageOptions);
                            ShareAlbum shareAlbum;
                            if (!BaseAlbumListAdapter.isOtherShareAlbum(album.getId())) {
                                shareAlbum = getShareAlbumInfo(position);
                                if (shareAlbum == null || TextUtils.isEmpty(shareAlbum.getOwnerName())) {
                                    item.bindType(AlbumType.SHARE, null);
                                } else if (isBabyAlbum(album)) {
                                    item.bindType(AlbumType.SHARE, this.mContext.getString(R.string.album_others_share_baby_info_format, new Object[]{shareAlbum.getOwnerName()}));
                                } else {
                                    item.bindType(AlbumType.SHARE, this.mContext.getString(R.string.album_others_share_info_format, new Object[]{shareAlbum.getOwnerName()}));
                                }
                            } else if (isBabyAlbum(position)) {
                                item.bindType(AlbumType.BABY, this.mContext.getString(R.string.album_type_baby));
                            } else {
                                if (isOwnerShareAlbum(album.getId())) {
                                    shareAlbum = getShareAlbumInfo(position);
                                    if (shareAlbum != null) {
                                        item.bindType(AlbumType.OWNER, this.mContext.getResources().getQuantityString(R.plurals.album_already_share_user_count, shareAlbum.mUserCount, new Object[]{Integer.valueOf(shareAlbum.mUserCount)}));
                                    }
                                } else if (isSystemAlbum(position)) {
                                    item.bindType(AlbumType.SYSTEM, null);
                                } else {
                                    item.bindType(AlbumType.NORMAL, null);
                                }
                            }
                            item.bindIndicator(BaseAlbumListAdapter.isRecentAlbum(album), isVideoAlbum(album), BaseAlbumListAdapter.isFavoritesAlbum(album), BaseAlbumListAdapter.isAutoUploadedAlbum(album), this.mIsInPickMode);
                            z = shouldShowForceTop(album) && isForceTypeTime(album);
                            item.bindForceTopIcon(z);
                            item.bindHiddenMask(isHiddenAlbum(position));
                            return;
                        }
                    }
                    isSectionStartItem = true;
                    if (position != getItemCount() + -1) {
                        break;
                    }
                    item.adjustAlbumCoverContainerPadding(isSectionStartItem, isSectionEndItem);
                    item.bindCommonInfo(getAlbumName(album), album.getCount(), album.isPlaceholder());
                    localPath = getLocalPath(position);
                    downloadUri = getDownloadUri(position);
                    if (isVideoAlbum(album)) {
                    }
                    item.bindImage(localPath, downloadUri, displayImageOptions);
                    if (!BaseAlbumListAdapter.isOtherShareAlbum(album.getId())) {
                    }
                    item.bindIndicator(BaseAlbumListAdapter.isRecentAlbum(album), isVideoAlbum(album), BaseAlbumListAdapter.isFavoritesAlbum(album), BaseAlbumListAdapter.isAutoUploadedAlbum(album), this.mIsInPickMode);
                    if (!shouldShowForceTop(album)) {
                        break;
                    }
                    item.bindForceTopIcon(z);
                    item.bindHiddenMask(isHiddenAlbum(position));
                    return;
                case 2:
                    AlbumPageListFaceItem faceItem = holder.itemView;
                    faceItem.bindCommonInfo(getAlbumName(album), album.getCount(), album.isPlaceholder());
                    faceItem.bindImageAndAlbumCount(getPeopleFaceCover(), this.mDisplayFaceOptionsBuilder);
                    faceItem.bindType(AlbumType.SYSTEM, this.mContext.getString(R.string.album_type_system));
                    z = shouldShowForceTop(album) && isForceTypeTime(album);
                    faceItem.bindForceTopIcon(z);
                    return;
                case 3:
                    holder.itemView.bindAlbumNameDesc(this.mContext, album);
                    return;
                default:
                    return;
            }
        }
    }

    public int getItemViewType(int position) {
        if (getItem(position).getAlbumType() == Album.AlbumType.OTHER_ALBUMS) {
            return 3;
        }
        if (BaseAlbumListAdapter.isFaceAlbum(getItemId(position))) {
            return 2;
        }
        return 1;
    }
}
