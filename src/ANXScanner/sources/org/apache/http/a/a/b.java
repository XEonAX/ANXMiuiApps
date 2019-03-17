package org.apache.http.a.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class b implements Iterable<g> {
    private final List<g> a = new LinkedList();
    private final Map<String, List<g>> b = new HashMap();

    public final g a(String str) {
        List list = (List) this.b.get(str.toLowerCase(Locale.US));
        return (list == null || list.isEmpty()) ? null : (g) list.get(0);
    }

    public final void a(g gVar) {
        String toLowerCase = gVar.a().toLowerCase(Locale.US);
        List list = (List) this.b.get(toLowerCase);
        if (list == null) {
            list = new LinkedList();
            this.b.put(toLowerCase, list);
        }
        list.add(gVar);
        this.a.add(gVar);
    }

    public final Iterator<g> iterator() {
        return Collections.unmodifiableList(this.a).iterator();
    }

    public final String toString() {
        return this.a.toString();
    }
}
