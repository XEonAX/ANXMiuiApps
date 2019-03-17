package com.ali.auth.third.core.registry.a;

import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.registry.ServiceRegistration;
import com.ali.auth.third.core.registry.a;
import com.ali.auth.third.core.trace.SDKLogger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

public class b implements a {
    private a a;

    public b(a aVar) {
        this.a = aVar;
    }

    public ServiceRegistration a(Class<?>[] clsArr, Object obj, Map<String, String> map) {
        return this.a.a(clsArr, obj, map);
    }

    public Object a(ServiceRegistration serviceRegistration) {
        return this.a.a(serviceRegistration);
    }

    public <T> T a(final Class<T> cls, final Map<String, String> map) {
        T a = this.a.a(cls, map);
        if (a == null && map != null) {
            String str = (String) map.get(Constants.ISV_SCOPE_FLAG);
            if (cls.isInterface()) {
                return cls.cast(Proxy.newProxyInstance(getClass().getClassLoader(), new Class[]{cls}, new InvocationHandler() {
                    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                        Object a = b.this.a.a(cls, map);
                        if (a != null) {
                            return method.invoke(a, objArr);
                        }
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = cls.getName();
                        objArr2[1] = map != null ? map.toString() : "";
                        SDKLogger.e("kernel", Message.create(17, objArr2).toString());
                        return null;
                    }
                }));
            }
        }
        return a;
    }

    public <T> T[] b(Class<T> cls, Map<String, String> map) {
        return this.a.b(cls, map);
    }
}
