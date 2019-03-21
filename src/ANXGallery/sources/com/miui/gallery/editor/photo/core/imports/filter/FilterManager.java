package com.miui.gallery.editor.photo.core.imports.filter;

import android.os.Build;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.util.BaseBuildUtil;
import com.miui.settings.Settings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class FilterManager {
    static List<FilterCategoryData> getFilterCategory() {
        List<FilterCategoryData> categoryData = new ArrayList(5);
        categoryData.add(new FilterCategoryData(3, GalleryApp.sGetAndroidContext().getString(R.string.filter_category_scene), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_scene)));
        if (BaseBuildUtil.isInternational() && Settings.getRegion().endsWith("IN")) {
            categoryData.add(new FilterCategoryData(5, GalleryApp.sGetAndroidContext().getString(R.string.filter_category_portrait), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_people_india), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_people_india_male), 5));
        } else {
            categoryData.add(new FilterCategoryData(2, GalleryApp.sGetAndroidContext().getString(R.string.filter_category_portrait), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_people), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_people_male), 4));
        }
        categoryData.add(new FilterCategoryData(4, GalleryApp.sGetAndroidContext().getString(R.string.filter_category_food), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_food)));
        categoryData.add(new FilterCategoryData(1, GalleryApp.sGetAndroidContext().getString(R.string.filter_category_film), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_film)));
        if ("wayne".equals(Build.DEVICE)) {
            categoryData.add(new FilterCategoryData(6, GalleryApp.sGetAndroidContext().getString(R.string.filter_category_master), GalleryApp.sGetAndroidContext().getResources().getColor(R.color.filter_category_master)));
        }
        return categoryData;
    }

    static List<FilterAdjust> getAdjustData() {
        FilterAdjust[] filterAdjustArr = new FilterAdjust[5];
        filterAdjustArr[0] = new FilterAdjust(0, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_brightness), R.drawable.adjust_brightness, true);
        filterAdjustArr[1] = new FilterAdjust(3, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_sharpen), R.drawable.adjust_sharpen, false);
        filterAdjustArr[2] = new FilterAdjust(1, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_contrast), R.drawable.adjust_contrast, true);
        filterAdjustArr[3] = new FilterAdjust(2, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_saturation), R.drawable.adjust_saturation, true);
        filterAdjustArr[4] = new FilterAdjust(4, (short) 10, GalleryApp.sGetAndroidContext().getString(R.string.adjust_vignette), R.drawable.adjust_vignette, false);
        return Arrays.asList(filterAdjustArr);
    }

    static List<FilterBeautify> getBeautifyData() {
        return Arrays.asList(new FilterBeautify[]{new FilterBeautify(0, GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.onekey_none), new FilterBeautify(1, GalleryApp.sGetAndroidContext().getString(R.string.onekey_auto), R.drawable.onekey_auto), new FilterBeautify(3, GalleryApp.sGetAndroidContext().getString(R.string.onekey_food), R.drawable.onekey_food), new FilterBeautify(4, GalleryApp.sGetAndroidContext().getString(R.string.onekey_scene), R.drawable.onekey_scene), new FilterBeautify(2, GalleryApp.sGetAndroidContext().getString(R.string.onekey_portrait), R.drawable.onekey_portrait)});
    }

    public static FilterBeautify getAutoBeautifyData() {
        return new FilterBeautify(1, GalleryApp.sGetAndroidContext().getString(R.string.onekey_auto), R.drawable.onekey_auto);
    }

    static List<FilterItem> getFiltersByCategory(int category) {
        switch (category) {
            case 1:
                return getFilmFilterItem();
            case 2:
                return getPortraitFilterItem();
            case 3:
                return getSceneFilterItem();
            case 4:
                return getFoodFilterItem();
            case 5:
                return getPortraitIndiaFilterItem();
            case 6:
                return getMasterFilterItem();
            default:
                throw new IllegalArgumentException("not support filterCategory:" + category);
        }
    }

    private static ArrayList<FilterItem> getFilmFilterItem() {
        ArrayList<FilterItem> filters = new ArrayList();
        filters.add(new FilterItem(GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.filter_film_original));
        filters.add(new FilterItem("filter/film/film.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_film), R.drawable.filter_film_film, 100));
        filters.add(new FilterItem("filter/film/quiet.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_quiet), R.drawable.filter_film_quiet, 80));
        filters.add(new FilterItem("filter/film/style.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_style), R.drawable.filter_film_style, 80));
        filters.add(new FilterItem("filter/film/dew.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_dew), R.drawable.filter_film_dew, 80));
        filters.add(new FilterItem("filter/film/time.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_time), R.drawable.filter_film_time, 80));
        filters.add(new FilterItem("filter/film/grey.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_grey), R.drawable.filter_film_grey, 100));
        filters.add(new FilterItem("filter/film/bw.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_blackwhite), R.drawable.filter_film_blackwhite, 100));
        filters.add(new FilterItem("filter/film/fade.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_film_fade), R.drawable.filter_film_fade, 100));
        return filters;
    }

    private static ArrayList<FilterItem> getPortraitFilterItem() {
        ArrayList<FilterItem> filters = new ArrayList();
        filters.add(new FilterItem(GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.filter_people_original));
        filters.add(new FilterItem("filter/beauty/nature.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_nature), R.drawable.filter_people_nature, 70));
        filters.add(new FilterItem("filter/beauty/japanese.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_japanese), R.drawable.filter_people_japanese, 100));
        filters.add(new FilterItem("filter/beauty/pink.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_pink), R.drawable.filter_people_pink, 70));
        filters.add(new FilterItem("filter/beauty/story.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_story), R.drawable.filter_people_story, 100));
        filters.add(new FilterItem("filter/beauty/fairytale.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_fairytale), R.drawable.filter_people_fairytale, 100));
        filters.add(new FilterItem("filter/beauty/maze.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_maze), R.drawable.filter_people_maze, 100));
        filters.add(new FilterItem("filter/beauty/riddle.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_riddle), R.drawable.filter_people_riddle, 100));
        filters.add(new FilterItem("filter/beauty/movie.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_movie), R.drawable.filter_people_movie, 100));
        filters.add(new FilterItem("filter/beauty/tea.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_tea), R.drawable.filter_people_tea, 100));
        filters.add(new FilterItem("filter/beauty/lilt.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_lilt), R.drawable.filter_people_lilt, 100));
        filters.add(new FilterItem("filter/beauty/sepia.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_sepia), R.drawable.filter_people_sepia, 100));
        filters.add(new FilterItem("filter/beauty/bw.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_people_bw), R.drawable.filter_people_bw, 100));
        return filters;
    }

    private static ArrayList<FilterItem> getPortraitIndiaFilterItem() {
        ArrayList<FilterItem> filters = new ArrayList();
        filters.add(new FilterItem(GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.portait_effect_image_none));
        filters.add(new FilterItem("filter/beauty_india/sunny.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_sunny), R.drawable.portait_effect_image_sunny, 80));
        filters.add(new FilterItem("filter/beauty_india/pink.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_pink), R.drawable.portait_effect_image_pink, 100));
        filters.add(new FilterItem("filter/beauty_india/memory.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_memory), R.drawable.portait_effect_image_memory, 100));
        filters.add(new FilterItem("filter/beauty_india/strong.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_strong), R.drawable.portait_effect_image_strong, 80));
        filters.add(new FilterItem("filter/beauty_india/warm.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_warm), R.drawable.portait_effect_image_warm, 100));
        filters.add(new FilterItem("filter/beauty_india/retro.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_retro), R.drawable.portait_effect_image_retro, 100));
        filters.add(new FilterItem("filter/beauty_india/romantic.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_romantic), R.drawable.portait_effect_image_romantic, 100));
        filters.add(new FilterItem("filter/beauty_india/dusk.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_dusk), R.drawable.filter_bi_dusk, 100));
        filters.add(new FilterItem("filter/beauty_india/lilt.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_lilt), R.drawable.filter_bi_lilt, 100));
        filters.add(new FilterItem("filter/beauty_india/tea.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_tea), R.drawable.filter_bi_tea, 100));
        filters.add(new FilterItem("filter/beauty_india/sepia.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_sepia), R.drawable.filter_bi_sepia, 100));
        filters.add(new FilterItem("filter/beauty_india/bw.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_bi_bw), R.drawable.filter_bi_bw, 100));
        return filters;
    }

    private static ArrayList<FilterItem> getSceneFilterItem() {
        ArrayList<FilterItem> filters = new ArrayList();
        filters.add(new FilterItem(GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.filter_scene_original));
        filters.add(new FilterItem("filter/scene/lively.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_vivid), R.drawable.filter_scene_vivid, 80));
        filters.add(new FilterItem("filter/scene/koizora.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_koizora), R.drawable.filter_scene_koizora, 80));
        filters.add(new FilterItem("filter/scene/warm.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_warm), R.drawable.filter_scene_warm, 80));
        filters.add(new FilterItem("filter/scene/light.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_series), R.drawable.filter_scene_series, 100));
        filters.add(new FilterItem("filter/scene/neon.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_neon), R.drawable.filter_scene_neon, 60));
        filters.add(new FilterItem("filter/scene/city.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_city), R.drawable.filter_scene_city, 80));
        filters.add(new FilterItem("filter/scene/lomo.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_lomo), R.drawable.filter_scene_lomo, 80));
        filters.add(new FilterItem("filter/scene/df.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_scene_df), R.drawable.filter_scene_df, 100));
        return filters;
    }

    private static ArrayList<FilterItem> getFoodFilterItem() {
        ArrayList<FilterItem> filters = new ArrayList();
        filters.add(new FilterItem(GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.filter_food_original));
        filters.add(new FilterItem("filter/food/cookie.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_cookies), R.drawable.filter_food_cookies, 60));
        filters.add(new FilterItem("filter/food/soda.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_softdrink), R.drawable.filter_food_softdrink, 60));
        filters.add(new FilterItem("filter/food/latte.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_latte), R.drawable.filter_food_latte, 80));
        filters.add(new FilterItem("filter/food/delicacy.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_delicious), R.drawable.filter_food_delicious, 60));
        filters.add(new FilterItem("filter/food/barbecue.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_barbecue), R.drawable.filter_food_barbecue, 70));
        filters.add(new FilterItem("filter/food/wholemeal.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_wholemeal), R.drawable.filter_food_wholemeal, 80));
        filters.add(new FilterItem("filter/food/berry.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_fruit), R.drawable.filter_food_fruit, 60));
        filters.add(new FilterItem("filter/food/dessert.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_food_dessert), R.drawable.filter_food_dessert, 70));
        return filters;
    }

    private static ArrayList<FilterItem> getMasterFilterItem() {
        ArrayList<FilterItem> filters = new ArrayList();
        filters.add(new FilterItem(GalleryApp.sGetAndroidContext().getString(R.string.filter_original), R.drawable.filter_master_original));
        filters.add(new FilterItem("filter/master/memoire.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_master_memoire), R.drawable.filter_master_memoire, 100));
        filters.add(new FilterItem("filter/master/mellow.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_master_mellow), R.drawable.filter_master_mellow, 100));
        filters.add(new FilterItem("filter/master/somber.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_master_somber), R.drawable.filter_master_somber, 100));
        filters.add(new FilterItem("filter/master/rise.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_master_rise), R.drawable.filter_master_rise, 100));
        filters.add(new FilterItem("filter/master/hazy.png", GalleryApp.sGetAndroidContext().getString(R.string.filter_master_hazy), R.drawable.filter_master_hazy, 100));
        return filters;
    }
}
