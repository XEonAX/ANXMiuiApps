package com.taobao.applink.d;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.taobao.applink.TBAppLinkSDK;
import com.taobao.applink.TBAppLinkSDK.JumpFailedMode;
import com.taobao.applink.a.b;
import com.taobao.applink.a.d;
import com.taobao.applink.a.e;
import com.taobao.applink.exception.TBAppLinkException;
import com.taobao.applink.h.c;
import com.taobao.applink.param.TBBaseParam;
import com.taobao.applink.util.TBAppLinkUtil;
import java.util.Map;

public class a {
    private static d a(TBBaseParam tBBaseParam) {
        return tBBaseParam == null ? null : tBBaseParam.mTBAPIType == com.taobao.applink.a.a.AUTH ? new b(tBBaseParam.mListener, tBBaseParam.linkKey) : tBBaseParam.mTBAPIType == com.taobao.applink.a.a.JUMP ? new e() : null;
    }

    private static void a(int i, Map map) {
        c.a(i, map);
    }

    private static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent();
        intent.setAction(TBAppLinkUtil.TMALL_ACTON);
        intent.setData(Uri.parse(TBAppLinkUtil.TMALL_BASE_SCHEME_URL));
        try {
            return packageManager.getPackageInfo(TBAppLinkUtil.TMALLPACKAGENAME, 0) != null && packageManager.queryIntentActivities(intent, 65536).size() > 0;
        } catch (Exception e) {
            Log.d(TBAppLinkUtil.TAG, e.toString());
            return false;
        }
    }

    private static boolean a(Context context, Intent intent, d dVar) {
        return b(context, intent, dVar);
    }

    private static boolean a(Context context, TBBaseParam tBBaseParam, d dVar, JumpFailedMode jumpFailedMode) throws TBAppLinkException {
        Intent intent = new Intent("android.intent.action.VIEW");
        switch (jumpFailedMode) {
            case DOWNLOAD_TAOBAO:
                intent.setData(Uri.parse(TBAppLinkUtil.DOWNLOAD_TAOBAO_URL));
                if (com.taobao.applink.g.a.a() != null) {
                    com.taobao.applink.g.a.a().b("0");
                }
                com.taobao.applink.c.b.a().a(TBAppLinkUtil.getNoneClientUrl(), null, "jumpfailedmode=download");
                break;
            case OPEN_H5:
                if (com.taobao.applink.g.a.a() != null) {
                    com.taobao.applink.g.a.a().b("1");
                }
                if (!com.taobao.applink.util.e.a(tBBaseParam.getH5URL())) {
                    intent.setData(Uri.parse(tBBaseParam.getH5URL()));
                    a(1, tBBaseParam.getParams());
                    com.taobao.applink.c.b.a().a(TBAppLinkUtil.getNoneClientUrl(), null, "jumpfailedmode=open_h5");
                    break;
                }
                return false;
            case NONE:
                if (com.taobao.applink.g.a.a() != null) {
                    com.taobao.applink.g.a.a().b("2");
                }
                com.taobao.applink.c.b.a().a(TBAppLinkUtil.getNoneClientUrl(), null, "jumpfailedmode=none");
                return false;
        }
        return b(context, intent, dVar);
    }

    public static boolean a(Context context, TBBaseParam tBBaseParam, com.taobao.applink.f.a.b bVar) throws TBAppLinkException {
        if (context == null || tBBaseParam == null) {
            return false;
        }
        d a = a(tBBaseParam);
        if (a == null) {
            return false;
        }
        a.b(context, bVar);
        Intent intent = new Intent("android.intent.action.VIEW");
        JumpFailedMode jumpFailedMode = TBAppLinkSDK.getInstance().mJumpFailedMode;
        if (!TextUtils.isEmpty(com.taobao.applink.c.b.a().b().c) && a(context) && TBAppLinkUtil.TMALL_SCHEME.equals(tBBaseParam.linkKey)) {
            intent.setData(Uri.parse(tBBaseParam.getJumpUrl(context).replace(TBAppLinkUtil.BASE_URL, TBAppLinkUtil.TMALL_BASE_SCHEME_URL)));
            intent.setAction(TBAppLinkUtil.TMALL_ACTON);
            intent.setFlags(805339136);
            com.taobao.applink.c.b.a().a(TBAppLinkUtil.getClientUrl(), null, tBBaseParam.getExtraAplus());
            return a(context, intent, a);
        }
        intent.setData(Uri.parse(tBBaseParam.getJumpUrl(context)));
        intent.setAction(TBAppLinkUtil.ACTION_CUSTOM);
        intent.setFlags(805339136);
        if (!TBAppLinkUtil.isSupportAppLinkSDK(context, tBBaseParam.linkKey)) {
            return a(context, tBBaseParam, a, jumpFailedMode);
        }
        a(2, tBBaseParam.getParams());
        com.taobao.applink.c.b.a().a(TBAppLinkUtil.getClientUrl(), null, tBBaseParam.getExtraAplus());
        return a(context, intent, a);
    }

    private static boolean b(Context context, Intent intent, d dVar) {
        if (context == null || intent == null || dVar == null) {
            return false;
        }
        try {
            if (context instanceof Application) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
            dVar.a();
            return true;
        } catch (Exception e) {
            dVar.a(e);
            return false;
        }
    }
}
