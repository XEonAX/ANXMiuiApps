package miui.module;

import java.io.File;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public abstract class Repository {
    public abstract String fetch(File file, String str);

    public Set<String> contains(Set<String> set) {
        Set<String> linkedHashSet = new LinkedHashSet();
        for (String str : set) {
            if (contains(str)) {
                linkedHashSet.add(str);
            }
        }
        return linkedHashSet;
    }

    public boolean contains(String str) {
        return true;
    }

    public Map<String, String> fetch(File file, Set<String> set) {
        Map<String, String> linkedHashMap = new LinkedHashMap();
        for (String str : set) {
            String fetch = fetch(file, str);
            if (fetch != null) {
                linkedHashMap.put(str, fetch);
            }
        }
        return linkedHashMap;
    }
}
