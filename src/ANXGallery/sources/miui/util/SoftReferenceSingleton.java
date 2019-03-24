package miui.util;

import java.lang.ref.SoftReference;

public abstract class SoftReferenceSingleton<T> {
    private SoftReference<T> JX = null;

    protected abstract T createInstance();

    /* JADX WARNING: Missing block: B:5:0x000b, code:
            if (r0 == null) goto L_0x000d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final T get() {
        T t;
        synchronized (this) {
            if (this.JX != null) {
                t = this.JX.get();
            }
            t = createInstance();
            this.JX = new SoftReference(t);
        }
        return t;
    }
}
