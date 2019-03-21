package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;

public class OperatePushHelper {
    private static volatile OperatePushHelper sInstance = null;
    private Context appContext;
    private List<MessageBean> operateMessages = new ArrayList();

    private OperatePushHelper(Context context) {
        this.appContext = context.getApplicationContext();
        if (this.appContext == null) {
            this.appContext = context;
        }
    }

    public static OperatePushHelper getInstance(Context context) {
        if (sInstance == null) {
            synchronized (OperatePushHelper.class) {
                if (sInstance == null) {
                    sInstance = new OperatePushHelper(context);
                }
            }
        }
        return sInstance;
    }

    public void resetOperateMessage(String messageId) {
        synchronized (this.operateMessages) {
            MessageBean messageBean = new MessageBean();
            messageBean.count = 0;
            messageBean.messageId = messageId;
            if (this.operateMessages.contains(messageBean)) {
                this.operateMessages.remove(messageBean);
            }
            this.operateMessages.add(messageBean);
        }
    }

    public void increaseRetryCount(String messageId) {
        synchronized (this.operateMessages) {
            MessageBean messageBean = new MessageBean();
            messageBean.messageId = messageId;
            if (this.operateMessages.contains(messageBean)) {
                for (MessageBean mb : this.operateMessages) {
                    if (messageBean.equals(mb)) {
                        messageBean = mb;
                        break;
                    }
                }
            }
            messageBean.count++;
            this.operateMessages.remove(messageBean);
            this.operateMessages.add(messageBean);
        }
    }

    public int getRetryCount(String messageId) {
        int i;
        synchronized (this.operateMessages) {
            MessageBean messageBean = new MessageBean();
            messageBean.messageId = messageId;
            if (this.operateMessages.contains(messageBean)) {
                for (MessageBean mb : this.operateMessages) {
                    if (mb.equals(messageBean)) {
                        i = mb.count;
                        break;
                    }
                }
            }
            i = 0;
        }
        return i;
    }

    public void removeOperateMessage(String messageId) {
        synchronized (this.operateMessages) {
            MessageBean messageBean = new MessageBean();
            messageBean.messageId = messageId;
            if (this.operateMessages.contains(messageBean)) {
                this.operateMessages.remove(messageBean);
            }
        }
    }

    public boolean isMessageOperating(String messageId) {
        boolean z;
        synchronized (this.operateMessages) {
            MessageBean messageBean = new MessageBean();
            messageBean.messageId = messageId;
            if (this.operateMessages.contains(messageBean)) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public synchronized String getSyncStatus(RetryType type) {
        return this.appContext.getSharedPreferences("mipush_extra", 0).getString(type.name(), "");
    }

    public synchronized void putSyncStatus(RetryType type, String status) {
        SharedPreferences sp = this.appContext.getSharedPreferences("mipush_extra", 0);
        sp.edit().putString(type.name(), status).commit();
    }
}
