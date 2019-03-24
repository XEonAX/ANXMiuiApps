package com.miui.internal.log.message;

import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.HashMap;

public class MessageFactory {
    private static final String TAG = "MessageFactory";
    private static final int he = 10;
    private static HashMap<Class<?>, MessageCache<?>> hf = new HashMap();

    private static class MessageCache<T extends Message> {
        private Constructor<T> hg;
        private T[] hh;
        private int hi = 0;

        public static <T extends Message> MessageCache<T> a(Class<T> cls, int i) {
            try {
                return new MessageCache(cls.getConstructor(new Class[0]), (Message[]) Array.newInstance(cls, i));
            } catch (NoSuchMethodException e) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Class ");
                stringBuilder.append(cls.getName());
                stringBuilder.append(" must have a public empty constructor");
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        private MessageCache(Constructor<T> constructor, T[] tArr) {
            this.hg = constructor;
            this.hh = tArr;
        }

        public synchronized T Q() {
            if (this.hi > 0) {
                this.hi--;
                T t = this.hh[this.hi];
                t.prepareForReuse();
                return t;
            }
            return R();
        }

        public synchronized void a(T t) {
            if (this.hi < this.hh.length) {
                this.hh[this.hi] = t;
                this.hi++;
            }
        }

        private T R() {
            try {
                return (Message) this.hg.newInstance(new Object[0]);
            } catch (Throwable e) {
                String str = MessageFactory.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Fail to construct new instance of class: ");
                stringBuilder.append(this.hg.getDeclaringClass().getName());
                Log.e(str, stringBuilder.toString(), e);
                return null;
            }
        }
    }

    public static <T extends Message> T obtain(Class<T> cls) {
        MessageCache messageCache = (MessageCache) hf.get(cls);
        if (messageCache == null) {
            messageCache = MessageCache.a(cls, 10);
            hf.put(cls, messageCache);
        }
        return messageCache.Q();
    }

    static <T extends Message> void a(T t) {
        MessageCache messageCache = (MessageCache) hf.get(t.getClass());
        if (messageCache != null) {
            messageCache.a(t);
        }
    }
}
