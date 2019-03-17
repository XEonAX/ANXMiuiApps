package com.alibaba.baichuan.trade.common.messagebus;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public class AlibcMessageQueue {
    private Handler a;
    private HandlerThread b = new HandlerThread("AlibcMessageQueue");

    public static class MessageCallback {
        void a(Message message) {
        }
    }

    class a implements Callback {
        private MessageCallback b;

        a(MessageCallback messageCallback) {
            this.b = messageCallback;
        }

        public boolean handleMessage(Message message) {
            this.b.a(message);
            return true;
        }
    }

    public AlibcMessageQueue(MessageCallback messageCallback) {
        this.b.start();
        Looper looper = this.b.getLooper();
        if (messageCallback == null) {
            messageCallback = new MessageCallback();
        }
        this.a = new Handler(looper, new a(messageCallback));
    }

    public void sendMessage(Message message) {
        if (message != null) {
            this.a.sendMessage(message);
        }
    }
}
