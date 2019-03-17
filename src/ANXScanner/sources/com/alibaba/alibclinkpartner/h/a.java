package com.alibaba.alibclinkpartner.h;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.ALPTBLinkPartnerSDK;
import com.alibaba.alibclinkpartner.c.b;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.d.e.a.g;
import com.alibaba.alibclinkpartner.d.e.a.o;
import com.alibaba.alibclinkpartner.d.e.c;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.j;

public class a extends d {
    public a(b bVar) {
        super(bVar);
    }

    private b a(String str, int i, int i2, boolean z, boolean z2, b bVar) {
        int i3 = 3;
        e.b("ALPDegradeHandler", "getNativeStrategyInfo", "native打开: 当前配置的打开方式为 = " + i + "\n linkKey = " + str + "\n jumpFailMode = " + i2 + "\n isCallback = " + z2);
        switch (i) {
            case 0:
                bVar.b = z2 ? 3 : 1;
                bVar.a = str;
                break;
            case 1:
                bVar.b = 0;
                break;
            case 2:
                bVar.b = 5;
                break;
            default:
                bVar.b = z2 ? 3 : 1;
                bVar.a = str;
                break;
        }
        if ((bVar.b == 1 || bVar.b == 3) && !j.a(com.alibaba.alibclinkpartner.b.e(), str)) {
            e.b("ALPDegradeHandler", "getNativeStrategyInfo", "不支持当前客户端,linkKey = " + str);
            a(this.a.g);
            if (z && ALPTBLinkPartnerSDK.isSupportJumpFailedOpenTaobao && !str.equals("taobao")) {
                e.b("ALPDegradeHandler", "getNativeStrategyInfo", "尝试降级到手淘打开");
                b("taobao");
                if (this.a != null) {
                    this.a.p = true;
                    this.a.q = true;
                }
                if (j.a(com.alibaba.alibclinkpartner.b.e(), "taobao")) {
                    e.b("ALPDegradeHandler", "getNativeStrategyInfo", "当前手机支持手淘打开");
                    if (!z2) {
                        i3 = 1;
                    }
                    bVar.b = i3;
                    bVar.a = "taobao";
                    this.a.g = "taobao";
                } else {
                    e.b("ALPDegradeHandler", "getNativeStrategyInfo", "当前手机不支持手淘打开");
                    a("taobao");
                }
            }
            a(i2, bVar);
        }
        return bVar;
    }

    private void a(int i, b bVar) {
        e.b("ALPDegradeHandler", "failModeSelect", "进入到打开失败降级 jumpFailMode = " + i);
        String str = "";
        switch (i) {
            case 3:
                bVar.b = 2;
                str = "downloadPage";
                break;
            case 4:
                bVar.b = 0;
                str = "h5";
                break;
            case 5:
                bVar.b = -1;
                str = "none";
                break;
            case 6:
                bVar.b = 4;
                str = "broswer";
                break;
            default:
                bVar.b = 0;
                str = "h5";
                break;
        }
        if (this.a != null && !this.a.q) {
            b(str);
            this.a.q = true;
        }
    }

    private void a(String str) {
        if (str != null) {
            c.a(new o(str));
        }
    }

    private void b(String str) {
        d gVar = new g();
        gVar.e = this.a.e;
        gVar.a = com.alibaba.alibclinkpartner.b.a().b;
        gVar.b = this.a.g;
        gVar.c = false;
        gVar.d = str;
        c.a(gVar);
    }

    public b a(String str, int i, int i2, boolean z, boolean z2) {
        b bVar = new b();
        String trim = (str == null || TextUtils.isEmpty(str.trim())) ? "taobao" : str.trim();
        bVar.a = trim;
        e.b("ALPDegradeHandler", "getStrategyHandlerInfo", "用户设置的openType = " + com.alibaba.alibclinkpartner.b.g());
        switch (com.alibaba.alibclinkpartner.b.g()) {
            case 0:
                bVar.b = 0;
                return bVar;
            case 2:
                bVar.b = 4;
                return bVar;
            default:
                return a(trim, i, i2, z, z2, bVar);
        }
    }
}
