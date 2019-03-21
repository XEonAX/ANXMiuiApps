package com.xiaomi.push.service.xmpush;

import android.text.TextUtils;
import com.xiaomi.push.service.clientReport.PushClientReportHelper;

public enum Command {
    COMMAND_REGISTER("register"),
    COMMAND_UNREGISTER("unregister"),
    COMMAND_SET_ALIAS("set-alias"),
    COMMAND_UNSET_ALIAS("unset-alias"),
    COMMAND_SET_ACCOUNT("set-account"),
    COMMAND_UNSET_ACCOUNT("unset-account"),
    COMMAND_SUBSCRIBE_TOPIC("subscribe-topic"),
    COMMAND_UNSUBSCRIBE_TOPIC("unsubscibe-topic"),
    COMMAND_SET_ACCEPT_TIME("accept-time"),
    COMMAND_CHK_VDEVID("check-vdeviceid");
    
    public final String value;

    private Command(String value) {
        this.value = value;
    }

    public static int getCode(String value) {
        int result = -1;
        if (TextUtils.isEmpty(value)) {
            return -1;
        }
        for (Command type : values()) {
            if (type.value.equals(value)) {
                result = PushClientReportHelper.changeOrdinalToCode(type);
            }
        }
        return result;
    }
}
