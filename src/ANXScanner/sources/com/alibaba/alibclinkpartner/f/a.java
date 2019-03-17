package com.alibaba.alibclinkpartner.f;

import com.alibaba.alibclinkpartner.j.e;

public class a {
    private e a = new f();

    public c a(b bVar) {
        if (bVar.a()) {
            d a;
            switch (bVar.c) {
                case 0:
                    a = this.a.a(bVar.a, bVar.b);
                    break;
                case 1:
                    a = this.a.a(bVar.a, bVar.b, bVar.d);
                    break;
                default:
                    a = null;
                    break;
            }
            if (a == null) {
                return null;
            }
            c cVar = new c();
            cVar.a = a.a;
            cVar.b = a.b;
            cVar.c = a.c;
            return cVar;
        }
        e.a("ALPHttpManager", "sendRequest", "request param error");
        return null;
    }
}
