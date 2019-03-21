package com.miui.gallery.search.core.display;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.search.core.QueryInfo;
import com.miui.gallery.search.core.display.icon.IconImageLoader;
import com.miui.gallery.search.core.suggestion.Suggestion;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;

public abstract class AbstractSuggestionViewFactory implements SuggestionViewFactory {
    private final Context mContext;
    protected DisplayImageOptions mDefaultDisplayImageOptions;
    protected Builder mDisplayImageOptionBuilder;
    private final LayoutInflater mLayoutInflater;

    protected abstract int getLayoutIdForViewType(String str);

    public AbstractSuggestionViewFactory(Context context) {
        this.mContext = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        initDisplayImageOptions(context);
    }

    protected void initDisplayImageOptions(Context context) {
        this.mDisplayImageOptionBuilder = new Builder().cacheThumbnail(true).loadFromMicroCache(true).considerExifParams(true).resetViewBeforeLoading(true).imageScaleType(ImageScaleType.EXACTLY).bitmapConfig(Config.RGB_565).showImageOnLoading(R.drawable.image_default_cover).showImageOnFail(R.drawable.image_default_cover).showImageForEmptyUri(R.drawable.image_default_cover);
        this.mDefaultDisplayImageOptions = this.mDisplayImageOptionBuilder.build();
    }

    protected LayoutInflater getLayoutInflater() {
        return this.mLayoutInflater;
    }

    protected Context getContext() {
        return this.mContext;
    }

    public BaseSuggestionViewHolder createViewHolder(ViewGroup parent, String viewType) {
        return createViewHolder(getLayoutInflater().inflate(getLayoutIdForViewType(viewType), parent, false));
    }

    protected BaseSuggestionViewHolder createViewHolder(View view) {
        return new BaseSuggestionViewHolder(view);
    }

    public void bindViewHolder(QueryInfo queryInfo, Suggestion suggestion, int childPosition, BaseSuggestionViewHolder viewHolder, OnActionClickListener listener) {
        if (viewHolder.getIconView() != null) {
            bindIcon(viewHolder.getIconView(), suggestion.getSuggestionIcon(), getDisplayImageOptionsForViewType(viewHolder.getViewType()));
        }
        if (viewHolder.getTitle() != null) {
            viewHolder.getTitle().setText(suggestion.getSuggestionTitle());
        }
        if (viewHolder.getSubTitle() != null) {
            viewHolder.getSubTitle().setText(suggestion.getSuggestionSubTitle());
        }
    }

    protected DisplayImageOptions getDisplayImageOptionsForViewType(String viewType) {
        return this.mDefaultDisplayImageOptions;
    }

    protected void bindIcon(ImageView iconView, String iconUri, DisplayImageOptions displayImageOptions) {
        IconImageLoader.getInstance().displayImage(this.mContext, iconUri == null ? null : Uri.parse(iconUri), DownloadType.MICRO, iconView, displayImageOptions, ThumbConfig.get().sMicroTargetSize);
    }
}
