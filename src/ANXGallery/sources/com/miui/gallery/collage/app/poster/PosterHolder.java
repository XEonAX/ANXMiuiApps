package com.miui.gallery.collage.app.poster;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.collage.core.poster.PosterModel;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.File;
import java.util.Locale;

class PosterHolder extends ViewHolder {
    private ImageView mImageView = ((ImageView) this.itemView.findViewById(R.id.collage_item_icon));

    PosterHolder(ViewGroup parent, Context context) {
        super(LayoutInflater.from(context).inflate(R.layout.poster_icon_item, parent, false));
    }

    void setPosterModel(Resources res, PosterModel posterModel, int imageCount, int position) {
        ImageLoader.getInstance().displayImage(Scheme.ASSETS.wrap(String.format(Locale.US, "%s%s%s%d%s", new Object[]{posterModel.relativePath, File.separator, "preview_", Integer.valueOf(imageCount), ".png"})), this.mImageView);
        this.mImageView.setContentDescription(this.mImageView.getResources().getString(R.string.photo_editor_talkback_effect, new Object[]{Integer.valueOf(position + 1)}));
    }
}
