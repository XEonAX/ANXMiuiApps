package com.miui.gallery.editor.photo.core.imports.text.typeface;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

class TypeFaceHolder extends ViewHolder {
    private static DisplayImageOptions sDisplayImageOptions = new Builder().considerExifParams(true).resetViewBeforeLoading(false).imageScaleType(ImageScaleType.IN_SAMPLE_INT).cacheBigPhoto(false).bitmapConfig(Config.ARGB_8888).build();
    private DownloadView mDownloadView = ((DownloadView) this.itemView.findViewById(R.id.download_view));
    private ImageAware mImageAware = new ImageViewAware(this.mNameImage);
    private ImageView mNameImage = ((ImageView) this.itemView.findViewById(R.id.iv_font_item_name));
    private TextView mNameText = ((TextView) this.itemView.findViewById(R.id.tv_font_item_name));

    TypeFaceHolder(Context context, ViewGroup parent) {
        super(LayoutInflater.from(context).inflate(R.layout.text_edit_dialog_options_font_panel_item, parent, false));
    }

    public void bind(TextStyle textStyle, boolean isSelected) {
        updateNameView(textStyle, isSelected);
        updateDownloadView(textStyle);
    }

    private void updateDownloadView(TextStyle textStyle) {
        this.mDownloadView.setStateImage(textStyle.getState());
        if (textStyle.isLocal()) {
            this.mDownloadView.setVisibility(8);
        } else if (textStyle.isExtra()) {
            this.mDownloadView.setStateImage(textStyle.getState());
            this.mDownloadView.setText(textStyle.getFontSize());
        }
    }

    private void updateNameView(TextStyle textStyle, boolean isSelected) {
        if (textStyle.isLocal()) {
            this.mNameText.setText(textStyle.getDefaultNameResId());
            this.mNameImage.setVisibility(8);
            this.mNameText.setVisibility(0);
        } else if (textStyle.isExtra()) {
            this.mNameImage.setVisibility(0);
            this.mNameText.setVisibility(8);
            String iconUrl = textStyle.getIconUrl();
            if (!TextUtils.isEmpty(iconUrl)) {
                ImageLoader.getInstance().displayImage(iconUrl, this.mImageAware, sDisplayImageOptions);
            }
            int selectedColor = this.mNameImage.getResources().getColor(R.color.text_edit_dialog_tab_menu_text_color_pressed);
            ImageView imageView = this.mNameImage;
            if (!isSelected) {
                selectedColor = 0;
            }
            imageView.setColorFilter(selectedColor);
        }
    }
}
