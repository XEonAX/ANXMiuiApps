package com.miui.gallery.cloud;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Utils;
import com.miui.gallery.util.deprecated.Preference;
import java.util.HashMap;

public class SpaceFullHandler {
    private static OwnerSpaceFullListener sOwnerSpaceFullListener;
    private static SharerSpaceFullListener sSharerSpaceFullListener;
    static HashMap<String, Boolean> sSpaceFullMap = new HashMap();

    public interface SpaceFullListener {
        void handleSpaceFullError(RequestCloudItem requestCloudItem);

        void handleSpaceNotFull(RequestCloudItem requestCloudItem);

        boolean isSpaceFull(RequestCloudItem requestCloudItem);
    }

    static class OwnerSpaceFullListener implements SpaceFullListener {
        OwnerSpaceFullListener() {
        }

        public void handleSpaceFullError(RequestCloudItem requestCloudItem) {
            SpaceFullHandler.setOwnerSpaceFull();
        }

        public void handleSpaceNotFull(RequestCloudItem requestCloudItem) {
            SpaceFullHandler.removeOwnerSpaceFull();
        }

        public boolean isSpaceFull(RequestCloudItem requestCloudItem) {
            return SpaceFullHandler.isOwnerSpaceFull();
        }
    }

    static class SharerSpaceFullListener implements SpaceFullListener {
        SharerSpaceFullListener() {
        }

        public void handleSpaceFullError(RequestCloudItem requestCloudItem) {
            SpaceFullHandler.setSharerSpaceFull(requestCloudItem.dbCloud.getAlbumId());
        }

        public void handleSpaceNotFull(RequestCloudItem requestCloudItem) {
            SpaceFullHandler.removeSharerSpaceFull(requestCloudItem.dbCloud.getAlbumId());
        }

        public boolean isSpaceFull(RequestCloudItem requestCloudItem) {
            return SpaceFullHandler.isSharerSpaceFull(requestCloudItem.dbCloud.getAlbumId());
        }
    }

    public static OwnerSpaceFullListener getOwnerSpaceFullListener() {
        if (sOwnerSpaceFullListener == null) {
            sOwnerSpaceFullListener = new OwnerSpaceFullListener();
        }
        return sOwnerSpaceFullListener;
    }

    public static SharerSpaceFullListener getSharerSpaceFullListener() {
        if (sSharerSpaceFullListener == null) {
            sSharerSpaceFullListener = new SharerSpaceFullListener();
        }
        return sSharerSpaceFullListener;
    }

    public static synchronized boolean isOwnerSpaceFull() {
        boolean sGetCloudGallerySpaceFull;
        synchronized (SpaceFullHandler.class) {
            sGetCloudGallerySpaceFull = Preference.sGetCloudGallerySpaceFull();
        }
        return sGetCloudGallerySpaceFull;
    }

    public static synchronized void setOwnerSpaceFull() {
        synchronized (SpaceFullHandler.class) {
            Log.d("SpaceFullHandler", new Throwable().getStackTrace()[1].getClassName() + " set owner space full.");
            Preference.sSetCloudGallerySpaceFull(true);
            setMiCloudStatusInfoReceiverEnabledSetting(true);
        }
    }

    public static synchronized void removeOwnerSpaceFull() {
        synchronized (SpaceFullHandler.class) {
            Preference.sSetCloudGallerySpaceFull(false);
            setMiCloudStatusInfoReceiverEnabledSetting(false);
        }
    }

    private static void setMiCloudStatusInfoReceiverEnabledSetting(boolean enabled) {
        PackageManager pm = GalleryApp.sGetAndroidContext().getPackageManager();
        ComponentName componentName = new ComponentName(GalleryApp.sGetAndroidContext(), MiCloudStatusInfoReceiver.class);
        int targetStatus = enabled ? 1 : 2;
        if (targetStatus != pm.getComponentEnabledSetting(componentName)) {
            pm.setComponentEnabledSetting(componentName, targetStatus, 1);
        }
    }

    public static synchronized boolean isSharerSpaceFull(String albumId) {
        boolean booleanValue;
        synchronized (SpaceFullHandler.class) {
            Boolean isSpaceFull = (Boolean) sSpaceFullMap.get(albumId);
            if (isSpaceFull != null) {
                booleanValue = isSpaceFull.booleanValue();
            } else {
                booleanValue = false;
            }
        }
        return booleanValue;
    }

    public static synchronized void setSharerSpaceFull(String albumId) {
        synchronized (SpaceFullHandler.class) {
            Log.d("SpaceFullHandler", "%s, set shareAlbum: %s space full.", new Throwable().getStackTrace()[1].getClassName(), Utils.desensitizeShareAlbumId(albumId));
            sSpaceFullMap.put(albumId, Boolean.valueOf(true));
        }
    }

    public static synchronized void removeSharerSpaceFull(String albumId) {
        synchronized (SpaceFullHandler.class) {
            Log.d("SpaceFullHandler", "%s, remove shareAlbum: %s space full.", new Throwable().getStackTrace()[1].getClassName(), Utils.desensitizeShareAlbumId(albumId));
            sSpaceFullMap.put(albumId, Boolean.valueOf(false));
        }
    }
}
