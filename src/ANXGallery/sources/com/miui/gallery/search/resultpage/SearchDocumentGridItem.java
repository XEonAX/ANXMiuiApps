package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.miui.gallery.R;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.ui.MicroThumbGridItem;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.core.DisplayImageOptions;

public class SearchDocumentGridItem extends MicroThumbGridItem {
    public SearchDocumentGridItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected boolean isSquareItem() {
        return false;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int heightScale = getResources().getInteger(R.integer.micro_horizontal_document_item_height_scale);
        int widthScale = getResources().getInteger(R.integer.micro_horizontal_document_item_width_scale);
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int height = (width * heightScale) / widthScale;
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(height, 1073741824));
        Log.d("SearchDocumentGridItem", "onMeasure w: %d, h: %d", Integer.valueOf(width), Integer.valueOf(height));
    }

    public void bindImage(String localPath, Uri downloadUri, DisplayImageOptions displayImageOptions) {
        super.bindImage(localPath, downloadUri, DownloadType.THUMBNAIL, displayImageOptions);
    }
}
