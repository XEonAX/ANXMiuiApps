package com.alibaba.alibclinkpartner.d.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.constants.a;
import com.alibaba.alibclinkpartner.j.e;

public class d {
    private c a;
    private g b;
    private final String c = "alibc_linkpartner_config.json";
    private volatile long d = (System.currentTimeMillis() + 30000);

    public d() {
        e.b("ALPConfigManager", "ALPConfigManager", "初始化配置服务,当前的过期时间为expiredTime = " + this.d);
        this.b = new i();
        if (TextUtils.isEmpty(c()) || !b.b(c())) {
            b("alibc_config");
            b("Etag");
            this.a = c.a("{\n  \"androidAppLinkConfig\": {\n    \"exp\" : \"600\",\n    \"degradeType\" : \"0\",\n    \"canDeeplink\": \"0\",\n    \"appScheme\":{\n      \"tmall\":{\n        \"uri\":\"tmall://page.tm/appLink\",\n        \"action\":[\"com.tmall.wireless.intent.action.APPLINK\"],\n        \"category\":[],\n        \"packageName\":\"com.tmall.wireless\"\n      },\n      \"taobao\":{\n        \"uri\":\"tbopen://m.taobao.com/tbopen/index.html\",\n        \"action\":[\"com.taobao.open.intent.action.GETWAY\"],\n        \"category\":[],\n        \"packageName\":\"com.taobao.taobao\"\n      }\n    },\n    \"h5Scheme\":{\n      \"detail\":\"https://h5.m.taobao.com/awp/core/detail.htm\",\n      \"shop\":\"https://shop.m.taobao.com/shop/shopIndex.htm\",\n      \"activity\":\"https://huodong.m.taobao.com/go/2085.html\"\n    },\n    \"dynamicParam\":{\n      \"k1\":\"v1\"\n    },\n    \"downloadUrl\":{\n      \"taobao\":\"https://h5.m.taobao.com/hd/downLoadAnroidSimple.html\",\n      \"tmall\":\"https://pages.tmall.com/wow/portal/act/app-download\"\n    }\n  }\n}");
            e.b("ALPConfigManager", "ALPConfigManager", "SP没有配置,降级读取本地配置,memConfigInfo = " + this.a);
        } else {
            this.a = c.a(c());
            e.b("ALPConfigManager", "ALPConfigManager", "本地SP存有配置,读取本地SP配置,memConfigInfo = " + this.a);
        }
        e.b("ALPConfigManager", "ALPConfigManager", "开始拉取服务端配置");
        this.b.a(d(), new f(this, null));
    }

    private void a(long j) {
        if (j < 1) {
            j = 30000;
        }
        this.d = System.currentTimeMillis() + (1000 * j);
        e.b("ALPConfigManager", "updateExpiredTime", "更新过期时间,最新的过期时间为" + this.d);
    }

    private void a(String str) {
        if (str != null) {
            b.e.a("alibc_config", str);
        }
    }

    private void b() {
        if (this.d - System.currentTimeMillis() < 1000) {
            e.b("ALPConfigManager", "updateConfig", "配置马上要过期,触发拉去配置,expiredTime = " + this.d + "\n currentTime = " + System.currentTimeMillis());
            this.d = System.currentTimeMillis() + 30000;
            this.b.a(d(), new f(this, null));
        }
    }

    private void b(String str) {
        b.e.a(str);
    }

    private String c() {
        return b.e.b("alibc_config", "");
    }

    private String d() {
        return b.h() == 2 ? "http://100.69.205.47/1/linkout.htm?appKey=12345" : b.h() == 3 ? "http://100.69.205.47/1/linkout.htm?appKey=12345" : a.a;
    }

    public synchronized c a() {
        c cVar;
        b();
        try {
            cVar = (c) this.a.clone();
        } catch (CloneNotSupportedException e) {
            e.a("ALPConfigManager", "getMemConfigInfo", "clonenotsupport e = " + e.toString());
            cVar = this.a;
        }
        return cVar;
    }
}
