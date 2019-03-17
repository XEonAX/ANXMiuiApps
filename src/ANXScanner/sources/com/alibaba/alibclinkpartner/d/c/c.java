package com.alibaba.alibclinkpartner.d.c;

import com.alibaba.alibclinkpartner.j.e;
import java.util.HashMap;
import java.util.Map;

public class c implements b {
    private Map<String, Object> a = new HashMap();

    public void a(String str) {
        if (str == null) {
            e.a("ALPStoragePoolServiceImpl", "removeData", "key is null");
        }
        this.a.remove(str);
    }

    public void a(String str, Object obj) {
        if (str == null || obj == null) {
            e.a("ALPStoragePoolServiceImpl", "putData", "key/val is null");
        } else {
            this.a.put(str, obj);
        }
    }

    public Object b(String str, Object obj) {
        if (str != null) {
            return this.a.get(str) != null ? this.a.get(str) : obj;
        } else {
            e.a("ALPStoragePoolServiceImpl", "getData", "key is null");
            return obj;
        }
    }
}
