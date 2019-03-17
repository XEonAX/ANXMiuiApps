package com.xiaomi.scanner.module;

import android.content.Context;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.app.ScanActivity;

public interface ModuleManager {
    public static final int MODULE_INDEX_NONE = -1;

    public interface ModuleAgent {
        ModuleController createModule(Context context, AppController appController);

        ModuleBaseInfo createModuleBaseInfo();
    }

    public interface ModuleBaseInfo {
        int getIconResourceId();

        int getModuleId();

        String getScopeNamespace();

        int getSortId();

        int getTitleResourceId();

        int getWeight();
    }

    ModuleController getModule(int i, ScanActivity scanActivity);

    ModuleAgent getModuleAgent(int i);

    void registerModule(ModuleAgent moduleAgent);

    boolean unregisterModule(int i);
}
