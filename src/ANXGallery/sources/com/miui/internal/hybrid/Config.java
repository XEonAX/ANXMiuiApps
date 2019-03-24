package com.miui.internal.hybrid;

import java.util.HashMap;
import java.util.Map;

public class Config {
    private Security eD;
    private String eE;
    private String eF;
    private Map<String, Feature> eG = new HashMap();
    private Map<String, String> eH = new HashMap();
    private Map<String, Permission> eI = new HashMap();

    public Security getSecurity() {
        return this.eD;
    }

    public void setSecurity(Security security) {
        this.eD = security;
    }

    public String getVendor() {
        return this.eE;
    }

    public void setVendor(String str) {
        this.eE = str;
    }

    public String getContent() {
        return this.eF;
    }

    public void setContent(String str) {
        this.eF = str;
    }

    public Map<String, Feature> getFeatures() {
        return this.eG;
    }

    public void setFeatures(Map<String, Feature> map) {
        this.eG = map;
    }

    public void clearFeatures() {
        this.eG.clear();
    }

    public Feature getFeature(String str) {
        return (Feature) this.eG.get(str);
    }

    public void addFeature(Feature feature) {
        this.eG.put(feature.getName(), feature);
    }

    public Map<String, String> getPreferences() {
        return this.eH;
    }

    public void setPreferences(Map<String, String> map) {
        this.eH = map;
    }

    public void clearPreferences() {
        this.eH.clear();
    }

    public String getPreference(String str) {
        return (String) this.eH.get(str);
    }

    public void setPreference(String str, String str2) {
        this.eH.put(str, str2);
    }

    public Map<String, Permission> getPermissions() {
        return this.eI;
    }

    public void setPermissions(Map<String, Permission> map) {
        this.eI = map;
    }

    public void clearPermissions() {
        this.eI.clear();
    }

    public Permission getPermission(String str) {
        return (Permission) this.eI.get(str);
    }

    public void addPermission(Permission permission) {
        this.eI.put(permission.getUri(), permission);
    }
}
