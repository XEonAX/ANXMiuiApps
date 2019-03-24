package com.miui.internal.component.module;

import java.io.File;

public class ModuleFolder {
    private File dC;
    private File dD;

    public ModuleFolder(File file, File file2) {
        this.dC = file;
        this.dD = file2;
    }

    public File getApkFolder() {
        return this.dC;
    }

    public void setApkFolder(File file) {
        this.dC = file;
    }

    public File getOptFolder() {
        return this.dD;
    }

    public void setOptFolder(File file) {
        this.dD = file;
    }
}
