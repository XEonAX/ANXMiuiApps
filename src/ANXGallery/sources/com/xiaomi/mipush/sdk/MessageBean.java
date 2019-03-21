package com.xiaomi.mipush.sdk;

import android.text.TextUtils;

/* compiled from: OperatePushHelper */
class MessageBean {
    int count = 0;
    String messageId = "";

    public boolean equals(Object o) {
        if (o != null && (o instanceof MessageBean)) {
            MessageBean messageBean = (MessageBean) o;
            if (!TextUtils.isEmpty(messageBean.messageId) && messageBean.messageId.equals(this.messageId)) {
                return true;
            }
        }
        return false;
    }
}
