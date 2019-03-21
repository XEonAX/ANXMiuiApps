package com.miui.gallery.ui;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Strings;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.SyncStateDisplay.DisplayScene;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BindImageHelper;
import com.miui.gallery.util.FormatUtil;
import com.miui.gallery.util.SpecialTypeMediaUtils;
import com.miui.gallery.widget.ForegroundImageView;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.BackgroundImageViewable;
import com.miui.gallery.widget.editwrapper.PickAnimationHelper.ShowNumberWhenPicking;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.util.ArrayList;
import java.util.List;

public abstract class MicroThumbGridItem extends RelativeLayout implements CheckableView, BackgroundImageViewable, ShowNumberWhenPicking {
    private View mBottomIndicatorContainer;
    private CheckBox mCheckBox;
    private View mCheckBoxContainer;
    private View mFavoriteIndicator;
    protected ImageViewAware mImageAware;
    protected ImageSize mImageSize;
    protected ImageView mImageView;
    private boolean mIsSimilarBestImage;
    private long mItemId;
    private String mItemPath = null;
    private ViewStub mItemStub;
    private long mLastSyncId = -1;
    private ImageView mMask;
    private TextView mPickingNumberIndicator;
    private ImageView mSimilarBestMark;
    private ImageView mSyncIndicator;
    private int mSyncState = Integer.MAX_VALUE;
    private View mTopIndicatorContainer;
    private TextView mTypeIndicator;

