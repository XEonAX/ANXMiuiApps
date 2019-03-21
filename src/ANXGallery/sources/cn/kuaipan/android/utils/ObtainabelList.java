package cn.kuaipan.android.utils;

import java.util.Iterator;
import java.util.LinkedList;

public class ObtainabelList<E> extends LinkedList<E> implements IObtainable {
    private static ObtainabelList<?> mPool = null;
    private static int mPoolSize = 0;
    private static Object mPoolSync = new Object();
    private static final long serialVersionUID = 6483198895359712723L;
    private ObtainabelList<?> next;

    public static <E> ObtainabelList<E> obtain() {
        synchronized (mPoolSync) {
            if (mPool != null) {
                ObtainabelList m = mPool;
                mPool = m.next;
                m.next = null;
                mPoolSize--;
                m.clear();
                return m;
            }
            return new ObtainabelList();
        }
    }

    public void recycle() {
        synchronized (mPoolSync) {
            if (mPoolSize < 80) {
                mPoolSize++;
                this.next = mPool;
                mPool = this;
            }
            Iterator it = iterator();
            while (it.hasNext()) {
                E value = it.next();
                if (value instanceof IObtainable) {
                    ((IObtainable) value).recycle();
                }
            }
            clear();
        }
    }

    private ObtainabelList() {
    }
}
