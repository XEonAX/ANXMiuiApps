package android.arch.lifecycle;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import com.ali.auth.third.login.LoginConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

@RestrictTo({Scope.LIBRARY_GROUP})
class Lifecycling {
    private static Map<Class, Constructor<? extends GenericLifecycleObserver>> sCallbackCache = new HashMap();
    private static Constructor<? extends GenericLifecycleObserver> sREFLECTIVE;

    Lifecycling() {
    }

    static {
        try {
            sREFLECTIVE = ReflectiveGenericLifecycleObserver.class.getDeclaredConstructor(new Class[]{Object.class});
        } catch (NoSuchMethodException e) {
        }
    }

    @NonNull
    static GenericLifecycleObserver getCallback(Object object) {
        if (object instanceof GenericLifecycleObserver) {
            return (GenericLifecycleObserver) object;
        }
        try {
            Class<?> klass = object.getClass();
            Constructor<? extends GenericLifecycleObserver> cachedConstructor = (Constructor) sCallbackCache.get(klass);
            if (cachedConstructor != null) {
                return (GenericLifecycleObserver) cachedConstructor.newInstance(new Object[]{object});
            }
            cachedConstructor = getGeneratedAdapterConstructor(klass);
            if (cachedConstructor == null) {
                cachedConstructor = sREFLECTIVE;
            } else if (!cachedConstructor.isAccessible()) {
                cachedConstructor.setAccessible(true);
            }
            sCallbackCache.put(klass, cachedConstructor);
            return (GenericLifecycleObserver) cachedConstructor.newInstance(new Object[]{object});
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Nullable
    private static Constructor<? extends GenericLifecycleObserver> getGeneratedAdapterConstructor(Class<?> klass) {
        Package aPackage = klass.getPackage();
        String fullPackage = aPackage != null ? aPackage.getName() : "";
        String name = klass.getCanonicalName();
        if (name == null) {
            return null;
        }
        if (!fullPackage.isEmpty()) {
            name = name.substring(fullPackage.length() + 1);
        }
        String adapterName = getAdapterName(name);
        try {
            if (!fullPackage.isEmpty()) {
                adapterName = fullPackage + SymbolExpUtil.SYMBOL_DOT + adapterName;
            }
            return Class.forName(adapterName).getDeclaredConstructor(new Class[]{klass});
        } catch (ClassNotFoundException e) {
            Class<?> superclass = klass.getSuperclass();
            if (superclass != null) {
                return getGeneratedAdapterConstructor(superclass);
            }
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    static String getAdapterName(String className) {
        return className.replace(SymbolExpUtil.SYMBOL_DOT, LoginConstants.UNDER_LINE) + "_LifecycleAdapter";
    }
}
