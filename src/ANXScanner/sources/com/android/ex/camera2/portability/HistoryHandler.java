package com.android.ex.camera2.portability;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
import java.util.LinkedList;

class HistoryHandler extends Handler {
    private static final int MAX_HISTORY_SIZE = 400;
    final LinkedList<Integer> mMsgHistory = new LinkedList();

    HistoryHandler(Looper looper) {
        super(looper);
        this.mMsgHistory.offerLast(Integer.valueOf(-1));
    }

    Integer getCurrentMessage() {
        return (Integer) this.mMsgHistory.peekLast();
    }

    String generateHistoryString(int cameraId) {
        String info = new String("HIST") + "_ID" + cameraId;
        Iterator it = this.mMsgHistory.iterator();
        while (it.hasNext()) {
            info = info + '_' + ((Integer) it.next()).toString();
        }
        return info + "_HEND";
    }

    public void handleMessage(Message msg) {
        this.mMsgHistory.offerLast(Integer.valueOf(msg.what));
        while (this.mMsgHistory.size() > 400) {
            this.mMsgHistory.pollFirst();
        }
    }
}
