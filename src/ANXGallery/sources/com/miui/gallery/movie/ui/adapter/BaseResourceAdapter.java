package com.miui.gallery.movie.ui.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.movie.ui.adapter.BaseAdapter.BaseHolder;
import com.miui.gallery.movie.ui.view.DownloadView;
import com.miui.gallery.movie.utils.ImageLoaderUtils;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class BaseResourceAdapter<T extends MovieResource> extends BaseAdapter<T> {
    private int[] mPlaceColors = new int[]{R.drawable.movie_image_place_1, R.drawable.movie_image_place_2, R.drawable.movie_image_place_3, R.drawable.movie_image_place_4, R.drawable.movie_image_place_5, R.drawable.movie_image_place_6};

    public class BaseResourceHolder extends BaseHolder {
        public DownloadView mDownloadView;
        protected ImageAware mImageAware = new ImageViewAware(this.mImageView);
        protected ImageView mImageView;
        protected TextView mTitle;

        public BaseResourceHolder(View itemView) {
            super(itemView);
            this.mTitle = (TextView) itemView.findViewById(R.id.item_title);
            this.mImageView = (ImageView) itemView.findViewById(R.id.item_iv);
            this.mDownloadView = (DownloadView) itemView.findViewById(R.id.item_download);
        }

        public void bindView(int position) {
            MovieResource info = (MovieResource) BaseResourceAdapter.this.getItemData(position);
            if (info.isPackageAssets) {
                this.mTitle.setText(info.stringId);
                this.mImageView.setImageResource(info.imageId);
                ImageLoader.getInstance().cancelDisplayTask(this.mImageView);
            } else {
                ImageLoader.getInstance().displayImage(info.icon, this.mImageAware, ImageLoaderUtils.getNormalDisplayImageOptionsBuilder().showImageOnLoading(BaseResourceAdapter.this.mPlaceColors[position % BaseResourceAdapter.this.mPlaceColors.length]).build());
                int nameId = info.getNameId();
                if (nameId != 0) {
                    this.mTitle.setText(nameId);
                } else {
                    this.mTitle.setText(info.label);
                }
            }
            int state = info.getDownloadState();
            this.mDownloadView.setStateImage(state);
            if (state == 0) {
                info.downloadState = 17;
            }
        }

        public void bindView(int position, Object payload) {
            super.bindView(position, payload);
            final MovieResource info = (MovieResource) BaseResourceAdapter.this.getItemData(position);
            int state = info.getDownloadState();
            this.mDownloadView.setStateImage(state);
            if (state == 0) {
                this.mDownloadView.postDelayed(new Runnable() {
                    public void run() {
                        info.downloadState = 17;
                    }
                }, 1000);
            }
        }
    }

    public BaseResourceAdapter(Context context) {
        super(context);
    }

    protected int getLayoutId() {
        return R.layout.movie_layout_template_item;
    }

    protected BaseResourceHolder getHolder(View view) {
        return new BaseResourceHolder(view);
    }
}
