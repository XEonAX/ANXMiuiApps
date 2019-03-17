package com.alibaba.alibclinkpartner.d.a;

import java.util.ArrayList;
import java.util.List;

public class a {
    public String a;
    public List<String> b = new ArrayList();
    public List<String> c = new ArrayList();
    public String d;

    public String a() {
        return (this.b == null || this.b.size() <= 0) ? "" : (String) this.b.get(0);
    }
}
