package com.xiaomi.scanner.util;

import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ModuleBaseInfoManager {
    private static ModuleBaseInfoManager instance;
    private List<ModuleBaseInfo> mModuleInfoList = new ArrayList();

    private ModuleBaseInfoManager() {
    }

    public static ModuleBaseInfoManager getInstance() {
        if (instance == null) {
            synchronized (ModuleBaseInfoManager.class) {
                if (instance == null) {
                    instance = new ModuleBaseInfoManager();
                }
            }
        }
        return instance;
    }

    public void addModuleBase(ModuleBaseInfo info) {
        if (info != null) {
            for (ModuleBaseInfo baseInfo : this.mModuleInfoList) {
                if (baseInfo.getModuleId() == info.getModuleId()) {
                    return;
                }
            }
            this.mModuleInfoList.add(info);
        }
    }

    public void removeModuleBase(int moduleId) {
        for (ModuleBaseInfo baseInfo : this.mModuleInfoList) {
            if (baseInfo.getModuleId() == moduleId) {
                this.mModuleInfoList.remove(baseInfo);
                return;
            }
        }
    }

    public ModuleBaseInfo getModuleBaseInfo(int moduleId) {
        for (ModuleBaseInfo info : this.mModuleInfoList) {
            if (info.getModuleId() == moduleId) {
                return info;
            }
        }
        return (ModuleBaseInfo) this.mModuleInfoList.get(0);
    }

    public List<ModuleBaseInfo> getModuleListBySortId() {
        List<ModuleBaseInfo> newList = new ArrayList(this.mModuleInfoList);
        Collections.sort(newList, new Comparator<ModuleBaseInfo>() {
            public int compare(ModuleBaseInfo o1, ModuleBaseInfo o2) {
                return o1.getSortId() - o2.getSortId();
            }
        });
        return newList;
    }

    public List<ModuleBaseInfo> getModuleInfoListByWeight() {
        List<ModuleBaseInfo> newList = new ArrayList(this.mModuleInfoList);
        Collections.sort(newList, new Comparator<ModuleBaseInfo>() {
            public int compare(ModuleBaseInfo o1, ModuleBaseInfo o2) {
                return o1.getWeight() - o2.getWeight();
            }
        });
        return newList;
    }

    public List<ModuleBaseInfo> getModuleInfoList() {
        return this.mModuleInfoList;
    }
}
