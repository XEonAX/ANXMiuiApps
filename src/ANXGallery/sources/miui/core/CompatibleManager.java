package miui.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.miui.internal.util.PackageConstants;
import com.miui.internal.util.ResourcesUtils;
import miui.module.Dependency;
import miui.module.Dependency.Level;

public class CompatibleManager {
    private Manifest dv;
    private Context mContext;
    private String mPackageName;

    public CompatibleManager(Context context, Manifest manifest) {
        this.mContext = context;
        this.dv = manifest;
        this.mPackageName = manifest.getModule().getName();
    }

    public CompatibleManager(Context context, String str, String str2, Bundle bundle) {
        this.mContext = context;
        this.dv = a(str, str2, bundle);
        this.mPackageName = str2;
    }

    public boolean isCompatible() {
        String str;
        StringBuilder stringBuilder;
        if (a(this.dv.getSdkDependency().getLevel(), PackageConstants.CURRENT_SDK_LEVEL)) {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager == null) {
                Log.w(PackageConstants.LOG_TAG, "package manager is not ready yet");
                return true;
            }
            for (String str2 : this.dv.getDependencies().keySet()) {
                Dependency dependency = this.dv.getDependency(str2);
                if ((dependency.getType() & 2) != 0) {
                    Manifest a = a(packageManager, str2);
                    if (a == null || !a(dependency.getLevel(), a.getModule().getLevel())) {
                        str = PackageConstants.LOG_TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append(this.mPackageName);
                        stringBuilder.append(" is not compatible with module ");
                        stringBuilder.append(str2);
                        Log.w(str, stringBuilder.toString());
                        return false;
                    }
                }
            }
            return true;
        }
        str = PackageConstants.LOG_TAG;
        stringBuilder = new StringBuilder();
        stringBuilder.append(this.mPackageName);
        stringBuilder.append(" is not compatible with sdk");
        Log.w(str, stringBuilder.toString());
        return false;
    }

    private boolean a(Level level, int i) {
        boolean z = level.getMinLevel() <= i && i <= level.getMaxLevel();
        if (!z) {
            String str = PackageConstants.LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("current is ");
            stringBuilder.append(i);
            stringBuilder.append(" but needs [");
            stringBuilder.append(level.getMinLevel());
            stringBuilder.append("-");
            stringBuilder.append(level.getMaxLevel());
            stringBuilder.append("]");
            Log.w(str, stringBuilder.toString());
        }
        return z;
    }

    private Manifest a(PackageManager packageManager, String str) {
        return ManifestParser.createFromPackage(packageManager, str).parse(null);
    }

    private Manifest a(String str, String str2, Bundle bundle) {
        return ManifestParser.createFromResources(ResourcesUtils.createResources(str), str2, bundle).parse(null);
    }

    public boolean isCurrent() {
        return this.dv.getSdkDependency().getLevel().getTargetLevel() == PackageConstants.CURRENT_SDK_LEVEL;
    }

    public int getLevel() {
        return this.dv.getModule().getLevel();
    }
}
