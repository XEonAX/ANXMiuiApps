package com.xiaomi.scanner.settings;

import java.util.HashMap;

class DefaultsStore {
    private static HashMap<String, Defaults> mDefaultsInternalStore = new HashMap();

    private static class Defaults {
        private String mDefaultValue;
        private String[] mPossibleValues;

        public Defaults(String defaultValue, String[] possibleValues) {
            this.mDefaultValue = defaultValue;
            this.mPossibleValues = possibleValues;
        }

        public String getDefaultValue() {
            return this.mDefaultValue;
        }

        public String[] getPossibleValues() {
            return this.mPossibleValues;
        }
    }

    DefaultsStore() {
    }

    public void storeDefaults(String key, String defaultValue, String[] possibleValues) {
        mDefaultsInternalStore.put(key, new Defaults(defaultValue, possibleValues));
    }

    public String getDefaultValue(String key) {
        Defaults defaults = (Defaults) mDefaultsInternalStore.get(key);
        if (defaults == null) {
            return null;
        }
        return defaults.getDefaultValue();
    }

    public String[] getPossibleValues(String key) {
        Defaults defaults = (Defaults) mDefaultsInternalStore.get(key);
        if (defaults == null) {
            return null;
        }
        return defaults.getPossibleValues();
    }
}
