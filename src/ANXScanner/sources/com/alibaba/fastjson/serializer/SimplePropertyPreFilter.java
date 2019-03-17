package com.alibaba.fastjson.serializer;

import java.util.HashSet;
import java.util.Set;

public class SimplePropertyPreFilter implements PropertyPreFilter {
    private final Class<?> clazz;
    private final Set<String> excludes;
    private final Set<String> includes;
    private int maxLevel;

    public SimplePropertyPreFilter(String... properties) {
        this(null, properties);
    }

    public SimplePropertyPreFilter(Class<?> clazz, String... properties) {
        int i = 0;
        this.includes = new HashSet();
        this.excludes = new HashSet();
        this.maxLevel = 0;
        this.clazz = clazz;
        int length = properties.length;
        while (i < length) {
            String item = properties[i];
            if (item != null) {
                this.includes.add(item);
            }
            i++;
        }
    }

    public int getMaxLevel() {
        return this.maxLevel;
    }

    public void setMaxLevel(int maxLevel) {
        this.maxLevel = maxLevel;
    }

    public Class<?> getClazz() {
        return this.clazz;
    }

    public Set<String> getIncludes() {
        return this.includes;
    }

    public Set<String> getExcludes() {
        return this.excludes;
    }

    public boolean apply(JSONSerializer serializer, Object source, String name) {
        if (source == null) {
            return true;
        }
        if (this.clazz != null && !this.clazz.isInstance(source)) {
            return true;
        }
        if (this.excludes.contains(name)) {
            return false;
        }
        if (this.maxLevel > 0) {
            int level = 0;
            for (SerialContext context = serializer.context; context != null; context = context.parent) {
                level++;
                if (level > this.maxLevel) {
                    return false;
                }
            }
        }
        if (this.includes.size() == 0 || this.includes.contains(name)) {
            return true;
        }
        return false;
    }
}
