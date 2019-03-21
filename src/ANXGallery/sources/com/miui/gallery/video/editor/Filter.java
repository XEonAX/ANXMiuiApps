package com.miui.gallery.video.editor;

import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import java.util.HashMap;

public class Filter extends VideoEditorBaseModel {
    private static HashMap<String, String> filterIds = new HashMap<String, String>() {
        {
            put("video_editor_filter_origin", "NONE");
            put("video_editor_filter_jiaopian", "LUT_XIAOMI_OPIAN");
            put("video_editor_filter_jingmi", "LUT_XIAOMI_GMI");
            put("video_editor_filter_wangshi", "LUT_XIAOMI_GSHI");
            put("video_editor_filter_nuancha", "LUT_XIAOMI_NCHA");
            put("video_editor_filter_bailu", "LUT_XIAOMI_LU");
            put("video_editor_filter_qingse", "LUT_XIAOMI_GSE");
            put("video_editor_filter_xiaosenlin", "LUT_XIAOMI_OSENLIN");
            put("video_editor_filter_heibai", "LUT_XIAOMI_BAI");
        }
    };
    private static HashMap<String, Integer> filterNames = new HashMap<String, Integer>() {
        {
            put("video_editor_filter_origin", Integer.valueOf(R.string.video_editor_filter_origin));
            put("video_editor_filter_jiaopian", Integer.valueOf(R.string.video_editor_filter_jiaopian));
            put("video_editor_filter_jingmi", Integer.valueOf(R.string.video_editor_filter_jingmi));
            put("video_editor_filter_wangshi", Integer.valueOf(R.string.video_editor_filter_wangshi));
            put("video_editor_filter_nuancha", Integer.valueOf(R.string.video_editor_filter_nuancha));
            put("video_editor_filter_bailu", Integer.valueOf(R.string.video_editor_filter_bailu));
            put("video_editor_filter_qingse", Integer.valueOf(R.string.video_editor_filter_qingse));
            put("video_editor_filter_xiaosenlin", Integer.valueOf(R.string.video_editor_filter_xiaosenlin));
            put("video_editor_filter_heibai", Integer.valueOf(R.string.video_editor_filter_heibai));
        }
    };
    private String mFilterId = "";
    private int mIconResId = 0;
    private int mNameResId = 0;

    public Filter(int iconResId, String type, String nameKey, String label) {
        this.mIconResId = iconResId;
        this.mType = type;
        this.mExtra = "ve_type_extra".equals(type);
        this.mNameKey = nameKey;
        this.mLabel = label;
    }

    public int getNameResId() {
        if (this.mNameResId == 0 && filterNames != null && filterNames.containsKey(this.mNameKey)) {
            this.mNameResId = ((Integer) filterNames.get(this.mNameKey)).intValue();
        }
        return this.mNameResId;
    }

    public String getFilterId() {
        if (TextUtils.isEmpty(this.mFilterId) && filterIds != null && filterIds.containsKey(this.mNameKey)) {
            this.mFilterId = (String) filterIds.get(this.mNameKey);
        }
        return this.mFilterId;
    }

    public int getIconResId() {
        return this.mIconResId;
    }
}