    public MicroThumbGridItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mItemStub = (ViewStub) findViewById(R.id.item_stub);
        this.mImageView = (ImageView) findViewById(R.id.micro_thumb);
        this.mTypeIndicator = (TextView) findViewById(R.id.type_indicator);
        this.mFavoriteIndicator = findViewById(R.id.favorites_indicator);
        this.mBottomIndicatorContainer = findViewById(R.id.bottom_indicator_container);
        this.mImageAware = new ImageViewAware(this.mImageView);
        this.mImageSize = ThumbConfig.get().sMicroTargetSize;
    }

    public void setImageSize(ImageSize imageSize) {
        if (imageSize != null) {
            this.mImageSize = imageSize;
        }
    }

    public void setImageForeground(int fgDrawableRes) {
        if (this.mImageView instanceof ForegroundImageView) {
            ((ForegroundImageView) this.mImageView).setForegroundResource(fgDrawableRes);
        }
    }

    public ImageView getBackgroundImageView() {
        return this.mImageView;
    }

    public ImageView getBackgroundMask() {
        checkStubInflate();
        return this.mMask;
    }

    public TextView getShowNumberTextView() {
        checkStubInflate();
        return this.mPickingNumberIndicator;
    }

    public void setCheckable(boolean checkable) {
        boolean z = false;
        if (checkable) {
            checkStubInflate();
            this.mCheckBoxContainer.setVisibility(0);
            if (this.mFavoriteIndicator.getVisibility() == 0) {
                z = true;
            }
            bindFavoriteIndicator(z);
        } else if (this.mCheckBoxContainer != null) {
            this.mCheckBoxContainer.setVisibility(8);
        }
        setSimilarMarkEnable(checkable);
    }

    public void setSimilarMarkEnable(boolean enable) {
        if (enable && this.mIsSimilarBestImage) {
            checkStubInflate();
            this.mSimilarBestMark.setVisibility(0);
        } else if (this.mSimilarBestMark != null) {
            this.mSimilarBestMark.setVisibility(8);
        }
    }

    public void setChecked(boolean checked) {
        if (checked) {
            checkStubInflate();
            this.mCheckBox.setChecked(true);
        } else if (this.mCheckBox != null) {
            this.mCheckBox.setChecked(false);
        }
    }

    public boolean isChecked() {
        if (this.mCheckBox == null) {
            return false;
        }
        return this.mCheckBox.isChecked();
    }

    public void setCheckableListener(OnClickListener listener) {
        if (listener != null) {
            checkStubInflate();
            this.mCheckBoxContainer.setOnClickListener(listener);
        } else if (this.mCheckBoxContainer != null) {
            this.mCheckBoxContainer.setOnClickListener(null);
        }
    }

    public void toggle() {
        checkStubInflate();
        this.mCheckBox.toggle();
    }

    public CheckBox getCheckBox() {
        checkStubInflate();
        return this.mCheckBox;
    }

    public void setIsSimilarBestImage(boolean isBest) {
        this.mIsSimilarBestImage = isBest;
    }

    public void bindImage(String localPath, Uri downloadUri, DisplayImageOptions displayImageOptions) {
        bindImage(-1, localPath, downloadUri, DownloadType.MICRO, displayImageOptions);
    }

    public void bindImage(String localPath, Uri downloadUri, DownloadType downloadType, DisplayImageOptions displayImageOptions) {
        bindImage(-1, localPath, downloadUri, downloadType, displayImageOptions);
    }

    public void bindImage(long id, String localPath, Uri downloadUri, DownloadType downloadType, DisplayImageOptions displayImageOptions) {
        this.mItemId = id;
        this.mItemPath = localPath;
        BindImageHelper.bindImage(localPath, downloadUri, downloadType, this.mImageView, displayImageOptions, this.mImageSize);
    }

    public void bindIndicator(String mimeType, long duration, long specialTypeFlags) {
        int visibility = 8;
        String indicatorText = null;
        int leftDrawableRes = 0;
        if (BaseFileMimeUtil.isGifFromMimeType(mimeType)) {
            visibility = 0;
            indicatorText = "GIF";
        } else if (BaseFileMimeUtil.isVideoFromMimeType(mimeType)) {
            visibility = 0;
            leftDrawableRes = SpecialTypeMediaUtils.tryGetHFRIndicatorResId(specialTypeFlags);
            if (leftDrawableRes != 0) {
                indicatorText = "";
            } else {
                indicatorText = FormatUtil.formatVideoDuration(duration);
                leftDrawableRes = R.drawable.type_indicator_video;
            }
        } else if (SpecialTypeMediaUtils.isRefocusSupported(getContext(), specialTypeFlags)) {
            visibility = 0;
            indicatorText = "";
            leftDrawableRes = R.drawable.type_indicator_refocus;
        } else if (SpecialTypeMediaUtils.isMotionPhoto(getContext(), specialTypeFlags)) {
            visibility = 0;
            indicatorText = "";
            leftDrawableRes = R.drawable.type_indicator_motion_photo;
        }
        updateTypeIndicator(visibility, indicatorText, leftDrawableRes);
    }

    public void bindFavoriteIndicator(boolean showIndicator) {
        int i = (!showIndicator || isInCheckMode()) ? 8 : 0;
        updateFavoriteIndicatorVisibility(i);
    }

    private boolean isInCheckMode() {
        return (this.mCheckBoxContainer == null ? 8 : this.mCheckBoxContainer.getVisibility()) == 0;
    }

    private boolean needShowSyncIndicator(DisplayScene scene) {
        if (scene == DisplayScene.SCENE_ALWAYS) {
            return true;
        }
        if (scene == DisplayScene.SCENE_IN_CHECK_MODE && isInCheckMode()) {
            return true;
        }
        return false;
    }

    private static boolean displaySyncedState(int displayLogic) {
        return (displayLogic & 8) != 0;
    }

    private static boolean displaySyncingState(int displayLogic) {
        return (displayLogic & 4) != 0;
    }

    private static boolean displaySyncableState(int displayLogic) {
        return (displayLogic & 2) != 0;
    }

    private static boolean displayUnSyncableState(int displayLogic) {
        return (displayLogic & 1) != 0;
    }

    private boolean needShowSyncIndicator(int syncState, int displayLogic) {
        switch (syncState) {
            case 0:
            case 1:
                return displaySyncedState(displayLogic);
            case 2:
                return displaySyncingState(displayLogic);
            case 3:
                return displaySyncableState(displayLogic);
            case 4:
                return displayUnSyncableState(displayLogic);
            default:
                return false;
        }
    }

    private boolean needRefreshSyncIndicator(long id, int newState, int displayLogic) {
        if (this.mLastSyncId != id) {
            this.mSyncState = Integer.MAX_VALUE;
            return true;
        } else if (this.mSyncState != newState) {
            return true;
        } else {
            int visibility = this.mSyncIndicator == null ? 8 : this.mSyncIndicator.getVisibility();
            if (needShowSyncIndicator(newState, displayLogic)) {
                if (visibility == 0) {
                    return false;
                }
                return true;
            } else if (visibility != 0) {
                return false;
            } else {
                return true;
            }
        }
    }

    public void bindSyncIndicator(long id, int newState, DisplayScene showScene) {
        bindSyncIndicator(id, newState, showScene, 7);
    }

    public void bindSyncIndicator(long id, int newState, DisplayScene showScene, int displayLogic) {
        if (!needShowSyncIndicator(showScene)) {
            setSyncIndicatorVisibility(8);
            if (this.mSyncIndicator != null && this.mSyncIndicator.getAnimation() != null) {
                this.mSyncIndicator.clearAnimation();
            }
        } else if (needRefreshSyncIndicator(id, newState, displayLogic)) {
            int visibility = 0;
            int resId = 0;
            Animation animation = null;
            Animation bgAnimation = null;
            switch (newState) {
                case 0:
                case 1:
                    if (!displaySyncedState(displayLogic)) {
                        if (this.mSyncState == 2) {
                            if (displaySyncingState(displayLogic)) {
                                visibility = 8;
                                resId = R.drawable.photo_status_sync_succ;
                                animation = AnimationUtils.loadAnimation(getContext(), R.anim.photo_status_sync_succ_disappear_anim);
                                bgAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.photo_status_sync_succ_disappear_anim);
                                break;
                            }
                        }
                        visibility = 8;
                        break;
                    }
                    resId = R.drawable.photo_status_sync_succ;
                    animation = null;
                    break;
                    break;
                case 2:
                    if (!displaySyncingState(displayLogic)) {
                        visibility = 8;
                        break;
                    }
                    resId = R.drawable.photo_status_syncable;
                    animation = AnimationUtils.loadAnimation(getContext(), R.anim.photo_status_syncing_rotate_anim);
                    break;
                case 3:
                    if (!displaySyncableState(displayLogic)) {
                        visibility = 8;
                        break;
                    }
                    resId = R.drawable.photo_status_syncable;
                    animation = null;
                    break;
                case 4:
                    if (!displayUnSyncableState(displayLogic)) {
                        visibility = 8;
                        break;
                    }
                    resId = R.drawable.photo_status_unsyncable;
                    animation = null;
                    break;
                case Integer.MAX_VALUE:
                    resId = 0;
                    animation = null;
                    break;
                default:
                    throw new IllegalArgumentException("unknow status: " + newState);
            }
            this.mLastSyncId = id;
            this.mSyncState = newState;
            updateSyncIndicator(visibility, resId, animation, bgAnimation);
        }
    }

    private void setSyncIndicatorVisibility(int visibility) {
        if (visibility == 0) {
            checkStubInflate();
            this.mSyncIndicator.setVisibility(0);
        } else if (this.mSyncIndicator != null) {
            this.mSyncIndicator.setVisibility(8);
        }
        updateTopIndicatorBg();
    }

    protected void updateTopIndicatorBg() {
        if (this.mSyncIndicator != null && this.mSyncIndicator.getVisibility() == 0 && this.mSyncIndicator.getDrawable() != null) {
            checkStubInflate();
            this.mTopIndicatorContainer.setVisibility(0);
        } else if (this.mTopIndicatorContainer != null) {
            this.mTopIndicatorContainer.setVisibility(8);
        }
    }

    private void updateSyncIndicator(int visibility, int resId, Animation animation, Animation bgAnimation) {
        if (!(this.mSyncIndicator == null && resId == 0)) {
            checkStubInflate();
            this.mSyncIndicator.setImageResource(resId);
        }
        setSyncIndicatorVisibility(visibility);
        if (animation != null) {
            checkStubInflate();
            this.mSyncIndicator.startAnimation(animation);
        } else if (this.mSyncIndicator != null) {
            this.mSyncIndicator.clearAnimation();
        }
        if (bgAnimation != null) {
            checkStubInflate();
            this.mTopIndicatorContainer.startAnimation(bgAnimation);
        } else if (this.mTopIndicatorContainer != null) {
            this.mTopIndicatorContainer.clearAnimation();
        }
    }

    private void setTypeIndicatorVisibility(int visibility) {
        if (visibility == 0) {
            this.mTypeIndicator.setVisibility(0);
        } else if (this.mTypeIndicator != null) {
            this.mTypeIndicator.setVisibility(8);
        }
        updateBottomIndicatorBg();
    }

    protected void updateFavoriteIndicatorVisibility(int visibility) {
        if (visibility == 0) {
            this.mFavoriteIndicator.setVisibility(0);
        } else if (this.mFavoriteIndicator != null) {
            this.mFavoriteIndicator.setVisibility(8);
        }
        updateBottomIndicatorBg();
    }

    protected void updateBottomIndicatorBg() {
        if ((this.mTypeIndicator != null && this.mTypeIndicator.getVisibility() == 0) || (this.mFavoriteIndicator != null && this.mFavoriteIndicator.getVisibility() == 0)) {
            this.mBottomIndicatorContainer.setVisibility(0);
        } else if (this.mBottomIndicatorContainer != null) {
            this.mBottomIndicatorContainer.setVisibility(8);
        }
    }

    protected void updateTypeIndicator(int visibility, String indicatorText, int leftDrawableRes) {
        if (visibility == 0 || this.mTypeIndicator != null) {
            this.mTypeIndicator.setText(Strings.nullToEmpty(indicatorText));
            if (this.mTypeIndicator.getLayoutDirection() == 1) {
                this.mTypeIndicator.setCompoundDrawablesWithIntrinsicBounds(0, 0, leftDrawableRes, 0);
            } else {
                this.mTypeIndicator.setCompoundDrawablesWithIntrinsicBounds(leftDrawableRes, 0, 0, 0);
            }
            setTypeIndicatorVisibility(visibility);
        }
    }

    protected boolean isSquareItem() {
        return true;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (isSquareItem()) {
            super.onMeasure(widthMeasureSpec, widthMeasureSpec);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    private void checkStubInflate() {
        if (this.mItemStub != null) {
            View viewStub = this.mItemStub.inflate();
            this.mMask = (ImageView) viewStub.findViewById(R.id.mask);
            this.mCheckBox = (CheckBox) viewStub.findViewById(16908289);
            this.mCheckBoxContainer = viewStub.findViewById(R.id.checkbox_container);
            this.mSyncIndicator = (ImageView) viewStub.findViewById(R.id.sync_indicator);
            this.mTopIndicatorContainer = viewStub.findViewById(R.id.top_indicator_container);
            this.mPickingNumberIndicator = (TextView) viewStub.findViewById(R.id.pick_num_indicator);
            this.mSimilarBestMark = (ImageView) viewStub.findViewById(R.id.similar_best_mark);
            this.mItemStub = null;
        }
    }

    public List<Object> getTransitionalItems() {
        List items = new ArrayList(1);
        if (this.mItemId > 0) {
            items.add(this);
        }
        return items;
    }

    public long getTransitId() {
        return this.mItemId;
    }

    public RectF getTransitFrame() {
        return new RectF((float) getLeft(), (float) getTop(), (float) getRight(), (float) getBottom());
    }

    public String getTransitPath() {
        return this.mItemPath;
    }

    public Drawable getTransitDrawable() {
        Drawable drawable = BindImageHelper.isViewBindDrawable(this.mImageView) ? this.mImageView.getDrawable() : null;
        if (drawable == null) {
            return drawable;
        }
        ConstantState state = drawable.getConstantState();
        if (state != null) {
            return state.newDrawable(getResources());
        }
        return drawable;
    }

    public ScaleType getTransitScaleType() {
        return this.mImageView.getScaleType();
    }
}
