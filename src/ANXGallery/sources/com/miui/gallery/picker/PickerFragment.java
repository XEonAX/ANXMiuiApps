package com.miui.gallery.picker;

import android.app.Activity;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.picker.helper.CursorUtils;
import com.miui.gallery.picker.helper.Picker;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.security.CrossUserCompatActivity;
import com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView;
import java.util.ArrayList;
import java.util.Locale;

public abstract class PickerFragment extends PickerCompatFragment {
    protected Picker mPicker;

    protected abstract Uri getUri();

    protected abstract boolean onPhotoItemClick(Cursor cursor);

    public final void attach(Picker picker) {
        this.mPicker = picker;
    }

    public final Picker getPicker() {
        return this.mPicker;
    }

    protected Uri getPreviewUri() {
        return getUri();
    }

    protected String getPreviewSelection(Cursor cursor) {
        return String.format(Locale.US, "_id = %d", new Object[]{Long.valueOf(CursorUtils.getId(cursor))});
    }

    protected String[] getPreviewSelectionArgs(Cursor cursor) {
        return null;
    }

    protected String getPreviewOrder() {
        return null;
    }

    protected boolean isPreviewFace() {
        return false;
    }

    protected long getKey(Cursor cursor) {
        return CursorUtils.getId(cursor);
    }

    protected String getLocalPath(Cursor cursor) {
        return CursorUtils.getMicroPath(cursor);
    }

    protected long getFileLength(Cursor cursor) {
        return CursorUtils.getFileLength(cursor);
    }

    protected OnItemClickListener getGridViewOnItemClickListener() {
        return new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long itemId) {
                Activity activity = PickerFragment.this.getActivity();
                if (activity != null) {
                    if (activity == null || !(activity instanceof CrossUserCompatActivity) || !((CrossUserCompatActivity) activity).isCrossUserPick()) {
                        Cursor cursor = (Cursor) ((StickyGridHeadersGridView) adapterView).getRealAdapter().getItem(position);
                        if (!PickerFragment.this.onPhotoItemClick(cursor)) {
                            ArrayList<ItemViewInfo> arrayList = new ArrayList(1);
                            arrayList.add(ItemViewInfo.getImageInfo(view, 0));
                            ImageLoadParams item = new ImageLoadParams(PickerFragment.this.getKey(cursor), PickerFragment.this.getLocalPath(cursor), ThumbConfig.get().sMicroTargetSize, null, 0, CursorUtils.getMimeType(cursor), PickerFragment.this.isPreviewFace(), PickerFragment.this.getFileLength(cursor));
                            IntentUtil.gotoPhotoPageFromPicker(activity, PickerFragment.this.getPreviewUri(), PickerFragment.this.getPreviewSelection(cursor), PickerFragment.this.getPreviewSelectionArgs(cursor), PickerFragment.this.getPreviewOrder(), item, arrayList);
                        }
                    }
                }
            }
        };
    }
}
