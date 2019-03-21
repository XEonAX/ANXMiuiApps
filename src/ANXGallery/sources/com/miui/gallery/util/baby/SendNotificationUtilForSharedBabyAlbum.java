package com.miui.gallery.util.baby;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.preference.GalleryPreferences.Baby;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.NotificationHelper;
import java.util.ArrayList;

public class SendNotificationUtilForSharedBabyAlbum {
    protected final int SEND_NOTIFICATION_INTERVAL;
    protected ArrayList<SendNotificationRunnable> mNotificationRunnableList;

    class SendNotificationRunnable implements Runnable {
        private String mAlbumId;
        private long mAlbumLocalId;
        private boolean mIsOtherShared;
        private String mName;

        public void setPathAndName(String albumId, boolean isOtherShared, long albumLocalId, String name) {
            this.mAlbumId = albumId;
            this.mIsOtherShared = isOtherShared;
            this.mAlbumLocalId = albumLocalId;
            this.mName = name;
        }

        public void run() {
            CloudUtils.sendBabyAlbumNewPhotoNotification(GalleryApp.sGetAndroidContext(), GalleryApp.sGetAndroidContext().getString(R.string.baby_album_new_photo_remind), NotificationHelper.getBabyAlbumNotificationId(this.mIsOtherShared, (int) this.mAlbumLocalId), null, this.mIsOtherShared ? ShareAlbumManager.getUniformAlbumId(this.mAlbumLocalId) : this.mAlbumLocalId, this.mName, this.mIsOtherShared);
        }
    }

    private static class SingletonHolder {
        private static final SendNotificationUtilForSharedBabyAlbum mInstance = new SendNotificationUtilForSharedBabyAlbum();
    }

    public static final SendNotificationUtilForSharedBabyAlbum getInstance() {
        return SingletonHolder.mInstance;
    }

    private SendNotificationUtilForSharedBabyAlbum() {
        this.SEND_NOTIFICATION_INTERVAL = 600000;
        this.mNotificationRunnableList = new ArrayList();
    }

    public void sendNotification(String albumId, long albumLocalId, String albumName, boolean isOtherShared, long flag) {
        SendNotificationRunnable runnable = null;
        for (int i = 0; i < this.mNotificationRunnableList.size(); i++) {
            if (albumId.equalsIgnoreCase(((SendNotificationRunnable) this.mNotificationRunnableList.get(i)).mAlbumId)) {
                runnable = (SendNotificationRunnable) this.mNotificationRunnableList.get(i);
                break;
            }
        }
        if (runnable == null) {
            runnable = new SendNotificationRunnable();
            runnable.setPathAndName(albumId, isOtherShared, albumLocalId, albumName);
            this.mNotificationRunnableList.add(runnable);
        }
        if (Baby.getMinServerTagOfNewPhoto(getUniformAlbumLocalId(albumLocalId, isOtherShared)).longValue() == 0) {
            Baby.saveMinServerTagOfNewPhoto(getUniformAlbumLocalId(albumLocalId, isOtherShared), Long.valueOf(flag));
        }
        ThreadManager.getMainHandler().postDelayed(runnable, 600000);
    }

    private long getUniformAlbumLocalId(long albumLocalId, boolean isOtherShared) {
        return isOtherShared ? ShareAlbumManager.getUniformAlbumId(albumLocalId) : albumLocalId;
    }
}
