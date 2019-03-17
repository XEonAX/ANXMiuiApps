package com.alibaba.baichuan.trade.common.messagebus;

import android.os.Message;
import com.alibaba.baichuan.trade.common.messagebus.AlibcMessageQueue.MessageCallback;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class AlibcMessageBusManager {
    private static AlibcMessageBusManager c;
    private Map<Integer, List<AlibcMessageListner>> a = new HashMap();
    private AlibcMessageQueue b = new AlibcMessageQueue(new a());

    class a extends MessageCallback {
        a() {
        }

        void a(Message message) {
            int i = message.what;
            Object obj = message.obj;
            synchronized (AlibcMessageBusManager.class) {
                List<AlibcMessageListner> list = (List) AlibcMessageBusManager.this.a.get(Integer.valueOf(i));
                if (list != null && list.size() > 0) {
                    for (AlibcMessageListner alibcMessageListner : list) {
                        if (alibcMessageListner.isRunOnUIThread) {
                            ExecutorServiceUtils.getInstance().postUITask(new a(this, alibcMessageListner, i, obj));
                        } else {
                            alibcMessageListner.onMessageEvent(i, obj);
                        }
                    }
                }
            }
        }
    }

    private AlibcMessageBusManager() {
    }

    public static synchronized AlibcMessageBusManager getInstance() {
        AlibcMessageBusManager alibcMessageBusManager;
        synchronized (AlibcMessageBusManager.class) {
            if (c == null) {
                c = new AlibcMessageBusManager();
            }
            alibcMessageBusManager = c;
        }
        return alibcMessageBusManager;
    }

    public synchronized void registerListener(AlibcMessageListner alibcMessageListner) {
        if (alibcMessageListner != null) {
            if (this.a.get(Integer.valueOf(alibcMessageListner.eventId)) == null) {
                this.a.put(Integer.valueOf(alibcMessageListner.eventId), new LinkedList());
            }
            ((List) this.a.get(Integer.valueOf(alibcMessageListner.eventId))).add(alibcMessageListner);
        }
    }

    public synchronized void removeListner(AlibcMessageListner alibcMessageListner) {
        if (alibcMessageListner != null) {
            List list = (List) this.a.get(Integer.valueOf(alibcMessageListner.eventId));
            if (!(list == null || list.size() == 0)) {
                list.remove(alibcMessageListner);
            }
        }
    }

    public void sendMessage(int i, Object obj) {
        Message message = new Message();
        message.what = i;
        message.obj = obj;
        this.b.sendMessage(message);
    }
}
