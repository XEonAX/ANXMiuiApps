package org.apache.http.a.a;

import mtopsdk.network.util.Constants.Protocol;
import org.apache.http.a.a.a.c;

public class a {
    private final String a;
    private final b b;
    private final c c;

    public a(String str, c cVar) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        } else if (cVar == null) {
            throw new IllegalArgumentException("Body may not be null");
        } else {
            this.a = str;
            this.c = cVar;
            this.b = new b();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("form-data; name=\"");
            stringBuilder.append(this.a);
            stringBuilder.append("\"");
            if (cVar.b() != null) {
                stringBuilder.append("; filename=\"");
                stringBuilder.append(cVar.b());
                stringBuilder.append("\"");
            }
            a("Content-Disposition", stringBuilder.toString());
            stringBuilder = new StringBuilder();
            stringBuilder.append(cVar.a());
            if (cVar.c() != null) {
                stringBuilder.append("; charset=");
                stringBuilder.append(cVar.c());
            }
            a(Protocol.CONTENT_TYPE, stringBuilder.toString());
            a("Content-Transfer-Encoding", cVar.d());
        }
    }

    private void a(String str, String str2) {
        this.b.a(new g(str, str2));
    }

    public final c a() {
        return this.c;
    }

    public final b b() {
        return this.b;
    }
}
