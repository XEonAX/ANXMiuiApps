package miui.os;

import android.content.Context;
import android.os.Environment;
import com.miui.internal.variable.Android_Os_Process_class;
import com.miui.internal.variable.Android_Os_Process_class.Factory;
import java.io.File;
import java.util.regex.Pattern;
import miui.util.AttributeResolver;
import miui.yellowpage.YellowPageContract.Provider;

/* renamed from: miui.os.Environment */
public class C0001Environment extends Environment {
    private static final Android_Os_Process_class Ea = Factory.getInstance().get();
    private static final String Eb = "MIUI";
    private static File Ec = null;
    private static final File Ed = new File("/data/miui/");
    private static final File Ee = new File(C0001Environment.getMiuiDataDirectory(), "apps");
    private static final File Ef = new File(C0001Environment.getMiuiDataDirectory(), "preset_apps");
    private static final File Eg = new File(C0001Environment.getMiuiDataDirectory(), "current");
    private static int Eh = 0;

    protected C0001Environment() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static File getExternalStorageMiuiDirectory() {
        try {
            if (Ec == null) {
                Ec = new File(C0001Environment.getExternalStorageDirectory(), Provider.PNAME_DEFAULT);
            }
            if (!Ec.exists() && C0001Environment.getExternalStorageDirectory().exists()) {
                Ec.mkdir();
            }
            return Ec;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static File getMiuiDataDirectory() {
        return Ed;
    }

    public static File getMiuiAppDirectory() {
        return Ee;
    }

    public static File getMiuiPresetAppDirectory() {
        return Ef;
    }

    public static File getMiuiCustomizedDirectory() {
        return Eg;
    }

    public static boolean isExternalStorageMounted() {
        return "mounted".equals(C0001Environment.getExternalStorageState());
    }

    public static int getCpuCount() {
        if (Eh == 0) {
            Pattern compile = Pattern.compile("cpu[0-9]*");
            String[] list = new File("/sys/devices/system/cpu/").list();
            int i = 0;
            int length = list.length;
            int i2 = 0;
            while (i < length) {
                if (compile.matcher(list[i]).matches()) {
                    i2++;
                }
                i++;
            }
            Eh = i2;
        }
        return Eh;
    }

    public static boolean isUsingMiui(Context context) {
        return AttributeResolver.isUsingMiuiTheme(context);
    }
}
