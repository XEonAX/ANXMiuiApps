package com.alibaba.alibclinkpartner.g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.alibclinkpartner.b.a;
import com.alibaba.alibclinkpartner.c.b;
import com.alibaba.alibclinkpartner.d.e.a.d;
import com.alibaba.alibclinkpartner.d.e.a.g;
import com.alibaba.alibclinkpartner.d.e.a.i;
import com.alibaba.alibclinkpartner.d.e.a.l;
import com.alibaba.alibclinkpartner.d.e.a.m;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.j;
import com.alibaba.wireless.security.SecExceptionCode;
import java.util.List;

public class c extends d {
    private String b;
    private String c;
    private List<String> d;
    private List<String> e;

    public c(b bVar, String str, String str2, List<String> list, List<String> list2) {
        super(bVar);
        this.b = str;
        this.d = list;
        this.e = list2;
        this.c = str2;
    }

    private int a(Context context, String str) {
        return new b(this.a, str, null).a(context);
    }

    private void a(b bVar) {
        if (bVar != null && this.a.m) {
            com.alibaba.alibclinkpartner.b.c cVar = bVar.f;
            if (cVar == null) {
                e.a("ALPNavOpenClient", "startDeepLinkIfNecessary", "deeplinkUrl is null");
            } else {
                a.a(cVar.b, cVar.a, cVar.c, cVar.d);
            }
        }
    }

    private void a(String str, Context context) {
        d iVar;
        if (this.a != null && this.a.n) {
            iVar = new i();
            iVar.b = com.alibaba.alibclinkpartner.b.a().b;
            iVar.c = TextUtils.isEmpty(this.a.l) ? j.c(context) : this.a.l;
            iVar.a = str;
            com.alibaba.alibclinkpartner.d.e.c.a(iVar);
        }
        if (this.a != null && this.a.g != null) {
            d mVar;
            if (!(this.a.p || this.a.q)) {
                if (!this.a.k) {
                    iVar = new g();
                    iVar.d = "";
                    iVar.c = true;
                    iVar.a = com.alibaba.alibclinkpartner.b.a().b;
                    iVar.e = this.a.e == null ? "" : this.a.e;
                    iVar.b = this.a.g == null ? "" : this.a.g;
                    com.alibaba.alibclinkpartner.d.e.c.a(iVar);
                } else if (com.alibaba.alibclinkpartner.b.g() == 1) {
                    iVar = new g();
                    iVar.d = "";
                    iVar.c = true;
                    iVar.a = com.alibaba.alibclinkpartner.b.a().b;
                    iVar.e = this.a.e == null ? "" : this.a.e;
                    iVar.b = this.a.g == null ? "" : this.a.g;
                    com.alibaba.alibclinkpartner.d.e.c.a(iVar);
                }
            }
            if (this.a.g != null && this.a.g.equals("taobao") && this.a.n) {
                mVar = new m();
                mVar.a = str;
                com.alibaba.alibclinkpartner.d.e.c.a(mVar);
            }
            if (this.a.d != null && this.a.n) {
                mVar = new l();
                mVar.b = this.a.g;
                mVar.a = this.a.d;
                com.alibaba.alibclinkpartner.d.e.c.a(mVar);
            }
        }
    }

    public int a(Context context) {
        e.b("ALPNavOpenClient", "execute", "现在的context = " + this.a);
        Intent intent = new Intent();
        intent.setData(Uri.parse(this.b));
        if (this.d != null && this.d.size() > 0) {
            for (String str : this.d) {
                if (str != null) {
                    intent.setAction(str);
                }
            }
        }
        if (this.e != null && this.e.size() > 0) {
            for (String str2 : this.e) {
                if (str2 != null) {
                    intent.addCategory(str2);
                }
            }
        }
        intent.setFlags(805339136);
        try {
            context.startActivity(intent);
            a(this.b, context);
            a(this.a);
            return SecExceptionCode.SEC_ERROR_STA_STORE_INCORRECT_DATA_FILE_DATA;
        } catch (Throwable th) {
            if (TextUtils.isEmpty(this.c)) {
                e.a("ALPNavOpenClient", "execute", "跳转失败,错误信息为:\n" + th.toString());
                return 305;
            }
            e.a("ALPNavOpenClient", "execute", "degrade to h5 open");
            return a(context, this.c);
        }
    }
}
