package com.miui.gallery.video.editor.manager;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.video.editor.Filter;
import com.miui.gallery.video.editor.model.FilterAdjustData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class FilterAdjustManager {
    private static int[] filterIcons = new int[]{R.drawable.video_editor_filter_origin, R.drawable.video_editor_filter_jiaopian, R.drawable.video_editor_filter_jingmi, R.drawable.video_editor_filter_wangshi, R.drawable.video_editor_filter_nuancha, R.drawable.video_editor_filter_bailu, R.drawable.video_editor_filter_qingse, R.drawable.video_editor_filter_xiaosenlin, R.drawable.video_editor_filter_heibai};
    private static HashMap<Integer, String> sAdjustMap = new HashMap<Integer, String>() {
        {
            put(Integer.valueOf(0), "曝光度");
            put(Integer.valueOf(3), "清晰度");
            put(Integer.valueOf(1), "对比度");
            put(Integer.valueOf(2), "饱和度");
            put(Integer.valueOf(4), "暗角");
        }
    };
    private static String[] sFilterName = new String[]{"原图", "胶片", "静谧", "往事", "暖茶", "白露", "青涩", "小森林", "黑白"};
    private static String[] sFilterNameKeys = new String[]{"video_editor_filter_origin", "video_editor_filter_jiaopian", "video_editor_filter_jingmi", "video_editor_filter_wangshi", "video_editor_filter_nuancha", "video_editor_filter_bailu", "video_editor_filter_qingse", "video_editor_filter_xiaosenlin", "video_editor_filter_heibai"};
    private static String[] sFilterTypes = new String[]{"ve_type_none", "ve_type_local", "ve_type_local", "ve_type_local", "ve_type_local", "ve_type_local", "ve_type_local", "ve_type_local", "ve_type_local"};

    public static List<FilterAdjustData> getAdjustData() {
        return Arrays.asList(new FilterAdjustData[]{new FilterAdjustData(0, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_brightness), R.drawable.adjust_brightness, true, (String) sAdjustMap.get(Integer.valueOf(0))), new FilterAdjustData(3, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_sharpen), R.drawable.adjust_sharpen, false, (String) sAdjustMap.get(Integer.valueOf(3))), new FilterAdjustData(1, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_contrast), R.drawable.adjust_contrast, true, (String) sAdjustMap.get(Integer.valueOf(1))), new FilterAdjustData(2, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_saturation), R.drawable.adjust_saturation, true, (String) sAdjustMap.get(Integer.valueOf(2))), new FilterAdjustData(4, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_vignette), R.drawable.adjust_vignette, false, (String) sAdjustMap.get(Integer.valueOf(4)))});
    }

    public static ArrayList<Filter> getFilterData() {
        ArrayList<Filter> arrayList = new ArrayList();
        for (int i = 0; i < sFilterNameKeys.length; i++) {
            arrayList.add(new Filter(filterIcons[i], sFilterTypes[i], sFilterNameKeys[i], sFilterName[i]));
        }
        return arrayList;
    }
}
