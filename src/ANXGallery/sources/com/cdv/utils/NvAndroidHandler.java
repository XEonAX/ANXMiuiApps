package com.cdv.utils;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

public class NvAndroidHandler implements Callback {
    private Handler m_handler = null;
    private int m_id = 0;

    private static native void notifyHandlerMessage(int i, int i2, int i3, int i4);

    private NvAndroidHandler(int i, Looper looper) {
        if (looper == null) {
            try {
                this.m_handler = new Handler(this);
            } catch (Exception e) {
                Log.e("NvAndroidHandler", "" + e.getMessage());
            }
        } else {
            this.m_handler = new Handler(looper, this);
        }
        this.m_id = i;
    }

    public boolean sendMessage(int i, int i2, int i3) {
        if (this.m_handler == null) {
            return false;
        }
        Message obtain = Message.obtain();
        if (obtain == null) {
            return false;
        }
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        return this.m_handler.sendMessage(obtain);
    }

    public boolean handleMessage(Message message) {
        notifyHandlerMessage(this.m_id, message.what, message.arg1, message.arg2);
        return true;
    }
}
