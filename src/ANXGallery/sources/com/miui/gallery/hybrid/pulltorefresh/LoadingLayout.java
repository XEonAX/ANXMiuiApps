package com.miui.gallery.hybrid.pulltorefresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.Mode;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.Orientation;

@SuppressLint({"ViewConstructor"})
public abstract class LoadingLayout extends FrameLayout implements ILoadingLayout {
    static final Interpolator ANIMATION_INTERPOLATOR = new LinearInterpolator();
    protected final ImageView mHeaderImage = ((ImageView) this.mInnerLayout.findViewById(R.id.pull_to_refresh_image));
    protected final ProgressBar mHeaderProgress = ((ProgressBar) this.mInnerLayout.findViewById(R.id.pull_to_refresh_progress));
    private final TextView mHeaderText = ((TextView) this.mInnerLayout.findViewById(R.id.pull_to_refresh_text));
    private View mInnerLayout = findViewById(R.id.fl_inner);
    protected final Mode mMode;
    private CharSequence mPullLabel;
    private CharSequence mRefreshingLabel;
    private CharSequence mReleaseLabel;
    protected final Orientation mScrollDirection;
    private final TextView mSubHeaderText = ((TextView) this.mInnerLayout.findViewById(R.id.pull_to_refresh_sub_text));
    private boolean mUseIntrinsicAnimation;

    protected abstract int getDefaultDrawableResId();

    protected abstract void onLoadingDrawableSet(Drawable drawable);

    protected abstract void onPullImpl(float f);

    protected abstract void pullToRefreshImpl();

    protected abstract void refreshingImpl();

    protected abstract void releaseToRefreshImpl();

    protected abstract void resetImpl();

    public LoadingLayout(Context context, Mode mode, Orientation scrollDirection, TypedArray attrs) {
        TypedValue styleID;
        ColorStateList colors;
        super(context);
        this.mMode = mode;
        this.mScrollDirection = scrollDirection;
        int i = AnonymousClass1.$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Orientation[scrollDirection.ordinal()];
        LayoutInflater.from(context).inflate(R.layout.hybrid_pull_to_refresh_header_vertical, this);
        LayoutParams lp = (LayoutParams) this.mInnerLayout.getLayoutParams();
        i = AnonymousClass1.$SwitchMap$com$miui$gallery$hybrid$pulltorefresh$PullToRefreshBase$Mode[mode.ordinal()];
        lp.gravity = scrollDirection == Orientation.VERTICAL ? 80 : 5;
        this.mPullLabel = context.getString(R.string.hybrid_pull_to_refresh_pull_label);
        this.mRefreshingLabel = context.getString(R.string.hybrid_pull_to_refresh_refreshing_label);
        this.mReleaseLabel = context.getString(R.string.hybrid_pull_to_refresh_release_label);
        if (attrs.hasValue(1)) {
            Drawable background = attrs.getDrawable(1);
            if (background != null) {
                ViewCompat.setBackground(this, background);
            }
        }
        if (attrs.hasValue(10)) {
            styleID = new TypedValue();
            attrs.getValue(10, styleID);
            setTextAppearance(styleID.data);
        }
        if (attrs.hasValue(11)) {
            styleID = new TypedValue();
            attrs.getValue(11, styleID);
            setSubTextAppearance(styleID.data);
        }
        if (attrs.hasValue(2)) {
            colors = attrs.getColorStateList(2);
            if (colors != null) {
                setTextColor(colors);
            }
        }
        if (attrs.hasValue(3)) {
            colors = attrs.getColorStateList(3);
            if (colors != null) {
                setSubTextColor(colors);
            }
        }
        Drawable imageDrawable = null;
        if (attrs.hasValue(6)) {
            imageDrawable = attrs.getDrawable(6);
        }
        switch (mode) {
            case PULL_FROM_END:
                if (!attrs.hasValue(8)) {
                    if (attrs.hasValue(19)) {
                        imageDrawable = attrs.getDrawable(19);
                        break;
                    }
                }
                imageDrawable = attrs.getDrawable(8);
                break;
                break;
            default:
                if (!attrs.hasValue(7)) {
                    if (attrs.hasValue(18)) {
                        imageDrawable = attrs.getDrawable(18);
                        break;
                    }
                }
                imageDrawable = attrs.getDrawable(7);
                break;
                break;
        }
        if (imageDrawable == null) {
            imageDrawable = context.getResources().getDrawable(getDefaultDrawableResId());
        }
        setLoadingDrawable(imageDrawable);
        reset();
    }

