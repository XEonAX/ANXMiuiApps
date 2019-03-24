package com.miui.internal.component.module;

import android.app.Application;
import android.text.TextUtils;
import com.miui.internal.util.PackageHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import miui.core.ManifestParser;
import miui.module.Dependency;
import miui.module.Module;

public class ModuleLoader {
    private ModuleFolder[] dE;
    private Set<String> dF = new LinkedHashSet();
    private Set<String> dG = new LinkedHashSet();
    private Application du;

    private static class ModuleEntry {
        public Module dH;
        public String dI;
        public String dJ;
        public String dK;
        public boolean dL;

        public ModuleEntry(Module module, String str, String str2, String str3, boolean z) {
            this.dH = module;
            this.dI = str;
            this.dJ = str2;
            this.dK = str3;
            this.dL = z;
        }
    }

    public ModuleLoader(Application application, ModuleFolder... moduleFolderArr) {
        this.du = application;
        this.dE = moduleFolderArr;
    }

    public void loadModules(Dependency... dependencyArr) {
        StringBuilder stringBuilder;
        Dependency[] dependencyArr2 = dependencyArr;
        List<ModuleEntry> arrayList = new ArrayList();
        List<ModuleEntry> arrayList2 = new ArrayList();
        for (Dependency dependency : dependencyArr2) {
            if (!this.dF.contains(dependency.getName())) {
                String absolutePath;
                Object obj;
                boolean z = (dependency.getType() & 1) != 0;
                for (ModuleFolder moduleFolder : this.dE) {
                    File apkFolder = moduleFolder.getApkFolder();
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(dependency.getName());
                    stringBuilder2.append(ModuleUtils.MODULE_FILE_EXTENSION);
                    File file = new File(apkFolder, stringBuilder2.toString());
                    if (file.exists()) {
                        absolutePath = file.getAbsolutePath();
                        arrayList.add(new ModuleEntry(f(absolutePath), absolutePath, ModuleUtils.getLibraryFolder(absolutePath).getAbsolutePath(), moduleFolder.getOptFolder().getAbsolutePath(), z));
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    File file2;
                    Object apkPath = PackageHelper.getApkPath(this.du, dependency.getName(), null);
                    if (TextUtils.isEmpty(apkPath)) {
                        file2 = null;
                    } else {
                        file2 = new File(apkPath);
                    }
                    if (file2 != null && file2.exists()) {
                        absolutePath = file2.getAbsolutePath();
                        arrayList2.add(new ModuleEntry(f(absolutePath), absolutePath, ModuleUtils.getLibraryFolder(absolutePath).getAbsolutePath(), null, z));
                    } else if (!z) {
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("no such module found: ");
                        stringBuilder.append(dependency.getName());
                        throw new ModuleLoadException(stringBuilder.toString());
                    }
                } else {
                    continue;
                }
            }
        }
        for (ModuleEntry moduleEntry : arrayList) {
            if (ModuleUtils.isSignatureValid(this.du, moduleEntry.dI)) {
                a(moduleEntry, moduleEntry.dK);
            } else if (!moduleEntry.dL) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("invalid signature: ");
                stringBuilder.append(moduleEntry.dH.getName());
                throw new ModuleLoadException(stringBuilder.toString());
            }
        }
        for (ModuleEntry moduleEntry2 : arrayList2) {
            a(moduleEntry2, null);
        }
    }

    private void a(ModuleEntry moduleEntry, String str) {
        String str2;
        String str3;
        StringBuilder stringBuilder;
        String str4 = null;
        if ((moduleEntry.dH.getContent() & 1) != 0) {
            str2 = moduleEntry.dI;
        } else {
            str2 = null;
        }
        if ((moduleEntry.dH.getContent() & 2) != 0) {
            str3 = moduleEntry.dJ;
        } else {
            str3 = null;
        }
        if ((moduleEntry.dH.getContent() & 4) != 0) {
            str4 = moduleEntry.dI;
        }
        int i = 0;
        if (!(str2 == null && str3 == null)) {
            i = a(str, str2, str3) ^ 1;
            if (!(i == 0 || moduleEntry.dL)) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("encounter error when load dex for module: ");
                stringBuilder.append(moduleEntry.dH.getName());
                throw new ModuleLoadException(stringBuilder.toString());
            }
        }
        if (str4 != null && i == 0) {
            g(str4);
            if (i == 0 || moduleEntry.dL) {
                this.dG.add(moduleEntry.dI);
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append("encounter error when load res for module: ");
                stringBuilder.append(moduleEntry.dH.getName());
                throw new ModuleLoadException(stringBuilder.toString());
            }
        }
        if (i == 0) {
            this.dF.add(moduleEntry.dH.getName());
        }
    }

    private Module f(String str) {
        return ManifestParser.createFromArchive(this.du.getPackageManager(), str).parse(null).getModule();
    }

    private boolean a(String str, String str2, String str3) {
        return ModuleClassLoader.a(str2, str, str3, this.du.getClassLoader(), this.du);
    }

    private void g(String str) {
        ModuleResourceLoader.load(Arrays.asList(new String[]{str}), new ArrayList(this.dG));
    }

    public static void loadResources(String... strArr) {
        ModuleResourceLoader.load(Arrays.asList(strArr));
    }
}
