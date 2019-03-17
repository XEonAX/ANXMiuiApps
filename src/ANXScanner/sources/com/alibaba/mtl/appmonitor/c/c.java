package com.alibaba.mtl.appmonitor.c;

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ReuseItemPool */
public class c<T extends b> {
    private static AtomicLong c = new AtomicLong(0);
    private static AtomicLong d = new AtomicLong(0);
    private ConcurrentLinkedQueue<T> a = new ConcurrentLinkedQueue();
    /* renamed from: a */
    private AtomicLong f55a = new AtomicLong(0);
    private Integer b = null;
    /* renamed from: b */
    private Set<Integer> f56b = new HashSet();
    /* renamed from: b */
    private AtomicLong f57b = new AtomicLong(0);
    private final int m = 20;

    public b a() {
        c.getAndIncrement();
        this.a.getAndIncrement();
        b bVar = (b) this.a.poll();
        if (bVar != null) {
            this.b.remove(Integer.valueOf(System.identityHashCode(bVar)));
            this.b.getAndIncrement();
            d.getAndIncrement();
        }
        return bVar;
    }

    public void a(b bVar) {
        bVar.clean();
        if (this.a.size() < 20) {
            synchronized (this.b) {
                int identityHashCode = System.identityHashCode(bVar);
                if (!this.b.contains(Integer.valueOf(identityHashCode))) {
                    this.b.add(Integer.valueOf(identityHashCode));
                    this.a.offer(bVar);
                }
            }
        }
    }
}
