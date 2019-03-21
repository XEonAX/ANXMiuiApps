package com.nexstreaming.nexeditorsdk;

import com.nexstreaming.nexeditorsdk.module.UserField;
import com.nexstreaming.nexeditorsdk.module.nexExternalExportProvider;
import com.nexstreaming.nexeditorsdk.module.nexFaceDetectionProvider;
import com.nexstreaming.nexeditorsdk.module.nexModuleProvider;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class nexExternalModuleManager {
    private static final String TAG = "nexModuleManager";
    private static final Class[] s_supportedModuleClass = new Class[]{nexExternalExportProvider.class, nexFaceDetectionProvider.class};
    private static nexExternalModuleManager single;
    private List<a> moduleInfos = new ArrayList();
    private Map<String, Class<? extends nexModuleProvider>> moduleProviders = new HashMap();

    private final class a implements nexModuleProvider {
        private final String b;
        private final String c;
        private final String d;
        private final String e;
        private final String f;
        private final int g;
        private final UserField[] h;
        private final int i;

        private a(nexModuleProvider nexmoduleprovider, int i) {
            this.b = nexmoduleprovider.name();
            this.c = nexmoduleprovider.uuid();
            this.d = nexmoduleprovider.description();
            this.e = nexmoduleprovider.auth();
            this.g = nexmoduleprovider.version();
            this.h = nexmoduleprovider.userFields();
            this.f = nexmoduleprovider.format();
            this.i = i;
        }

        public String name() {
            return this.b;
        }

        public String uuid() {
            return this.c;
        }

        public String description() {
            return this.d;
        }

        public String auth() {
            return this.e;
        }

        public String format() {
            return this.f;
        }

        public int version() {
            return this.g;
        }

        public UserField[] userFields() {
            return this.h;
        }
    }

    private nexExternalModuleManager() {
    }

    static nexExternalModuleManager getInstance() {
        if (single == null) {
            single = new nexExternalModuleManager();
        }
        return single;
    }

    public void registerModule(String str) {
        try {
            registerModule(Class.forName(str));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void registerModule(Class<? extends nexModuleProvider> cls) {
        Constructor constructor;
        try {
            constructor = cls.getConstructor(new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            constructor = null;
        }
        if (constructor != null) {
            try {
                Object obj = (nexModuleProvider) constructor.newInstance(new Object[0]);
                for (nexModuleProvider uuid : this.moduleInfos) {
                    if (uuid.uuid().compareTo(obj.uuid()) == 0) {
                        return;
                    }
                }
                int subClassType = getSubClassType(obj);
                if (subClassType == 0) {
                    throw new RuntimeException("not supported Provider interface. uuid=" + obj.uuid());
                }
                this.moduleInfos.add(new a(obj, subClassType));
                this.moduleProviders.put(obj.uuid(), cls);
            } catch (InstantiationException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (InvocationTargetException e4) {
                e4.printStackTrace();
            }
        }
    }

    public void unregisterModule(nexModuleProvider nexmoduleprovider) {
        unregisterModule(nexmoduleprovider.uuid());
    }

    public void unregisterModule(String str) {
        for (Object obj : this.moduleInfos) {
            if (obj.uuid().compareTo(str) == 0) {
                break;
            }
        }
        Object obj2 = null;
        if (obj2 != null) {
            this.moduleInfos.remove(obj2);
            this.moduleProviders.remove(str);
        }
    }

    void clearModule() {
        this.moduleInfos.clear();
        this.moduleProviders.clear();
    }

    private int getSubClassType(Object obj) {
        int i = 0;
        int i2 = 0;
        while (i < s_supportedModuleClass.length) {
            if (s_supportedModuleClass[i].isInstance(obj)) {
                i2 |= i + 1;
            }
            i++;
        }
        return i2;
    }

    private int getSubClassType(Class<? extends nexModuleProvider> cls) {
        for (int i = 0; i < s_supportedModuleClass.length; i++) {
            if (s_supportedModuleClass[i].isAssignableFrom(cls)) {
                return i + 1;
            }
        }
        return 0;
    }

    public List<nexModuleProvider> getModules(Class<? extends nexModuleProvider> cls) {
        List<nexModuleProvider> arrayList = new ArrayList();
        int subClassType = getSubClassType((Class) cls);
        for (a aVar : this.moduleInfos) {
            if ((aVar.i & subClassType) != 0) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    Object getModule(String str, Class<? extends nexModuleProvider> cls) {
        int subClassType = getSubClassType((Class) cls);
        for (a aVar : this.moduleInfos) {
            if (aVar.name().compareTo(str) == 0 && (aVar.i & subClassType) != 0) {
                return getModule(aVar.uuid());
            }
        }
        return null;
    }

    Object getModule(String str) {
        Constructor constructor;
        try {
            constructor = ((Class) this.moduleProviders.get(str)).getConstructor(new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            constructor = null;
        }
        if (constructor != null) {
            try {
                return constructor.newInstance(new Object[0]);
            } catch (InstantiationException e2) {
                e2.printStackTrace();
            } catch (IllegalAccessException e3) {
                e3.printStackTrace();
            } catch (InvocationTargetException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }
}
