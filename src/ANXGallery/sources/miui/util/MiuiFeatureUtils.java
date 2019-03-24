package miui.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map.Entry;
import miui.os.C0004SystemProperties;
import miui.provider.MiCloudSmsCmd;

public class MiuiFeatureUtils {
    private static final String DEFAULT_CONFIG_FILE_PATH = "/system/etc/miui_feature/default.conf";
    public static final String FEATURE_COMPLETE_ANIMATION = "feature_complete_animation";
    public static final String FEATURE_RUNTIME_BLUR = "feature_runtime_blur";
    public static final String FEATURE_THUMBNAIL = "feature_thumbnail";
    private static final String LITE_CONFIG_FILE_PATH = "/system/etc/miui_feature/lite.conf";
    private static final String MIUISDK_FEATURE_PREFIX = "ro.sys.";
    private static final String MIUISDK_KEY = "miuisdk";
    private static final String PRPPERTY = "persist.sys.miui_feature_config";
    private static final String SYSTEM_KEY = "system";
    private static final String TAG = "MiuiFeatureUtils";
    private static String sConfigFilePath;
    private static HashMap<String, HashMap<String, Boolean>> sConfigResult;
    private static boolean sIsLiteMode = false;
    private static boolean sIsLiteModeSupported;
    private static HashMap<String, Boolean> sMiuisdkConfigResult;
    private static HashMap<String, Boolean> sSystemConfigResult;

    private static class ConfigReader {
        private HashMap<String, HashMap<String, Boolean>> mConfigResult = null;
        private HashMap<String, Boolean> mCurrentConfig = null;
        private String mCurrentGroupName;
        private String mPath = null;

        public ConfigReader(String path) {
            this.mPath = path;
        }

        public boolean parse() {
            if (TextUtils.isEmpty(this.mPath)) {
                return false;
            }
            return parseInternal();
        }

        public HashMap<String, HashMap<String, Boolean>> getConfigResult() {
            return this.mConfigResult;
        }

