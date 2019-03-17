package com.uploader.export;

import java.lang.reflect.Constructor;
import java.util.concurrent.ConcurrentHashMap;

public class UploaderCreator {
    private static final String TAG = "<aus> UploaderCreator";
    private static final ConcurrentHashMap<Integer, IUploaderManager> managerMap = new ConcurrentHashMap();

    public static IUploaderManager get() throws RuntimeException {
        return get(0);
    }

    /* JADX WARNING: Missing block: B:28:?, code:
            return r5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static IUploaderManager get(int instanceType) {
        IUploaderManager manager = (IUploaderManager) managerMap.get(Integer.valueOf(instanceType));
        if (manager != null) {
            return manager;
        }
        synchronized (UploaderCreator.class) {
            manager = (IUploaderManager) managerMap.get(Integer.valueOf(instanceType));
            if (manager != null) {
                return manager;
            }
            try {
                Constructor<?> constructor = Class.forName(Constants.NAME_UPLOADER_MANAGER).getDeclaredConstructor(new Class[]{Integer.TYPE});
                constructor.setAccessible(true);
                manager = (IUploaderManager) constructor.newInstance(new Object[]{Integer.valueOf(instanceType)});
                managerMap.put(Integer.valueOf(instanceType), manager);
                if (!manager.isInitialized()) {
                    IUploaderDependency dependency = UploaderGlobal.getDependency(Integer.valueOf(instanceType));
                    if (dependency != null) {
                        manager.initialize(UploaderGlobal.retrieveContext(), dependency);
                    }
                }
            } catch (Throwable e) {
                RuntimeException runtimeException = new RuntimeException("<aus> UploaderCreator " + e.toString());
            }
        }
    }
}
