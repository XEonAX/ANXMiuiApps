package com.uploader.export;

import android.content.Context;
import android.support.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ConcurrentHashMap;

public class UploaderGlobal {
    public static final int DEFAULT_INSTANCE_TYPE = 0;
    private static volatile Context context;
    private static final ConcurrentHashMap<Integer, EnvironmentElement> dailyElementMap = new ConcurrentHashMap();
    private static final ConcurrentHashMap<Integer, IUploaderDependency> dependencyMap = new ConcurrentHashMap();
    private static final ConcurrentHashMap<Integer, EnvironmentElement> onlineRelatedMap = new ConcurrentHashMap();
    private static final ConcurrentHashMap<Integer, EnvironmentElement> preparedElementMap = new ConcurrentHashMap();

    @Retention(RetentionPolicy.SOURCE)
    public @interface Definition {
    }

    static {
        onlineRelatedMap.put(Integer.valueOf(0), new EnvironmentElement(0, "21646297", "arup.m.taobao.com", "106.11.53.94"));
        preparedElementMap.put(Integer.valueOf(0), new EnvironmentElement(1, "21646297", "pre-arup.m.taobao.com", "140.205.173.180"));
        dailyElementMap.put(Integer.valueOf(0), new EnvironmentElement(2, "4272", "daily.arup.m.alibaba.net", "100.69.167.214"));
    }

    public static IUploaderDependency getDependency(Integer instanceType) {
        return (IUploaderDependency) dependencyMap.get(instanceType);
    }

    public static IUploaderDependency putDependency(@NonNull IUploaderDependency dependency) {
        return (IUploaderDependency) dependencyMap.put(Integer.valueOf(dependency.getEnvironment().getInstanceType()), dependency);
    }

    public static EnvironmentElement putElement(int e, String appKey) {
        return putElement(e, 0, appKey);
    }

    public static EnvironmentElement putElement(int e, int instanceType, String appKey) {
        ConcurrentHashMap<Integer, EnvironmentElement> map;
        EnvironmentElement environmentElement;
        switch (e) {
            case 1:
                map = preparedElementMap;
                break;
            case 2:
                map = dailyElementMap;
                break;
            default:
                map = onlineRelatedMap;
                break;
        }
        synchronized (map) {
            EnvironmentElement element = (EnvironmentElement) map.get(Integer.valueOf(instanceType));
            environmentElement = (EnvironmentElement) map.put(Integer.valueOf(instanceType), new EnvironmentElement(e, appKey, element.host, element.ipAddress, element.authCode));
        }
        return environmentElement;
    }

    public static EnvironmentElement putElement(int e, int instanceType, String appKey, String authCode) {
        ConcurrentHashMap<Integer, EnvironmentElement> map;
        EnvironmentElement environmentElement;
        switch (e) {
            case 1:
                map = preparedElementMap;
                break;
            case 2:
                map = dailyElementMap;
                break;
            default:
                map = onlineRelatedMap;
                break;
        }
        synchronized (map) {
            EnvironmentElement detail = (EnvironmentElement) map.get(Integer.valueOf(instanceType));
            environmentElement = (EnvironmentElement) map.put(Integer.valueOf(instanceType), new EnvironmentElement(e, appKey, detail.host, detail.ipAddress, authCode));
        }
        return environmentElement;
    }

    public static EnvironmentElement getElement(int e, int instanceType) {
        switch (e) {
            case 1:
                return (EnvironmentElement) preparedElementMap.get(Integer.valueOf(instanceType));
            case 2:
                return (EnvironmentElement) dailyElementMap.get(Integer.valueOf(instanceType));
            default:
                return (EnvironmentElement) onlineRelatedMap.get(Integer.valueOf(instanceType));
        }
    }

    public static EnvironmentElement getElement(int e) {
        return getElement(e, 0);
    }

    public static EnvironmentElement putElement(EnvironmentElement d, int instanceType) {
        switch (d.environment) {
            case 1:
                return (EnvironmentElement) preparedElementMap.put(Integer.valueOf(instanceType), d);
            case 2:
                return (EnvironmentElement) dailyElementMap.put(Integer.valueOf(instanceType), d);
            default:
                return (EnvironmentElement) onlineRelatedMap.put(Integer.valueOf(instanceType), d);
        }
    }

    public static EnvironmentElement putElement(EnvironmentElement d) {
        return putElement(d, 0);
    }

    public static void setContext(Context c) {
        if (c != null) {
            context = c.getApplicationContext();
        }
    }

    public static Context retrieveContext() {
        if (context != null) {
            return context;
        }
        synchronized (UploaderGlobal.class) {
            Context context;
            if (context != null) {
                context = context;
                return context;
            }
            try {
                Class<?> clazz = Class.forName("android.app.ActivityThread");
                Object object = clazz.getMethod("currentActivityThread", new Class[0]).invoke(clazz, new Object[0]);
                context = (Context) object.getClass().getMethod("getApplication", new Class[0]).invoke(object, new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
            }
            context = context;
            return context;
        }
    }
}
