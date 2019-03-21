package com.miui.gallery.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Bundle;
import com.miui.gallery.collage.CollageActivity;
import com.miui.gallery.movie.ui.activity.MovieActivity;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.ui.JumpDialogFragment;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import java.util.Map;

public class ActionURIHandler {
    protected static final UriMatcher sURIMatcher = new UriMatcher(-1);

    static {
        sURIMatcher.addURI("gallery.i.mi.com", "people", 1);
        sURIMatcher.addURI("gallery.i.mi.com", "album", 2);
        sURIMatcher.addURI("gallery.i.mi.com", "trash_bin", 3);
        sURIMatcher.addURI("gallery.i.mi.com", "secret_album", 4);
        sURIMatcher.addURI("gallery.i.mi.com", "peoples", 5);
        sURIMatcher.addURI("gallery.i.mi.com", "result", 6);
        sURIMatcher.addURI("gallery.i.mi.com", "search", 7);
        sURIMatcher.addURI("gallery.i.mi.com", "cloud_guide", 8);
        sURIMatcher.addURI("gallery.i.mi.com", "sync_switch", 9);
        sURIMatcher.addURI("gallery.i.mi.com", "photo_movie", 10);
        sURIMatcher.addURI("gallery.i.mi.com", "collage", 11);
        sURIMatcher.addURI("gallery.i.mi.com", "card_action", 12);
    }

    public static void handleUri(Activity activity, Uri uri) {
        handleUri(activity, uri, null);
    }

    public static void handleUri(Activity activity, Uri uri, Bundle extras) {
        if (activity != null && !activity.isDestroyed() && uri != null) {
            int matchResult = sURIMatcher.match(uri);
            String queryText = uri.getQueryParameter("query");
            Map<String, String> searchEventParam = SearchStatUtils.buildSearchEventParams(extras);
            switch (matchResult) {
                case 1:
                    String serverId = uri.getQueryParameter("serverId");
                    JumpDialogFragment.showPeoplePage(activity, serverId);
                    if (searchEventParam != null) {
                        searchEventParam.put("serverIds", serverId);
                        searchEventParam.put("queryText", queryText);
                        SearchStatUtils.reportEvent(null, "client_jump_to_people_page", searchEventParam);
                        return;
                    }
                    return;
                case 2:
                    JumpDialogFragment.showAlbumPage(activity, uri);
                    if (searchEventParam != null) {
                        queryText = uri.getQueryParameter("screenshotAppName");
                        searchEventParam.put("Uri", uri.toString());
                        searchEventParam.put("queryText", queryText);
                        SearchStatUtils.reportEvent(null, "client_jump_to_album_page", searchEventParam);
                        return;
                    }
                    return;
                case 3:
                    IntentUtil.gotoTrashBin(activity, "Search");
                    if (searchEventParam != null) {
                        SearchStatUtils.reportEvent(null, "client_jump_to_trash_bin", searchEventParam);
                        return;
                    }
                    return;
                case 4:
                    JumpDialogFragment.enterPrivateAlbum(activity);
                    if (searchEventParam != null) {
                        SearchStatUtils.reportEvent(null, "client_jump_to_secret_album", searchEventParam);
                        return;
                    }
                    return;
                case 5:
                    if (uri.getBooleanQueryParameter("markMode", false)) {
                        startActivityForResult(activity, uri, extras, 41);
                        if (searchEventParam != null) {
                            searchEventParam.put("url", uri.toString());
                            SearchStatUtils.reportEvent(null, "suggestion_open_mark_page", searchEventParam);
                            return;
                        }
                        return;
                    }
                    openDirectly(activity, uri, extras);
                    if (searchEventParam != null) {
                        searchEventParam.put("url", uri.toString());
                        SearchStatUtils.reportEvent(null, "client_jump_to_people_list_page", searchEventParam);
                        return;
                    }
                    return;
                case 6:
                    openDirectly(activity, uri, extras);
                    return;
                case 7:
                    openDirectly(activity, uri, extras);
                    return;
                case 8:
                    IntentUtil.guideToLoginXiaomiAccount((Context) activity, CloudGuideSource.URL);
                    return;
                case 9:
                    IntentUtil.gotoTurnOnSyncSwitch(activity);
                    return;
                case 10:
                    MovieActivity.startPicker(activity);
                    return;
                case 11:
                    CollageActivity.startPicker(activity);
                    return;
                case 12:
                    String type = uri.getQueryParameter("actionType");
                    if ("album".equals(type)) {
                        if (extras != null) {
                            IntentUtil.gotoStoryAlbum(activity, extras.getLong("card_id"));
                            return;
                        } else {
                            Log.e("ActionURIHandler", "go to strory album ,invalid extra");
                            return;
                        }
                    } else if ("operation".equals(type)) {
                        IntentUtil.gotoOperationCard(activity, extras.getString("card_url"));
                        return;
                    } else {
                        Log.w("ActionURIHandler", "type %s can not delivery", type);
                        return;
                    }
                default:
                    openDirectly(activity, uri, extras);
                    return;
            }
        }
    }

    private static void startActivityForResult(Activity activity, Uri uri, Bundle extras, int requestCode) {
        try {
            activity.startActivityForResult(buildIntent(activity, uri, extras), requestCode);
        } catch (Exception e) {
            Log.e("ActionURIHandler", "openDirectly %s occur error.\n", uri, e);
        }
    }

    private static void openDirectly(Activity activity, Uri uri, Bundle extras) {
        boolean startActivityForResult = false;
        int requestCode = 0;
        if (extras != null) {
            try {
                startActivityForResult = extras.getBoolean("start_activity_for_result", false);
                extras.remove("start_activity_for_result");
                requestCode = extras.getInt("request_code");
                extras.remove("request_code");
            } catch (Exception e) {
                Log.e("ActionURIHandler", "openDirectly %s occur error.\n", uri, e);
                return;
            }
        }
        Intent intent = buildIntent(activity, uri, extras);
        if (startActivityForResult) {
            activity.startActivityForResult(intent, requestCode);
        } else {
            activity.startActivity(intent);
        }
    }

    private static Intent buildIntent(Activity activity, Uri uri, Bundle extras) {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setPackage(activity.getApplicationContext().getPackageName());
        if (extras != null) {
            intent.putExtras(extras);
        }
        return intent;
    }
}
