package com.miui.gallery.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.support.v4.content.LocalBroadcastManager;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.preference.GalleryPreferences.Face;
import com.miui.gallery.preference.GalleryPreferences.Search;
import com.miui.gallery.preference.GalleryPreferences.SettingsSync;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.core.source.server.OpenSearchRequest;
import com.miui.gallery.search.statistics.SearchStatUtils;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.miui.os.Rom;

public class AIAlbumStatusHelper {
    public static boolean useNewAIAlbumSwitch() {
        return !Rom.IS_INTERNATIONAL || isCloudControlSearchAIAlbumOpen();
    }

    public static void setAIAlbumLocalStatus(Context context, boolean enabled) {
        boolean changed = false;
        if (internalSetLocalSearchStatus(enabled)) {
            changed = true;
            notifySearchStatusChanged(enabled);
        }
        if (internalSetFaceAlbumStatus(enabled)) {
            changed = true;
            notifyFaceAlbumStatusChange(context, enabled);
        }
        if (changed) {
            notifyAIAlbumStatusChanged(context, enabled);
        }
    }

    public static boolean isAIAlbumEnabled() {
        return isFaceAlbumEnabled() || isLocalSearchOpen(true);
    }

    public static void registerAIAlbumStatusReceiver(Context context, BroadcastReceiver receiver) {
        LocalBroadcastManager.getInstance(context).registerReceiver(receiver, new IntentFilter("com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"));
    }

    public static void unregisterAIAlbumStatusReceiver(Context context, BroadcastReceiver receiver) {
        LocalBroadcastManager.getInstance(context).unregisterReceiver(receiver);
    }

    public static boolean isFaceSwitchSet() {
        return Face.isFaceSwitchSet();
    }

    public static boolean isFaceAlbumEnabled() {
        return Face.getFaceSwitchEnabled();
    }

    public static void setFaceAlbumStatus(Context context, boolean enable) {
        if (internalSetFaceAlbumStatus(enable)) {
            notifyFaceAlbumStatusChange(context, enable);
            notifyAIAlbumStatusChanged(context, enable);
        }
    }

    public static int getOpenApiSearchStatus() {
        if (!isLocalSearchOpen(true)) {
            return 0;
        }
        if (isCloudControlSearchAIAlbumOpen()) {
            return 1;
        }
        if (isLocalSearchOpen(false)) {
            return 2;
        }
        return 0;
    }

    public static boolean isCloudControlSearchBarOpen() {
        return CloudControlStrategyHelper.getSearchStrategy().isSearchBarEnabled();
    }

    public static boolean isCloudControlSearchAIAlbumOpen() {
        return CloudControlStrategyHelper.getSearchStrategy().isAIAlbumEnabled();
    }

    public static boolean isLocalSearchOpen(boolean defaultValue) {
        return Search.isUserSearchSwitchOpen(defaultValue);
    }

    public static boolean isLocalSearchSet() {
        return Search.isUserSearchSwitchSet();
    }

    public static void setLocalSearchStatus(Context context, boolean status) {
        if (internalSetLocalSearchStatus(status)) {
            notifySearchStatusChanged(status);
            notifyAIAlbumStatusChanged(context, status);
        }
    }

    public static void requestOpenCloudControlSearch(String from) {
        if (isLocalSearchOpen(true)) {
            long lastRequestTime = Search.getUserLastRequestOpenTime();
            long currentTime = System.currentTimeMillis();
            if (currentTime - lastRequestTime > 600000) {
                ThreadManager.getMiscPool().submit(new Job<Void>() {
                    public Void run(JobContext jc) {
                        Search.setIsUserSearchSwitchOpen(true);
                        OpenSearchRequest.request();
                        return null;
                    }
                });
                Search.setUserLastRequestOpenTime(currentTime);
            } else {
                Log.w("AIAlbumStatusHelper", "Ignore open search request, too frequent.");
            }
            SearchStatUtils.reportEvent(from, "auto_request_open_search");
            return;
        }
        Log.w("AIAlbumStatusHelper", "Local search switch is off, no need to request open cloud search.");
    }

    public static void doPostCloudControlJob() {
        if (!CloudControlStrategyHelper.getSearchStrategy().isAIAlbumEnabled() && CloudControlManager.getInstance().queryFeatureStatus("search-auto-open-search") == Status.ENABLE) {
            SearchStatUtils.reportEvent("from_cloud_control", "auto_request_open_search", "result", SearchConstants.isErrorStatus(OpenSearchRequest.request()) ? "failed" : "succeeded", "device", Build.DEVICE);
        }
    }

    private static boolean internalSetFaceAlbumStatus(boolean enable) {
        if (isFaceSwitchSet() && isFaceAlbumEnabled() == enable) {
            return false;
        }
        Face.setFaceSwitchStatus(enable);
        SettingsSync.markDirty(true);
        return true;
    }

    private static void notifyFaceAlbumStatusChange(Context context, boolean newStatus) {
        context.getContentResolver().notifyChange(Album.URI, null, false);
        context.getContentResolver().notifyChange(PeopleFace.PERSONS_URI, null, false);
    }

    private static boolean internalSetLocalSearchStatus(boolean status) {
        if (isLocalSearchSet() && status == isLocalSearchOpen(true)) {
            return false;
        }
        Search.setIsUserSearchSwitchOpen(status);
        SettingsSync.markDirty(true);
        return true;
    }

    private static void notifySearchStatusChanged(boolean newStatus) {
    }

    private static void notifyAIAlbumStatusChanged(Context context, boolean newStatus) {
        LocalBroadcastManager.getInstance(context).sendBroadcast(new Intent("com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"));
    }
}
