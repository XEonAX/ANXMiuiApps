package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.string.XMStringUtils;

public class PacketHelper {
    private static String prefix = "";
    private static long sCurMsgId = 0;

    public static String generatePacketID() {
        if (TextUtils.isEmpty(prefix)) {
            prefix = XMStringUtils.generateRandomString(4);
        }
        StringBuilder append = new StringBuilder().append(prefix);
        long j = sCurMsgId;
        sCurMsgId = 1 + j;
        return append.append(j).toString();
    }
}
