package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.push.service.PushClientsManager.ClientLoginInfo;
import java.util.Locale;

public class MIPushAccount {
    public final String account;
    public final String appId;
    public final String appToken;
    public final int envType;
    public final String packageName;
    public final String security;
    public final String token;

    public MIPushAccount(String account, String token, String security, String appId, String appToken, String packageName, int type) {
        this.account = account;
        this.token = token;
        this.security = security;
        this.appId = appId;
        this.appToken = appToken;
        this.packageName = packageName;
        this.envType = type;
    }

    private static boolean isMIUIPush(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }

    public ClientLoginInfo toClientLoginInfo(XMPushService pushService) {
        ClientLoginInfo clientLoginInfo = new ClientLoginInfo(pushService);
        toClientLoginInfo(clientLoginInfo, pushService, pushService.getClientEventDispatcher(), "c");
        return clientLoginInfo;
    }

    public ClientLoginInfo toClientLoginInfo(ClientLoginInfo clientLoginInfo, Context context, ClientEventDispatcher dispatcher, String abtest) {
        clientLoginInfo.pkgName = context.getPackageName();
        clientLoginInfo.userId = this.account;
        clientLoginInfo.security = this.security;
        clientLoginInfo.token = this.token;
        clientLoginInfo.chid = "5";
        clientLoginInfo.authMethod = "XMPUSH-PASS";
        clientLoginInfo.kick = false;
        String packageNames = "";
        if (isMIUIPush(context)) {
            packageNames = AppInfoUtils.getRunningAppPkgNames(context);
        }
        clientLoginInfo.clientExtra = String.format("%1$s:%2$s,%3$s:%4$s,%5$s:%6$s:%7$s:%8$s", new Object[]{"sdk_ver", Integer.valueOf(38), "cpvn", "3_6_11", "cpvc", Integer.valueOf(30611), "aapn", packageNames});
        String finalAppId = isMIUIPush(context) ? "1000271" : this.appId;
        clientLoginInfo.cloudExtra = String.format("%1$s:%2$s,%3$s:%4$s,%5$s:%6$s,sync:1", new Object[]{"appid", finalAppId, "locale", Locale.getDefault().toString(), "miid", MIIDManager.getInstance(context).getMIID()});
        if (isAbTestSupported(context)) {
            clientLoginInfo.cloudExtra += String.format(",%1$s:%2$s", new Object[]{"ab", abtest});
        }
        clientLoginInfo.mClientEventDispatcher = dispatcher;
        return clientLoginInfo;
    }

    public static boolean isAbTestSupported(Context context) {
        return "com.xiaomi.xmsf".equals(context.getPackageName()) && isMIUIAlphaVersion();
    }

    public static boolean isMIUIAlphaVersion() {
        try {
            return Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").getBoolean(null);
        } catch (Exception e) {
            return false;
        }
    }
}
