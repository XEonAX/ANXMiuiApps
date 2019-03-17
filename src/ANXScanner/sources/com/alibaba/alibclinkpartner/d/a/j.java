package com.alibaba.alibclinkpartner.d.a;

import com.alibaba.alibclinkpartner.f.b;
import com.alibaba.alibclinkpartner.f.c;
import com.alibaba.alibclinkpartner.j.e;
import java.util.List;

class j implements Runnable {
    final /* synthetic */ i a;
    private h b;
    private String c;

    public j(i iVar, String str, h hVar) {
        this.a = iVar;
        this.b = hVar;
        this.c = str;
    }

    private void a(b bVar) {
        String b = com.alibaba.alibclinkpartner.b.e.b("Etag", null);
        if (b != null) {
            e.b("ALPConfigServiceImpl", "setIfNoneMatch", "本地有eTag,设置eTag = " + b);
            bVar.b.put("If-None-Match", b);
            return;
        }
        e.b("ALPConfigServiceImpl", "setIfNoneMatch", "本地没有eTag");
    }

    private void a(c cVar) {
        if (cVar == null || cVar.c == null || cVar.c.get("Etag") == null) {
            e.a("PollConfigTask", "getAndSaveEtag", "response/header is null");
            return;
        }
        List list = (List) cVar.c.get("Etag");
        if (list.size() > 0) {
            String str = (String) list.get(0);
            e.b("ALPConfigServiceImpl", "getAndSaveEtag", "保存eTag = " + str);
            com.alibaba.alibclinkpartner.b.e.a("Etag", str);
            return;
        }
        e.a("PollConfigTask", "getAndSaveEtag", "eTag is null");
    }

    public void run() {
        b bVar = new b();
        bVar.a = this.c;
        a(bVar);
        e.b("PollConfigTask", "run", "request = " + bVar);
        c a = com.alibaba.alibclinkpartner.b.c.a(bVar);
        e.b("PollConfigTask", "run", "response = " + a);
        if (a != null && a.a == 200 && a.b != null) {
            a(a);
            String str = a.b;
            if (this.b != null) {
                this.b.a(str);
            } else {
                e.a("PollConfigTask", "run", "callback is null");
            }
        } else if (a != null) {
            this.b.a(a.a);
            e.a("PollConfigTask", "run", "config http request fail,response code =" + a.a);
        } else {
            this.b.a(-1);
            e.a("PollConfigTask", "run", "config http response is null");
        }
    }
}
