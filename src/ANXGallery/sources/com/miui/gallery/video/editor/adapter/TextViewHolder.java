package com.miui.gallery.video.editor.adapter;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.util.ImageLoaderUtils;
import com.miui.gallery.video.editor.util.ToolsUtil;
import com.miui.gallery.video.editor.widget.DownloadView;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.SingleChoiceViewHolder;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;

public class TextViewHolder extends SingleChoiceViewHolder {
    private static DisplayImageOptions mDisplayImageOptions = ImageLoaderUtils.mVideoEditorDisplayImageOptions;
    private DownloadView mDownloadView;
    private ImageView mIcon;
    private ImageAware mImageAware = new ImageViewAware(this.mIcon);
    private View mSelectBackground;
    private View mSelected;
    private ImageView mTextEditable;

    public TextViewHolder(View itemView) {
        super(itemView);
        this.mIcon = (ImageView) itemView.findViewById(R.id.video_editor_text_image);
        this.mDownloadView = (DownloadView) itemView.findViewById(R.id.item_download);
        this.mSelected = itemView.findViewById(R.id.selector);
        this.mTextEditable = (ImageView) itemView.findViewById(R.id.video_editor_edit);
        this.mSelectBackground = itemView.findViewById(R.id.select_edit_background);
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

    public void setStateImage(int downloadState) {
        this.mDownloadView.setStateImage(downloadState);
    }

    public void updateSelected(boolean selected, boolean exist) {
        if (selected && exist) {
            ToolsUtil.showView(this.mSelected);
        } else {
            ToolsUtil.hideView(this.mSelected);
        }
    }

    public void updateTextEditable(boolean show) {
        if (show) {
            ToolsUtil.showView(this.mTextEditable);
            ToolsUtil.showView(this.mSelectBackground);
            return;
        }
        ToolsUtil.hideView(this.mTextEditable);
        ToolsUtil.hideView(this.mSelectBackground);
    }

    public void setSelect(boolean selected) {
    }
}
