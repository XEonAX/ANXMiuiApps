package miui.os;

import android.util.Log;
import java.util.Locale;

/* renamed from: miui.os.ProcessUtils */
public class C0003ProcessUtils {
    private static final String TAG = "ProcessUtils";

    protected C0003ProcessUtils() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static String getProcessNameByPid(int i) {
        String format = String.format(Locale.US, "/proc/%d/cmdline", new Object[]{Integer.valueOf(i)});
        try {
            String readFileAsString = C0002FileUtils.readFileAsString(format);
            if (readFileAsString != null) {
                int indexOf = readFileAsString.indexOf(0);
                if (indexOf >= 0) {
                    readFileAsString = readFileAsString.substring(0, indexOf);
                }
                return readFileAsString;
            }
        } catch (Throwable e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Fail to read cmdline: ");
            stringBuilder.append(format);
            Log.e("ProcessUtils", stringBuilder.toString(), e);
        }
        return null;
    }
}
