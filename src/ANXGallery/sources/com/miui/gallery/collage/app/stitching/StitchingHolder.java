package com.miui.gallery.collage.app.stitching;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.collage.core.stitching.StitchingModel;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.File;
import java.util.Locale;

class StitchingHolder extends ViewHolder {
    private ImageView mImageView = ((ImageView) this.itemView.findViewById(R.id.collage_item_icon));

    StitchingHolder(ViewGroup parent, Context context) {
        super(LayoutInflater.from(context).inflate(R.layout.poster_icon_item, parent, false));
    }

    void setStitchingModel(Resources res, StitchingModel stitchingModel, int position) {
        ImageLoader.getInstance().displayImage(Scheme.ASSETS.wrap(String.format(Locale.US, "%s%s%s%s", new Object[]{stitchingModel.relativePath, File.separator, "preview", ".png"})), this.mImageView);
        this.mImageView.setContentDescription(this.mImageView.getResources().getString(R.string.photo_editor_talkback_effect, new Object[]{Integer.valueOf(position + 1)}));
    }
}
