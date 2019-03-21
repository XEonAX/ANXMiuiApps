package com.miui.gallery.search.resultpage;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.util.GalleryDateUtils;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersBaseAdapter;

public class ImageResultAdapter extends ImageResultSimpleAdapter implements StickyGridHeadersBaseAdapter {
    private OnHeaderItemClickedListener mHeaderClickListener;

    public interface OnHeaderItemClickedListener {
        void onHeaderItemClicked(int i);
    }

    public ImageResultAdapter(Context context) {
        super(context);
    }

    public int getCountForHeader(int groupIndex) {
        return getResultCursor() == null ? 0 : getResultCursor().getChildrenCount(groupIndex);
    }

    public int getNumHeaders() {
        return getResultCursor() == null ? 0 : getResultCursor().getGroupCount();
    }

    public View getHeaderView(final int groupIndex, View convertView, ViewGroup parent) {
        boolean z = false;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.search_image_result_header_item, parent, false);
        }
        ImageResultHeaderItem imageResultHeaderItem = (ImageResultHeaderItem) convertView;
        String groupRankValue = getGroupRankValue(groupIndex);
        String groupTitle = getGroupTitle(groupIndex);
        if (getGroupCreateTime(groupIndex) >= 0) {
            z = true;
        }
        imageResultHeaderItem.bindData(groupRankValue, groupTitle, z, R.drawable.arrow_right, new OnClickListener() {
            public void onClick(View v) {
                if (ImageResultAdapter.this.mHeaderClickListener != null) {
                    ImageResultAdapter.this.mHeaderClickListener.onHeaderItemClicked(groupIndex);
                }
            }
        });
        return convertView;
    }

    public void setHeaderClickListener(OnHeaderItemClickedListener headerClickListener) {
        this.mHeaderClickListener = headerClickListener;
    }

    public int getGroupCreateDate(int groupIndex) {
        return getResultCursor().getGroupCreateDate(groupIndex);
    }

    public long getGroupCreateTime(int groupIndex) {
        return getResultCursor().getGroupCreateTime(groupIndex);
    }

    public String getGroupTitle(int groupIndex) {
        return getResultCursor().getGroupTitle(groupIndex);
    }

    public String getGroupRankValue(int groupIndex) {
        String rankValue = getResultCursor().getGroupRankValue(groupIndex);
        if (!TextUtils.isEmpty(rankValue) || getGroupCreateTime(groupIndex) <= 0) {
            return rankValue;
        }
        return GalleryDateUtils.formatRelativeDate(getGroupCreateTime(groupIndex));
    }

    public boolean shouldDrawDivider() {
        return false;
    }

    public View getDividerView(int position, View convertView, ViewGroup parent) {
        return null;
    }
}
