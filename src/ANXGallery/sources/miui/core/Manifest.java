package miui.core;

import java.util.LinkedHashMap;
import java.util.Map;
import miui.module.Dependency;
import miui.module.Module;

public class Manifest {
    private Module dH;
    private Map<String, Dependency> dT = new LinkedHashMap();
    private Dependency xD;

    public int getLevel() {
        return this.dH.getLevel();
    }

    public Module getModule() {
        return this.dH;
    }

    public void setModule(Module module) {
        this.dH = module;
    }

    public Dependency getSdkDependency() {
        return this.xD;
    }

    public void setSdkDependency(Dependency dependency) {
        this.xD = dependency;
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

    public void addDependency(String str, Dependency dependency) {
        this.dT.put(str, dependency);
    }

    public void clearDependencies() {
        this.dT.clear();
    }
}
