package com.xiaomi.push.service;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public class MiPushMessageDuplicate {
    private static Object lock = new Object();
    private static Map<String, Queue<String>> mCachedMsgIds = new HashMap();

    public static boolean isDuplicateMessage(XMPushService pushService, String packageName, String key) {
        boolean z = false;
        synchronized (lock) {
            SharedPreferences sp = pushService.getSharedPreferences("push_message_ids", 0);
            Collection packageCachedMsgIds = (Queue) mCachedMsgIds.get(packageName);
            if (packageCachedMsgIds == null) {
                String[] ids = sp.getString(packageName, "").split(",");
                packageCachedMsgIds = new LinkedList();
                for (String id : ids) {
                    packageCachedMsgIds.add(id);
                }
                mCachedMsgIds.put(packageName, packageCachedMsgIds);
            }
            if (packageCachedMsgIds.contains(key)) {
                z = true;
            } else {
                packageCachedMsgIds.add(key);
                if (packageCachedMsgIds.size() > 25) {
                    packageCachedMsgIds.poll();
                }
                String newMsgIds = XMStringUtils.join(packageCachedMsgIds, ",");
                Editor ed = sp.edit();
                ed.putString(packageName, newMsgIds);
                ed.commit();
            }
        }
        return z;
    }
}
