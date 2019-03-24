package miui.provider;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.Settings.SettingNotFoundException;

public class ExtraSettings {

    public static class Secure {
        public static final String PRIVACY_MODE_ENABLED = "privacy_mode_enabled";
        public static final String UPLOAD_LOG = "upload_log_pref";

        protected Secure() throws InstantiationException {
            throw new InstantiationException("Cannot instantiate utility class");
        }

        public static int getInt(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return android.provider.Settings.Secure.getInt(contentResolver, str);
        }

        public static int getInt(ContentResolver contentResolver, String str, int i) {
            return android.provider.Settings.Secure.getInt(contentResolver, str, i);
        }

        public static long getLong(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return android.provider.Settings.Secure.getLong(contentResolver, str);
        }

        public static long getLong(ContentResolver contentResolver, String str, long j) {
            return android.provider.Settings.Secure.getLong(contentResolver, str, j);
        }

        public static float getFloat(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return android.provider.Settings.Secure.getFloat(contentResolver, str);
        }

        public static float getFloat(ContentResolver contentResolver, String str, float f) {
            return android.provider.Settings.Secure.getFloat(contentResolver, str, f);
        }

        public static boolean getBoolean(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return getInt(contentResolver, str) != 0;
        }

        public static boolean getBoolean(ContentResolver contentResolver, String str, boolean z) {
            return getInt(contentResolver, str, z) != 0;
        }

        public static String getString(ContentResolver contentResolver, String str) {
            return android.provider.Settings.Secure.getString(contentResolver, str);
        }

        public static String getString(ContentResolver contentResolver, String str, String str2) {
            String string = android.provider.Settings.Secure.getString(contentResolver, str);
            return string == null ? str2 : string;
        }

        public static Uri getUriFor(String str) {
            return android.provider.Settings.Secure.getUriFor(str);
        }

        public static boolean putInt(ContentResolver contentResolver, String str, int i) {
            return android.provider.Settings.Secure.putInt(contentResolver, str, i);
        }

        public static boolean putLong(ContentResolver contentResolver, String str, long j) {
            return android.provider.Settings.Secure.putLong(contentResolver, str, j);
        }

        public static boolean putFloat(ContentResolver contentResolver, String str, float f) {
            return android.provider.Settings.Secure.putFloat(contentResolver, str, f);
        }

        public static boolean putBoolean(ContentResolver contentResolver, String str, boolean z) {
            return putInt(contentResolver, str, z);
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2) {
            return android.provider.Settings.Secure.putString(contentResolver, str, str2);
        }
    }

    public static class System {
        public static final String DEFAULT_ALARM_ALERT = "default_alarm_alert";

        protected System() throws InstantiationException {
            throw new InstantiationException("Cannot instantiate utility class");
        }

        public static int getInt(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return android.provider.Settings.System.getInt(contentResolver, str);
        }

        public static int getInt(ContentResolver contentResolver, String str, int i) {
            return android.provider.Settings.System.getInt(contentResolver, str, i);
        }

        public static long getLong(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return android.provider.Settings.System.getLong(contentResolver, str);
        }

        public static long getLong(ContentResolver contentResolver, String str, long j) {
            return android.provider.Settings.System.getLong(contentResolver, str, j);
        }

        public static float getFloat(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return android.provider.Settings.System.getFloat(contentResolver, str);
        }

        public static float getFloat(ContentResolver contentResolver, String str, float f) {
            return android.provider.Settings.System.getFloat(contentResolver, str, f);
        }

        public static boolean getBoolean(ContentResolver contentResolver, String str) throws SettingNotFoundException {
            return getInt(contentResolver, str) != 0;
        }

        public static boolean getBoolean(ContentResolver contentResolver, String str, boolean z) {
            return getInt(contentResolver, str, z) != 0;
        }

        public static String getString(ContentResolver contentResolver, String str) {
            return android.provider.Settings.System.getString(contentResolver, str);
        }

        public static String getString(ContentResolver contentResolver, String str, String str2) {
            String string = android.provider.Settings.System.getString(contentResolver, str);
            return string == null ? str2 : string;
        }

        public static Uri getUriFor(String str) {
            return android.provider.Settings.System.getUriFor(str);
        }

        public static boolean putInt(ContentResolver contentResolver, String str, int i) {
            return android.provider.Settings.System.putInt(contentResolver, str, i);
        }

        public static boolean putLong(ContentResolver contentResolver, String str, long j) {
            return android.provider.Settings.System.putLong(contentResolver, str, j);
        }

        public static boolean putFloat(ContentResolver contentResolver, String str, float f) {
            return android.provider.Settings.System.putFloat(contentResolver, str, f);
        }

        public static boolean putBoolean(ContentResolver contentResolver, String str, boolean z) {
            return putInt(contentResolver, str, z);
        }

        public static boolean putString(ContentResolver contentResolver, String str, String str2) {
            return android.provider.Settings.System.putString(contentResolver, str, str2);
        }
    }

    protected ExtraSettings() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }
}
