package com.xiaomi.slim;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.string.CloudCoder;
import com.xiaomi.push.protobuf.ChannelMessage.XMMsgBind;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import com.xiaomi.smack.Connection;
import com.xiaomi.smack.XMPPException;
import java.util.HashMap;
import java.util.Map;

class Binder {
    public static void bind(ClientLoginInfo info, String challenge, Connection connection) throws XMPPException {
        XMMsgBind msgBind = new XMMsgBind();
        if (!TextUtils.isEmpty(info.token)) {
            msgBind.setToken(info.token);
        }
        if (!TextUtils.isEmpty(info.clientExtra)) {
            msgBind.setClientAttrs(info.clientExtra);
        }
        if (!TextUtils.isEmpty(info.cloudExtra)) {
            msgBind.setCloudAttrs(info.cloudExtra);
        }
        msgBind.setKick(info.kick ? "1" : "0");
        if (TextUtils.isEmpty(info.authMethod)) {
            msgBind.setMethod("XIAOMI-SASL");
        } else {
            msgBind.setMethod(info.authMethod);
        }
        Blob blob = new Blob();
        blob.setFrom(info.userId);
        blob.setChannelId(Integer.parseInt(info.chid));
        blob.setPackageName(info.pkgName);
        blob.setCmd("BIND", null);
        blob.setPacketID(blob.getPacketID());
        MyLog.w("[Slim]: bind id=" + blob.getPacketID());
        Map<String, String> params = new HashMap();
        params.put("challenge", challenge);
        params.put("token", info.token);
        params.put("chid", info.chid);
        params.put("from", info.userId);
        params.put("id", blob.getPacketID());
        params.put("to", "xiaomi.com");
        if (info.kick) {
            params.put("kick", "1");
        } else {
            params.put("kick", "0");
        }
        if (TextUtils.isEmpty(info.clientExtra)) {
            params.put("client_attrs", "");
        } else {
            params.put("client_attrs", info.clientExtra);
        }
        if (TextUtils.isEmpty(info.cloudExtra)) {
            params.put("cloud_attrs", "");
        } else {
            params.put("cloud_attrs", info.cloudExtra);
        }
        String sig = null;
        if (info.authMethod.equals("XIAOMI-PASS") || info.authMethod.equals("XMPUSH-PASS")) {
            sig = CloudCoder.generateSignature(info.authMethod, null, params, info.security);
        } else if (info.authMethod.equals("XIAOMI-SASL")) {
        }
        msgBind.setSig(sig);
        blob.setPayload(msgBind.toByteArray(), null);
        connection.send(blob);
    }

    public static void unbind(String chid, String userName, Connection connection) throws XMPPException {
        Blob blob = new Blob();
        blob.setFrom(userName);
        blob.setChannelId(Integer.parseInt(chid));
        blob.setCmd("UBND", null);
        connection.send(blob);
    }
}
