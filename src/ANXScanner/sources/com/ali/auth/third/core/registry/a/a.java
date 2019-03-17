package com.ali.auth.third.core.registry.a;

import com.ali.auth.third.core.registry.ServiceRegistration;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class a implements com.ali.auth.third.core.registry.a {
    private Map<Class<?>, List<b>> a = new HashMap();
    private Map<ServiceRegistration, b> b = new HashMap();
    private ReadWriteLock c = new ReentrantReadWriteLock();

    static class a implements ServiceRegistration {
        private final String a = UUID.randomUUID().toString();
        private com.ali.auth.third.core.registry.a b;
        private Map<String, String> c;

        public a(com.ali.auth.third.core.registry.a aVar, Map<String, String> map) {
            this.b = aVar;
            this.c = map;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.a.equals(((a) obj).a);
        }

        public int hashCode() {
            return (this.a == null ? 0 : this.a.hashCode()) + 31;
        }

        public void setProperties(Map<String, String> map) {
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    if (!(entry.getKey() == null || entry.getValue() == null)) {
                        this.c.put(entry.getKey(), entry.getValue());
                    }
                }
            }
        }

        public void unregister() {
            this.b.a(this);
        }
    }

    static class b {
        public Class<?>[] a;
        public Object b;
        public Map<String, String> c;

        b() {
        }
    }

    public ServiceRegistration a(Class<?>[] clsArr, Object obj, Map<String, String> map) {
        if (clsArr == null || clsArr.length == 0 || obj == null) {
            throw new IllegalArgumentException("service types and instance must not be null");
        }
        b bVar = new b();
        bVar.b = obj;
        bVar.a = clsArr;
        bVar.c = Collections.synchronizedMap(new HashMap());
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                if (!(entry.getKey() == null || entry.getValue() == null)) {
                    bVar.c.put(entry.getKey(), entry.getValue());
                }
            }
        }
        this.c.writeLock().lock();
        try {
            for (Object obj2 : clsArr) {
                List list = (List) this.a.get(obj2);
                if (list == null) {
                    list = new ArrayList(2);
                    this.a.put(obj2, list);
                }
                list.add(bVar);
            }
            ServiceRegistration aVar = new a(this, bVar.c);
            this.b.put(aVar, bVar);
            return aVar;
        } finally {
            this.c.writeLock().unlock();
        }
    }

    public Object a(ServiceRegistration serviceRegistration) {
        Lock lock = null;
        if (serviceRegistration == null) {
            return null;
        }
        this.c.writeLock().lock();
        try {
            b bVar = (b) this.b.remove(serviceRegistration);
            if (bVar == null) {
                return lock;
            }
            if (bVar.a != null) {
                for (Object obj : bVar.a) {
                    List list = (List) this.a.get(obj);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next() == bVar) {
                            it.remove();
                            break;
                        }
                    }
                    if (list.size() == 0) {
                        this.a.remove(obj);
                    }
                }
            }
            Object obj2 = bVar.b;
            this.c.writeLock().unlock();
            return obj2;
        } finally {
            lock = this.c.writeLock();
            lock.unlock();
        }
    }

    public <T> T a(Class<T> cls, Map<String, String> map) {
        this.c.readLock().lock();
        try {
            List<b> list = (List) this.a.get(cls);
            if (list == null || list.size() == 0) {
                this.c.readLock().unlock();
                return null;
            }
            T cast;
            if (map != null) {
                if (map.size() != 0) {
                    for (b bVar : list) {
                        Object obj;
                        for (Entry entry : map.entrySet()) {
                            String str = (String) bVar.c.get(entry.getKey());
                            if (str != null) {
                                if (!str.equals(entry.getValue())) {
                                }
                            }
                            obj = null;
                            continue;
                        }
                        int obj2 = 1;
                        continue;
                        if (obj2 != null) {
                            cast = cls.cast(bVar.b);
                            this.c.readLock().unlock();
                            return cast;
                        }
                    }
                    this.c.readLock().unlock();
                    return null;
                }
            }
            cast = cls.cast(((b) list.get(0)).b);
            this.c.readLock().unlock();
            return cast;
        } catch (Throwable th) {
            this.c.readLock().unlock();
        }
    }

    public <T> T[] b(Class<T> cls, Map<String, String> map) {
        int i = 0;
        this.c.readLock().lock();
        try {
            List<b> list = (List) this.a.get(cls);
            if (list == null || list.size() == 0) {
                T[] tArr = (Object[]) Array.newInstance(cls, 0);
                return tArr;
            }
            if (map != null) {
                if (map.size() != 0) {
                    List arrayList = new ArrayList(list.size());
                    for (b bVar : list) {
                        int i2;
                        for (Entry entry : map.entrySet()) {
                            String str = (String) bVar.c.get(entry.getKey());
                            if (str != null) {
                                if (!str.equals(entry.getValue())) {
                                }
                            }
                            i2 = 0;
                        }
                        i2 = 1;
                        if (i2 != 0) {
                            arrayList.add(cls.cast(bVar.b));
                        }
                    }
                    T[] toArray = arrayList.toArray((Object[]) Array.newInstance(cls, arrayList.size()));
                    this.c.readLock().unlock();
                    return toArray;
                }
            }
            Object[] objArr = (Object[]) Array.newInstance(cls, list.size());
            int size = list.size();
            while (i < size) {
                objArr[i] = cls.cast(((b) list.get(i)).b);
                i++;
            }
            this.c.readLock().unlock();
            return objArr;
        } finally {
            this.c.readLock().unlock();
        }
    }
}