    public final void setHeight(int height) {
        getLayoutParams().height = height;
        requestLayout();
    }

    public final void setWidth(int width) {
        getLayoutParams().width = width;
        requestLayout();
    }

    public final int getContentSize() {
        switch (this.mScrollDirection) {
            case HORIZONTAL:
                return this.mInnerLayout.getWidth();
            default:
                return this.mInnerLayout.getHeight();
        }
    }

    public final void onPull(float scaleOfLayout) {
        if (!this.mUseIntrinsicAnimation) {
            onPullImpl(scaleOfLayout);
        }
    }

    public final void pullToRefresh() {
        if (this.mHeaderText != null) {
            this.mHeaderText.setText(this.mPullLabel);
        }
        pullToRefreshImpl();
    }

    public final void refreshing() {
        if (this.mHeaderText != null) {
            this.mHeaderText.setText(this.mRefreshingLabel);
        }
        if (this.mUseIntrinsicAnimation) {
            ((AnimationDrawable) this.mHeaderImage.getDrawable()).start();
        } else {
            refreshingImpl();
        }
        if (this.mSubHeaderText != null) {
            this.mSubHeaderText.setVisibility(8);
        }
    }

    public final void releaseToRefresh() {
        if (this.mHeaderText != null) {
            this.mHeaderText.setText(this.mReleaseLabel);
        }
        releaseToRefreshImpl();
    }

    public final void reset() {
        if (this.mHeaderText != null) {
            this.mHeaderText.setText(this.mPullLabel);
        }
        this.mHeaderImage.setVisibility(0);
        if (this.mUseIntrinsicAnimation) {
            ((AnimationDrawable) this.mHeaderImage.getDrawable()).stop();
        } else {
            resetImpl();
        }
        if (this.mSubHeaderText == null) {
            return;
        }
        if (TextUtils.isEmpty(this.mSubHeaderText.getText())) {
            this.mSubHeaderText.setVisibility(8);
        } else {
            this.mSubHeaderText.setVisibility(0);
        }
    }

    public void setLastUpdatedLabel(CharSequence label) {
        setSubHeaderText(label);
    }

    public final void setLoadingDrawable(Drawable imageDrawable) {
        this.mHeaderImage.setImageDrawable(imageDrawable);
        this.mUseIntrinsicAnimation = imageDrawable instanceof AnimationDrawable;
        onLoadingDrawableSet(imageDrawable);
    }

    public void setPullLabel(CharSequence pullLabel) {
        this.mPullLabel = pullLabel;
    }

    public void setRefreshingLabel(CharSequence refreshingLabel) {
        this.mRefreshingLabel = refreshingLabel;
    }

    public void setReleaseLabel(CharSequence releaseLabel) {
        this.mReleaseLabel = releaseLabel;
    }

    public void setTextTypeface(Typeface tf) {
        this.mHeaderText.setTypeface(tf);
    }

    private void setSubHeaderText(CharSequence label) {
        if (this.mSubHeaderText == null) {
            return;
        }
        if (TextUtils.isEmpty(label)) {
            this.mSubHeaderText.setVisibility(8);
            return;
        }
        this.mSubHeaderText.setText(label);
        if (8 == this.mSubHeaderText.getVisibility()) {
            this.mSubHeaderText.setVisibility(0);
        }
    }

    private void setSubTextAppearance(int value) {
        if (this.mSubHeaderText != null) {
            this.mSubHeaderText.setTextAppearance(getContext(), value);
        }
    }

    private void setSubTextColor(ColorStateList color) {
        if (this.mSubHeaderText != null) {
            this.mSubHeaderText.setTextColor(color);
        }
    }

    private void setTextAppearance(int value) {
        if (this.mHeaderText != null) {
            this.mHeaderText.setTextAppearance(getContext(), value);
        }
        if (this.mSubHeaderText != null) {
            this.mSubHeaderText.setTextAppearance(getContext(), value);
        }
    }

    private void setTextColor(ColorStateList color) {
        if (this.mHeaderText != null) {
            this.mHeaderText.setTextColor(color);
        }
        if (this.mSubHeaderText != null) {
            this.mSubHeaderText.setTextColor(color);
        }
    }
}
