package com.alibaba.baichuan.trade.common.messagebus;

public abstract class AlibcMessageListner {
    public int eventId;
    public boolean isRunOnUIThread;

    protected AlibcMessageListner(int i, boolean z) {
        this.isRunOnUIThread = z;
        this.eventId = i;
    }

    public abstract void onMessageEvent(int i, Object obj);
}
