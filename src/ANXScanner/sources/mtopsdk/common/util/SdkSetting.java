package mtopsdk.common.util;

public class SdkSetting {
    private static ENV env = ENV.release;

    public enum ENV {
        debug,
        develop,
        release
    }

    public static ENV getEnv() {
        return env;
    }

    public static void setEnv(ENV env) {
        if (env != null) {
            env = env;
        }
    }
}
