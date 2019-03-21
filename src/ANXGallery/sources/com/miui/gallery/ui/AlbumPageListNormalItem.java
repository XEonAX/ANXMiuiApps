package com.miui.gallery.ui;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.SyncUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;

public class AlbumPageListNormalItem extends AlbumPageListItemBase {
    private ImageView mAlbumCover;
    private View mAlbumCoverContainer;
    protected View mAlbumIndicatorContainer;
    protected View mAlbumTypeIndicator;
    private View mAutoUploadedInfo;
    private View mHiddenMask;

    public AlbumPageListNormalItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mAlbumCover = (ImageView) findViewById(R.id.album_cover);
        this.mAlbumIndicatorContainer = findViewById(R.id.album_indicator);
        this.mAlbumTypeIndicator = findViewById(R.id.album_type_indicator);
        this.mHiddenMask = findViewById(R.id.hidden_album_mask);
        this.mAutoUploadedInfo = findViewById(R.id.album_auto_upload_info);
        this.mAlbumCoverContainer = findViewById(R.id.album_cover_container);
    }

    public void adjustAlbumCoverContainerPadding(boolean isSectionStartItem, boolean isSectionEndItem) {
        int i = 2;
        int basePadding = getResources().getDimensionPixelSize(R.dimen.horizontal_spacing_secondary);
        View view = this.mAlbumCoverContainer;
        int paddingStart = this.mAlbumCoverContainer.getPaddingStart();
        int i2 = (isSectionStartItem ? 2 : 1) * basePadding;
        int paddingEnd = this.mAlbumCoverContainer.getPaddingEnd();
        if (!isSectionEndItem) {
            i = 1;
        }
        view.setPaddingRelative(paddingStart, i2, paddingEnd, i * basePadding);
    }

    public void bindImage(String localPath, Uri downloadUri, DisplayImageOptions options) {
        BindImageHelper.bindImage(localPath, downloadUri, DownloadType.MICRO, this.mAlbumCover, options, ThumbConfig.get().sMicroTargetSize);
    }

    public void bindIndicator(boolean isRecent, boolean isVideo, boolean isFavorites, boolean enableAutoUpload, boolean isInPickMode) {
        int i;
        int i2 = 0;
        if (isRecent) {
            ((ImageView) this.mAlbumTypeIndicator).setImageResource(R.drawable.type_indicator_recent_album);
        } else if (isVideo) {
            ((ImageView) this.mAlbumTypeIndicator).setImageResource(R.drawable.type_indicator_video_album);
        } else if (isFavorites) {
            ((ImageView) this.mAlbumTypeIndicator).setImageResource(R.drawable.type_indicator_favorites);
        }
        View view = this.mAlbumTypeIndicator;
        if (isVideo || isRecent || isFavorites) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        view = this.mAlbumIndicatorContainer;
        if (isVideo || isRecent || isFavorites) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        View view2 = this.mAutoUploadedInfo;
        if (isInPickMode || enableAutoUpload || !SyncUtil.existXiaomiAccount(getContext())) {
            i2 = 8;
        }
        view2.setVisibility(i2);
    }

    public void bindHiddenMask(boolean isHidden) {
        this.mHiddenMask.setVisibility(isHidden ? 0 : 8);
    }

    public void bindForceTopIcon(boolean forceTopItem) {
        super.bindForceTopIcon(forceTopItem);
        if (forceTopItem && this.mAutoUploadedInfo.getVisibility() == 0) {
            this.mForceTop.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.info_divider), null, null, null);
        }
    }
}
