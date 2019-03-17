package com.alibaba.alibclinkpartner.a;

import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b.c;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.param.a;
import com.alibaba.wireless.security.SecExceptionCode;

public class b extends a {
    private a a;
    private int b;
    private String c;
    private com.alibaba.alibclinkpartner.i.b d;

    public b(a aVar, int i, String str) {
        this.a = aVar;
        this.b = i;
        this.c = str;
        this.d = new com.alibaba.alibclinkpartner.i.a(aVar);
    }

    private d a(com.alibaba.alibclinkpartner.c.b bVar, a aVar, int i, String str) {
        d dVar = new d();
        Object a;
        com.alibaba.alibclinkpartner.e.b a2;
        switch (i) {
            case -1:
                dVar.a = -1;
                dVar.g = SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA;
                break;
            case 0:
                a = this.d.a();
                if (!TextUtils.isEmpty(a)) {
                    dVar.b = a;
                    dVar.a = 0;
                    break;
                }
                e.a("ALPJumpOpenAPI", "ALPJumpOpenAPI", "h5Url is null");
                dVar.a = -1;
                dVar.g = 307;
                break;
            case 1:
                a2 = this.d.a(str);
                dVar.b = a2.a;
                dVar.f = a2.b;
                dVar.e = a2.c;
                dVar.a = 1;
                if (aVar.canDegrade()) {
                    dVar.c = this.d.a();
                }
                if (TextUtils.isEmpty(dVar.b)) {
                    e.a("ALPJumpOpenAPI", "ALPJumpOpenAPI", "native Url is null");
                    dVar.a = -1;
                    dVar.g = 308;
                    break;
                }
                break;
            case 2:
                a = this.d.b(str);
                if (!TextUtils.isEmpty(a)) {
                    dVar.b = a;
                    dVar.f.add("android.intent.action.VIEW");
                    dVar.a = 1;
                    a2 = this.d.a(str);
                    dVar.d = new c();
                    dVar.d.a = TextUtils.isEmpty(a2.a) ? "" : a2.a;
                    com.alibaba.alibclinkpartner.d.a.a aVar2 = (com.alibaba.alibclinkpartner.d.a.a) com.alibaba.alibclinkpartner.b.b.a().d.get(str);
                    if (aVar2 != null) {
                        dVar.d.b = aVar2.d;
                        dVar.d.c = aVar2.a();
                        dVar.d.d = aVar2.c;
                    }
                    if (bVar != null) {
                        bVar.m = true;
                        break;
                    }
                }
                e.a("ALPJumpOpenAPI", "ALPJumpOpenAPI", "downloadurl is null");
                dVar.a = -1;
                dVar.g = SecExceptionCode.SEC_ERROR_STA_KEY_NOT_EXISTED;
                break;
                break;
            case 3:
                a2 = this.d.a(str);
                dVar.b = a2.a;
                dVar.f = a2.b;
                dVar.e = a2.c;
                dVar.a = 3;
                if (TextUtils.isEmpty(dVar.b)) {
                    e.a("ALPJumpOpenAPI", "ALPJumpOpenAPI", "native Url is null");
                    dVar.a = -1;
                    dVar.g = 308;
                    break;
                }
                break;
            case 4:
                dVar.b = this.d.a();
                dVar.f.add("android.intent.action.VIEW");
                dVar.a = 1;
                if (TextUtils.isEmpty(dVar.b)) {
                    e.a("ALPJumpOpenAPI", "ALPJumpOpenAPI", "H5 Url is null");
                    dVar.a = -1;
                    dVar.g = 307;
                    break;
                }
                break;
            case 5:
                dVar.b = (String) com.alibaba.alibclinkpartner.b.b.a().e.get("activity");
                dVar.f.add("android.intent.action.VIEW");
                dVar.a = 0;
                if (TextUtils.isEmpty(dVar.b)) {
                    e.a("ALPJumpOpenAPI", "ALPJumpOpenAPI", "H5 Url is null");
                    dVar.a = -1;
                    dVar.g = SecExceptionCode.SEC_ERROR_STA_NO_SUCH_INDEX;
                    break;
                }
                break;
        }
        return dVar;
    }

    public d a(com.alibaba.alibclinkpartner.c.b bVar) {
        return a(bVar, this.a, this.b, this.c);
    }
}
