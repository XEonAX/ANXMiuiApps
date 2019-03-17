package com.alibaba.alibclinkpartner.d.a;

import com.alibaba.alibclinkpartner.d.e.c;
import com.alibaba.alibclinkpartner.j.e;

class f implements h {
    final /* synthetic */ d a;

    private f(d dVar) {
        this.a = dVar;
    }

    public void a(int i) {
        if (i == 304) {
            synchronized (d.class) {
                this.a.a((long) this.a.a.a);
                c.a(new com.alibaba.alibclinkpartner.d.e.a.f(true, true, true, this.a.a.a));
            }
            return;
        }
        c.a(new com.alibaba.alibclinkpartner.d.e.a.f(false, false, false, 0));
        e.a("ConfigPullCallbackImpl", "onSuccess", "config http error,errCode is " + i);
    }

    public void a(String str) {
        if (str == null || !b.b(str)) {
            e.b("ConfigPullCallbackImpl", "onSuccess", "配置校验失败");
            c.a(new com.alibaba.alibclinkpartner.d.e.a.f(false, false, false, 0));
            e.a("ConfigPullCallbackImpl", "onSuccess", "check config fail");
            return;
        }
        e.b("ConfigPullCallbackImpl", "onSuccess", "配置校验成功");
        c a = c.a(str);
        if (a != null) {
            synchronized (d.class) {
                this.a.a = a;
                e.b("ConfigPullCallbackImpl", "onSuccess", "配置更新,当前的配置为\n" + this.a.a);
                this.a.a((long) this.a.a.a);
                this.a.a(str);
                c.a(new com.alibaba.alibclinkpartner.d.e.a.f(true, true, true, this.a.a.a));
            }
            return;
        }
        e.b("ConfigPullCallbackImpl", "onSuccess", "配置校验成功,但是内容解析出错");
        c.a(new com.alibaba.alibclinkpartner.d.e.a.f(false, false, false, 0));
        e.a("ConfigPullCallbackImpl", "onSuccess", "format config fail");
    }
}