        private boolean parseInternal() {
            BufferedReader reader = null;
            boolean finished = false;
            String readLine;
            try {
                reader = new BufferedReader(new FileReader(this.mPath));
                while (true) {
                    readLine = reader.readLine();
                    String line = readLine;
                    if (readLine == null) {
                        break;
                    }
                    parseLine(line);
                }
                finished = true;
                try {
                    reader.close();
                } catch (IOException e) {
                }
            } catch (IOException e2) {
                readLine = MiuiFeatureUtils.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Failed to parse feature file ");
                stringBuilder.append(this.mPath);
                stringBuilder.append(", error : ");
                stringBuilder.append(e2.toString());
                Log.e(readLine, stringBuilder.toString());
                if (reader != null) {
                    reader.close();
                }
            } catch (Throwable th) {
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e3) {
                    }
                }
            }
            return finished;
        }

        private void parseLine(String line) {
            line = removeComment(line.trim());
            if (!TextUtils.isEmpty(line)) {
                if (matchGroup(line)) {
                    this.mCurrentGroupName = line.substring(1, line.length() - 1).toLowerCase().trim();
                    if (TextUtils.isEmpty(this.mCurrentGroupName)) {
                        this.mCurrentConfig = null;
                        return;
                    }
                    if (this.mConfigResult == null) {
                        this.mConfigResult = new HashMap();
                    }
                    this.mCurrentConfig = (HashMap) this.mConfigResult.get(this.mCurrentGroupName);
                    if (this.mCurrentConfig == null) {
                        this.mCurrentConfig = new HashMap();
                        this.mConfigResult.put(this.mCurrentGroupName, this.mCurrentConfig);
                    }
                } else if (this.mCurrentConfig != null) {
                    int equalSignPos = findEqualSignPos(line);
                    if (equalSignPos >= 1 && equalSignPos != line.length() - 1) {
                        Boolean result = null;
                        String key = line.substring(0, equalSignPos).toLowerCase().trim();
                        String value = line.substring(equalSignPos + 1, line.length()).toLowerCase().trim();
                        if (value.equals("yes") || value.equals("y") || value.equals("true") || value.equals("t")) {
                            result = Boolean.valueOf(true);
                        } else if (value.equals("no") || value.equals(MiCloudSmsCmd.TYPE_NOISE) || value.equals("false") || value.equals("f")) {
                            result = Boolean.valueOf(false);
                        }
                        if (result != null) {
                            this.mCurrentConfig.put(key, result);
                        }
                    }
                }
            }
        }

        private boolean matchGroup(String target) {
            if (!TextUtils.isEmpty(target) && target.startsWith("[") && target.endsWith("]")) {
                return true;
            }
            return false;
        }

        private int findEqualSignPos(String target) {
            if (TextUtils.isEmpty(target)) {
                return -1;
            }
            return target.indexOf("=");
        }

        private String removeComment(String target) {
            if (TextUtils.isEmpty(target)) {
                return null;
            }
            int pos = target.indexOf("#");
            if (pos < 0) {
                return target;
            }
            return target.substring(0, pos);
        }
    }

    public static class Features {
        HashMap<String, Boolean> mFeatures;

        Features(HashMap<String, Boolean> features) {
            this.mFeatures = features;
        }

        public boolean isFeatureSupported(String feature, boolean defaultValue) {
            if (TextUtils.isEmpty(feature)) {
                return defaultValue;
            }
            if (!(this.mFeatures == null || TextUtils.isEmpty(feature))) {
                Boolean result = (Boolean) this.mFeatures.get(feature.toLowerCase());
                if (result != null) {
                    return result.booleanValue();
                }
            }
            String str = MiuiFeatureUtils.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Failed to get feature ");
            stringBuilder.append(feature);
            stringBuilder.append(" for current package ");
            Log.w(str, stringBuilder.toString());
            return defaultValue;
        }
    }

    static {
        sIsLiteModeSupported = false;
        try {
            init();
        } catch (Exception e) {
            sIsLiteModeSupported = false;
            Log.e(TAG, "Failed to initialize MiuiFeatureUtils!");
        }
    }

    private MiuiFeatureUtils() {
    }

    private static void init() {
        if (new File(DEFAULT_CONFIG_FILE_PATH).exists() && new File(LITE_CONFIG_FILE_PATH).exists()) {
            sIsLiteModeSupported = true;
        }
        String path = C0004SystemProperties.get(PRPPERTY);
        if (!TextUtils.isEmpty(path) && new File(path).exists()) {
            sConfigFilePath = path;
        }
        if (TextUtils.isEmpty(sConfigFilePath) && new File(DEFAULT_CONFIG_FILE_PATH).exists()) {
            sConfigFilePath = DEFAULT_CONFIG_FILE_PATH;
        }
        if (!TextUtils.isEmpty(sConfigFilePath)) {
            ConfigReader reader = new ConfigReader(sConfigFilePath);
            if (reader.parse()) {
                sConfigResult = reader.getConfigResult();
                if (sConfigResult != null) {
                    sSystemConfigResult = (HashMap) sConfigResult.get(SYSTEM_KEY);
                    sMiuisdkConfigResult = (HashMap) sConfigResult.get("miuisdk");
                }
                if (LITE_CONFIG_FILE_PATH.equals(sConfigFilePath)) {
                    sIsLiteMode = true;
                }
                Log.v(TAG, "Loaded and parsed feature configure file successfully");
            }
        }
    }

    public static boolean isSystemFeatureSupported(String feature, boolean defaultValue) {
        if (TextUtils.isEmpty(feature)) {
            return defaultValue;
        }
        if (sSystemConfigResult != null) {
            Boolean result = (Boolean) sSystemConfigResult.get(feature.toLowerCase());
            if (result != null) {
                return result.booleanValue();
            }
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to get system feature ");
        stringBuilder.append(feature);
        Log.w(str, stringBuilder.toString());
        return defaultValue;
    }

    public static boolean isLocalFeatureSupported(Context context, String feature, boolean defaultValue) {
        if (TextUtils.isEmpty(feature)) {
            return defaultValue;
        }
        String pkg = null;
        if (context != null) {
            pkg = context.getPackageName();
        }
        if (!(sConfigResult == null || TextUtils.isEmpty(pkg))) {
            HashMap<String, Boolean> features = (HashMap) sConfigResult.get(pkg);
            if (features != null) {
                Boolean result = (Boolean) features.get(feature.toLowerCase());
                if (result != null) {
                    return result.booleanValue();
                }
            }
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to get feature ");
        stringBuilder.append(feature);
        stringBuilder.append(" for package ");
        stringBuilder.append(pkg);
        Log.w(str, stringBuilder.toString());
        return defaultValue;
    }

    public static Features getLocalFeature(Context context) {
        String pkg = null;
        if (context != null) {
            pkg = context.getPackageName();
        }
        if (sConfigResult != null && !TextUtils.isEmpty(pkg)) {
            return new Features((HashMap) sConfigResult.get(pkg));
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Failed to get feature set for package ");
        stringBuilder.append(pkg);
        Log.w(str, stringBuilder.toString());
        return null;
    }

    public static boolean isLiteMode() {
        return sIsLiteMode;
    }

    public static boolean isLiteModeSupported() {
        return sIsLiteModeSupported;
    }

    public static void setMiuisdkProperties() {
        if (sMiuisdkConfigResult != null) {
            try {
                for (Entry<String, Boolean> entry : sMiuisdkConfigResult.entrySet()) {
                    String key = (String) entry.getKey();
                    Boolean value = (Boolean) entry.getValue();
                    if (!(TextUtils.isEmpty(key) || value == null)) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(MIUISDK_FEATURE_PREFIX);
                        stringBuilder.append(key);
                        C0004SystemProperties.set(stringBuilder.toString(), value.toString());
                    }
                }
            } catch (Exception e) {
                Log.v(TAG, "Failed to set miui sdk features.");
            }
        }
    }
}
