package com.miui.gallery.push.messagehandler;

import android.content.Context;
import com.miui.gallery.push.GalleryPushMessage;

public abstract class MessageHandler {
    public abstract void handleDirect(Context context, GalleryPushMessage galleryPushMessage);

    public abstract void handlePull(Context context, GalleryPushMessage galleryPushMessage);

    public void onDeleteAccount() {
    }

    public void onAddAccount() {
    }
}
