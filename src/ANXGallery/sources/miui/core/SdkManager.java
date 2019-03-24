package miui.core;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import com.miui.internal.app.MiuiApplication;
import com.miui.internal.component.ComponentManager;
import com.miui.internal.component.module.ModuleLoader;
import com.miui.internal.util.ClassProxy;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.util.PackageConstants;
import com.miui.internal.util.PackageHelper;
import com.miui.internal.variable.Android_App_Activity_class;
import com.miui.internal.variable.Android_App_AlertDialog_Builder_class;
import com.miui.internal.variable.Android_App_AlertDialog_class;
import com.miui.internal.variable.Android_Content_Res_ResourcesImpl_class;
import com.miui.internal.variable.Android_Content_Res_Resources_class.Factory;
import com.miui.internal.variable.Android_Preference_EditTextPreference_class;
import com.miui.internal.variable.Android_Preference_Preference_class;
import com.miui.internal.variable.Android_Text_Util_Linkify_class;
import com.miui.internal.variable.Android_View_ViewGroup_class;
import com.miui.internal.variable.Android_View_View_class;
import com.miui.internal.variable.Android_Widget_AbsSeekBar_class;
import com.miui.internal.variable.Android_Widget_AbsSpinner_class;
import com.miui.internal.variable.Android_Widget_GridView_class;
import com.miui.internal.variable.Android_Widget_ListPopupWindow_class;
import com.miui.internal.variable.Android_Widget_ListView_class;
import com.miui.internal.variable.Android_Widget_PopupWindow_class;
import com.miui.internal.variable.Android_Widget_RemoteViews_class;
import com.miui.internal.variable.Android_Widget_Spinner_class;
import com.miui.internal.variable.HookedClassSet;
import com.miui.internal.variable.Internal_Policy_Impl_PhoneWindow_class;
import java.util.Map;
import miui.content.res.ThemeResources;

public abstract class SdkManager {
    public static final int RETURN_CODE_LOW_SDK_VERSION = 1;
    public static final int RETURN_CODE_SUCCESS = 0;
    private static final String TAG = "miuisdk";
    private static final String xK = "com.miui.internal.server.CoreService";

    private SdkManager() {
    }

    private static int cd() {
        String debugEnable = DeviceHelper.getDebugEnable();
        if (debugEnable.length() == 0) {
            return 0;
        }
        for (String split : debugEnable.split("\\,")) {
            String split2;
            String[] split3 = split2.split("-");
            if (split3.length == 2) {
                String trim = split3[0].trim();
                if ((trim.equals("all") ? 1 : 0) != 0 || ClassProxy.getProcName().trim().equals(trim)) {
                    split2 = split3[1];
                    if (split2.equals("all")) {
                        ClassProxy.setDebugModules(new String[]{"all"});
                    } else {
                        ClassProxy.setDebugModules(split2.split("\\|"));
                    }
                }
            }
        }
        return 0;
    }

    /* JADX WARNING: Missing block: B:22:0x005f, code:
            return 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int initialize(Application application, Map<String, Object> map) {
        synchronized (SdkManager.class) {
            cd();
            PackageConstants.sInitializingApplication = application;
            if (PackageConstants.sSdkStatus >= 2) {
                Log.d("miuisdk", "sdk already initialized");
                return 0;
            }
            boolean z;
            if (!PackageHelper.isMiuiSystem()) {
                ClassProxy.setupResourceHook();
                ModuleLoader.loadResources(PackageConstants.RESOURCE_PATH);
            }
            try {
                z = ClassProxy.setupClassHook(VERSION.SDK_INT, HookedClassSet.CLASSES);
            } catch (Throwable th) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("setup class hook enconter errors: ");
                stringBuilder.append(th.getMessage());
                Log.w("miuisdk", stringBuilder.toString());
                z = false;
            }
            if (!z) {
                buildProxy();
            }
            ClassProxy.setupInterpreterHook();
            if (PackageConstants.sSdkStatus < 2) {
                PackageConstants.sSdkStatus = 2;
            }
        }
    }

    private static void buildProxy() {
        Factory.getInstance().get().buildProxy();
        if (VERSION.SDK_INT > 23) {
            Android_Content_Res_ResourcesImpl_class.Factory.getInstance().get().buildProxy();
        }
        Android_App_AlertDialog_class.Factory.getInstance().get().buildProxy();
        Android_App_AlertDialog_Builder_class.Factory.getInstance().get().buildProxy();
        Android_App_Activity_class.Factory.getInstance().get().buildProxy();
        Android_View_View_class.Factory.getInstance().get().buildProxy();
        Android_View_ViewGroup_class.Factory.getInstance().get().buildProxy();
        Android_Preference_Preference_class.Factory.getInstance().get().buildProxy();
        Android_Preference_EditTextPreference_class.Factory.getInstance().get().buildProxy();
        Android_Widget_RemoteViews_class.Factory.getInstance().get().buildProxy();
        Android_Widget_ListView_class.Factory.getInstance().get().buildProxy();
        Android_Widget_GridView_class.Factory.getInstance().get().buildProxy();
        Android_Widget_ListPopupWindow_class.Factory.getInstance().get().buildProxy();
        Android_Widget_AbsSpinner_class.Factory.getInstance().get().buildProxy();
        Android_Widget_Spinner_class.Factory.getInstance().get().buildProxy();
        Android_Widget_PopupWindow_class.Factory.getInstance().get().buildProxy();
        Android_Widget_AbsSeekBar_class.Factory.getInstance().get().buildProxy();
        Android_Text_Util_Linkify_class.Factory.getInstance().get().buildProxy();
        Internal_Policy_Impl_PhoneWindow_class.Factory.getInstance().get().buildProxy();
    }

    public static int start(Map<String, Object> map) {
        synchronized (SdkManager.class) {
            if (PackageConstants.sSdkStatus >= 3) {
                Log.d("miuisdk", "sdk already started");
            }
            Application application = PackageConstants.sInitializingApplication;
            PackageConstants.sApplication = application;
            Manifest parse = ManifestParser.create(application).parse(map);
            if ((application instanceof MiuiApplication) || a((Context) application, parse)) {
                if (!ThemeResources.FRAMEWORK_PACKAGE.equals(application.getPackageName())) {
                    a(application, parse);
                }
                if (PackageConstants.sSdkStatus < 3) {
                    PackageConstants.sSdkStatus = 3;
                }
                return 0;
            }
            return 1;
        }
    }

    private static boolean a(Context context, Manifest manifest) {
        return new CompatibleManager(context, manifest).isCompatible();
    }

    private static void a(Application application, Manifest manifest) {
        new ComponentManager(application, manifest).load();
    }

    private static void m(final Context context) {
        new Handler().post(new Runnable() {
            public void run() {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClassName(PackageConstants.PACKAGE_NAME, SdkManager.xK);
                context.startService(intent);
            }
        });
    }

    public static boolean supportUpdate(Map<String, Object> map) {
        return false;
    }

    public static boolean update(Map<String, Object> map) {
        return false;
    }
}
