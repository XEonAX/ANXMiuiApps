package com.xiaomi.scanner.module;

import android.util.SparseArray;
import com.xiaomi.scanner.app.ScanActivity;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.ModuleManager.ModuleAgent;
import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import com.xiaomi.scanner.util.ModuleBaseInfoManager;

public class ModuleManagerImpl implements ModuleManager {
    private static final Tag TAG = new Tag("ModuleManagerImpl");
    private int mDefaultModuleId = 0;
    private SparseArray<ModuleController> mModuleControllerMap = new SparseArray();
    private final SparseArray<ModuleAgent> mRegisteredModuleAgents = new SparseArray(7);

    public void registerModule(ModuleAgent agent) {
        if (agent == null) {
            throw new NullPointerException("Registering a null ModuleAgent.");
        }
        ModuleBaseInfo info = agent.createModuleBaseInfo();
        if (info.getSortId() == -1) {
            throw new IllegalArgumentException("ModuleManager: The module ID can not be -1");
        } else if (this.mRegisteredModuleAgents.get(info.getSortId()) != null) {
            Log.i(TAG, "Sort ID is registered already:" + info.getSortId());
        } else {
            ModuleBaseInfoManager.getInstance().addModuleBase(info);
            this.mRegisteredModuleAgents.put(info.getSortId(), agent);
        }
    }

    public boolean unregisterModule(int moduleId) {
        ModuleBaseInfo info = ModuleBaseInfoManager.getInstance().getModuleBaseInfo(moduleId);
        if (info == null) {
            return false;
        }
        ModuleBaseInfoManager.getInstance().removeModuleBase(moduleId);
        this.mRegisteredModuleAgents.delete(info.getSortId());
        if (moduleId == this.mDefaultModuleId) {
            this.mDefaultModuleId = -1;
        }
        return true;
    }

    public ModuleAgent getModuleAgent(int moduleId) {
        ModuleAgent moduleAgent = null;
        ModuleBaseInfo baseInfo = ModuleBaseInfoManager.getInstance().getModuleBaseInfo(moduleId);
        if (baseInfo != null) {
            moduleAgent = (ModuleAgent) this.mRegisteredModuleAgents.get(baseInfo.getSortId());
        }
        if (moduleAgent == null) {
            return (ModuleAgent) this.mRegisteredModuleAgents.get(this.mDefaultModuleId);
        }
        return moduleAgent;
    }

    public ModuleController getModule(int moduleId, ScanActivity app) {
        ModuleController controller = (ModuleController) this.mModuleControllerMap.get(moduleId);
        if (controller != null) {
            return controller;
        }
        controller = getModuleAgent(moduleId).createModule(app, app);
        this.mModuleControllerMap.put(moduleId, controller);
        return controller;
    }
}
