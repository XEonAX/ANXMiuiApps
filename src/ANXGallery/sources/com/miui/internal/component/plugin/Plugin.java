package com.miui.internal.component.plugin;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class Plugin {
    private int dR;
    private AccessPermission dS;
    private Map<String, Dependency> dT = new HashMap();
    private Map<String, Extension> dU = new HashMap();
    private Map<String, Outlet> dV = new HashMap();
    private File file;
    private String group;
    private int level;
    private String name;
    private int versionCode;
    private String versionName;

    public File getFile() {
        return this.file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getGroup() {
        return this.group;
    }

    public void setGroup(String str) {
        this.group = str;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public void setVersionCode(int i) {
        this.versionCode = i;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setVersionName(String str) {
        this.versionName = str;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public int getMinCapatibleLevel() {
        return this.dR;
    }

    public void setMinCapatibleLevel(int i) {
        this.dR = i;
    }

    public AccessPermission getResources() {
        return this.dS;
    }

    public void setResources(AccessPermission accessPermission) {
        this.dS = accessPermission;
    }

    public Map<String, Dependency> getDependencies() {
        return this.dT;
    }

    public void setDependencies(Map<String, Dependency> map) {
        this.dT = map;
    }

    public Dependency getDependency(String str) {
        return (Dependency) this.dT.get(str);
    }

    public void addDependency(Dependency dependency) {
        this.dT.put(dependency.getName(), dependency);
    }

    public void clearDependencies() {
        this.dT.clear();
    }

    public Map<String, Extension> getExtensions() {
        return this.dU;
    }

    public void setExtensions(Map<String, Extension> map) {
        this.dU = map;
    }

    public Extension getExtension(String str) {
        return (Extension) this.dU.get(str);
    }

    public void addExtension(Extension extension) {
        this.dU.put(extension.getName(), extension);
    }

    public void clearExtensions() {
        this.dU.clear();
    }

    public Map<String, Outlet> getOutlets() {
        return this.dV;
    }

    public void setOutlets(Map<String, Outlet> map) {
        this.dV = map;
    }

    public Outlet getOutlet(String str) {
        return (Outlet) this.dV.get(str);
    }

    public void addOutlet(Outlet outlet) {
        this.dV.put(outlet.getName(), outlet);
    }

    public void clearOutlets() {
        this.dV.clear();
    }
}
