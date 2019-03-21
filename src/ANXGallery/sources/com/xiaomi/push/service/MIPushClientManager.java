package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class MIPushClientManager {
    private static ArrayList<Pair<String, byte[]>> pendingMessages = new ArrayList();
    private static final Map<String, byte[]> pendingRegisterationRequests = new HashMap();

    public static void registerApp(String packageName, byte[] payload) {
        synchronized (pendingRegisterationRequests) {
            pendingRegisterationRequests.put(packageName, payload);
        }
    }

    public static void processPendingRegistrationRequest(XMPushService pushService) {
        try {
            synchronized (pendingRegisterationRequests) {
                for (String packageName : pendingRegisterationRequests.keySet()) {
                    MIPushHelper.sendPacket(pushService, packageName, (byte[]) pendingRegisterationRequests.get(packageName));
                }
                pendingRegisterationRequests.clear();
            }
        } catch (Throwable e) {
            MyLog.e(e);
            pushService.disconnect(10, e);
        }
    }

    public static void notifyRegisterError(Context context, int errorCode, String msg) {
        synchronized (pendingRegisterationRequests) {
            for (String packageName : pendingRegisterationRequests.keySet()) {
                notifyError(context, packageName, (byte[]) pendingRegisterationRequests.get(packageName), errorCode, msg);
            }
            pendingRegisterationRequests.clear();
        }
    }

    public static void processPendingMessages(XMPushService pushService) {
        try {
            ArrayList<Pair<String, byte[]>> messages;
            synchronized (pendingMessages) {
                messages = pendingMessages;
                pendingMessages = new ArrayList();
            }
            Iterator it = messages.iterator();
            while (it.hasNext()) {
                Pair<String, byte[]> m = (Pair) it.next();
                MIPushHelper.sendPacket(pushService, (String) m.first, (byte[]) m.second);
            }
        } catch (Throwable e) {
            MyLog.e(e);
            pushService.disconnect(10, e);
        }
    }

    public static void addPendingMessages(String packageName, byte[] message) {
        synchronized (pendingMessages) {
            pendingMessages.add(new Pair(packageName, message));
            if (pendingMessages.size() > 50) {
                pendingMessages.remove(0);
            }
        }
    }

    public static void notifyError(Context context, String packageName, byte[] payload, int errorCode, String msg) {
        Intent intent = new Intent("com.xiaomi.mipush.ERROR");
        intent.setPackage(packageName);
        intent.putExtra("mipush_payload", payload);
        intent.putExtra("mipush_error_code", errorCode);
        intent.putExtra("mipush_error_msg", msg);
        context.sendBroadcast(intent, MIPushHelper.getReceiverPermission(packageName));
    }
}
