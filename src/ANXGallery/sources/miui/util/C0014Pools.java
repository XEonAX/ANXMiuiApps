package miui.util;

import java.util.HashMap;
import miui.util.Pools.C0000Manager;
import miui.util.Pools.C00051;
import miui.util.Pools.C0007Pool;
import miui.util.Pools.C0010InstanceHolder;
import miui.util.Pools.C0011SimplePool;
import miui.util.Pools.C0012SoftReferenceInstanceHolder;
import miui.util.Pools.C0013SoftReferencePool;

/* renamed from: miui.util.Pools */
public final class C0014Pools {
    private static final HashMap<Class<?>, C0010InstanceHolder<?>> JF = new HashMap();
    private static final HashMap<Class<?>, C0012SoftReferenceInstanceHolder<?>> JG = new HashMap();
    private static final C0007Pool<StringBuilder> JH = C0014Pools.createSoftReferencePool(new C00051(), 4);

    public static C0007Pool<StringBuilder> getStringBuilderPool() {
        return JH;
    }

    static <T> C0010InstanceHolder<T> b(Class<T> cls, int i) {
        C0010InstanceHolder<T> c0010InstanceHolder;
        synchronized (JF) {
            c0010InstanceHolder = (C0010InstanceHolder) JF.get(cls);
            if (c0010InstanceHolder == null) {
                c0010InstanceHolder = new C0010InstanceHolder(cls, i);
                JF.put(cls, c0010InstanceHolder);
            } else {
                c0010InstanceHolder.resize(i);
            }
        }
        return c0010InstanceHolder;
    }

    static <T> void a(C0010InstanceHolder<T> c0010InstanceHolder, int i) {
        synchronized (JF) {
            c0010InstanceHolder.resize(-i);
        }
    }

    static <T> C0012SoftReferenceInstanceHolder<T> c(Class<T> cls, int i) {
        C0012SoftReferenceInstanceHolder<T> c0012SoftReferenceInstanceHolder;
        synchronized (JG) {
            c0012SoftReferenceInstanceHolder = (C0012SoftReferenceInstanceHolder) JG.get(cls);
            if (c0012SoftReferenceInstanceHolder == null) {
                c0012SoftReferenceInstanceHolder = new C0012SoftReferenceInstanceHolder(cls, i);
                JG.put(cls, c0012SoftReferenceInstanceHolder);
            } else {
                c0012SoftReferenceInstanceHolder.resize(i);
            }
        }
        return c0012SoftReferenceInstanceHolder;
    }

    static <T> void a(C0012SoftReferenceInstanceHolder<T> c0012SoftReferenceInstanceHolder, int i) {
        synchronized (JG) {
            c0012SoftReferenceInstanceHolder.resize(-i);
        }
    }

    public static <T> C0011SimplePool<T> createSimplePool(C0000Manager<T> c0000Manager, int i) {
        return new C0011SimplePool(c0000Manager, i);
    }

    public static <T> C0013SoftReferencePool<T> createSoftReferencePool(C0000Manager<T> c0000Manager, int i) {
        return new C0013SoftReferencePool(c0000Manager, i);
    }
}
