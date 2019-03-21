package com.miui.gallery.push;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.agreement.AgreementsUtils;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.pendingtask.base.PendingTask;
import com.miui.gallery.push.messagehandler.MessageHandler;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ParcelableUtil;

public class PendingPullTask extends PendingTask<GalleryPushMessage> {
    public PendingPullTask(int type) {
        super(type);
    }

    public GalleryPushMessage parseData(byte[] data) throws Exception {
        return (GalleryPushMessage) ParcelableUtil.unmarshall(data, GalleryPushMessage.CREATOR);
    }

    public byte[] wrapData(GalleryPushMessage data) throws Exception {
        return ParcelableUtil.marshall(data);
    }

    public int getNetworkType() {
        return 1;
    }

    public boolean requireCharging() {
        return true;
    }

    public boolean requireDeviceIdle() {
        return true;
    }

    public boolean process(GalleryPushMessage data) throws Exception {
        if (!AgreementsUtils.isNetworkingAgreementAccepted()) {
            Log.w("PendingPullTask", "CTA not confirmed, retry later");
            return true;
        } else if (NetworkUtils.isNetworkConnected()) {
            Object module = data.getBusinessModule();
            MessageHandler handler = MessageHandlerFactory.create(module);
            if (handler != null) {
                handler.handlePull(GalleryApp.sGetAndroidContext(), data);
            } else {
                Log.e("PendingPullTask", "MessageHandler is undefined: %s", module);
            }
            return false;
        } else {
            Log.w("PendingPullTask", "Network is disconnected, retry later");
            return true;
        }
    }
}
