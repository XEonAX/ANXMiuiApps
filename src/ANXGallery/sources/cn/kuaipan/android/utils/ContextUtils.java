package cn.kuaipan.android.utils;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.meicam.themehelper.BuildConfig;
import java.util.Locale;

public class ContextUtils {
    private static volatile Context sMyContext;

    public static void init(Context myContext) {
        if (myContext != null) {
            sMyContext = myContext;
        }
    }

    public static Context getContext() {
        Context result = sMyContext;
        if (result == null) {
            synchronized (ContextUtils.class) {
                result = sMyContext;
                if (result == null) {
                    try {
                        result = (Context) JavaCalls.callMethod(JavaCalls.callStaticMethod("android.app.ActivityThread", "currentActivityThread", new Object[0]), "getApplication", new Object[0]);
                    } catch (Exception e) {
                    }
                    if (result == null) {
                        throw new RuntimeException("My Application havn't be call onCreate by Framework.");
                    }
                    sMyContext = result;
                }
            }
        }
        return result;
    }

    public static String getAppVersion(Context context) {
        String packageName = context.getPackageName();
        String result = null;
        try {
            return context.getPackageManager().getPackageInfo(packageName, 0).versionName;
        } catch (NameNotFoundException e) {
            Log.w("ContextUtils", "Exception when retrieving package:" + packageName);
            return result;
        }
    }

    public static String getFrameworkVersion() {
        StringBuilder buffer = new StringBuilder();
        String version = VERSION.RELEASE;
        if (version.length() > 0) {
            buffer.append(version);
        } else {
            buffer.append(BuildConfig.VERSION_NAME);
        }
        buffer.append("; ");
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        String language = locale.getLanguage();
        if (language != null) {
            buffer.append(language.toLowerCase());
            String country = locale.getCountry();
            if (country != null) {
                buffer.append("-");
                buffer.append(country.toLowerCase());
            }
        } else {
            buffer.append("en");
        }
        if ("REL".equals(VERSION.CODENAME)) {
            String model = Build.MODEL;
            if (model.length() > 0) {
                buffer.append("; ");
                buffer.append(model);
            }
        }
        String id = Build.ID;
        if (id.length() > 0) {
            buffer.append(" Build/");
            buffer.append(id);
        }
        return buffer.toString();
    }
}
