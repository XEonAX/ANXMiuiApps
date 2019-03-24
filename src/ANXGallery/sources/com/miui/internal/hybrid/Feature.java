package com.miui.internal.hybrid;

import java.util.HashMap;
import java.util.Map;

public class Feature {
    private Map<String, String> eS = new HashMap();
    private String name;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Map<String, String> getParams() {
        return this.eS;
    }

    public void setParams(Map<String, String> map) {
        this.eS = map;
    }

    public void clearParams() {
        this.eS.clear();
    }

    public String getParam(String str) {
        return (String) this.eS.get(str);
    }

    public void setParam(String str, String str2) {
        this.eS.put(str, str2);
    }
}
