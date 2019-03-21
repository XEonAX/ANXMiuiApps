package com.miui.gallery.widget;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.uil.CloudUriAdapter;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.util.ArrayList;
import java.util.List;

public class CardCoverView extends LinearLayout {
    private ImageView mCoverImageView1;
    private ImageView mCoverImageView2;
    private ImageView mCoverImageView3;
    private ImageView mCoverImageView4;
    private CardNumImageView mCoverImageView5;
    private List<MediaFeatureItem> mMediaFeatureItems;
    private DisplayImageOptions mOptions;
    private LinearLayout mSecondRow;
    private boolean mShouldUpdateViews;
    private LinearLayout mThirdRow;

    public CardCoverView(Context context) {
        this(context, null);
    }

    public CardCoverView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CardCoverView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initViews(context);
    }

    private void initViews(Context context) {
        LinearLayout.inflate(context, R.layout.card_cover_layout, this);
        this.mCoverImageView1 = (ImageView) findViewById(R.id.cover_image1);
        this.mCoverImageView2 = (ImageView) findViewById(R.id.cover_image2);
        this.mCoverImageView3 = (ImageView) findViewById(R.id.cover_image3);
        this.mCoverImageView4 = (ImageView) findViewById(R.id.cover_image4);
        this.mCoverImageView5 = (CardNumImageView) findViewById(R.id.cover_image5);
        this.mSecondRow = (LinearLayout) findViewById(R.id.second_row);
        this.mThirdRow = (LinearLayout) findViewById(R.id.third_row);
        this.mMediaFeatureItems = new ArrayList(5);
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec((MeasureSpec.getSize(widthMeasureSpec) - 4) / 2, 1073741824));
    }

    public void setImageCount(int imageCount) {
        if (imageCount <= 1) {
            this.mCoverImageView1.setVisibility(0);
            this.mSecondRow.setVisibility(8);
            this.mThirdRow.setVisibility(8);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).setMargins(0, 0, 0, 0);
        } else if (imageCount == 2) {
            this.mCoverImageView1.setVisibility(0);
            this.mSecondRow.setVisibility(0);
            this.mThirdRow.setVisibility(8);
            this.mCoverImageView3.setVisibility(8);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).setMargins(0, 0, 2, 0);
            ((LayoutParams) this.mCoverImageView2.getLayoutParams()).setMargins(0, 0, 0, 0);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).weight = 1.0f;
            ((LayoutParams) this.mSecondRow.getLayoutParams()).weight = 1.0f;
        } else if (imageCount == 3 || imageCount == 4) {
            this.mCoverImageView1.setVisibility(0);
            this.mSecondRow.setVisibility(0);
            this.mThirdRow.setVisibility(8);
            this.mCoverImageView3.setVisibility(0);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).setMargins(0, 0, 2, 0);
            ((LayoutParams) this.mCoverImageView2.getLayoutParams()).setMargins(0, 0, 0, 2);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).weight = 5.0f;
            ((LayoutParams) this.mSecondRow.getLayoutParams()).weight = 3.0f;
        } else {
            this.mCoverImageView1.setVisibility(0);
            this.mSecondRow.setVisibility(0);
            this.mThirdRow.setVisibility(0);
            this.mCoverImageView3.setVisibility(0);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).setMargins(0, 0, 2, 0);
            ((LayoutParams) this.mCoverImageView2.getLayoutParams()).setMargins(0, 0, 0, 2);
            ((LayoutParams) this.mCoverImageView1.getLayoutParams()).weight = 2.0f;
            ((LayoutParams) this.mSecondRow.getLayoutParams()).weight = 1.0f;
            ((LayoutParams) this.mThirdRow.getLayoutParams()).weight = 1.0f;
            this.mCoverImageView5.setNum(imageCount);
        }
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        updateViews();
    }

    public void update(List<MediaFeatureItem> mediaFeatureItems, DisplayImageOptions options) {
        this.mMediaFeatureItems.clear();
        this.mMediaFeatureItems.addAll(mediaFeatureItems);
        this.mOptions = options;
        this.mShouldUpdateViews = true;
        requestLayout();
    }

    private void updateViews() {
        if (BaseMiscUtil.isValid(this.mMediaFeatureItems) && this.mShouldUpdateViews) {
            this.mShouldUpdateViews = false;
            int imageCount = this.mMediaFeatureItems.size();
            for (int i = 0; i < imageCount; i++) {
                ImageView coverImageView = getCoverImageView(imageCount, i);
                if (coverImageView != null) {
                    MediaFeatureItem mediaFeatureItem = (MediaFeatureItem) this.mMediaFeatureItems.get(i);
                    DownloadType downloadType = CardUtil.getDownloadType(imageCount, i);
                    bindView(coverImageView, getImagePath(mediaFeatureItem, downloadType), getDownloadUri(mediaFeatureItem.getLocalFlag(), mediaFeatureItem.getId()), downloadType, downloadType == DownloadType.THUMBNAIL ? this.mOptions : ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT);
                }
            }
        }
    }

    private ImageView getCoverImageView(int totalCount, int i) {
        if (totalCount <= i) {
            return null;
        }
        switch (i) {
            case 0:
                return this.mCoverImageView1;
            case 1:
                return this.mCoverImageView2;
            case 2:
                return this.mCoverImageView3;
            case 3:
                if (totalCount != 4) {
                    return this.mCoverImageView4;
                }
                return null;
            case 4:
                return this.mCoverImageView5;
            default:
                return null;
        }
    }

    private void bindView(ImageView imageView, String localPath, Uri downloadUri, DownloadType downloadType, DisplayImageOptions displayImageOptions) {
        ImageSize imageSize;
        if (downloadType == DownloadType.MICRO) {
            imageSize = ThumbConfig.get().sMicroTargetSize;
        } else {
            imageSize = null;
        }
        BindImageHelper.bindImage(localPath, downloadUri, downloadType, imageView, displayImageOptions, imageSize, null, false, true, null);
    }

    private static String getImagePath(MediaFeatureItem mediaFeatureItem, DownloadType downloadType) {
        if (mediaFeatureItem != null) {
            if (!TextUtils.isEmpty(mediaFeatureItem.getOriginPath())) {
                return mediaFeatureItem.getOriginPath();
            }
            if (!TextUtils.isEmpty(mediaFeatureItem.getThumbnailPath()) && downloadType != DownloadType.ORIGIN) {
                return mediaFeatureItem.getThumbnailPath();
            }
            if (!(TextUtils.isEmpty(mediaFeatureItem.getMicroThumbnailPath()) || downloadType == DownloadType.ORIGIN || downloadType == DownloadType.THUMBNAIL)) {
                return mediaFeatureItem.getMicroThumbnailPath();
            }
        }
        return "";
    }

    public static Uri getDownloadUri(int syncState, long id) {
        if (syncState == 0) {
            return CloudUriAdapter.getDownloadUri(id);
        }
        return null;
    }

    public void update(int imageRes, DisplayImageOptions options) {
        setImageCount(1);
        this.mCoverImageView1.setImageResource(imageRes);
    }

    public void update(String imageUri, DisplayImageOptions options) {
        setImageCount(1);
        ImageLoader.getInstance().displayImage(imageUri, new ImageViewAware(this.mCoverImageView1), options);
    }
}
