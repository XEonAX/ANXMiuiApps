package com.miui.gallery.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Looper;
import com.miui.gallery.threadpool.ThreadManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

class MemoryPreferencesImpl implements SharedPreferences {
    private static final Object CONTENT = new Object();
    private final WeakHashMap<OnSharedPreferenceChangeListener, Object> mListeners = new WeakHashMap();
    private final Object mLock = new Object();
    private Map<String, Object> mMap = new HashMap();

    public final class EditorImpl implements Editor {
        private boolean mClear = false;
        private final Object mEditLock = new Object();
        private final Map<String, Object> mModified = new HashMap();

        EditorImpl() {
        }

        public Editor putString(String key, String value) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, value);
            }
            return this;
        }

        public Editor putStringSet(String key, Set<String> values) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, values == null ? null : new HashSet(values));
            }
            return this;
        }

        public Editor putInt(String key, int value) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, Integer.valueOf(value));
            }
            return this;
        }

        public Editor putLong(String key, long value) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, Long.valueOf(value));
            }
            return this;
        }

        public Editor putFloat(String key, float value) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, Float.valueOf(value));
            }
            return this;
        }

        public Editor putBoolean(String key, boolean value) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, Boolean.valueOf(value));
            }
            return this;
        }

        public Editor remove(String key) {
            synchronized (this.mEditLock) {
                this.mModified.put(key, this);
            }
            return this;
        }

        public Editor clear() {
            synchronized (this.mEditLock) {
                this.mClear = true;
            }
            return this;
        }

        public boolean commit() {
            commitToMemory();
            return true;
        }

        public void apply() {
            commitToMemory();
        }

        private void commitToMemory() {
            boolean hasListeners = false;
            List<String> keysModified = null;
            Set<OnSharedPreferenceChangeListener> listeners = null;
            if (MemoryPreferencesImpl.this.mListeners.size() > 0) {
                hasListeners = true;
            }
            if (hasListeners) {
                keysModified = new ArrayList();
                listeners = new HashSet(MemoryPreferencesImpl.this.mListeners.keySet());
            }
            synchronized (MemoryPreferencesImpl.this.mLock) {
                synchronized (this.mEditLock) {
                    if (this.mClear) {
                        if (!MemoryPreferencesImpl.this.mMap.isEmpty()) {
                            MemoryPreferencesImpl.this.mMap.clear();
                        }
                        this.mClear = false;
                    }
                    for (Entry<String, Object> e : this.mModified.entrySet()) {
                        String k = (String) e.getKey();
                        EditorImpl v = e.getValue();
                        if (v != this && v != null) {
                            if (MemoryPreferencesImpl.this.mMap.containsKey(k)) {
                                Object existingValue = MemoryPreferencesImpl.this.mMap.get(k);
                                if (existingValue != null && existingValue.equals(v)) {
                                }
                            }
                            MemoryPreferencesImpl.this.mMap.put(k, v);
                        } else if (MemoryPreferencesImpl.this.mMap.containsKey(k)) {
                            MemoryPreferencesImpl.this.mMap.remove(k);
                        }
                        if (hasListeners) {
                            keysModified.add(k);
                        }
                    }
                    this.mModified.clear();
                }
            }
            notifyListeners(listeners, keysModified);
        }

        private void notifyListeners(final Set<OnSharedPreferenceChangeListener> listeners, final List<String> keysModified) {
            if (listeners != null && keysModified != null && keysModified.size() != 0) {
                Runnable runnable = new Runnable() {
                    public void run() {
                        for (int i = keysModified.size() - 1; i >= 0; i--) {
                            String key = (String) keysModified.get(i);
                            for (OnSharedPreferenceChangeListener listener : listeners) {
                                if (listener != null) {
                                    listener.onSharedPreferenceChanged(MemoryPreferencesImpl.this, key);
                                }
                            }
                        }
                    }
                };
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    runnable.run();
                } else {
                    ThreadManager.getMainHandler().post(runnable);
                }
            }
        }
    }

    MemoryPreferencesImpl() {
    }

    public Map<String, ?> getAll() {
        Map hashMap;
        synchronized (this.mLock) {
            hashMap = new HashMap(this.mMap);
        }
        return hashMap;
    }

    public String getString(String key, String defValue) {
        String v;
        synchronized (this.mLock) {
            v = (String) this.mMap.get(key);
            if (v == null) {
                v = defValue;
            }
        }
        return v;
    }

    public Set<String> getStringSet(String key, Set<String> defValues) {
        Set<String> v;
        synchronized (this.mLock) {
            v = (Set) this.mMap.get(key);
            if (v == null) {
                v = defValues;
            }
        }
        return v;
    }

    public int getInt(String key, int defValue) {
        synchronized (this.mLock) {
            Integer v = (Integer) this.mMap.get(key);
            if (v != null) {
                defValue = v.intValue();
            }
        }
        return defValue;
    }

    public long getLong(String key, long defValue) {
        synchronized (this.mLock) {
            Long v = (Long) this.mMap.get(key);
            if (v != null) {
                defValue = v.longValue();
            }
        }
        return defValue;
    }

    public float getFloat(String key, float defValue) {
        synchronized (this.mLock) {
            Float v = (Float) this.mMap.get(key);
            if (v != null) {
                defValue = v.floatValue();
            }
        }
        return defValue;
    }

    public boolean getBoolean(String key, boolean defValue) {
        synchronized (this.mLock) {
            Boolean v = (Boolean) this.mMap.get(key);
            if (v != null) {
                defValue = v.booleanValue();
            }
        }
        return defValue;
    }

    public boolean contains(String key) {
        boolean containsKey;
        synchronized (this.mLock) {
            containsKey = this.mMap.containsKey(key);
        }
        return containsKey;
    }

    public Editor edit() {
        return new EditorImpl();
    }

    public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
        synchronized (this.mLock) {
            this.mListeners.put(listener, CONTENT);
        }
    }

    public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
        synchronized (this.mLock) {
            this.mListeners.remove(listener);
        }
    }
}
