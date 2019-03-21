package com.miui.gallery.video.editor.adapter;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.util.ImageLoaderUtils;
import com.miui.gallery.video.editor.util.ToolsUtil;
import com.miui.gallery.video.editor.widget.DownloadView;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.SingleChoiceViewHolder;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class AudioViewHolder extends SingleChoiceViewHolder {
    private static DisplayImageOptions mDisplayImageOptions = ImageLoaderUtils.mVideoEditorDisplayImageOptions;
    private DownloadView mDownloadView;
    private ImageView mIcon;
    private ImageAware mImageAware = new ImageViewAware(this.mIcon);
    private TextView mNameTextView;
    private View mSelected;

    public AudioViewHolder(View itemView) {
        super(itemView);
        this.mNameTextView = (TextView) itemView.findViewById(R.id.item_title);
        this.mIcon = (ImageView) itemView.findViewById(R.id.item_iv);
        this.mDownloadView = (DownloadView) itemView.findViewById(R.id.item_download);
        this.mSelected = itemView.findViewById(R.id.iv_selected);
    }

    public void setSelect(boolean selected) {
    }

    public void setName(int nameResId) {
        if (nameResId != 0) {
            this.mNameTextView.setText(nameResId);
        }
    }

    public void setStateImage(int downloadState) {
        this.mDownloadView.setStateImage(downloadState);
    }

    public void updateSelected(boolean selected, boolean exist) {
        if (selected && exist) {
            ToolsUtil.showView(this.mSelected);
            this.mNameTextView.setTextColor(this.mNameTextView.getContext().getResources().getColor(R.color.video_editor_tab_selected));
            return;
        }
        ToolsUtil.hideView(this.mSelected);
        this.mNameTextView.setTextColor(this.mNameTextView.getContext().getResources().getColor(R.color.video_editor_item_title_normal));
    }

    public void setIcon(int drawableId) {
        if (drawableId != 0) {
            this.mIcon.setImageResource(drawableId);
        }
    }

    public void setIcon(String url) {
        if (!TextUtils.isEmpty(url)) {
            ImageLoader.getInstance().displayImage(url, this.mImageAware, mDisplayImageOptions);
        }
    }
}
