package android.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import com.miui.system.internal.R;
import java.util.Iterator;
import miui.os.C0004SystemProperties;
import miui.os.C0015Build;
import miui.text.ChinesePinyinConverter;
import miui.text.ChinesePinyinConverter.Token;
import miui.util.C0016FeatureParser;
import miui.util.Utf8TextUtils;

public class SystemSettings {
    private static final String TAG = "SystemSettings";
    private static final String UTF8 = "UTF-8";

    public static class Secure {
        public static final String PRIVACY_MODE_ENABLED = "privacy_mode_enabled";
        public static final String SCREEN_BUTTONS_STATE = "screen_buttons_state";

        public static boolean isCtaSupported(ContentResolver cr) {
            return C0015Build.IS_CTA_BUILD;
        }

        public static Cursor checkPrivacyAndReturnCursor(Context context) {
            boolean z = true;
            if (1 != android.provider.Settings.Secure.getInt(context.getContentResolver(), "privacy_mode_enabled", 0)) {
                z = false;
            }
            if (z) {
                return new MatrixCursor(new String[]{"_id"});
            }
            return null;
        }
    }

    public static class System {
        private static final String E10_DEVICE = "beryllium";
        private static final String INDIA = "INDIA";
        public static final String LOCK_WALLPAPER_PROVIDER_AUTHORITY = "lock_wallpaper_provider_authority";
        public static final String PERSIST_SYS_DEVICE_NAME = "persist.sys.device_name";
        public static final String STATUS_BAR_WINDOW_LOADED = "status_bar_window_loaded";

        public static String getDeviceName(Context context) {
            int deviceNameRes;
            String defaultName = "";
            if (C0016FeatureParser.getBoolean("is_hongmi", false)) {
                if (C0016FeatureParser.getBoolean("is_redmi", false)) {
                    deviceNameRes = R.string.device_redmi;
                } else {
                    deviceNameRes = R.string.device_hongmi;
                }
            } else if (C0016FeatureParser.getBoolean("is_xiaomi", false)) {
                if (!E10_DEVICE.equals(C0004SystemProperties.get("ro.product.device"))) {
                    deviceNameRes = R.string.device_xiaomi;
                } else if (C0004SystemProperties.get("ro.boot.hwc", "").contains(INDIA)) {
                    deviceNameRes = R.string.device_poco_india;
                } else {
                    deviceNameRes = R.string.device_poco_global;
                }
            } else if (C0016FeatureParser.getBoolean("is_pad", false)) {
                deviceNameRes = R.string.device_pad;
            } else {
                deviceNameRes = R.string.miui_device_name;
            }
            return C0004SystemProperties.get(PERSIST_SYS_DEVICE_NAME, context.getString(deviceNameRes));
        }

        public static void setDeviceName(Context context, String deviceName) {
            C0004SystemProperties.set(PERSIST_SYS_DEVICE_NAME, deviceName);
            setNetHostName(context);
        }

        public static void setNetHostName(Context context) {
            String NET_HOSTNAME_PROPERTY = "net.hostname";
            String netHostName = C0004SystemProperties.get("net.hostname");
            StringBuilder nameBuilder = new StringBuilder();
            nameBuilder.append(C0015Build.MODEL);
            nameBuilder.append("-");
            Iterator it = ChinesePinyinConverter.getInstance().get(getDeviceName(context)).iterator();
            while (it.hasNext()) {
                nameBuilder.append(((Token) it.next()).target);
            }
            String newNetHostName = nameBuilder.toString().replace(" ", "");
            if (!newNetHostName.equals(netHostName)) {
                String hostName = Utf8TextUtils.truncateByte(newNetHostName, 20);
                if (hostName != null) {
                    C0004SystemProperties.set("net.hostname", hostName);
                }
            }
        }

        public static boolean getBoolean(ContentResolver resolver, String name, boolean defValue) {
            return android.provider.Settings.System.getInt(resolver, name, defValue) != 0;
        }
    }
}
