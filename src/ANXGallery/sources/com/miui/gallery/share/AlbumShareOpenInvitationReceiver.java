package com.miui.gallery.share;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class AlbumShareOpenInvitationReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if ("com.miui.gallery.intent.action.OPEN_INVIATAION".equals(intent.getAction())) {
            abortBroadcast();
            Intent activityIntent = new Intent(context, AlbumShareInvitationPopupActivity.class);
            activityIntent.setFlags(268435456);
            activityIntent.putExtras(intent.getExtras() == null ? new Bundle() : intent.getExtras());
            try {
                context.startActivity(activityIntent);
            } catch (ActivityNotFoundException e) {
            }
        }
    }
}
