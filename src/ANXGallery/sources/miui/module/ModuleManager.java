package miui.module;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.miui.internal.component.module.BuiltinRepository;
import com.miui.internal.component.module.CombinedRepository;
import com.miui.internal.component.module.ModuleFolder;
import com.miui.internal.component.module.ModuleLoadException;
import com.miui.internal.component.module.ModuleLoader;
import com.miui.internal.component.module.ModuleUtils;
import com.miui.internal.component.module.PrebuiltRepository;
import com.miui.internal.util.PackageConstants;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import miui.os.C0002FileUtils;

public class ModuleManager {
    private static final ModuleManager Cn = new ModuleManager(PackageConstants.sApplication);
    private static final WeakHashMap<Application, ModuleManager> Co = new WeakHashMap();
    private static final String Cp = "modules";
    private static final String Cq = "modules-temp";
    private File Cr = o(this.du);
    private File Cs;
    private ModuleLoader Ct;
    private ModuleLoadListener Cu;
    private Application du;

    public interface ModuleLoadListener {
        public static final int FETCH_ERROR = 1;
        public static final int IO_ERROR = 2;
        public static final int LOAD_ERROR = 3;

        void onLoadFail(String str, int i);

        void onLoadFinish();

        void onLoadSuccess(String str, String str2);
    }

    public static ModuleManager getInstance() {
        return Cn;
    }

    public static ModuleManager createInstance(Application application) {
        if (application == null || application == PackageConstants.sApplication) {
            return Cn;
        }
        ModuleManager moduleManager;
        synchronized (Co) {
            moduleManager = (ModuleManager) Co.get(application);
            if (moduleManager == null) {
                moduleManager = new ModuleManager(application);
                Co.put(application, moduleManager);
            }
        }
        return moduleManager;
    }

    private ModuleManager(Application application) {
        this.du = application;
        this.Cr.mkdirs();
        this.Cs = p(this.du);
        this.Cs.mkdirs();
        this.Ct = new ModuleLoader(this.du, new ModuleFolder(this.Cr, this.Cr));
    }

    private File o(Context context) {
        return new File(PackageConstants.getSdkBaseFolder(context), Cp);
    }

    private File B(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        return new File(this.Cr, stringBuilder.toString());
    }

    private File p(Context context) {
        return new File(PackageConstants.getSdkBaseFolder(context), Cq);
    }

    public void loadModules(String... strArr) {
        loadModules(null, strArr);
    }

    public void loadModules(Repository repository, String... strArr) {
        if (strArr != null && strArr.length != 0) {
            Map emptyMap;
            BuiltinRepository builtinRepository = new BuiltinRepository(this.du);
            PrebuiltRepository prebuiltRepository = new PrebuiltRepository(this.du);
            if (repository == null) {
                repository = new CombinedRepository(builtinRepository, prebuiltRepository);
            } else {
                repository = new CombinedRepository(builtinRepository, prebuiltRepository, repository);
            }
            Set linkedHashSet = new LinkedHashSet();
            for (String str : strArr) {
                if (!B(str).exists()) {
                    linkedHashSet.add(str);
                }
            }
            if (linkedHashSet.isEmpty()) {
                emptyMap = Collections.emptyMap();
            } else {
                emptyMap = repository.fetch(this.Cs, repository.contains(linkedHashSet));
            }
            for (String str2 : strArr) {
                String str3 = PackageConstants.LOG_TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("loading module: ");
                stringBuilder.append(str2);
                Log.i(str3, stringBuilder.toString());
                if (!emptyMap.containsKey(str2) || a(this.Cs, this.Cr, (String) emptyMap.get(str2), str2)) {
                    String str4;
                    StringBuilder stringBuilder2;
                    File B = B(str2);
                    if (B.exists()) {
                        try {
                            if (!a(this.Cr, str2)) {
                                str4 = PackageConstants.LOG_TAG;
                                stringBuilder2 = new StringBuilder();
                                stringBuilder2.append("fail to extract library to ");
                                stringBuilder2.append(this.Cr);
                                stringBuilder2.append(" with ");
                                stringBuilder2.append(str2);
                                Log.w(str4, stringBuilder2.toString());
                                a(str2, 2);
                            }
                        } catch (IOException e) {
                            String str5 = PackageConstants.LOG_TAG;
                            StringBuilder stringBuilder3 = new StringBuilder();
                            stringBuilder3.append("got IOException when extract lib: ");
                            stringBuilder3.append(e.getMessage());
                            Log.e(str5, stringBuilder3.toString());
                            a(str2, 2);
                        }
                    }
                    new Dependency().setName(str2);
                    try {
                        this.Ct.loadModules(new Dependency());
                        k(str2, B.getAbsolutePath());
                    } catch (ModuleLoadException e2) {
                        str4 = PackageConstants.LOG_TAG;
                        stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("got ModuleLoadException when load modules: ");
                        stringBuilder2.append(e2.getMessage());
                        Log.e(str4, stringBuilder2.toString());
                        if (!linkedHashSet.contains(str2) || emptyMap.containsKey(str2)) {
                            a(str2, 3);
                        } else {
                            a(str2, 1);
                        }
                    } catch (Exception e3) {
                        str4 = PackageConstants.LOG_TAG;
                        stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("got Exception when load modules: ");
                        stringBuilder2.append(e3.getMessage());
                        Log.e(str4, stringBuilder2.toString());
                        a(str2, 3);
                    }
                } else {
                    str3 = PackageConstants.LOG_TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("can't copy module from ");
                    stringBuilder.append(this.Cs);
                    stringBuilder.append(" to ");
                    stringBuilder.append(this.Cr);
                    stringBuilder.append(" with ");
                    stringBuilder.append(str2);
                    Log.w(str3, stringBuilder.toString());
                    a(str2, 2);
                }
            }
            cz();
        }
    }

