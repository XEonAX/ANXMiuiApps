package com.miui.gallery.projection;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.miui.gallery.util.Log;

public class RemoteControlReceiver extends BroadcastReceiver {
    private RemoteControlListener mListener;

    public interface RemoteControlListener {
        void onRemoteControl(boolean z);
    }

    public void setListener(RemoteControlListener listener) {
        this.mListener = listener;
    }

    public void onReceive(Context context, Intent intent) {
        Log.d("RemoteControlReceiver", "onReceive broadcast");
        if ("miui.intent.action.REMOTE_CONTROL".equals(intent.getAction())) {
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                return;
            }
            if (25 == keyEvent.getKeyCode()) {
                if (this.mListener != null) {
                    this.mListener.onRemoteControl(false);
                }
            } else if (24 == keyEvent.getKeyCode() && this.mListener != null) {
                this.mListener.onRemoteControl(true);
            }
        }
    }
}
