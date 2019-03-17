package com.alibaba.alibclinkpartner.g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.alibaba.alibclinkpartner.c.b;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.ui.ALPCallbackActivity;
import java.util.List;

public class a extends d {
    private String b;
    private List<String> c;
    private int d;
    private List<String> e;

    public a(b bVar, int i, String str, List<String> list, List<String> list2) {
        super(bVar);
        this.b = str;
        this.c = list;
        this.d = i;
        this.e = list2;
    }

    public int a(Context context) {
        e.b("ALPNavOpenClient", "execute", "现在的context = " + this.a);
        if (this.b == null) {
            return 304;
        }
        Intent intent = new Intent(com.alibaba.alibclinkpartner.b.e(), ALPCallbackActivity.class);
        com.alibaba.alibclinkpartner.e.a aVar = new com.alibaba.alibclinkpartner.e.a();
        aVar.a = this.b;
        aVar.b = this.c;
        aVar.c = this.d;
        aVar.d = this.e;
        aVar.e = this.a;
        com.alibaba.alibclinkpartner.b.d.a(intent.toString(), aVar);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
        return 204;
    }
}
