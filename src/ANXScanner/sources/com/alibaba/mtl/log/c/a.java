package com.alibaba.mtl.log.c;

import java.util.List;

/* compiled from: ILogStore */
public interface a {
    int a(List<com.alibaba.mtl.log.model.a> list);

    List<com.alibaba.mtl.log.model.a> a(String str, int i);

    /* renamed from: a */
    boolean m15a(List<com.alibaba.mtl.log.model.a> list);

    void c(String str, String str2);

    void clear();

    int count();

    void e(int i);
}
