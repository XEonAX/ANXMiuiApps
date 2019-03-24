package com.miui.gallery.movie.utils;

import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import java.util.HashMap;

public class MovieStatUtils {
    public static void statEnter(int size, boolean isStory) {
        HashMap<String, String> params = new HashMap();
        params.put("size", String.valueOf(size));
        params.put("from", isStory ? "story" : "movieAssetsNormal");
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_enter", params);
    }

    public static void statDownload(MovieResource resource) {
        HashMap<String, String> params = new HashMap();
        params.put("type", resource.getStatTypeString());
        params.put("name", resource.getStatNameString());
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_download", params);
    }

    public static void statDownloadResult(MovieResource resource, boolean success) {
        HashMap<String, String> params = new HashMap();
        params.put("type", resource.getStatTypeString());
        params.put("name", resource.getStatNameString());
        params.put("success", success ? "0" : "-1");
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_download_result", params);
    }

    public static void statItemChoose(MovieResource resource) {
        HashMap<String, String> params = new HashMap();
        params.put("type", resource.getStatTypeString());
        params.put("name", resource.getStatNameString());
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_item_choose", params);
    }

    public static void statSaveClick(boolean isPreviewPager, MovieInfo movieInfo) {
        HashMap<String, String> params = new HashMap();
        params.put("pager", isPreviewPager ? "preview" : "editor");
        params.put("template", movieInfo.template);
        params.put("audio", movieInfo.audio);
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_save_click", params);
    }

    public static void statSaveResult(String success) {
        HashMap<String, String> params = new HashMap();
        params.put("success", success);
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_save_result", params);
    }

    public static void statShareClick(MovieInfo movieInfo) {
        HashMap<String, String> params = new HashMap();
        params.put("template", movieInfo.template);
        params.put("audio", movieInfo.audio);
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_share_click", params);
    }

    public static void statDurationClick(MovieInfo movieInfo, boolean isPreviewPager, boolean isShortVideo) {
        HashMap<String, String> params = new HashMap();
        params.put("size", String.valueOf(movieInfo.imageList.size()));
        params.put("pager", isPreviewPager ? "preview" : "editor");
        params.put("duration", isShortVideo ? "short" : "long");
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_duration_click", params);
    }

    public static void statEditorMove(int size) {
        HashMap<String, String> params = new HashMap();
        params.put("size", String.valueOf(size));
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_editor_move", params);
    }

    public static void statPreviewEnterEditPage(boolean isShortVideo) {
        HashMap<String, String> params = new HashMap();
        params.put("duration", isShortVideo ? "short" : "long");
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_editor_preview_edit_click", params);
    }

    public static void statPreviewPlayBtn(boolean isShortVideo) {
        HashMap<String, String> params = new HashMap();
        params.put("duration", isShortVideo ? "short" : "long");
        BaseSamplingStatHelper.recordCountEvent("movie", "movie_editor_preview_play_click", params);
    }
}