    private boolean a(File file, File file2, String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str2);
        stringBuilder.append(ModuleUtils.MODULE_FILE_EXTENSION);
        str2 = stringBuilder.toString();
        File file3 = new File(file, str);
        file = new File(file2, str2);
        if (!file3.exists()) {
            return false;
        }
        file.delete();
        return file3.renameTo(file);
    }

    /* JADX WARNING: Missing block: B:15:0x006f, code:
            if (r3.startsWith(r4.toString()) != false) goto L_0x0071;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(File file, String str) throws IOException {
        file = B(str);
        File libraryFolder = ModuleUtils.getLibraryFolder(file.getAbsolutePath());
        if (libraryFolder.exists()) {
            return true;
        }
        libraryFolder.mkdirs();
        ZipFile zipFile = new ZipFile(file);
        try {
            Enumeration entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry zipEntry = (ZipEntry) entries.nextElement();
                if (!zipEntry.isDirectory()) {
                    String name = zipEntry.getName();
                    if (!name.contains("..")) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("lib/");
                        stringBuilder.append(Build.CPU_ABI);
                        if (!name.startsWith(stringBuilder.toString())) {
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("lib/");
                            stringBuilder.append(Build.CPU_ABI2);
                        }
                        File file2 = new File(libraryFolder, C0002FileUtils.getFileName(name));
                        if (!file2.exists()) {
                            C0002FileUtils.copyToFile(zipFile.getInputStream(zipEntry), file2);
                        }
                    }
                }
            }
            return true;
        } finally {
            zipFile.close();
        }
    }

    public void setModuleLoadListener(ModuleLoadListener moduleLoadListener) {
        this.Cu = moduleLoadListener;
    }

    private void k(String str, String str2) {
        String str3 = PackageConstants.LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("process ");
        stringBuilder.append(str);
        stringBuilder.append(" successful");
        Log.d(str3, stringBuilder.toString());
        if (this.Cu != null) {
            this.Cu.onLoadSuccess(str, str2);
        }
    }

    private void a(String str, int i) {
        String str2 = PackageConstants.LOG_TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("process ");
        stringBuilder.append(str);
        stringBuilder.append(" failed: ");
        stringBuilder.append(i);
        Log.w(str2, stringBuilder.toString());
        if (this.Cu != null) {
            this.Cu.onLoadFail(str, i);
        }
    }

    private void cz() {
        Log.d(PackageConstants.LOG_TAG, "process modules finished");
        if (this.Cu != null) {
            this.Cu.onLoadFinish();
        }
    }
}
