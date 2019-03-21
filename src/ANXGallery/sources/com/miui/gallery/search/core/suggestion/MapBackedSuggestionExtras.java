package com.miui.gallery.search.core.suggestion;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class MapBackedSuggestionExtras implements SuggestionExtras {
    private Map<String, String> mExtras;

    public MapBackedSuggestionExtras(Map<String, String> extras) {
        this.mExtras = extras;
    }

    public MapBackedSuggestionExtras(String key, String value) {
        this.mExtras = new HashMap(1);
        this.mExtras.put(key, value);
    }

    public Collection<String> getExtraColumnNames() {
        if (this.mExtras != null) {
            return this.mExtras.keySet();
        }
        return null;
    }

    public String getExtra(String columnName) {
        if (this.mExtras != null) {
            return (String) this.mExtras.get(columnName);
        }
        return null;
    }

    public void putExtra(String columnName, String columnValue) {
        if (this.mExtras == null) {
            this.mExtras = new HashMap(1);
        }
        this.mExtras.put(columnName, columnValue);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SuggestionExtras)) {
            return false;
        }
        if (obj == this || (getExtraColumnNames() == null && ((SuggestionExtras) obj).getExtraColumnNames() == null)) {
            return true;
        }
        SuggestionExtras otherExtra = (SuggestionExtras) obj;
        if (getExtraColumnNames() == null || otherExtra.getExtraColumnNames() == null) {
            return false;
        }
        for (String name : getExtraColumnNames()) {
            if (!getExtra(name).equals(otherExtra.getExtra(name))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return super.toString() + ", data:" + this.mExtras;
    }
}
